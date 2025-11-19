void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle1>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle1>();
    unk_1EB83C4C0 = 0x8963537098E96576;
    qword_1EB83C4C8 = "md::ls::GradientConstantDataHandle1]";
    qword_1EB83C4D0 = 35;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::GradientConstantDataHandle2>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::GradientConstantDataHandle2>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GradientConstantDataHandle2>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GradientConstantDataHandle2>();
    *algn_1EB83C498 = 0x8963527098E963C3;
    qword_1EB83C4A0 = "md::ls::GradientConstantDataHandle2]";
    qword_1EB83C4A8 = 35;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
    unk_1EB83CDF0 = 0xCAA3A5E853432887;
    qword_1EB83CDF8 = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    qword_1EB83CE00 = 55;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
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

  *(*(v31 + 8 * v29) + 16 * (v28 & 0x3F)) = *a3;
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
    *algn_1EB83CDC8 = 0xC55E4C6C5DFCA74ALL;
    qword_1EB83CDD0 = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
    qword_1EB83CDD8 = 55;
  }
}

uint64_t mre::GGLResourceStore::getTextureStorage(mre::GGLResourceStore *this, TextureHandle a2, char a3)
{
  isInternal = a2.isInternal;
  value = a2.var0.value;
  if ((a3 & 1) == 0)
  {
    std::__shared_mutex_base::lock_shared((this + 104));
    std::__shared_mutex_base::unlock_shared((this + 104));
  }

  if (!isInternal)
  {
    v6 = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 87, value);
    if (v6 != *(this + 92))
    {
      v7 = *(this + 91);
      v8 = 752;
      return *(*(this + v8) + ((((v6 - v7) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (((v6 - v7) >> 4) & 0x3F);
    }

    return 0;
  }

  v6 = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 100, value);
  if (v6 == *(this + 105))
  {
    return 0;
  }

  v7 = *(this + 104);
  v8 = 856;
  return *(*(this + v8) + ((((v6 - v7) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (((v6 - v7) >> 4) & 0x3F);
}

void *std::unique_ptr<md::LabelMapTileSourceData>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[35];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[27];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[25];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    for (i = 23; i != 3; i -= 2)
    {
      v7 = v2[i];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    MEMORY[0x1B8C62190](v2, 0x1060C40AE6B13E6);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelMapTile>,std::shared_ptr<md::LabelMapTile>>(float *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return;
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

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v14);
  *v15 = 0;
  v15[1] = v8;
  *(v15 + 1) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = (*(a1 + 5) + 1);
  v17 = a1[12];
  if (!v9 || (v17 * v9) < v16)
  {
    v18 = 1;
    if (v9 >= 3)
    {
      v18 = (v9 & (v9 - 1)) != 0;
    }

    v19 = v18 | (2 * v9);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__rehash<true>(a1, v21);
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

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    *v15 = *v23;
LABEL_38:
    *v23 = v15;
    goto LABEL_39;
  }

  *v15 = *(a1 + 3);
  *(a1 + 3) = v15;
  *(v22 + 8 * v3) = a1 + 6;
  if (*v15)
  {
    v24 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v24 >= v9)
      {
        v24 %= v9;
      }
    }

    else
    {
      v24 &= v9 - 1;
    }

    v23 = (*a1 + 8 * v24);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShouldSkipRender>(ecs2::Entity,md::ls::ShouldSkipRender &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata;
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(a2);
  v6 = ShouldSkip;
  v7 = v3 >> 22;
  v9 = (ShouldSkip + 8);
  v8 = *(ShouldSkip + 8);
  if (v3 >> 22 >= (*(ShouldSkip + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((ShouldSkip + 8), v7 + 1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata) = *(a2 + 4096);
}

uint64_t md::StyleTexture<md::LowZoomStyle>::_processStylePixelsIfNecessary(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>();
  }

  return result;
}

void sub_1B2B19C60(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C62190](v1, 0x10F1C40BE47B5E1);
  v4 = *(v2 - 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t md::VKMRenderResourcesStore::getPipelineDataSet(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 35, a2);
  if (v3 == a1[40])
  {
    return 0;
  }

  v4 = ((v3 - a1[39]) >> 3) & 0x3F;
  v5 = (((v3 - a1[39]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(a1[48] + v5);
  ++*(*(a1[42] + v5) + 24 * v4);
  if (!v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 16 * v4 + 8);
  }
}

uint64_t md::setTextureForPipeline<DaVinci::AmbientTexture>(uint64_t result, uint64_t a2, ggl::Texture *a3)
{
  v5 = result;
  if (*result == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(a2 + 168), *(result + 4), a3);
  }

  if (*(v5 + 1) == 1)
  {
    v6 = *(v5 + 8);
    v7 = *(a2 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v7, v6, a3);
  }

  return result;
}

uint64_t md::MaterialRaster::styleTexture(md::MaterialRaster *this, int a2)
{
  if (a2)
  {
    v2 = *(this + 4);
    if (*(v2 + 32) == 1)
    {
      std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>();
    }
  }

  else
  {
    v2 = *(this + 2);
    md::StyleTexture<md::LowZoomStyle>::_processStylePixelsIfNecessary(v2);
  }

  return *(v2 + 24);
}

void sub_1B2B1A144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a9);
  MEMORY[0x1B8C62190](a10, 0x10F1C40BE47B5E1);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a4);
  v8 = **(a1 + 16);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a3, Pipeline, v8);
}

uint64_t md::Label::animate(md::Label *this, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(this + 1152);
  if (v4 == 2)
  {
    if (vabds_f32(*(this + 298), *(this + 110)) < 0.4)
    {
      *(this + 300) = fmaxf(fminf(*(this + 300), 0.9) - (a2.n128_f32[0] / *(this + 303)), 0.0);
      a2.n128_f32[0] = (*(this + 153))();
      *(this + 301) = a2.n128_u32[0];
      if (*(this + 300) > 0.0 && a2.n128_f32[0] > 0.1)
      {
        goto LABEL_14;
      }

      if (*(this + 158) || (*(this + 1161) & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    *(this + 300) = 0;
    a2.n128_u64[0] = 0;
    v5 = (*(this + 153))(a2);
    goto LABEL_13;
  }

  if (v4 != 1)
  {
    goto LABEL_15;
  }

  *(this + 300) = fminf((a2.n128_f32[0] / *(this + 302)) + fmaxf(*(this + 300), 0.1), 1.0);
  a2.n128_f32[0] = (*(this + 152))();
  *(this + 301) = a2.n128_u32[0];
  if ((*(this + 300) >= 1.0 || a2.n128_f32[0] >= 0.9) && !*(this + 158))
  {
    *(this + 300) = 1065353216;
    a2.n128_u32[0] = 1.0;
    v5 = (*(this + 152))(a2);
LABEL_13:
    *(this + 301) = v5;
    md::Label::updateStateMachineForDisplay(this, 7, *(this + 1153), 0);
  }

LABEL_14:
  v4 = *(this + 1152);
LABEL_15:
  if (v4 == 3)
  {
LABEL_18:
    v6 = *(this + 308);
    v7 = 1.0;
    if (v6 < 1.0)
    {
      *(this + 308) = fminf((v2 / *(this + 310)) + v6, 1.0);
      *(this + 309) = (*(this + 156))();
      if (*(this + 308) >= 1.0)
      {
        v8 = (this + 1248);
        v9 = (this + 1236);
        *(this + 308) = 1065353216;
LABEL_21:
        *v9 = (*v8)(v7);
        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v15 = *(this + 308);
  if (v15 > 0.0)
  {
    v7 = 0.0;
    *(this + 308) = fmaxf(v15 - (v2 / *(this + 311)), 0.0);
    *(this + 309) = (*(this + 157))();
    if (*(this + 308) <= 0.0)
    {
      v8 = (this + 1256);
      v9 = (this + 1236);
      *(this + 308) = 0;
      goto LABEL_21;
    }
  }

LABEL_22:
  v10 = *(this + 158);
  if (v10)
  {
    a2.n128_f32[0] = v2;
    md::LabelAnimator::runAnimations(v10, a2);
    if (*(*(this + 158) + 88) == 1)
    {
      std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](this + 158, 0);
      *(this + 1186) = *(this + 1188);
    }
  }

  v11 = *(this + 37);
  if (v11)
  {
    (*(*v11 + 624))(v11, v2);
    if ((*(**(this + 37) + 696))() && ((*(**(this + 37) + 704))(*(this + 37)) & 1) == 0)
    {
      md::Label::clearAnimatingPart(this);
    }
  }

  else
  {
    v12 = *(this + 34);
    if (v12)
    {
      (*(*v12 + 624))(v12, v2);
    }
  }

  result = *(this + 38);
  if (result)
  {
    (*(*result + 624))(result, v2);
    result = (*(**(this + 38) + 704))();
    if ((result & 1) == 0)
    {
      result = *(this + 38);
      *(this + 38) = 0;
      if (result)
      {
        v14 = *(*result + 8);

        return v14();
      }
    }
  }

  return result;
}

void ggl::Batcher::addRange(uint64_t a1, _OWORD *a2)
{
  if (*(a2 + 1) != *a2)
  {
    gm::MultiRange<unsigned long>::push_back(a1, a2);
  }
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 576))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 576))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    LOWORD(v3) = (*(*v3 + 576))(v3);
LABEL_6:
    v4 = BYTE1(v3);
    return v3 | (v4 << 8);
  }

  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
    goto LABEL_5;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    LOWORD(v3) = (*(*v3 + 264))(v3);
LABEL_5:
    v4 = BYTE1(v3);
    return v3 | (v4 << 8);
  }

  v4 = 0;
  return v3 | (v4 << 8);
}

void std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v10, **(a1 + 8), *a2);
  MaterialZIndex = md::MaterialResourceStore::getMaterialZIndex(**(a1 + 8), *a3);
  v6.n128_u32[0] = **(a1 + 16);
  v7 = (*(*v10 + 264))(v6);
  if ((v7 & 0x100000000) != 0)
  {
    v8 = 0;
    *MaterialZIndex = v7;
  }

  else
  {
    v8 = 1;
  }

  *(MaterialZIndex + 4) = v8;
  v9 = v11;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2B1AA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::MaterialResourceStore::getMaterialZIndex(void *a1, unint64_t a2)
{
  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::find(&v5, a1 + 110, a2);
  if (v5 == (a1[115] - a1[114]) >> 3)
  {
    return 0;
  }

  v4 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  result = *(*v7 + v4) + 8 * (v5 & 0x3F);
  ++*(*(*v6 + v4) + 24 * (v5 & 0x3F));
  return result;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 216))(v4, a2);
    v6 = v5 & 0xFFFFFF00;
    v7 = HIDWORD(v5);
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 216))(v9, v2);
    v11 = v10 & 0xFFFFFF00;
    v12 = HIDWORD(v10);
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  LODWORD(v14) = v11 | v13;
  v15 = v6 | v8;
  if (v14 >= (v6 | v8))
  {
    v16 = v6 | v8;
  }

  else
  {
    v16 = v14;
  }

  if (v12)
  {
    v15 = v16;
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if (v7)
  {
    v14 = v15;
  }

  else
  {
    v14 = v14;
  }

  if (v7)
  {
    LOBYTE(v12) = v17;
  }

  return v14 | (v12 << 32);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialZIndexHandle>();
    unk_1EB83C500 = 0xE515B39146CD9FB7;
    qword_1EB83C508 = "md::ls::UniqueMaterialZIndexHandle]";
    qword_1EB83C510 = 34;
  }
}

float *std::__function::__func<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1,std::allocator<md::ita::PrepareMeshRenderableBounds::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = md::VKMRenderResourcesStore::getRenderableData(**(a1 + 8), *a4);
  if (result[72])
  {
    v9 = result[70];
    v10 = result[71];
    v11 = v10 + (*(a5 + 8) * v9);
    v12 = v10 + (*(a5 + 20) * v9);
    v13 = *(a5 + 12);
    *a6 = *a5;
    *(a6 + 8) = v11;
    *(a6 + 12) = v13;
    *(a6 + 20) = v12;
  }

  else
  {
    v14 = std::__throw_bad_optional_access[abi:nn200100]();
    return md::VKMRenderResourcesStore::getKeyHandle<md::StyleEmissiveColorCacheKey>(v14, v15);
  }

  return result;
}

void *md::VKMRenderResourcesStore::getKeyHandle<md::StyleEmissiveColorCacheKey>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1 + 545, a2);
  if (result)
  {
    v4 = *(*(a1[502] + 8 * (result[3] >> 6)) + 16 * (result[3] & 0x3FLL) + 8);
    if (*(*(a1[508] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F)) == 0)
    {
      return 0;
    }

    else
    {
      return result[3];
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>((**(a1 + 8) + 5736), *a3);
  *(a2 + 14) = *(result + 16);
  return result;
}

void std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v11, **(a1 + 8), *a2);
  MaterialVisibilityOptions = md::MaterialResourceStore::getMaterialVisibilityOptions(**(a1 + 8), *a3);
  v6 = v11;
  v7.n128_u32[0] = **(a1 + 16);
  v8 = (*(*v11 + 848))(v11, v7);
  MaterialVisibilityOptions[1] = v8 & ((v8 & 0x100) >> 8);
  v9 = (*(*v6 + 360))(v6, **(a1 + 16));
  *MaterialVisibilityOptions = ((v9 & 0x100) == 0) | v9 & 1;
  v10 = v12;
  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void sub_1B2B1AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = *(a2 + 432);
  v9 = a3[1];
  v10 = ((v9 << 6) + (v9 >> 2) - 0x61C8864680B583EBLL + (((*a3 >> 34) + *a3 + (HIDWORD(*a3) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a3))) ^ v9;
  v11 = v8[1];
  if (!*&v11)
  {
    goto LABEL_22;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = ((v9 << 6) + (v9 >> 2) - 0x61C8864680B583EBLL + (((*a3 >> 34) + *a3 + (HIDWORD(*a3) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*a3))) ^ v9;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = v10 & (*&v11 - 1);
  }

  v14 = *(*v8 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (v15[2] != *a3 || v15[3] != v9)
  {
    goto LABEL_21;
  }

  if (v15[6])
  {
    goto LABEL_105;
  }

  v18 = std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a2 + 424), *a3, a3[1]);
  if (v18 && *(v18 + 48) == 1)
  {
    v15[4] = v18[4];
    v19 = v18[5];
    v15[5] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *(v15 + 48) = 1;
    goto LABEL_105;
  }

  v20 = geo::FrameCache<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::shared_ptr<gms::_Material<ggl::Texture2D>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual>::operator[](a2 + 152, a3);
  if ((v20[2] & 1) == 0)
  {
    v21 = *a3;
    gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(v34, *(a2 + 136));
    gms::MaterialManager<ggl::Texture2D>::rawMaterialForIDAndAttributes(&v35, a2, v21, a4, v34);
    std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>::operator=[abi:nn200100]<std::shared_ptr<gms::_Material<ggl::Texture2D>>,void>(v20, &v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v34);
    if ((v20[2] & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  v23 = *v20;
  v22 = v20[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = geo::FrameCache<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::shared_ptr<gms::_Material<ggl::Texture2D>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual>::operator[](a2 + 248, a3);
  if ((v24[2] & 1) == 0)
  {
    v25 = *a3;
    gss::ClientStyleState<gss::PropertyID>::targetClientStyleAttributes(v34, *(a2 + 136));
    gms::MaterialManager<ggl::Texture2D>::rawMaterialForIDAndAttributes(&v35, a2, v25, a4, v34);
    std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>::operator=[abi:nn200100]<std::shared_ptr<gms::_Material<ggl::Texture2D>>,void>(v24, &v35);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v36);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v34);
    if ((v24[2] & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  v27 = *v24;
  v26 = v24[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v23)
  {
    if (v27)
    {
      v28 = v22;
      v29 = v26;
      goto LABEL_57;
    }

    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v22;
    v27 = v23;
    v30 = v26;
    v29 = v22;
    if (v26)
    {
LABEL_56:
      std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      v23 = v27;
      v29 = v28;
    }

LABEL_57:
    v31 = *(v23 + 68);
    if (v31 <= 3)
    {
      if (v31 != 1)
      {
        if (v31 == 2)
        {
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v31 != 4)
    {
      if (v31 == 5)
      {
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v27)
  {
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v26;
    v30 = v22;
    v23 = v27;
    v29 = v26;
    if (v22)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (*(v15 + 48) == 1)
  {
    v32 = v15[5];
    *(v15 + 2) = 0uLL;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    }
  }

  else
  {
    *(v15 + 2) = 0uLL;
    *(v15 + 48) = 1;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if ((v15[6] & 1) == 0)
  {
LABEL_108:
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_105:
  *a1 = v15[4];
  v33 = v15[5];
  a1[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2B1BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    if (!v12)
    {
LABEL_3:
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  if (!v13)
  {
LABEL_4:
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (!v12)
  {
LABEL_5:
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  if (!v11)
  {
LABEL_6:
    if (!v10)
    {
LABEL_14:
      _Unwind_Resume(exception_object);
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    goto LABEL_14;
  }

LABEL_12:
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  if (!v10)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t geo::Color<float,4,(geo::ColorSpace)0>::hash(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = *(a1 + v1);
    v4 = LODWORD(v3) - 0x61C8864680B583EBLL;
    if (v3 == 0.0)
    {
      v4 = 0x9E3779B97F4A7C15;
    }

    v2 ^= (v2 >> 2) + (v2 << 6) + v4;
    v1 += 4;
  }

  while (v1 != 16);
  return ((v2 << 6) - 0x61C8864680B583EBLL + (v2 >> 2)) ^ v2;
}

uint64_t std::__function::__func<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::StandardPassList::_buildRouteLineMaskFrameGraph(BOOL const&,float const&,BOOL const&,gm::Matrix<int,2,1> const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36170;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassRouteLineDescriptor>(ecs2::Entity,md::ls::PassRouteLineDescriptor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A55590;
  a2[1] = *(result + 8);
  return result;
}

void *std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583EBLL + (((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2))) ^ a3;
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

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == a2 && result[3] == a3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1},std::allocator<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1}>,void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>((**(a1 + 8) + 5736), *a3);
  *(result + 16) = 0;
  return result;
}

void std::__function::__func<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0,std::allocator<md::ita::UpdateDynamicRenderables::operator()(ecs2::Query<md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *>)::$_0>,void ()(md::ls::IsDynamicRenderable const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds &,md::ls::RenderableVisibilityOptions &,md::ls::GeocentricBounds *)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3, float *a4, _BYTE *a5, uint64_t *a6)
{
  v7 = 0;
  v8 = *a6;
  v9 = *a2;
  *a5 = *(*a2 + 144);
  do
  {
    a4[v7] = *(v9 + 76 + v7 * 4);
    ++v7;
  }

  while (v7 != 3);
  v10 = 0;
  v11 = v9 + 88;
  do
  {
    a4[v10 + 3] = *(v11 + v10 * 4);
    ++v10;
  }

  while (v10 != 3);
  if (v8)
  {
    v12 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::Transform>(**(a1 + 8), *a3);
    ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v71, v12);
    v13 = 0;
    v14 = v72;
    v15 = &v72[2].i32[2];
    do
    {
      v16 = &v70[v13];
      v17 = *v15;
      *v16 = *(v15 - 1);
      *(v16 + 2) = v17;
      v13 += 12;
      v15 += 4;
    }

    while (v13 != 192);
    v18 = v14[18].i32[2];
    v68 = v14[18].i64[0];
    v69 = v18;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *v8 = xmmword_1B33AFF10;
    *(v8 + 16) = 0x80000000800000;
    __asm { FMOV            V4.4S, #1.0 }

    v67 = _Q4.i32[0];
    _Q4.f32[1] = a4[1];
    _Q4.f32[2] = _Q4.f32[1] * _Q4.f32[1];
    _Q4.f32[3] = (_Q4.f32[1] * _Q4.f32[1]) * _Q4.f32[1];
    v23 = vmulq_f32(_Q4, *v14);
    v24 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v70, *a4, vaddv_f32(*&vpaddq_f32(v23, v23)));
    v25 = 0;
    v73 = __PAIR64__(v26, LODWORD(v24));
    v74 = v27;
    *v8 = __PAIR64__(v26, LODWORD(v24));
    *(v8 + 8) = v74;
    do
    {
      *(&v75 + v25) = *(&v73 + v25) - *(&v68 + v25);
      v25 += 4;
    }

    while (v25 != 12);
    *(v8 + 24) = gm::Matrix<float,3,1>::normalized<int,void>(&v75);
    *(v8 + 28) = v28;
    *(v8 + 32) = v29;
    v30 = a4[4];
    v31.i64[0] = __PAIR64__(LODWORD(v30), v67);
    v31.f32[2] = v30 * v30;
    v31.f32[3] = (v30 * v30) * v30;
    v32 = vmulq_f32(v31, *v14);
    *(v8 + 12) = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v70, a4[3], vaddv_f32(*&vpaddq_f32(v32, v32)));
    *(v8 + 16) = v33;
    *(v8 + 20) = v34;
    v35 = a4[1];
    v36 = a4[3];
    v37 = a4[4];
    if ((v36 - *a4) >= 0.5 || (v37 - v35) >= 0.5)
    {
      v39 = gm::lerp<gm::Matrix<float,3,1>,double>(*a4, v35, a4[2], v36, v37, a4[5]);
      v41.i64[0] = __PAIR64__(LODWORD(v40), v67);
      v41.f32[2] = v40 * v40;
      v41.f32[3] = (v40 * v40) * v40;
      v42 = vmulq_f32(v41, *v14);
      v43 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v70, v39, vaddv_f32(*&vpaddq_f32(v42, v42)));
      v44 = 0;
      v75 = v43;
      v76 = v45;
      v77 = v46;
      do
      {
        v47 = (v8 + v44);
        v48 = *(&v75 + v44);
        *v47 = fminf(v48, *(v8 + v44));
        v47[3] = fmaxf(*(v8 + v44 + 12), v48);
        v44 += 4;
      }

      while (v44 != 12);
      v49 = a4[4];
      v50.i64[0] = __PAIR64__(LODWORD(v49), v67);
      v50.f32[2] = v49 * v49;
      v50.f32[3] = (v49 * v49) * v49;
      v51 = vmulq_f32(v50, *v14);
      v52 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v70, *a4, vaddv_f32(*&vpaddq_f32(v51, v51)));
      v53 = 0;
      v75 = v52;
      v76 = v54;
      v77 = v55;
      do
      {
        v56 = (v8 + v53);
        v57 = *(&v75 + v53);
        *v56 = fminf(v57, *(v8 + v53));
        v56[3] = fmaxf(*(v8 + v53 + 12), v57);
        v53 += 4;
      }

      while (v53 != 12);
      v58 = a4[1];
      v59.i64[0] = __PAIR64__(LODWORD(v58), v67);
      v59.f32[2] = v58 * v58;
      v59.f32[3] = (v58 * v58) * v58;
      v60 = vmulq_f32(v59, *v14);
      v61 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v70, a4[3], vaddv_f32(*&vpaddq_f32(v60, v60)));
      v62 = 0;
      v75 = v61;
      v76 = v63;
      v77 = v64;
      do
      {
        v65 = (v8 + v62);
        v66 = *(&v75 + v62);
        *v65 = fminf(v66, *(v8 + v62));
        v65[3] = fmaxf(*(v8 + v62 + 12), v66);
        v62 += 4;
      }

      while (v62 != 12);
    }

    ggl::BufferMemory::~BufferMemory(v71);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableBounds>();
    *algn_1EB83CF68 = 0x6B3ACE485940A135;
    qword_1EB83CF70 = "md::ls::MeshRenderableBounds]";
    qword_1EB83CF78 = 28;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GeocentricBounds>();
    *algn_1EB83D5F8 = 0xC2ED2352B044903BLL;
    qword_1EB83D600 = "md::ls::GeocentricBounds]";
    qword_1EB83D608 = 24;
  }
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3)
{
  v4 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), *a3);
  if (TextureStorageTracked)
  {
    v6 = *TextureStorageTracked;
  }

  else
  {
    v6 = 0;
  }

  v7 = **(a1 + 16);
  v9 = *(v7 + 312);
  v8 = *(v7 + 320);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v9 != v6)
  {
    v10 = *v4;
    v11 = ecs2::ExecutionTaskContext::currentEntity(v8);

    ecs2::addComponent<md::ls::CanEnableTexture>(v10, v11);
  }
}

uint64_t ecs2::addComponent<md::ls::CanEnableTexture>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A07548;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A07548;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A072F8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3)
{
  v4 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), a3[1]);
  if (TextureStorageTracked)
  {
    v6 = *TextureStorageTracked;
  }

  else
  {
    v6 = 0;
  }

  v7 = **(a1 + 16);
  v9 = *(v7 + 312);
  v8 = *(v7 + 320);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v9 != v6)
  {
    v10 = *v4;
    v11 = ecs2::ExecutionTaskContext::currentEntity(v8);

    ecs2::addComponent<md::ls::CanEnableTexture>(v10, v11);
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsTransparent>(ecs2::Entity,md::ls::IsTransparent &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A51408;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsTransparent>();
    unk_1EB83D9B0 = 0x73F0259EC1934FB1;
    qword_1EB83D9B8 = "md::ls::IsTransparent]";
    qword_1EB83D9C0 = 21;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 md::RenderItemPool::construct(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  v14 = *(a2 + 104);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v6 = md::FrameAllocator<ggl::RenderItem>::alloc(a1);
  *v6 = &off_1F2A5D8B8;
  *(v6 + 56) = v11;
  *(v6 + 40) = v10;
  *(v6 + 8) = v8;
  *(v6 + 24) = v9;
  *(v6 + 104) = v14;
  *(v6 + 72) = v12;
  *(v6 + 88) = v13;
  *(v6 + 64) = a3;
  result = *a4;
  *(v6 + 72) = *a4;
  *(v6 + 88) = 0;
  *(v6 + 96) = 1;
  return result;
}

uint64_t md::FrameAllocator<ggl::RenderItem>::alloc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  if (v3 == *(a1 + 16))
  {
    v2 = *v2;
    if (!v2)
    {
      v2 = malloc_type_malloc(120 * v3 + 16, 0x1020040EDED9539uLL);
      *v2 = 0;
      v2[1] = 0;
      **(a1 + 8) = v2;
    }

    *(a1 + 8) = v2;
    v3 = v2[1];
  }

  v2[1] = v3 + 1;
  return &v2[15 * v3 + 2];
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::IsMaterial const&,md::ls::RenderItemID const&,md::ls::CustomZIndex const&,md::ls::IsOpaque const*,md::ls::RenderableHash const&,md::ls::RenderOrderToUse &>,std::tuple<>>::containsAll<md::ls::IsMaterial const,md::ls::RenderItemID const,md::ls::CustomZIndex const,md::ls::RenderableHash const,md::ls::RenderOrderToUse>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0)
  {
    return *(v13 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__split_buffer<md::MaterialRaster::ResolvedMaterial>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MaterialRaster::ResolvedMaterial>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t md::MaterialRaster::updateStyleTextureIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6)
{
  v102 = *MEMORY[0x1E69E9840];
  *(a1 + 122) = 0;
  v83 = 0uLL;
  v82 = 0;
  v7 = *(a1 + 56) - *(a1 + 48);
  if (v7)
  {
    if ((v7 >> 3) <= 0x666666666666666)
    {
      v101 = &v82;
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MaterialRaster::ResolvedMaterial>>(v7 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (*(a3 + 8) == 1)
  {
    *(a3 + 8) = 0;
  }

  v8 = *(a1 + 48);
  if (v8 != *(a1 + 56))
  {
    v9 = *v8;
    v98 = 0;
    v97 = 0;
    *buf = v9;
    *&buf[8] = 0;
    gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(&v96, a2, buf, 0);
    v10 = v96;
    if (!v96)
    {
      operator new();
    }

    (*(*v96 + 976))(buf, v96, a6);
    (*(*v10 + 928))(v10, a6);
    (*(*v10 + 264))(v10, a6);
    (*(*v10 + 352))(v10, a6);
    v77 = v10[8];
    LOBYTE(v93) = 0;
    v95 = 0;
    LOBYTE(v90) = 0;
    v92 = 0;
    LOBYTE(v87) = 0;
    v89 = 0;
    LOBYTE(v84) = 0;
    v86 = 0;
    if (a4)
    {
      v11 = (*(*v10 + 1096))(v10, a6);
      v13 = v12 & 0xFF00000000;
      if ((v12 & 0xFF00000000) != 0)
      {
        v93 = v11;
        v94 = v12;
        v95 = 1;
      }

      v14 = (*(*v10 + 1128))(v10, a6);
      v16 = v15 & 0xFF00000000;
      if ((v15 & 0xFF00000000) != 0)
      {
        v90 = v14;
        v91 = v15;
        v92 = 1;
      }

      v17 = (*(*v10 + 1160))(v10, a6);
      v19 = v18 & 0xFF00000000;
      if ((v18 & 0xFF00000000) != 0)
      {
        v87 = v17;
        v88 = v18;
        v89 = 1;
      }

      v20 = (*(*v10 + 1192))(v10, a6);
      if ((v21 & 0xFF00000000) != 0)
      {
        v84 = v20;
        v85 = v21;
        v86 = 1;
      }

      if ((!v13 || (v93 == v97 ? (v22 = v94 == v98) : (v22 = 0), v22)) && (!v16 || (v90 == v97 ? (v23 = v91 == v98) : (v23 = 0), v23)) && (!v19 || (v87 == v97 ? (v24 = v88 == v98) : (v24 = 0), v24)))
      {
        if ((v21 & 0xFF00000000) == 0)
        {
          goto LABEL_52;
        }

        v25 = v84 != v97 || v85 != v98;
      }

      else
      {
        v25 = 1;
      }

      if (v77 == 5 && v25)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v26 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_ERROR, "Color Ramp materials do not support climate tint... ignoring tint", buf, 2u);
        }
      }

      else if (v25)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(9uLL);
      }
    }

LABEL_52:
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(1uLL);
  }

  v28 = *(a1 + 80) - *(a1 + 72);
  *(a1 + 123) = 1;
  v29 = v82;
  if (v82 != v83)
  {
    v30 = 1;
    do
    {
      v30 &= *(v29 + 38);
      v29 += 40;
    }

    while (v29 != v83);
    *(a1 + 123) = v30;
  }

  v31 = (v28 >> 4);
  if ((v28 >> 4))
  {
    v32 = 0;
    v33 = 0;
    if (a5)
    {
      v34 = &md::kBackgroundMaterialColorDark;
    }

    else
    {
      v34 = &md::kBackgroundMaterialColorLight;
    }

    v79 = vdupq_n_s64(2uLL);
    v80 = vdupq_n_s64(9uLL);
    do
    {
      v35 = *(a1 + 72) + 16 * v33;
      v36 = *v35;
      v37 = *(v35 + 8);
      v38 = (*v35 + 2 * v37);
      *buf = &v82;
      v39 = 126 - 2 * __clz(v37);
      if (v37)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,false>(v36, v38, buf, v40, 1);
      if (*(a1 + 122) == 1)
      {
        for (i = 0; i != 144; i += 16)
        {
          *&buf[i] = *v34;
        }

        v42 = *(v35 + 8);
        if (*(v35 + 8))
        {
          v43 = 0;
          v44 = 0;
          v45 = *v35;
          v46 = v82;
          do
          {
            v47 = v46 + 40 * v45[v43];
            if (*(v47 + 36) == 1)
            {
              v48 = 0;
              v49 = *(v47 + 37);
              v51 = v47 + 8;
              v50 = *(v47 + 8);
              v52 = 16 * (*(v51 + 8) - v50 > 0x10uLL);
              do
              {
                *&buf[v48] = vmlaq_n_f32(vmulq_n_f32(*&buf[v48], 1.0 - v50->f32[3]), *v50, v50->f32[3]);
                v50 = (v50 + v52);
                v48 += 16;
              }

              while (v48 != 144);
              v44 |= v49;
            }

            ++v43;
          }

          while (v43 != v42);
          if (v44)
          {
            v53 = 10;
            v54 = &v100 + 3;
            v55 = xmmword_1B33B0560;
            do
            {
              if (vmovn_s64(vcgtq_u64(v80, v55)).u8[0])
              {
                *(v54 - 4) = 0;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v55)).i32[1])
              {
                *v54 = 0;
              }

              v55 = vaddq_s64(v55, v79);
              v54 += 8;
              v53 -= 2;
            }

            while (v53);
          }
        }

        v56 = 0;
        v57 = 0;
        v58 = *(a1 + 32);
        v59 = *v58;
        v60 = (*v58 + v32);
        v61 = buf;
        do
        {
          if (*v61 != *v60 || *(v61 + 1) != v60[1])
          {
            break;
          }

          v57 = v56 > 7;
          v60 += 2;
          v61 += 16;
          ++v56;
        }

        while (v56 != 9);
        if (!v57)
        {
          v63 = 0;
          *(v58 + 32) = 1;
          do
          {
            *(v59 + v32 + v63) = *&buf[v63];
            v63 += 16;
          }

          while (v63 != 144);
        }
      }

      else
      {
        *buf = *v34;
        v64 = *(v35 + 8);
        if (*(v35 + 8))
        {
          v65 = 0;
          v66 = *v35;
          v67 = *buf;
          do
          {
            v68 = *v66++;
            v69 = v82 + 40 * v68;
            if (*(v69 + 36) == 1)
            {
              v67 = vmlaq_n_f32(vmulq_n_f32(v67, 1.0 - *(*(v69 + 8) + 12)), **(v69 + 8), *(*(v69 + 8) + 12));
              v65 |= *(v69 + 37);
            }

            --v64;
          }

          while (v64);
          *buf = v67;
          if (v65)
          {
            v70 = 0.0;
          }

          else
          {
            v70 = 1.0;
          }
        }

        else
        {
          v70 = 1.0;
        }

        *&buf[12] = v70;
        v71 = *(a1 + 16);
        v72 = *v71 + 16 * v33;
        if (*buf != *v72 || *&buf[8] != *(v72 + 8))
        {
          *(v71 + 32) = 1;
          *v72 = *buf;
        }
      }

      ++v33;
      v32 += 144;
    }

    while (v33 != v31);
  }

  v74 = *(a1 + 122);
  *buf = &v82;
  std::vector<md::MaterialRaster::ResolvedMaterial>::__destroy_vector::operator()[abi:nn200100](buf);
  return v74;
}

void sub_1B2B1D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47)
{
  a47 = &a33;
  std::vector<md::MaterialRaster::ResolvedMaterial>::__destroy_vector::operator()[abi:nn200100](&a47);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MaterialRaster::ResolvedMaterial>,md::MaterialRaster::ResolvedMaterial*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v6 = *(v5 + 32);
      *(a3 + 35) = *(v5 + 35);
      *(a3 + 32) = v6;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        *(v4 + 16) = v7;
        operator delete(v7);
      }

      v4 += 40;
    }

    while (v4 != a2);
  }
}

uint64_t gms::BasicMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::hotAdjustment(uint64_t a1, unint64_t a2, float a3, double a4, double a5, double a6, float a7)
{
  v11 = **(a1 + 48);
  if (v11 <= 0.00000011921 && (v12 = *(a1 + 16)) != 0 || v11 >= 1.0 && (v12 = *(a1 + 32)) != 0)
  {
    v13 = (*(*v12 + 744))(v12, a3);
    a7 = *(&v13 + 1);
    return v13 | (LODWORD(a7) << 32);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(*v14 + 744))(v14, a3);
    v7 = *&a2;
    v16 = v15 & 0xFFFFFF00;
    v17 = HIDWORD(a2);
    v18 = v15;
    v8 = *(&v15 + 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    LOBYTE(v17) = 0;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = (*(*v19 + 744))(v19, a3);
    v21 = v20 & 0xFFFFFF00;
    v22 = v20;
    a7 = *(&v20 + 1);
    v23 = HIDWORD(a2);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    LODWORD(v13) = v22 | v21;
    return v13 | (LODWORD(a7) << 32);
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v13) = v18 | v16;
  if (v23)
  {
    v24 = gm::lerp<gm::Matrix<float,3,1>,float>(COERCE_FLOAT(v18 | v16), v8, v7, COERCE_FLOAT(v22 | v21), a7, *&a2, v11);
    a7 = v25;
    *&v13 = v24;
  }

  else
  {
    a7 = v8;
  }

  return v13 | (LODWORD(a7) << 32);
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::hotAdjustment(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 744))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

unint64_t gms::ZoomablePropertyStore<gm::Matrix<float,3,1>>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    v19 = *(a1 + 72);
    v8 = LODWORD(v19) >> 8;
    v9 = *(a1 + 76);
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
    if (!*(a1 + 56) || (v10 = v7, v11 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6), (a1 + 48) == v11))
    {
      LOBYTE(v19) = 0;
      v22 = 0;
      *(a1 + 64) = v4;
      *(a1 + 68) = 0;
    }

    else
    {
      v12 = *(a1 + 32);
      if (!v12 || (v13 = a2 - v6, v13 > 1.0) || (v13 >= 0.0 ? (v14 = a1 + 48 == v10) : (v14 = 1), v14))
      {
        v19 = *(v11 + 8);
        v8 = LODWORD(v19) >> 8;
        v9 = *(v11 + 36);
        *(a1 + 64) = v4;
        *(a1 + 68) = 0;
      }

      else
      {
        v15 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6);
        *v28 = v15[4];
        *&v28[8] = *(v15 + 10);
        v16 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1);
        v26 = v16[4];
        v17 = *(v16 + 10);
        v27 = *(v16 + 10);
        if (*v28 == v26 && *&v28[8] == v17)
        {
          v21 = 0;
          v19 = *v28;
          v9 = *&v28[4];
        }

        else
        {
          v29 = a2 - v6;
          v19 = (*(*v12 + 48))(v12, &v29, v28, &v26);
          HIDWORD(v9) = v20;
          v21 = 1;
          v4 = a2;
        }

        v8 = LODWORD(v19) >> 8;
        *(a1 + 64) = v4;
        *(a1 + 68) = v21;
      }

      v22 = 1;
    }

    v23 = *(a1 + 84);
    if (v23 == v22)
    {
      if (*(a1 + 84))
      {
        *(a1 + 72) = LOBYTE(v19) | (v8 << 8);
        *(a1 + 76) = v9;
      }
    }

    else
    {
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        *(a1 + 72) = LOBYTE(v19) | (v8 << 8);
        *(a1 + 76) = v9;
        v24 = 1;
      }

      *(a1 + 84) = v24;
    }
  }

  return LOBYTE(v19) | ((*&v8 & 0xFFFFFFLL) << 8) | (v9 << 32);
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::coldAdjustment(uint64_t a1, unint64_t a2, float a3, double a4, double a5, double a6, float a7)
{
  v11 = **(a1 + 48);
  if (v11 <= 0.00000011921 && (v12 = *(a1 + 16)) != 0 || v11 >= 1.0 && (v12 = *(a1 + 32)) != 0)
  {
    v13 = (*(*v12 + 768))(v12, a3);
    a7 = *(&v13 + 1);
    return v13 | (LODWORD(a7) << 32);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(*v14 + 768))(v14, a3);
    v7 = *&a2;
    v16 = v15 & 0xFFFFFF00;
    v17 = HIDWORD(a2);
    v18 = v15;
    v8 = *(&v15 + 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    LOBYTE(v17) = 0;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = (*(*v19 + 768))(v19, a3);
    v21 = v20 & 0xFFFFFF00;
    v22 = v20;
    a7 = *(&v20 + 1);
    v23 = HIDWORD(a2);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    LODWORD(v13) = v22 | v21;
    return v13 | (LODWORD(a7) << 32);
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v13) = v18 | v16;
  if (v23)
  {
    v24 = gm::lerp<gm::Matrix<float,3,1>,float>(COERCE_FLOAT(v18 | v16), v8, v7, COERCE_FLOAT(v22 | v21), a7, *&a2, v11);
    a7 = v25;
    *&v13 = v24;
  }

  else
  {
    a7 = v8;
  }

  return v13 | (LODWORD(a7) << 32);
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::coldAdjustment(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 768))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::wetAdjustment(uint64_t a1, unint64_t a2, float a3, double a4, double a5, double a6, float a7)
{
  v11 = **(a1 + 48);
  if (v11 <= 0.00000011921 && (v12 = *(a1 + 16)) != 0 || v11 >= 1.0 && (v12 = *(a1 + 32)) != 0)
  {
    v13 = (*(*v12 + 792))(v12, a3);
    a7 = *(&v13 + 1);
    return v13 | (LODWORD(a7) << 32);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(*v14 + 792))(v14, a3);
    v7 = *&a2;
    v16 = v15 & 0xFFFFFF00;
    v17 = HIDWORD(a2);
    v18 = v15;
    v8 = *(&v15 + 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    LOBYTE(v17) = 0;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = (*(*v19 + 792))(v19, a3);
    v21 = v20 & 0xFFFFFF00;
    v22 = v20;
    a7 = *(&v20 + 1);
    v23 = HIDWORD(a2);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    LODWORD(v13) = v22 | v21;
    return v13 | (LODWORD(a7) << 32);
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v13) = v18 | v16;
  if (v23)
  {
    v24 = gm::lerp<gm::Matrix<float,3,1>,float>(COERCE_FLOAT(v18 | v16), v8, v7, COERCE_FLOAT(v22 | v21), a7, *&a2, v11);
    a7 = v25;
    *&v13 = v24;
  }

  else
  {
    a7 = v8;
  }

  return v13 | (LODWORD(a7) << 32);
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::wetAdjustment(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 792))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::dryAdjustment(uint64_t a1)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 816))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

unint64_t gms::BasicMaterial<ggl::Texture2D>::dryAdjustment(uint64_t a1, unint64_t a2, float a3, double a4, double a5, double a6, float a7)
{
  v11 = **(a1 + 48);
  if (v11 <= 0.00000011921 && (v12 = *(a1 + 16)) != 0 || v11 >= 1.0 && (v12 = *(a1 + 32)) != 0)
  {
    v13 = (*(*v12 + 816))(v12, a3);
    a7 = *(&v13 + 1);
    return v13 | (LODWORD(a7) << 32);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(*v14 + 816))(v14, a3);
    v7 = *&a2;
    v16 = v15 & 0xFFFFFF00;
    v17 = HIDWORD(a2);
    v18 = v15;
    v8 = *(&v15 + 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    LOBYTE(v17) = 0;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = (*(*v19 + 816))(v19, a3);
    v21 = v20 & 0xFFFFFF00;
    v22 = v20;
    a7 = *(&v20 + 1);
    v23 = HIDWORD(a2);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    LODWORD(v13) = v22 | v21;
    return v13 | (LODWORD(a7) << 32);
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v13) = v18 | v16;
  if (v23)
  {
    v24 = gm::lerp<gm::Matrix<float,3,1>,float>(COERCE_FLOAT(v18 | v16), v8, v7, COERCE_FLOAT(v22 | v21), a7, *&a2, v11);
    a7 = v25;
    *&v13 = v24;
  }

  else
  {
    a7 = v8;
  }

  return v13 | (LODWORD(a7) << 32);
}

unsigned __int16 *std::__introsort<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,false>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = (a2 - 1);
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *v11;
        if (*(**a3 + 40 * *v10 + 32) >= *(**a3 + 40 * *v11 + 32))
        {
          return result;
        }

        *v11 = *v10;
LABEL_176:
        *v10 = v78;
        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v85 = v11 + 1;
      v86 = v11[1];
      v87 = (v11 + 2);
      v88 = v11[2];
      v89 = *v11;
      v90 = **a3;
      v91 = *(v90 + 40 * v11[1] + 32);
      v92 = *(v90 + 40 * *v11 + 32);
      v93 = *(v90 + 40 * v11[2] + 32);
      if (v91 >= v92)
      {
        if (v93 < v91)
        {
          v94 = v11;
          *v85 = v88;
          *v87 = v86;
          result = v11 + 1;
          v95 = v86;
          v141 = v86;
          if (v93 < v92)
          {
            goto LABEL_178;
          }

LABEL_180:
          if (*(v90 + 40 * *v10 + 32) < *(v90 + 40 * v86 + 32))
          {
            *v87 = *v10;
            *v10 = v141;
            v149 = *v87;
            v150 = *v85;
            v151 = *(v90 + 40 * v149 + 32);
            if (v151 < *(v90 + 40 * v150 + 32))
            {
              v11[1] = v149;
              v11[2] = v150;
              v152 = *v11;
              if (v151 < *(v90 + 40 * *v11 + 32))
              {
                *v11 = v149;
                v11[1] = v152;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v93 < v91)
        {
          v94 = v11;
          result = v11 + 2;
          v86 = *v11;
          v95 = *v11;
          goto LABEL_178;
        }

        v94 = v11 + 1;
        *v11 = v86;
        v11[1] = v89;
        result = v11 + 2;
        v86 = v89;
        v95 = v89;
        if (v93 < v92)
        {
LABEL_178:
          *v94 = v88;
          *result = v89;
          v141 = v95;
          goto LABEL_180;
        }
      }

      v86 = v88;
      v141 = v88;
      goto LABEL_180;
    }

    if (v12 == 5)
    {
      v77 = **a3;

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v77);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v96 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v97 = **a3;
            v98 = 2;
            v99 = v11;
            do
            {
              v100 = v99[1];
              v101 = *v99;
              v99 = v96;
              v102 = *(v97 + 40 * v100 + 32);
              if (v102 < *(v97 + 40 * v101 + 32))
              {
                v103 = v98;
                while (1)
                {
                  *(v11 + v103) = v101;
                  v104 = v103 - 2;
                  if (v103 == 2)
                  {
                    break;
                  }

                  LOWORD(v101) = *(v11 + v103 - 4);
                  v103 -= 2;
                  if (v102 >= *(v97 + 40 * v101 + 32))
                  {
                    v105 = (v11 + v104);
                    goto LABEL_122;
                  }
                }

                v105 = v11;
LABEL_122:
                *v105 = v100;
              }

              v96 = v99 + 1;
              v98 += 2;
            }

            while (v99 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v142 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v143 = **a3;
          do
          {
            v144 = v9[1];
            v145 = *v9;
            v9 = v142;
            v146 = v145;
            v147 = *(v143 + 40 * v144 + 32);
            if (v147 < *(v143 + 40 * v146 + 32))
            {
              v148 = v9;
              do
              {
                *v148 = v146;
                LOWORD(v146) = *(v148 - 2);
                --v148;
              }

              while (v147 < *(v143 + 40 * v146 + 32));
              *v148 = v144;
            }

            v142 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v106 = (v12 - 2) >> 1;
        v107 = *a3;
        v108 = v106;
        do
        {
          v109 = v108;
          if (v106 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = &v11[v110];
            v112 = *v111;
            if (2 * v109 + 2 >= v12)
            {
              v113 = *v107;
            }

            else
            {
              v113 = *v107;
              if (*(*v107 + 40 * *v111 + 32) < *(*v107 + 40 * v111[1] + 32))
              {
                v112 = v111[1];
                ++v111;
                v110 = 2 * v109 + 2;
              }
            }

            v114 = &v11[v109];
            v115 = *v114;
            v116 = *(v113 + 40 * *v114 + 32);
            if (*(v113 + 40 * v112 + 32) >= v116)
            {
              LOWORD(v117) = v112;
              do
              {
                v118 = v111;
                *v114 = v117;
                if (v106 < v110)
                {
                  break;
                }

                v119 = (2 * v110) | 1;
                v111 = &v11[v119];
                v120 = 2 * v110 + 2;
                v117 = *v111;
                if (v120 < v12 && *(v113 + 40 * *v111 + 32) < *(v113 + 40 * v111[1] + 32))
                {
                  v117 = v111[1];
                  ++v111;
                  v119 = v120;
                }

                v114 = v118;
                v110 = v119;
              }

              while (*(v113 + 40 * v117 + 32) >= v116);
              *v118 = v115;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        do
        {
          v121 = 0;
          v122 = *v11;
          v123 = *a3;
          v124 = v11;
          do
          {
            result = &v124[v121];
            v125 = result + 1;
            v126 = result[1];
            v127 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 >= v12)
            {
              v121 = v127;
            }

            else
            {
              v129 = result[2];
              result += 2;
              v128 = v129;
              if (*(*v123 + 40 * v126 + 32) >= *(*v123 + 40 * v129 + 32))
              {
                v121 = v127;
              }

              else
              {
                LOWORD(v126) = v128;
                v125 = result;
              }
            }

            *v124 = v126;
            v124 = v125;
          }

          while (v121 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v122;
          }

          else
          {
            *v125 = *a2;
            *a2 = v122;
            v130 = (v125 - v11 + 2) >> 1;
            v131 = v130 < 2;
            v132 = v130 - 2;
            if (!v131)
            {
              v133 = v132 >> 1;
              v134 = &v11[v133];
              v135 = *v134;
              v136 = *v125;
              v137 = *v123;
              v138 = *(v137 + 40 * *v125 + 32);
              if (*(v137 + 40 * *v134 + 32) < v138)
              {
                do
                {
                  v139 = v134;
                  *v125 = v135;
                  if (!v133)
                  {
                    break;
                  }

                  v133 = (v133 - 1) >> 1;
                  v134 = &v11[v133];
                  v135 = *v134;
                  result = *(v137 + 40 * *v134 + 32);
                  v125 = v139;
                }

                while (result < v138);
                *v139 = v136;
              }
            }
          }

          v131 = v12-- <= 2;
        }

        while (!v131);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 40 * *v10 + 32);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 40 * *v13 + 32);
      v21 = *(v15 + 40 * *v11 + 32);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 40 * *v13 + 32) < *(v15 + 40 * *v11 + 32))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 40 * *v10 + 32) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = (v13 - 1);
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 40 * v29 + 32);
      v32 = *(v15 + 40 * v30 + 32);
      v33 = *(a2 - 2);
      v34 = *(v15 + 40 * v33 + 32);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 40 * *v28 + 32) < *(v15 + 40 * v35 + 32))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        if (*(v15 + 40 * *(a2 - 2) + 32) < v32)
        {
          *v28 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v38 = v13[1];
      v36 = (v13 + 1);
      v37 = v38;
      v39 = v11[2];
      v40 = *(v15 + 40 * v38 + 32);
      v41 = *(v15 + 40 * v39 + 32);
      v42 = *(a2 - 3);
      v43 = *(v15 + 40 * v42 + 32);
      if (v40 >= v41)
      {
        if (v43 < v40)
        {
          *v36 = v42;
          *(a2 - 3) = v37;
          v44 = v11[2];
          if (*(v15 + 40 * *v36 + 32) < *(v15 + 40 * v44 + 32))
          {
            v11[2] = *v36;
            *v36 = v44;
          }
        }
      }

      else
      {
        if (v43 < v40)
        {
          v11[2] = v42;
          goto LABEL_48;
        }

        v11[2] = v37;
        *v36 = v39;
        if (*(v15 + 40 * *(a2 - 3) + 32) < v41)
        {
          *v36 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      v45 = *v14;
      v46 = *v28;
      v47 = *(v15 + 40 * *v14 + 32);
      v48 = *(v15 + 40 * *v28 + 32);
      v49 = *v36;
      v50 = *(v15 + 40 * *v36 + 32);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v14 = v49;
        *v36 = v45;
        v36 = v14;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v28 = v45;
        *v14 = v46;
        v28 = v14;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v11;
          *v11 = v45;
          *v14 = v51;
          goto LABEL_57;
        }
      }

      *v28 = v49;
      *v36 = v46;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 40 * *v11 + 32);
    v25 = *(v15 + 40 * *v14 + 32);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 40 * *v11 + 32) < *(v15 + 40 * *v14 + 32))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 40 * *v10 + 32) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v52 = *v11;
    if (a5)
    {
      v53 = *(v15 + 40 * *v11 + 32);
LABEL_60:
      v54 = v11;
      do
      {
        v55 = v54;
        v57 = v54[1];
        ++v54;
        v56 = v57;
      }

      while (*(v15 + 40 * v57 + 32) < v53);
      v58 = a2;
      if (v55 == v11)
      {
        v58 = a2;
        do
        {
          if (v54 >= v58)
          {
            break;
          }

          v60 = *--v58;
        }

        while (*(v15 + 40 * v60 + 32) >= v53);
      }

      else
      {
        do
        {
          v59 = *--v58;
        }

        while (*(v15 + 40 * v59 + 32) >= v53);
      }

      if (v54 < v58)
      {
        v61 = *v58;
        v62 = v56;
        v63 = v54;
        v64 = v58;
        do
        {
          *v63 = v61;
          *v64 = v62;
          do
          {
            v55 = v63;
            v65 = v63[1];
            ++v63;
            v62 = v65;
          }

          while (*(v15 + 40 * v65 + 32) < v53);
          do
          {
            v66 = *--v64;
            v61 = v66;
          }

          while (*(v15 + 40 * v66 + 32) >= v53);
        }

        while (v63 < v64);
      }

      if (v55 != v11)
      {
        *v11 = *v55;
      }

      *v55 = v52;
      if (v54 < v58)
      {
        goto LABEL_79;
      }

      v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *>(v11, v55, *a3);
      v11 = v55 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *>(v55 + 1, a2, *a3);
      if (result)
      {
        a2 = v55;
        if (!v67)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v67)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MaterialRaster::updateStyleTextureIfNecessary(gms::MaterialManager<ggl::Texture2D> &,float,std::optional<unsigned long long> &,BOOL,BOOL)::$_0 &,unsigned short *,false>(v9, v55, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v55 + 1;
      }
    }

    else
    {
      v53 = *(v15 + 40 * *v11 + 32);
      if (*(v15 + 40 * *(v11 - 1) + 32) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(v15 + 40 * *v10 + 32))
      {
        v69 = v11 + 1;
        do
        {
          v11 = v69;
          if (v69 >= a2)
          {
            break;
          }

          ++v69;
        }

        while (v53 >= *(v15 + 40 * *v11 + 32));
      }

      else
      {
        do
        {
          v68 = v11[1];
          ++v11;
        }

        while (v53 >= *(v15 + 40 * v68 + 32));
      }

      v70 = a2;
      if (v11 < a2)
      {
        v70 = a2;
        do
        {
          v71 = *--v70;
        }

        while (v53 < *(v15 + 40 * v71 + 32));
      }

      if (v11 < v70)
      {
        v72 = *v11;
        v73 = *v70;
        do
        {
          *v11 = v73;
          *v70 = v72;
          do
          {
            v74 = v11[1];
            ++v11;
            v72 = v74;
          }

          while (v53 >= *(v15 + 40 * v74 + 32));
          do
          {
            v75 = *--v70;
            v73 = v75;
          }

          while (v53 < *(v15 + 40 * v75 + 32));
        }

        while (v11 < v70);
      }

      v76 = (v11 - 1);
      if (v11 - 1 != v9)
      {
        *v9 = *v76;
      }

      a5 = 0;
      *v76 = v52;
    }
  }

  v79 = v11[1];
  v78 = *v11;
  v80 = **a3;
  v81 = *(v80 + 40 * v79 + 32);
  v82 = *(v80 + 40 * *v11 + 32);
  v83 = *v10;
  v84 = *(v80 + 40 * *v10 + 32);
  if (v81 < v82)
  {
    if (v84 >= v81)
    {
      *v11 = v79;
      v11[1] = v78;
      if (*(v80 + 40 * *v10 + 32) >= v82)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v83;
    }

    goto LABEL_176;
  }

  if (v84 < v81)
  {
    v11[1] = v83;
    *v10 = v79;
    v140 = *v11;
    if (*(v80 + 40 * v11[1] + 32) < *(v80 + 40 * *v11 + 32))
    {
      *v11 = v11[1];
      v11[1] = v140;
    }
  }

  return result;
}

void std::vector<md::MaterialRaster::ResolvedMaterial>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
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

uint64_t ecs2::addComponent<md::ls::NeedsClimateTint>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4F128;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A4F128;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F29E5AD0[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsClimateTint>(ecs2::Entity,md::ls::NeedsClimateTint &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A4F128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsClimateTint>(ecs2::Entity,md::ls::NeedsClimateTint &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsClimateTint>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsClimateTint>();
    *algn_1EB83D5A8 = 0x11BB47B172EB0B40;
    qword_1EB83D5B0 = "md::ls::NeedsClimateTint]";
    qword_1EB83D5B8 = 24;
  }
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableVisibilityOptions>();
    unk_1EB83C420 = 0x768C72EB9B71F7ADLL;
    qword_1EB83C428 = "md::ls::RenderableVisibilityOptions]";
    qword_1EB83C430 = 35;
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CanEnableTexture>(ecs2::Entity,md::ls::CanEnableTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A07548;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0,std::allocator<md::ita::UpdateStyleTextureIfNecessary::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::operator()(ecs2::ExecutionTaskContext *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t **a6)
{
  v9 = *a6;
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = v11[1];
  v15[0] = *v11;
  v15[1] = v12;
  v15[2] = v11[2];
  v13 = *v10;
  v14 = ecs2::ExecutionTaskContext::currentEntity(a1);
  process<ecs2::Runtime>(v15, v13, v14, a3, a4, *a5, v9);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorRampDataHandle>();
    unk_1EB83D0C0 = 0xE103B5C60804137ELL;
    qword_1EB83D0C8 = "md::ls::ColorRampDataHandle]";
    qword_1EB83D0D0 = 27;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedGradientMaskDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedGradientMaskDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedGradientMaskDataHandle>(void)::localId;
    unk_1EB82D710 = 0x1E32B611A47A0BAALL;
    qword_1EB82D718 = "md::ls::SharedGradientMaskDataHandle]";
    qword_1EB82D720 = 36;
  }
}

uint64_t md::MaterialResourceStore::getGradientMaskData(void *a1, unint64_t a2)
{
  v3 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 218, a2);
  if (v3 == a1[223])
  {
    return 0;
  }

  v5 = (v3 - a1[222]) >> 3;
  v6 = (v5 >> 3) & 0x1FFFFFFFFFFFFFF8;
  LODWORD(v5) = v5 & 0x3F;
  result = *(a1[231] + v6) + 36 * v5;
  ++*(*(a1[225] + v6) + 24 * v5);
  return result;
}

__n128 std::__function::__func<md::ita::ProcessRenderableForStyleRouteLineMask::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *>)::$_0,std::allocator<md::ita::ProcessRenderableForStyleRouteLineMask::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t **a5)
{
  v6 = a1;
  v7 = *a5;
  v8 = *(a1 + 24);
  GradientMaskData = md::MaterialResourceStore::getGradientMaskData(**(a1 + 8), *a4);
  if (*(GradientMaskData + 12))
  {
    v13 = *GradientMaskData;
    v12 = (GradientMaskData + 4);
    v215 = v13;
    v216 = 1.0;
  }

  else
  {
    if ((*(GradientMaskData + 32) & 1) == 0)
    {
      if (v7)
      {
        v18 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((**(v6 + 16) + 3144), *v7);
        if (v18)
        {
          *v18 = 0;
        }
      }

      return result;
    }

    v216 = *(GradientMaskData + 28);
    v215 = *(GradientMaskData + 16);
    v12 = (GradientMaskData + 20);
  }

  v11.i64[0] = *v12;
  v214 = v11;
  v213 = v6;
  if (v7)
  {
    v14 = *v7;
    goto LABEL_127;
  }

  v15 = **(v6 + 16);
  LOBYTE(v217[0]) = 0;
  DWORD1(v217[0]) = v215;
  *(&v217[0] + 1) = v11.i64[0];
  *&v217[1] = v216;
  BYTE4(v217[1]) = 1;
  v219 = 0;
  v16 = *(v15 + 3360);
  v17 = *(v15 + 3376);
  v211 = v8;
  if (*(v15 + 3352) == v16)
  {
    v14 = ((*(v15 + 3384) - v17) >> 3) | 0x100000000;
    v222[0] = v14;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 3376, v222);
  }

  else
  {
    v14 = *(v17 + 8 * *(v16 - 8));
    *(v15 + 3360) = v16 - 8;
  }

  v222[0] = v14;
  v19 = v14 >> 6;
  v20 = *(v15 + 3160);
  v21 = *(v15 + 3152);
  if (v19 >= (v20 - v21) >> 3)
  {
    v22 = v19 + 1;
    v23 = v19 + 1 - ((v20 - v21) >> 3);
    v24 = *(v15 + 3168);
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

    bzero(*(v15 + 3160), 8 * v23);
    *(v15 + 3160) = v20 + 8 * v23;
    v21 = *(v15 + 3152);
  }

  v27 = *(v21 + 8 * v19);
  if (!v27)
  {
    operator new();
  }

  v28 = (v27 + 16 * (v14 & 0x3F));
  if (*v28 == -1 && v28[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 3176, v222);
    v30 = ((*(v15 + 3184) - *(v15 + 3176)) >> 3) - 1;
    *v28 = HIDWORD(v14);
    v28[1] = v30;
    v12 = ecs2::pool<md::Counter,64ul>::page_at_index((v15 + 3200), v30);
    v31 = v30 & 0x3F;
    v32 = (*(*(v15 + 3200) + 8 * v12) + 24 * v31);
    *v32 = vdupq_n_s64(1uLL);
    v32[1].i16[0] = 1;
    v33 = v30 >> 6;
    v34 = *(v15 + 3256);
    v35 = *(v15 + 3248);
    v36 = v34 - v35;
    v210 = v31;
    if (v30 >> 6 < (v34 - v35) >> 3)
    {
      goto LABEL_58;
    }

    v37 = v33 + 1;
    v38 = v33 + 1 - (v36 >> 3);
    v39 = *(v15 + 3264);
    if (v38 > (v39 - v34) >> 3)
    {
      v40 = v39 - v35;
      v41 = (v39 - v35) >> 2;
      if (v41 <= v37)
      {
        v41 = v33 + 1;
      }

      if (v40 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v41;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v42);
    }

    v43 = 0;
    v44 = (v38 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v45 = vdupq_n_s64(v44);
    do
    {
      v46 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(vdupq_n_s64(v43), xmmword_1B33B0560)));
      if (v46.i8[0])
      {
        *(v34 + 8 * v43) = 0;
      }

      if (v46.i8[4])
      {
        *(v34 + 8 * v43 + 8) = 0;
      }

      v43 += 2;
    }

    while (v44 - ((v38 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v43);
    *(v15 + 3256) = v34 + 8 * v38;
    v47 = *(v15 + 3280);
    v48 = *(v15 + 3272);
    v49 = (v47 - v48) >> 4;
    if (v49 <= v33)
    {
      v51 = v37 - v49;
      v52 = *(v15 + 3288);
      if (v51 > (v52 - v47) >> 4)
      {
        v53 = v52 - v48;
        v54 = v53 >> 3;
        if (v53 >> 3 <= v37)
        {
          v54 = v33 + 1;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF0)
        {
          v55 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v54;
        }

        if (!(v55 >> 60))
        {
          operator new();
        }

        goto LABEL_300;
      }

      bzero(*(v15 + 3280), 16 * v51);
      v50 = v47 + 16 * v51;
    }

    else
    {
      if (v37 >= v49)
      {
        goto LABEL_56;
      }

      v50 = v48 + 16 * v37;
    }

    *(v15 + 3280) = v50;
LABEL_56:
    v35 = *(v15 + 3248);
    v31 = v210;
    if (v36 < (*(v15 + 3256) - v35))
    {
      operator new();
    }

LABEL_58:
    v56 = (*(v35 + 8 * v33) + 24 * v31);
    *v56 = v217[0];
    v56[4] = 0;
    v56[20] = 0;
    if (BYTE4(v217[1]) == 1)
    {
      *(v56 + 4) = *(v217 + 4);
      v56[20] = 1;
    }

    v57 = *(v15 + 3304);
    v58 = *(v15 + 3296);
    v59 = v57 - v58;
    if (v33 < (v57 - v58) >> 3)
    {
      goto LABEL_90;
    }

    v60 = v33 + 1;
    v61 = v33 + 1 - (v59 >> 3);
    v62 = *(v15 + 3312);
    if (v61 > (v62 - v57) >> 3)
    {
      v63 = v62 - v58;
      v64 = (v62 - v58) >> 2;
      if (v64 <= v60)
      {
        v64 = v33 + 1;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v64;
      }

      if (!(v65 >> 61))
      {
        operator new();
      }

      goto LABEL_300;
    }

    v66 = 0;
    v67 = (v61 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v68 = vdupq_n_s64(v67);
    do
    {
      v69 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(vdupq_n_s64(v66), xmmword_1B33B0560)));
      if (v69.i8[0])
      {
        *(v57 + 8 * v66) = 0;
      }

      if (v69.i8[4])
      {
        *(v57 + 8 * v66 + 8) = 0;
      }

      v66 += 2;
    }

    while (v67 - ((v61 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v66);
    *(v15 + 3304) = v57 + 8 * v61;
    v70 = *(v15 + 3328);
    v71 = *(v15 + 3320);
    v72 = (v70 - v71) >> 4;
    if (v72 <= v33)
    {
      v74 = v60 - v72;
      v75 = *(v15 + 3336);
      if (v74 > (v75 - v70) >> 4)
      {
        v76 = v75 - v71;
        v77 = v76 >> 3;
        if (v76 >> 3 <= v60)
        {
          v77 = v33 + 1;
        }

        if (v76 >= 0x7FFFFFFFFFFFFFF0)
        {
          v78 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v77;
        }

        if (!(v78 >> 60))
        {
          operator new();
        }

        goto LABEL_300;
      }

      bzero(*(v15 + 3328), 16 * v74);
      v73 = v70 + 16 * v74;
    }

    else
    {
      if (v60 >= v72)
      {
        goto LABEL_88;
      }

      v73 = v71 + 16 * v60;
    }

    *(v15 + 3328) = v73;
LABEL_88:
    v58 = *(v15 + 3296);
    v31 = v210;
    if (v59 < (*(v15 + 3304) - v58))
    {
      operator new();
    }

LABEL_90:
    *(*(v58 + 8 * v33) + 8 * v31) = v219;
  }

  v79 = *a3;
  v80 = *(v15 + 3504);
  if (!*&v80)
  {
    goto LABEL_108;
  }

  v81 = vcnt_s8(v80);
  v81.i16[0] = vaddlv_u8(v81);
  if (v81.u32[0] > 1uLL)
  {
    v82 = *a3;
    if (v79 >= *&v80)
    {
      v82 = v79 % *&v80;
    }
  }

  else
  {
    v82 = (*&v80 - 1) & v79;
  }

  v83 = *(*(v15 + 3496) + 8 * v82);
  if (!v83 || (v84 = *v83) == 0)
  {
LABEL_108:
    operator new();
  }

  while (1)
  {
    v85 = v84[1];
    if (v85 == v79)
    {
      break;
    }

    if (v81.u32[0] > 1uLL)
    {
      if (v85 >= *&v80)
      {
        v85 %= *&v80;
      }
    }

    else
    {
      v85 &= *&v80 - 1;
    }

    if (v85 != v82)
    {
      goto LABEL_108;
    }

LABEL_107:
    v84 = *v84;
    if (!v84)
    {
      goto LABEL_108;
    }
  }

  if (v84[2] != v79)
  {
    goto LABEL_107;
  }

  v84[3] = v14;
  v86 = *a3;
  v87 = *(v15 + 3544);
  v6 = v213;
  if (!*&v87)
  {
    goto LABEL_126;
  }

  v88 = vcnt_s8(v87);
  v88.i16[0] = vaddlv_u8(v88);
  if (v88.u32[0] > 1uLL)
  {
    v89 = v14;
    if (v14 >= *&v87)
    {
      v89 = v14 % *&v87;
    }
  }

  else
  {
    v89 = (*&v87 - 1) & v14;
  }

  v90 = *(*(v15 + 3536) + 8 * v89);
  if (!v90 || (v91 = *v90) == 0)
  {
LABEL_126:
    operator new();
  }

  while (2)
  {
    v92 = v91[1];
    if (v92 != v14)
    {
      if (v88.u32[0] > 1uLL)
      {
        if (v92 >= *&v87)
        {
          v92 %= *&v87;
        }
      }

      else
      {
        v92 &= *&v87 - 1;
      }

      if (v92 != v89)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    if (v91[2] != v14)
    {
LABEL_125:
      v91 = *v91;
      if (!v91)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

  v91[3] = v86;
  v93 = *v211;
  v94 = ecs2::ExecutionTaskContext::currentEntity(v12);
  ecs2::addComponent<md::ls::StyleRouteLineMaskDataKeyHandle>(v93, v94, v14);
LABEL_127:
  v95 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((**(v6 + 16) + 3144), v14);
  v96 = v95;
  *(v95 + 4) = v215;
  v97 = v95 + 4;
  v98 = *(v95 + 20);
  *(v95 + 8) = v214.i64[0];
  *(v95 + 16) = v216;
  if ((v98 & 1) == 0)
  {
    *(v95 + 20) = 1;
  }

  *v95 = 1;
  v99 = std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>((**(v6 + 16) + 3064), v95);
  if (!v99)
  {
    v101 = **(v6 + 16);
LABEL_135:
    memset(v217, 0, 24);
    v219 = 0;
    v104 = *(v101 + 2928);
    v105 = *(v101 + 2944);
    if (*(v101 + 2920) == v104)
    {
      v222[0] = ((*(v101 + 2952) - v105) >> 3) | 0x100000000;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v101 + 2944, v222);
      v106 = v222[0];
    }

    else
    {
      v106 = *(v105 + 8 * *(v104 - 8));
      *(v101 + 2928) = v104 - 8;
    }

    v222[0] = v106;
    v107 = v106 >> 6;
    v108 = *(v101 + 2728);
    v109 = *(v101 + 2720);
    if (v107 >= (v108 - v109) >> 3)
    {
      v110 = v107 + 1;
      v111 = v107 + 1 - ((v108 - v109) >> 3);
      v112 = *(v101 + 2736);
      if (v111 > (v112 - v108) >> 3)
      {
        v113 = v112 - v109;
        if (v113 >> 2 > v110)
        {
          v110 = v113 >> 2;
        }

        if (v113 >= 0x7FFFFFFFFFFFFFF8)
        {
          v114 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v114 = v110;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v114);
      }

      bzero(*(v101 + 2728), 8 * v111);
      *(v101 + 2728) = v108 + 8 * v111;
      v109 = *(v101 + 2720);
    }

    v115 = *(v109 + 8 * v107);
    if (!v115)
    {
      operator new();
    }

    v116 = (v115 + 16 * (v106 & 0x3F));
    if (*v116 != -1 || v116[1] != 0)
    {
LABEL_215:
      v167 = v96[20];
      if ((v167 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
        goto LABEL_302;
      }

      v168 = geo::Color<float,4,(geo::ColorSpace)0>::hash(v97);
      v169 = v168 - 0x61C8864680B583EBLL;
      v170 = *(v101 + 3072);
      if (v170)
      {
        v171 = vcnt_s8(v170);
        v171.i16[0] = vaddlv_u8(v171);
        if (v171.u32[0] > 1uLL)
        {
          v172 = v168 - 0x61C8864680B583EBLL;
          if (v169 >= *&v170)
          {
            v172 = v169 % *&v170;
          }
        }

        else
        {
          v172 = (*&v170 - 1) & v169;
        }

        v173 = *(*(v101 + 3064) + 8 * v172);
        if (v173)
        {
          for (i = *v173; i; i = *i)
          {
            v175 = i[1];
            if (v175 == v169)
            {
              v176 = *(i + 36);
              if (v176 != v167 || v176 == 0)
              {
                if (v176 == v167)
                {
                  goto LABEL_245;
                }
              }

              else if (*(i + 20) == *v97 && *(i + 28) == *(v97 + 8))
              {
LABEL_245:
                i[5] = v106;
                v179 = *(v101 + 3112);
                if (!*&v179)
                {
                  goto LABEL_262;
                }

                v180 = vcnt_s8(v179);
                v180.i16[0] = vaddlv_u8(v180);
                if (v180.u32[0] > 1uLL)
                {
                  v181 = v106;
                  if (v106 >= *&v179)
                  {
                    v181 = v106 % *&v179;
                  }
                }

                else
                {
                  v181 = (*&v179 - 1) & v106;
                }

                v182 = *(*(v101 + 3104) + 8 * v181);
                if (!v182 || (v183 = *v182) == 0)
                {
LABEL_262:
                  operator new();
                }

                while (1)
                {
                  v184 = v183[1];
                  if (v184 == v106)
                  {
                    if (v183[2] == v106)
                    {
                      *(v183 + 24) = *v96;
                      v185 = (v183 + 28);
                      v186 = *(v183 + 44);
                      if (v186 == v96[20])
                      {
                        if (*(v183 + 44))
                        {
                          for (j = 0; j != 16; j += 4)
                          {
                            *(v185 + j) = *(v97 + j);
                          }
                        }
                      }

                      else
                      {
                        if (v186)
                        {
                          v188 = 0;
                        }

                        else
                        {
                          *v185 = *v97;
                          v188 = 1;
                        }

                        *(v183 + 44) = v188;
                      }

                      if (*&v217[1])
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](*&v217[1]);
                      }

                      v189 = **(v213 + 16);
                      v190 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v189 + 339, v106);
                      if (v190 == v189[344])
                      {
                        return result;
                      }

                      v191 = v190;
                      v192 = v189[343];
                      v193 = v189[377];
                      if (v189[376] != v193)
                      {
                        v103 = *(v193 - 8);
                        v189[377] = v193 - 8;
LABEL_279:
                        v195 = 0x9DDFEA08EB382D69 * ((8 * (v103 & 0x1FFFFFFF) + 8) ^ HIDWORD(v103));
                        v196 = 0x9DDFEA08EB382D69 * (HIDWORD(v103) ^ (v195 >> 47) ^ v195);
                        v197 = 0x9DDFEA08EB382D69 * (v196 ^ (v196 >> 47));
                        v198 = v189[372];
                        if (!*&v198)
                        {
                          goto LABEL_296;
                        }

                        result.n128_u64[0] = vcnt_s8(v198);
                        result.n128_u16[0] = vaddlv_u8(result.n128_u64[0]);
                        if (result.n128_u32[0] > 1uLL)
                        {
                          v199 = 0x9DDFEA08EB382D69 * (v196 ^ (v196 >> 47));
                          if (v197 >= *&v198)
                          {
                            v199 = v197 % *&v198;
                          }
                        }

                        else
                        {
                          v199 = v197 & (*&v198 - 1);
                        }

                        v200 = *(v189[371] + 8 * v199);
                        if (!v200 || (v201 = *v200) == 0)
                        {
LABEL_296:
                          operator new();
                        }

                        while (1)
                        {
                          v202 = v201[1];
                          if (v202 == v197)
                          {
                            if (v201[2] == v103)
                            {
                              v203 = (((v191 - v192) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
                              v204 = *(v189[346] + v203);
                              v205 = ((v191 - v192) >> 3) & 0x3F;
                              v206 = *(v189[352] + v203);
                              v207 = *(v189[358] + v203);
                              *(v206 + 24 * v205) = v103;
                              ++*(v204 + 24 * v205);
                              *(v207 + 8 * v205) = v103;
                              if (v103)
                              {
                                goto LABEL_298;
                              }

                              return result;
                            }
                          }

                          else
                          {
                            if (result.n128_u32[0] > 1uLL)
                            {
                              if (v202 >= *&v198)
                              {
                                v202 %= *&v198;
                              }
                            }

                            else
                            {
                              v202 &= *&v198 - 1;
                            }

                            if (v202 != v199)
                            {
                              goto LABEL_296;
                            }
                          }

                          v201 = *v201;
                          if (!v201)
                          {
                            goto LABEL_296;
                          }
                        }
                      }

                      v194 = v189[382];
                      if (v194)
                      {
                        v103 = (*(*v194 + 48))(v194);
                        goto LABEL_279;
                      }

LABEL_302:
                      v209 = std::__throw_bad_function_call[abi:nn200100]();
                      operator delete(v96);
                      _Unwind_Resume(v209);
                    }
                  }

                  else
                  {
                    if (v180.u32[0] > 1uLL)
                    {
                      if (v184 >= *&v179)
                      {
                        v184 %= *&v179;
                      }
                    }

                    else
                    {
                      v184 &= *&v179 - 1;
                    }

                    if (v184 != v181)
                    {
                      goto LABEL_262;
                    }
                  }

                  v183 = *v183;
                  if (!v183)
                  {
                    goto LABEL_262;
                  }
                }
              }
            }

            else
            {
              if (v171.u32[0] > 1uLL)
              {
                if (v175 >= *&v170)
                {
                  v175 %= *&v170;
                }
              }

              else
              {
                v175 &= *&v170 - 1;
              }

              if (v175 != v172)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v101 + 2744, v222);
    v118 = ((*(v101 + 2752) - *(v101 + 2744)) >> 3) - 1;
    *v116 = HIDWORD(v222[0]);
    v116[1] = v118;
    v119 = v118 & 0x3F;
    v120 = *(*(v101 + 2768) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v101 + 2768), v118)) + 24 * v119;
    *v120 = xmmword_1B33B09D0;
    *(v120 + 16) = 0;
    *(v120 + 18) = v220;
    *(v120 + 22) = v221;
    v121 = v118 >> 6;
    v122 = *(v101 + 2824);
    v123 = *(v101 + 2816);
    v124 = v122 - v123;
    v212 = v119;
    if (v118 >> 6 < (v122 - v123) >> 3)
    {
      goto LABEL_184;
    }

    v125 = v121 + 1;
    v126 = v121 + 1 - (v124 >> 3);
    v127 = *(v101 + 2832);
    if (v126 > (v127 - v122) >> 3)
    {
      v128 = v127 - v123;
      v129 = (v127 - v123) >> 2;
      if (v129 <= v125)
      {
        v129 = v121 + 1;
      }

      if (v128 >= 0x7FFFFFFFFFFFFFF8)
      {
        v130 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v130 = v129;
      }

      if (!(v130 >> 61))
      {
        operator new();
      }

      goto LABEL_300;
    }

    v131 = 0;
    v132 = (v126 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v133 = vdupq_n_s64(v132);
    do
    {
      v134 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(vdupq_n_s64(v131), xmmword_1B33B0560)));
      if (v134.i8[0])
      {
        *(v122 + 8 * v131) = 0;
      }

      if (v134.i8[4])
      {
        *(v122 + 8 * v131 + 8) = 0;
      }

      v131 += 2;
    }

    while (v132 - ((v126 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v131);
    *(v101 + 2824) = v122 + 8 * v126;
    v135 = *(v101 + 2848);
    v136 = *(v101 + 2840);
    v137 = (v135 - v136) >> 4;
    if (v137 <= v121)
    {
      v139 = v125 - v137;
      v140 = *(v101 + 2856);
      if (v139 > (v140 - v135) >> 4)
      {
        v141 = v140 - v136;
        v142 = v141 >> 3;
        if (v141 >> 3 <= v125)
        {
          v142 = v121 + 1;
        }

        if (v141 >= 0x7FFFFFFFFFFFFFF0)
        {
          v143 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v143 = v142;
        }

        if (!(v143 >> 60))
        {
          operator new();
        }

        goto LABEL_300;
      }

      bzero(*(v101 + 2848), 16 * v139);
      v138 = v135 + 16 * v139;
    }

    else
    {
      if (v125 >= v137)
      {
        goto LABEL_182;
      }

      v138 = v136 + 16 * v125;
    }

    *(v101 + 2848) = v138;
LABEL_182:
    v123 = *(v101 + 2816);
    v119 = v212;
    if (v124 < (*(v101 + 2824) - v123))
    {
      operator new();
    }

LABEL_184:
    v144 = *(v123 + 8 * v121) + 24 * v119;
    *v144 = v217[0];
    *(v144 + 16) = *&v217[1];
    *(&v217[0] + 1) = 0;
    *&v217[1] = 0;
    v145 = *(v101 + 2872);
    v146 = *(v101 + 2864);
    v147 = v145 - v146;
    if (v121 < (v145 - v146) >> 3)
    {
LABEL_214:
      *(*(v146 + 8 * v121) + 8 * v119) = v219;
      v106 = v222[0];
      goto LABEL_215;
    }

    v148 = v121 + 1;
    v149 = v121 + 1 - (v147 >> 3);
    v150 = *(v101 + 2880);
    if (v149 > (v150 - v145) >> 3)
    {
      v151 = v150 - v146;
      v152 = (v150 - v146) >> 2;
      if (v152 <= v148)
      {
        v152 = v121 + 1;
      }

      if (v151 >= 0x7FFFFFFFFFFFFFF8)
      {
        v153 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v153 = v152;
      }

      if (!(v153 >> 61))
      {
        operator new();
      }

      goto LABEL_300;
    }

    v154 = 0;
    v155 = (v149 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v156 = vdupq_n_s64(v155);
    do
    {
      v157 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(vdupq_n_s64(v154), xmmword_1B33B0560)));
      if (v157.i8[0])
      {
        *(v145 + 8 * v154) = 0;
      }

      if (v157.i8[4])
      {
        *(v145 + 8 * v154 + 8) = 0;
      }

      v154 += 2;
    }

    while (v155 - ((v149 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v154);
    *(v101 + 2872) = v145 + 8 * v149;
    v158 = *(v101 + 2896);
    v159 = *(v101 + 2888);
    v160 = (v158 - v159) >> 4;
    if (v160 > v121)
    {
      if (v148 >= v160)
      {
        goto LABEL_212;
      }

      v161 = v159 + 16 * v148;
LABEL_211:
      *(v101 + 2896) = v161;
LABEL_212:
      v146 = *(v101 + 2864);
      v119 = v212;
      if (v147 < (*(v101 + 2872) - v146))
      {
        operator new();
      }

      goto LABEL_214;
    }

    v162 = v148 - v160;
    v163 = *(v101 + 2904);
    if (v162 <= (v163 - v158) >> 4)
    {
      bzero(*(v101 + 2896), 16 * v162);
      v161 = v158 + 16 * v162;
      goto LABEL_211;
    }

    v164 = v163 - v159;
    v165 = v164 >> 3;
    if (v164 >> 3 <= v148)
    {
      v165 = v121 + 1;
    }

    if (v164 >= 0x7FFFFFFFFFFFFFF0)
    {
      v166 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v166 = v165;
    }

    if (!(v166 >> 60))
    {
      operator new();
    }

LABEL_300:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v100 = v99[5];
  v101 = **(v6 + 16);
  if (!v100)
  {
    goto LABEL_135;
  }

  v102 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((v101 + 2712), v100);
  if (v102)
  {
    v103 = *v102;
    if (*v102)
    {
LABEL_298:
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v217, v103);
      v208 = vextq_s8(v214, v214, 0xCuLL);
      v208.i32[0] = v215;
      v208.f32[3] = v216;
      *v218 = vcvt_f16_f32(v208);
      ggl::BufferMemory::~BufferMemory(v217);
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleRouteLineMaskDataKeyHandle>();
    *algn_1EB83BB98 = 0x8E45E81B6E5A8E0ELL;
    qword_1EB83BBA0 = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    qword_1EB83BBA8 = 39;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CanEnableTexture>(ecs2::Entity,md::ls::CanEnableTexture &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata;
  CanEnable = ecs2::BasicRegistry<void>::storage<md::ls::CanEnableTexture>(a2);
  v6 = CanEnable;
  v7 = v3 >> 22;
  v9 = (CanEnable + 8);
  v8 = *(CanEnable + 8);
  if (v3 >> 22 >= (*(CanEnable + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((CanEnable + 8), v7 + 1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata) = *(a2 + 4096);
}

uint64_t ecs2::addComponent<md::ls::IsTransparent>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51408;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A51408;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A072F8[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::CheckIfRequiresDepthPeel>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A07760;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A07760;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A072F8[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CheckIfRequiresDepthPeel>(ecs2::Entity,md::ls::CheckIfRequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A07760;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::IsTransparent>(ecs2::Entity,md::ls::IsTransparent &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata) = *(a2 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CheckIfRequiresDepthPeel>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata >= 0x200)
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

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CheckIfRequiresDepthPeel>(ecs2::Entity,md::ls::CheckIfRequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfRequiresDepthPeel>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfRequiresDepthPeel>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CheckIfRequiresDepthPeel>(void)::localId;
    unk_1EB82EC40 = 0x910D7E292AD5622FLL;
    qword_1EB82EC48 = "md::ls::CheckIfRequiresDepthPeel]";
    qword_1EB82EC50 = 32;
  }
}

ecs2::ExecutionTaskContext *std::__function::__func<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0,std::allocator<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::operator()(ecs2::ExecutionTaskContext *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a4 == 3)
  {
    v5 = &unk_1F2A078E8;
    v6 = ecs2::ExecutionTaskContext::currentEntity(result) << 32;
    v7 = &v5;
    v8[3] = v8;
    v8[0] = &unk_1F2A078E8;
    v8[1] = v6;
    v9 = 0;
    ecs2::Runtime::queueCommand();
    if (v9 != -1)
    {
      (off_1F2A072F8[v9])(&v4, v8);
    }

    v9 = -1;
    return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::RibbonPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::RibbonPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void md::DaVinciGroundRenderLayer::layoutRibbons(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderable *,ggl::CommandBuffer *,BOOL)::$_0::operator()(int64x2_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5)
{
  v337 = a3;
  v7 = a1[6];
  v8 = *&(*a1)[1].i32[1];
  v326 = *a1[1];
  v9 = a1[3]->i64[0];
  if (a3)
  {
    v10 = a1[8]->i64[0];
    if (!v10 || !a1[9]->i64[0])
    {
      return;
    }

    v348 = a3;
    gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(&v357, v10, &v348, 0);
    v11 = *&v357;
    if (v357 == 0.0 || (v12 = (*(**&v357 + 360))(COERCE_DOUBLE(*&v357), v8), (v12 & 0x100) != 0) && (v12 & 1) == 0)
    {
LABEL_59:
      v31 = *&v358;
      if (v358 == 0.0)
      {
        return;
      }

      goto LABEL_60;
    }

    (*(*v11 + 976))(v330, v11, v8);
    v13 = (*(*v11 + 928))(v11, v8);
    if (v330[12])
    {
      v348.i8[0] = 0;
      LOBYTE(v349) = 0;
    }

    else
    {
      (*(*v11 + 232))(&v348, v11, v8);
      if ((v330[12] & 1) == 0)
      {
        if (v349)
        {
          v34 = -1;
        }

        else
        {
          v34 = 0;
        }

        v33 = vbslq_s8(vdupq_n_s32(v34), v348, v326);
        goto LABEL_50;
      }
    }

    LODWORD(v32) = v13;
    if ((v13 & 0x100000000) == 0)
    {
      v32 = 1.0;
    }

    v33.i64[0] = *v330;
    v33.i64[1] = __PAIR64__(LODWORD(v32), *&v330[8]);
LABEL_50:
    v326 = v33;
    if (*&v33.i32[3] != 0.0)
    {
      v35 = (*(*v11 + 304))(v11, v8);
      if ((v35 & 0x100000000) != 0)
      {
        v30 = *&v35;
      }

      else
      {
        v30 = 0.2;
      }

      (*(*v11 + 1040))(&__p, v11, v8);
      v36 = a1[10];
      v37 = v36->u8[12];
      if (v37 == __p.__r_.__value_.__s.__data_[12])
      {
        if (v36->i8[12])
        {
          for (i = 0; i != 3; ++i)
          {
            v36->i32[i] = *(&__p.__r_.__value_.__l.__data_ + i * 4);
          }
        }
      }

      else
      {
        if (v37)
        {
          v39 = 0;
          v40 = a1[10];
        }

        else
        {
          v41 = __p.__r_.__value_.__r.__words[0];
          v36->i32[2] = __p.__r_.__value_.__r.__words[1];
          v36->i64[0] = v41;
          v40 = a1[10];
          v39 = 1;
        }

        v36->i8[12] = v39;
        v36 = v40;
      }

      if (v36->i8[12] == 1)
      {
        v42 = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        __p.__r_.__value_.__s.__data_[16] = 0;
      }

      else
      {
        (*(*v11 + 816))(&__p, v11, v8);
        v42 = __p.__r_.__value_.__s.__data_[16];
      }

      v43 = a1[5];
      v44 = v43[1].u8[0];
      if (v44 == v42)
      {
        if (v43[1].i8[0])
        {
          for (j = 0; j != 4; ++j)
          {
            v43->i32[j] = *(&__p.__r_.__value_.__l.__data_ + j * 4);
          }
        }
      }

      else
      {
        if (v44)
        {
          v46 = 0;
        }

        else
        {
          *v43 = *&__p.__r_.__value_.__l.__data_;
          v46 = 1;
        }

        v43[1].i8[0] = v46;
      }

      v47 = a1[9]->i64[0];
      LOBYTE(v354[0]) = 1;
      v48 = v7[138].i64[1];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&__p, v47, &v357, &v337, v354, v8);
      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v48);
      }

      v49 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        md::LayoutContext::frameState(a1[4]);
        md::SharedResource::addFrameRef(v49, *(v50 + 624));
        v9 = *(v49 + 4);
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
      }

      v51 = *&v358;
      if (v358 == 0.0)
      {
        goto LABEL_178;
      }

LABEL_177:
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      goto LABEL_178;
    }

    goto LABEL_59;
  }

  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v348.i64, a4, a5);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  if (v351 != 1)
  {
    v30 = 0.2;
    goto LABEL_174;
  }

  if (v8 >= 0x17)
  {
    v15 = 23;
  }

  else
  {
    v15 = v8;
  }

  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v348.i64[0] + 24), 91, v15, 2u, 0) & 1) == 0)
  {
    if (v351 == 1)
    {
      (*(*v348.i64[0] + 56))(v348.i64[0]);
    }

    if (v350)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v350);
    }

    v31 = v348.i64[1];
    if (!v348.i64[1])
    {
      return;
    }

LABEL_60:
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    return;
  }

  v16 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*a1[4][1].i64[0], *(a1[4][1].i64[0] + 8));
  md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&__p, v16, &v348, 2u, v8);
  v326 = *&__p.__r_.__value_.__l.__data_;
  v17 = *(v348.i64[0] + 24);
  v18 = *v17;
  v324 = a2;
  v321 = v9;
  if (!*v17)
  {
    v20 = 0;
    goto LABEL_25;
  }

  v19 = *v18;
  v20 = *v18 == 1.0;
  if (*(v17 + 10) != 1 || (v19 != 0.0 ? (_ZF = v19 == 1.0) : (_ZF = 1), _ZF))
  {
LABEL_25:
    v22 = *(v17 + v20 + 11);
    if (v22 != 2)
    {
      goto LABEL_88;
    }
  }

  v23 = *(v17 + 16);
  if (v23)
  {
    v24 = *(v23 + 72);
    if (v24)
    {
      v25 = *v24 + 120 * *(v24 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x5Eu) != *(v25 + 12))
      {
        goto LABEL_91;
      }
    }

    if (*(v17 + 56))
    {
      v26 = *(v17 + 48);
      v27 = 8 * *(v17 + 56);
      while (1)
      {
        v28 = *(*v26 + 72);
        if (v28)
        {
          v29 = *v28 + 120 * *(v28 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x5Eu) != *(v29 + 12))
          {
            goto LABEL_91;
          }
        }

        v26 += 8;
        v22 = 1;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v22 = 1;
LABEL_88:
  v52 = *(v17 + 16 * v22 + 16);
  v30 = 0.2;
  if (!v52)
  {
    goto LABEL_121;
  }

  v53 = *(v52 + 72);
  if (v53)
  {
    v54 = *v53 + 120 * *(v53 + v15 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v54, 0x5Eu) != *(v54 + 12))
    {
      goto LABEL_91;
    }
  }

  v72 = v17 + 16 * v22;
  if (!*(v72 + 56))
  {
LABEL_121:
    v9 = v321;
    if (v18)
    {
      goto LABEL_100;
    }

    goto LABEL_122;
  }

  v73 = *(v72 + 48);
  v74 = 8 * *(v72 + 56);
  while (1)
  {
    v75 = *(*v73 + 72);
    if (v75)
    {
      v76 = *v75 + 120 * *(v75 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x5Eu) != *(v76 + 12))
      {
        break;
      }
    }

    v73 += 8;
    v74 -= 8;
    if (!v74)
    {
      goto LABEL_121;
    }
  }

LABEL_91:
  v55 = fminf(fmaxf(v8, 0.0), 23.0);
  if (!v18)
  {
    v57 = 0;
    v9 = v321;
LABEL_98:
    v59 = *(v17 + v57 + 11);
    v56 = 0.0;
    if (v59 == 2)
    {
      goto LABEL_353;
    }

    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v17, 94, v59, 0, v55);
    v30 = v60;
    if (v18)
    {
      goto LABEL_100;
    }

LABEL_122:
    v62 = 0;
    goto LABEL_106;
  }

  v56 = *v18;
  v57 = *v18 == 1.0;
  v9 = v321;
  if (*(v17 + 10) != 1)
  {
    goto LABEL_98;
  }

  if (v56 == 0.0 || v56 == 1.0)
  {
    goto LABEL_98;
  }

LABEL_353:
  __p.__r_.__value_.__s.__data_[0] = 1;
  LOBYTE(v357) = 1;
  v315 = v56;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v17, 94, 0, &__p, v55);
  v317 = v316;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v17, 94, 1, &v357, v55);
  v30 = v317 + ((v318 - v317) * v315);
  if (!v18)
  {
    goto LABEL_122;
  }

LABEL_100:
  v61 = *v18;
  v62 = *v18 == 1.0;
  if (*(v17 + 10) != 1 || (v61 != 0.0 ? (v63 = v61 == 1.0) : (v63 = 1), v63))
  {
LABEL_106:
    v64 = *(v17 + v62 + 11);
    if (v64 != 2)
    {
      goto LABEL_124;
    }
  }

  v65 = *(v17 + 16);
  if (v65)
  {
    v66 = *(v65 + 72);
    if (v66)
    {
      v67 = *v66 + 120 * *(v66 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v67, 0x1A2u) != *(v67 + 12))
      {
        goto LABEL_127;
      }
    }

    if (*(v17 + 56))
    {
      v68 = *(v17 + 48);
      v69 = 8 * *(v17 + 56);
      while (1)
      {
        v70 = *(*v68 + 72);
        if (v70)
        {
          v71 = *v70 + 120 * *(v70 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v71, 0x1A2u) != *(v71 + 12))
          {
            goto LABEL_127;
          }
        }

        v68 += 8;
        v64 = 1;
        v69 -= 8;
        if (!v69)
        {
          goto LABEL_124;
        }
      }
    }
  }

  v64 = 1;
LABEL_124:
  v77 = *(v17 + 16 * v64 + 16);
  if (!v77)
  {
    goto LABEL_134;
  }

  v78 = *(v77 + 72);
  if (!v78 || (v79 = *v78 + 120 * *(v78 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v79, 0x1A2u) == *(v79 + 12)))
  {
    v82 = v17 + 16 * v64;
    if (!*(v82 + 56))
    {
      goto LABEL_134;
    }

    v83 = *(v82 + 48);
    v84 = 8 * *(v82 + 56);
    while (1)
    {
      v85 = *(*v83 + 72);
      if (v85)
      {
        v86 = *v85 + 120 * *(v85 + v15 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x1A2u) != *(v86 + 12))
        {
          break;
        }
      }

      v83 += 8;
      v84 -= 8;
      if (!v84)
      {
        goto LABEL_134;
      }
    }
  }

LABEL_127:
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&__p, v17, 418, 2u, fminf(fmaxf(v8, 0.0), 23.0));
  v80 = a1[5];
  v81 = v80[1].i8[0];
  *v80 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(__p.__r_.__value_.__l.__data_)), vdupq_n_s32(0x37800080u));
  if ((v81 & 1) == 0)
  {
    v80[1].i8[0] = 1;
  }

LABEL_134:
  v87 = *(v348.i64[0] + 24);
  v88 = *v87;
  if (*v87 && (v89 = *v88, LODWORD(v88) = *v88 == 1.0, *(v87 + 10) == 1) && (v89 != 0.0 ? (v90 = v89 == 1.0) : (v90 = 1), !v90) || (v91 = *(v87 + v88 + 11), v91 == 2))
  {
    v92 = *(v87 + 16);
    if (v92)
    {
      v93 = *(v92 + 72);
      if (v93)
      {
        v94 = *v93 + 120 * *(v93 + v15 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v94, 0x88u) != *(v94 + 12))
        {
          goto LABEL_155;
        }
      }

      if (*(v87 + 56))
      {
        v95 = *(v87 + 48);
        v96 = 8 * *(v87 + 56);
        while (1)
        {
          v97 = *(*v95 + 72);
          if (v97)
          {
            v98 = *v97 + 120 * *(v97 + v15 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0x88u) != *(v98 + 12))
            {
              goto LABEL_155;
            }
          }

          v95 += 8;
          v91 = 1;
          v96 -= 8;
          if (!v96)
          {
            goto LABEL_152;
          }
        }
      }
    }

    v91 = 1;
  }

LABEL_152:
  v99 = *(v87 + 16 * v91 + 16);
  if (v99)
  {
    v100 = *(v99 + 72);
    if (v100)
    {
      v101 = *v100 + 120 * *(v100 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v101, 0x88u) != *(v101 + 12))
      {
LABEL_155:
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v87, 0x88u, v15, 2);
        v102 = v7[204].i64[1];
        v103 = *a1[7]->i32;
        v104 = v7[138].i64[1];
        v336[0] = v7[138].i64[0];
        v336[1] = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        md::TextureManager::texture(&v357, v102, &__p, v336, 1, v103);
        if (v104)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v104);
        }

        v105 = *&v357;
        a2 = v324;
        if (v357 == 0.0)
        {
          v9 = 0;
        }

        else
        {
          md::LayoutContext::frameState(a1[4]);
          md::SharedResource::addFrameRef(v105, *(v106 + 624));
          v9 = *(v105 + 4);
        }

        if (v358 != 0.0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&v358);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_172;
      }
    }

    v107 = v87 + 16 * v91;
    if (*(v107 + 56))
    {
      v108 = *(v107 + 48);
      v109 = 8 * *(v107 + 56);
      do
      {
        v110 = *(*v108 + 72);
        if (v110)
        {
          v111 = *v110 + 120 * *(v110 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v111, 0x88u) != *(v111 + 12))
          {
            goto LABEL_155;
          }
        }

        v108 += 8;
        v109 -= 8;
      }

      while (v109);
    }
  }

  a2 = v324;
LABEL_172:
  if (v351)
  {
    (*(*v348.i64[0] + 56))(v348.i64[0]);
  }

LABEL_174:
  if (v350)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v350);
  }

  v51 = v348.i64[1];
  if (v348.i64[1])
  {
    goto LABEL_177;
  }

LABEL_178:
  v112 = v7[114].i64[1];
  v113 = v112[1];
  if (v113 == *v112)
  {
    v115 = v112[11];
    if (!v115)
    {
      goto LABEL_357;
    }

    v51 = (*(*v115 + 48))(v115);
    v114 = &v51->__vftable;
  }

  else
  {
    v114 = *(v113 - 8);
    v112[1] = v113 - 8;
  }

  v117 = v112[5];
  v116 = v112[6];
  if (v117 >= v116)
  {
    v119 = v112[4];
    v120 = (v117 - v119) >> 3;
    if ((v120 + 1) >> 61)
    {
      goto LABEL_358;
    }

    v121 = v116 - v119;
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

    v351 = v112 + 7;
    if (v123)
    {
      v124 = ggl::zone_mallocator::instance(v51);
      v125 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::RibbonPipelineSetup *>(v124, v123);
    }

    else
    {
      v125 = 0;
    }

    v127 = &v125[8 * v123];
    v126 = &v125[8 * v120];
    *v126 = v114;
    v118 = v126 + 8;
    v128 = v112[4];
    v129 = v112[5] - v128;
    v130 = &v126[-v129];
    memcpy(&v126[-v129], v128, v129);
    v131 = v112[4];
    v112[4] = v130;
    v112[5] = v118;
    v132 = v112[6];
    v112[6] = v127;
    v349 = v131;
    v350 = v132;
    v348.i64[0] = v131;
    v348.i64[1] = v131;
    std::__split_buffer<ggl::DaVinci::RibbonPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::RibbonPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v348);
  }

  else
  {
    *v117 = v114;
    v118 = v117 + 1;
  }

  v112[5] = v118;
  v348.i64[0] = v114;
  v133 = v112[15];
  if (!v133)
  {
    goto LABEL_357;
  }

  (*(*v133 + 48))(v133, &v348);
  v134 = a1[11];
  v135 = v134[10].i64[1];
  if (v135 && (v136 = v134->i64[1], v137 = *(v135 + 32), v138 = *(v136 + 96), v137 < (*(v136 + 104) - v138) >> 3))
  {
    v139 = 0;
    v140 = *(*(v138 + 8 * v137) + 16);
    v141 = v140 != 0;
    v142 = (a1 + 12);
    if (a1[12]->i8[0] == 1 && v140)
    {
      if (a1[10]->i8[12])
      {
        v141 = 1;
        v139 = 1;
      }

      else
      {
        v139 = a1[5][1].i8[0];
        v141 = 1;
      }
    }
  }

  else
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v142 = (a1 + 12);
  }

  *&v330[1] = 0uLL;
  v331 = 257;
  v332 = 0;
  v334 = 0;
  v335 = 0;
  v143 = *a1;
  v330[0] = (*a1)->i8[5];
  v330[4] = v143->i8[6];
  v330[7] = a1[13]->i8[0];
  *&v330[11] = v139 & 1;
  v333 = 0;
  BYTE1(v334) = 1;
  md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&__p, v7[78].i64, v330);
  size = __p.__r_.__value_.__l.__size_;
  v348 = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(v114, v348.i64);
    std::__shared_weak_count::__release_shared[abi:nn200100](size);
    std::__shared_weak_count::__release_shared[abi:nn200100](size);
  }

  else
  {
    ggl::PipelineSetup::setState(v114, v348.i64);
  }

  v145 = v114[17];
  *(v145 + 96) = v7[135].i64[0];
  *(v145 + 104) = 0;
  v146 = v114[29];
  v147 = *(v146 + 104);
  *(v146 + 96) = 0;
  *(v146 + 104) = 0;
  if (v147)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v147);
  }

  if (**v142 == 1)
  {
    v148 = v114[2];
    if (v148)
    {
      if (*(v148 + 315) == 1)
      {
        if (v141)
        {
          *(v114[21] + 16) = v140;
        }

        else
        {
          v149 = v7[204].i64[1];
          v151 = *v149;
          v150 = v149[1];
          if (v150)
          {
            atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
            *(v114[21] + 16) = v151;
            std::__shared_weak_count::__release_shared[abi:nn200100](v150);
          }

          else
          {
            *(v114[21] + 16) = v151;
          }
        }
      }
    }
  }

  v152 = a1[14]->i64[0];
  v153 = v114[17];
  v153[1] = 0;
  v154 = *(v152 + 224);
  *v153 = v154;
  v155 = v114[29];
  v156 = *(v152 + 232);
  if (v156)
  {
    atomic_fetch_add_explicit((v156 + 8), 1uLL, memory_order_relaxed);
  }

  v157 = v155[1];
  *v155 = v154;
  v155[1] = v156;
  if (v157)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v157);
  }

  v158 = a1[14]->i64[0];
  v159 = v114[17];
  *(v159 + 24) = 0;
  v160 = *(v158 + 240);
  *(v159 + 16) = v160;
  v161 = v114[29];
  v162 = *(v158 + 248);
  if (v162)
  {
    atomic_fetch_add_explicit((v162 + 8), 1uLL, memory_order_relaxed);
  }

  v163 = *(v161 + 24);
  *(v161 + 16) = v160;
  *(v161 + 24) = v162;
  if (v163)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v163);
  }

  v164 = a1[15]->i64[0];
  v165 = v114[17];
  *(v165 + 56) = 0;
  v166 = *(v164 + 16);
  *(v165 + 48) = v166;
  v167 = v114[29];
  v168 = *(v164 + 24);
  if (v168)
  {
    atomic_fetch_add_explicit((v168 + 8), 1uLL, memory_order_relaxed);
  }

  v169 = *(v167 + 56);
  *(v167 + 48) = v166;
  *(v167 + 56) = v168;
  if (v169)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v169);
  }

  v170 = a1[14]->i64[0];
  v171 = v114[17];
  *(v171 + 40) = 0;
  v172 = *(v170 + 408);
  *(v171 + 32) = v172;
  v173 = v114[29];
  v174 = *(v170 + 416);
  if (v174)
  {
    atomic_fetch_add_explicit((v174 + 8), 1uLL, memory_order_relaxed);
  }

  v175 = *(v173 + 40);
  *(v173 + 32) = v172;
  *(v173 + 40) = v174;
  if (v175)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v175);
  }

  v176 = v114[17];
  *(v176 + 88) = 0;
  v177 = v7[122].i64[1];
  *(v176 + 80) = v177;
  v178 = v114[29];
  v179 = v7[123].i64[0];
  if (v179)
  {
    atomic_fetch_add_explicit((v179 + 8), 1uLL, memory_order_relaxed);
  }

  v180 = *(v178 + 88);
  *(v178 + 80) = v177;
  *(v178 + 88) = v179;
  if (v180)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v180);
  }

  v181 = v114[17];
  *(v181 + 136) = 0;
  v182 = v7[127].i64[1];
  *(v181 + 128) = v182;
  v183 = v114[29];
  v184 = v7[128].i64[0];
  if (v184)
  {
    atomic_fetch_add_explicit((v184 + 8), 1uLL, memory_order_relaxed);
  }

  v185 = *(v183 + 136);
  *(v183 + 128) = v182;
  *(v183 + 136) = v184;
  if (v185)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v185);
  }

  *v114[21] = (*a1)[18].i64[1];
  if ((*a1)->i8[6] == 1)
  {
    v186 = a1[11];
    v187 = v186[6].i64[1];
    if (v187 && (v188 = v186->i64[1], v189 = *(v187 + 32), v190 = *(v188 + 96), v189 < (*(v188 + 104) - v190) >> 3))
    {
      v191 = *(*(v190 + 8 * v189) + 16);
    }

    else
    {
      v191 = 0;
    }

    *(v114[21] + 8) = v191;
  }

  v192 = 1.0;
  v193 = 1.0;
  if (v9)
  {
    v193 = *(v9 + 80) / *(v9 + 84);
  }

  v194 = *(a1[16]->i64[0] + 1176);
  if (v30 != 0.0)
  {
    v192 = v193 / (v194 * v30);
  }

  v195 = v30 * 0.5;
  v327 = v195;
  v328 = LODWORD(v194);
  v329 = v192;
  v196 = a1[17]->i64[0];
  v197 = md::DaVinciGroundRenderLayer::RibbonStyleKeyHasher::operator()(&v327);
  v199 = v196[1];
  if (v199)
  {
    v200 = vcnt_s8(v199);
    v200.i16[0] = vaddlv_u8(v200);
    if (v200.u32[0] > 1uLL)
    {
      v201 = v197;
      if (v197 >= *&v199)
      {
        v201 = v197 % *&v199;
      }
    }

    else
    {
      v201 = (*&v199 - 1) & v197;
    }

    v202 = *(*v196 + 8 * v201);
    if (v202)
    {
      for (k = *v202; k; k = *k)
      {
        v204 = *(k + 1);
        if (v204 == v197)
        {
          if (k[4] == v195 && k[5] == v194 && k[6] == 0.0 && k[7] == v192)
          {
            v312 = v114[17];
            *(v312 + 112) = *(k + 4);
            *(v312 + 120) = 0;
            v313 = v114[29];
            v314 = *(v313 + 120);
            *(v313 + 112) = 0;
            *(v313 + 120) = 0;
            if (v314)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v314);
            }

            goto LABEL_310;
          }
        }

        else
        {
          if (v200.u32[0] > 1uLL)
          {
            if (v204 >= *&v199)
            {
              v204 %= *&v199;
            }
          }

          else
          {
            v204 &= *&v199 - 1;
          }

          if (v204 != v201)
          {
            break;
          }
        }
      }
    }
  }

  v205 = v7[130].i64[1];
  v206 = v205[1];
  if (v206 != *v205)
  {
    v207 = *(v206 - 8);
    v205[1] = v206 - 8;
    goto LABEL_273;
  }

  v208 = v205[11];
  if (!v208)
  {
LABEL_357:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_358:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v197 = (*(*v208 + 48))(v208);
  v207 = v197;
LABEL_273:
  v210 = v205[5];
  v209 = v205[6];
  v325 = a2;
  v322 = v139;
  if (v210 >= v209)
  {
    v212 = v205[4];
    v213 = (v210 - v212) >> 3;
    if ((v213 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v214 = v209 - v212;
    v215 = v214 >> 2;
    if (v214 >> 2 <= (v213 + 1))
    {
      v215 = v213 + 1;
    }

    if (v214 >= 0x7FFFFFFFFFFFFFF8)
    {
      v216 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v216 = v215;
    }

    v351 = v205 + 7;
    if (v216)
    {
      v217 = ggl::zone_mallocator::instance(v197);
      v218 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(v217, v216);
    }

    else
    {
      v218 = 0;
    }

    v220 = &v218[8 * v216];
    v219 = &v218[8 * v213];
    *v219 = v207;
    v211 = v219 + 1;
    v221 = v205[4];
    v222 = v205[5] - v221;
    v223 = v219 - v222;
    memcpy(v219 - v222, v221, v222);
    v224 = v205[4];
    v205[4] = v223;
    v205[5] = v211;
    v225 = v205[6];
    v205[6] = v220;
    v349 = v224;
    v350 = v225;
    v348.i64[0] = v224;
    v348.i64[1] = v224;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *,ggl::zone_mallocator> &>::~__split_buffer(&v348);
  }

  else
  {
    *v210 = v207;
    v211 = v210 + 1;
  }

  v205[5] = v211;
  v348.i64[0] = v207;
  v226 = v205[15];
  if (!v226)
  {
    goto LABEL_357;
  }

  v227 = v9;
  (*(*v226 + 48))(v226, &v348);
  ggl::BufferMemory::BufferMemory(&__p);
  ggl::ResourceAccessor::accessConstantData(&v348, 0, v207, 1);
  ggl::BufferMemory::operator=(&__p, &v348);
  ggl::BufferMemory::~BufferMemory(&v348);
  v228 = v341;
  *v341 = v195;
  v229 = *(a1[16]->i64[0] + 1176);
  v228[3] = 0.0;
  *(v228 + 1) = v229;
  v228[2] = v192;
  v230 = a1[17]->i64[0];
  v231 = md::DaVinciGroundRenderLayer::RibbonStyleKeyHasher::operator()(&v327);
  v232 = v230[1];
  if (!*&v232)
  {
    goto LABEL_306;
  }

  v233 = vcnt_s8(v232);
  v233.i16[0] = vaddlv_u8(v233);
  if (v233.u32[0] > 1uLL)
  {
    v234 = v231;
    if (v231 >= *&v232)
    {
      v234 = v231 % *&v232;
    }
  }

  else
  {
    v234 = (*&v232 - 1) & v231;
  }

  v235 = *(*v230 + 8 * v234);
  if (!v235 || (v236 = *v235) == 0)
  {
LABEL_306:
    operator new();
  }

  while (1)
  {
    v237 = *(v236 + 1);
    if (v237 == v231)
    {
      break;
    }

    if (v233.u32[0] > 1uLL)
    {
      if (v237 >= *&v232)
      {
        v237 %= *&v232;
      }
    }

    else
    {
      v237 &= *&v232 - 1;
    }

    if (v237 != v234)
    {
      goto LABEL_306;
    }

LABEL_305:
    v236 = *v236;
    if (!v236)
    {
      goto LABEL_306;
    }
  }

  if (v236[4] != v195 || v236[5] != v194 || v236[6] != 0.0 || v236[7] != v192)
  {
    goto LABEL_305;
  }

  v238 = v114[17];
  *(v238 + 112) = v207;
  *(v238 + 120) = 0;
  v239 = v114[29];
  v240 = *(v239 + 120);
  *(v239 + 112) = 0;
  *(v239 + 120) = 0;
  if (v240)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v240);
  }

  ggl::BufferMemory::~BufferMemory(&__p);
  v9 = v227;
  a2 = v325;
  v139 = v322;
LABEL_310:
  *(v114[21] + 24) = v9;
  v241 = a1[14]->i64[0];
  v242 = *a1;
  v243 = 1.0 / *&(*a1)[2].i32[2];
  if (*(v241 + 24) != 255)
  {
    for (m = 0; m != 4; ++m)
    {
      _D0 = v242[8].i64[m];
      __asm { FCVT            H0, D0 }

      v348.i16[m] = _D0;
    }

    goto LABEL_325;
  }

  if (v242->i8[5] == 1 && v242->i8[4] == 1)
  {
    v319 = 1.0 / *&(*a1)[2].i32[2];
    v249 = 0;
    v250 = *(v241 + 296);
    v251 = *(v241 + 304);
    v252 = *(v241 + 312);
    v253 = *(v241 + 320);
    v254 = v251 + v251;
    v255 = (v251 + v251) * v251;
    v256 = (v252 + v252) * v252;
    v257 = v250 + v250;
    v258 = (v250 + v250) * v251;
    v259 = (v252 + v252) * v253;
    v260 = v258 - v259;
    v261 = v252 * (v250 + v250);
    v262 = v253 * v254;
    v263 = v259 + v258;
    v264 = v253 * v254 + v261;
    v357 = 1.0 - (v255 + v256);
    v358 = v263;
    v265 = 1.0 - (v250 + v250) * v250;
    v266 = v254 * v252;
    v267 = v253 * v257;
    v363 = v264;
    v364 = v266 - v267;
    v359 = v261 - v262;
    v360 = v260;
    v361 = v265 - v256;
    v362 = v267 + v266;
    v365 = v265 - v255;
    p_p = &__p;
    v269 = &v357;
    do
    {
      v270 = 0;
      v271 = p_p;
      do
      {
        *v271->__words = v269[v270];
        v271 = (v271 + 32);
        v270 += 3;
      }

      while (v270 != 9);
      ++v249;
      p_p = (p_p + 8);
      ++v269;
    }

    while (v249 != 3);
    v340 = 0;
    v342 = 0;
    v343 = 0;
    v344 = 0;
    v346 = 0;
    v347 = 0x3FF0000000000000;
    v345 = 0;
    gm::Matrix<double,4,4>::inverted<int,void>(v348.i64, &__p);
    v272 = v242[7];
    v338[0] = v242[6];
    v338[1] = v272;
    v273 = gm::operator*<double,4,4,1>(v348.i64, v338);
    v275 = 0;
    *v354 = v273;
    v354[1] = v274;
    v354[2] = v276;
    v354[3] = v277;
    do
    {
      _D0 = v354[v275];
      __asm { FCVT            H0, D0 }

      *(&v355 + v275++) = _D0;
    }

    while (v275 != 4);
    _H0 = v356;
    __asm { FCVT            S0, H0 }

    v274.i32[0] = v355;
    v281.i64[0] = vcvtq_f32_f16(v274).u64[0];
    v281.i64[1] = __PAIR64__(LODWORD(v319), _S0);
  }

  else
  {
    for (n = 0; n != 4; ++n)
    {
      _D0 = v242[6].i64[n];
      __asm { FCVT            H0, D0 }

      v348.i16[n] = _D0;
    }

LABEL_325:
    _H0 = v348.i16[2];
    __asm { FCVT            S0, H0 }

    v198.i32[0] = v348.i32[0];
    v281.i64[0] = vcvtq_f32_f16(v198).u64[0];
    v281.i64[1] = __PAIR64__(LODWORD(v243), _S0);
  }

  v320 = v281;
  *&__p.__r_.__value_.__l.__data_ = v281;
  v286 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>(v7[23].i64, &__p);
  if (v286)
  {
    v287 = v286[4];
  }

  else
  {
    *&v287 = COERCE_DOUBLE(ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::pop(v7[115].i64[1]));
    v357 = *&v287;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v348, v287);
    *v352 = vcvt_f16_f32(v320);
    std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>(v7[23].i64, &__p);
    ggl::BufferMemory::~BufferMemory(&v348);
  }

  v288 = v114[17];
  *(v288 + 64) = *&v287;
  *(v288 + 72) = 0;
  v289 = v114[29];
  v290 = *(v289 + 72);
  *(v289 + 64) = 0;
  *(v289 + 72) = 0;
  if (v290)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v290);
  }

  *&__p.__r_.__value_.__l.__data_ = v326;
  __p.__r_.__value_.__s.__data_[16] = 1;
  v291 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>(v7[28].i64, &__p);
  if (v291)
  {
    v292 = *(v291 + 40);
  }

  else
  {
    *&v292 = COERCE_DOUBLE(ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::pop(v7[131].i64[1]));
    v357 = *&v292;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v348, v292);
    *v352 = vcvt_f16_f32(v326);
    ggl::BufferMemory::~BufferMemory(&v348);
    std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>(v7[28].i64, &__p);
  }

  v293 = v114[17];
  *(v293 + 144) = *&v292;
  *(v293 + 152) = 0;
  v294 = v114[29];
  v295 = *(v294 + 152);
  *(v294 + 144) = 0;
  *(v294 + 152) = 0;
  if (v295)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v295);
  }

  v296 = a1[10];
  if (v296->i8[12])
  {
    v297 = v326.f32[3];
    if (v139)
    {
      v298.i64[0] = v296->i64[0];
      v298.i32[2] = v296->i32[2];
      v298.i32[3] = 1.0;
      goto LABEL_341;
    }
  }

  else
  {
    v299 = a1[5];
    v297 = v326.f32[3];
    if (v299[1].i8[0] & v139)
    {
      v298 = *v299;
LABEL_341:
      v323 = v298;
      *&__p.__r_.__value_.__l.__data_ = v298;
      __p.__r_.__value_.__s.__data_[16] = 1;
      v300 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>(&v7[30].i64[1], &__p);
      if (v300)
      {
        v301 = *(v300 + 40);
      }

      else
      {
        *&v301 = COERCE_DOUBLE(ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(v7[129].i64[0]));
        v357 = *&v301;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v348, v301);
        *v352 = vcvt_f16_f32(v323);
        std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>(&v7[30].i64[1], &__p);
        ggl::BufferMemory::~BufferMemory(&v348);
      }

      v302 = v114[17];
      *(v302 + 160) = *&v301;
      *(v302 + 168) = 0;
      v303 = v114[29];
      v304 = *(v303 + 168);
      *(v303 + 160) = 0;
      *(v303 + 168) = 0;
      if (v304)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v304);
      }

      v297 = v326.f32[3];
    }
  }

  v305 = v297 >= 1.0;
  ggl::RenderItem::RenderItem(&v348, "");
  v351 = v114;
  v350 = md::DaVinciRenderStateCache::renderState(&v7[196], 3, v305, 1, 0, 1, a1[19]->u8[0], 3);
  v353 = 0x100000000;
  v306 = *a1;
  v307 = *a2;
  v308 = (*(*(v307 + 96) + 48) - *(*(v307 + 96) + 40)) / *(*(v307 + 96) + 8);
  if ((*a1)[18].i8[0])
  {
    v309 = vdupq_n_s64(1uLL);
    v309.i64[0] = (*(*(v307 + 96) + 48) - *(*(v307 + 96) + 40)) / *(*(v307 + 96) + 8);
    v306[12] = vaddq_s64(v306[12], v309);
    v306[16] = vaddq_s64(v306[16], v309);
  }

  v310 = a1[20]->i64[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  __p.__r_.__value_.__l.__size_ = v308;
  md::RenderItemPool::construct(v7[203].i64, &v348, v307, &__p);
  ggl::CommandBuffer::pushRenderItem(v310, v311);
}

void sub_1B2B255F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v56 = *(v54 - 184);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

uint64_t md::DaVinciGroundRenderLayer::RibbonStyleKeyHasher::operator()(float *a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 == 0.0)
  {
    v2 = 0;
  }

  v3 = LODWORD(v1) - 0x61C8864680B583EBLL;
  if (v1 == 0.0)
  {
    v3 = 0x9E3779B97F4A7C15;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = ((v2 >> 2) + (v2 << 6) + v3) ^ v2;
  v7 = LODWORD(v4) - 0x61C8864680B583EBLL;
  if (v4 == 0.0)
  {
    v7 = 0x9E3779B97F4A7C15;
  }

  v8 = (v7 + (v6 << 6) + (v6 >> 2)) ^ v6;
  v9 = LODWORD(v5) - 0x61C8864680B583EBLL;
  if (v5 == 0.0)
  {
    v9 = 0x9E3779B97F4A7C15;
  }

  return (v9 + (v8 << 6) + (v8 >> 2)) ^ v8;
}

void *std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&v13 + v2);
    v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
    if (v4 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v3 ^= (v3 >> 2) + (v3 << 6) + v5;
    v2 += 4;
  }

  while (v2 != 16);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v6)
    {
      v8 = v3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    do
    {
      v11 = result[1];
      if (v11 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>(void *result, __int128 *a2)
{
  v2 = 0;
  v3 = 0;
  v13 = *a2;
  do
  {
    v4 = *(&v13 + v2);
    v5 = LODWORD(v4) - 0x61C8864680B583EBLL;
    if (v4 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v3 ^= (v3 >> 2) + (v3 << 6) + v5;
    v2 += 4;
  }

  while (v2 != 16);
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_26;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v6)
    {
      v8 = v3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v3;
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
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
      goto LABEL_26;
    }

LABEL_25:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (v10[2] != *a2 || v10[3] != *(a2 + 1))
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
    v6 = a1[1];
    if (!*&v6)
    {
      return 0;
    }

    v7 = v5 - 0x61C8864680B583EBLL;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v5 - 0x61C8864680B583EBLL;
      if (v7 >= *&v6)
      {
        v9 = v7 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (result = *v10; result; result = *result)
      {
        v12 = *(result + 8);
        if (v12 == v7)
        {
          v13 = *(result + 32);
          if (v13 != v2 || v13 == 0)
          {
            if (v13 == v2)
            {
              return result;
            }
          }

          else if (*(result + 16) == *a2 && *(result + 24) == *(a2 + 8))
          {
            return result;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= *&v6)
            {
              v12 %= *&v6;
            }
          }

          else
          {
            v12 &= *&v6 - 1;
          }

          if (v12 != v9)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = std::__throw_bad_optional_access[abi:nn200100]();
    return md::MaterialTextureManager::TextureKey::hash(v16);
  }

  return result;
}

unint64_t md::MaterialTextureManager::TextureKey::hash(md::MaterialTextureManager::TextureKey *this)
{
  v1 = ((*this >> 34) + *this + (HIDWORD(*this) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(*this);
  v2 = (*(this + 4) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  return (*(this + 10) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  result = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
  v6 = result - 0x61C8864680B583EBLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_30;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = result - 0x61C8864680B583EBLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 != v6)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v13 = *(v11 + 32);
    if (v13 != v2 || v13 == 0)
    {
      if (v13 == v2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v11[2] == *a2 && v11[3] == *(a2 + 8))
    {
      return result;
    }

LABEL_29:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minHideOnCollapse(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 576))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 576))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::maxVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (v5 > v7)
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minZIndex(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 216))(v4, a2);
    v6 = v5 & 0xFFFFFF00;
    v7 = HIDWORD(v5);
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (*(*v9 + 216))(v9, v2);
    v11 = v10 & 0xFFFFFF00;
    v12 = HIDWORD(v10);
    v13 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    LOBYTE(v12) = 0;
  }

  LODWORD(v14) = v11 | v13;
  v15 = v6 | v8;
  if (v14 >= (v6 | v8))
  {
    v16 = v6 | v8;
  }

  else
  {
    v16 = v14;
  }

  if (v12)
  {
    v15 = v16;
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if (v7)
  {
    v14 = v15;
  }

  else
  {
    v14 = v14;
  }

  if (v7)
  {
    LOBYTE(v12) = v17;
  }

  return v14 | (v12 << 32);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

unint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::alpha(uint64_t a1, float a2)
{
  v4 = **(a1 + 48);
  if (v4 <= 0.00000011921 && (v5 = *(a1 + 16)) != 0 || v4 >= 1.0 && (v5 = *(a1 + 32)) != 0)
  {
    v6 = (*(*v5 + 624))(v5, a2);
    v7 = HIDWORD(v6);
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (*(*v8 + 624))(v8, a2);
      v10 = v9 & 0xFFFFFF00;
      v11 = HIDWORD(v9);
      v12 = v9;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      LOBYTE(v11) = 0;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = (*(*v13 + 624))(v13, a2);
      v15 = v14 & 0xFFFFFF00;
      v7 = HIDWORD(v14);
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(v7) = 0;
    }

    v17 = v16 | v15;
    v18 = v12 | v10;
    if (v7)
    {
      *&v18 = COERCE_FLOAT(v12 | v10) + ((*&v17 - COERCE_FLOAT(v12 | v10)) * v4);
      v19 = 1;
    }

    else
    {
      v19 = v11;
    }

    if (v11)
    {
      LODWORD(v6) = v18;
    }

    else
    {
      LODWORD(v6) = v17;
    }

    if (v11)
    {
      LOBYTE(v7) = v19;
    }
  }

  return v6 | (v7 << 32);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

void *gms::PBRWithColorRampMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_f32[0];
  v6 = **(a1 + 48);
  a3.n128_u32[1] = 872415232;
  if (v6 <= 0.00000011921 && (v7 = *(a1 + 16)) != 0 || v6 >= 1.0 && (v7 = *(a1 + 32)) != 0)
  {
    v8 = *(*v7 + 192);

    return v8(a3);
  }

  else
  {
    v13 = v6;
    v10 = *(a1 + 16);
    if (v10)
    {
      (*(*v10 + 192))(&v16, a3.n128_f32[0]);
    }

    else
    {
      v16.i8[0] = 0;
      v17 = 0;
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 192))(&v14, v3);
    }

    else
    {
      v14.i8[0] = 0;
      v15 = 0;
    }

    if (v17 == 1)
    {
      if (v15 == 1)
      {
        v11 = vmlaq_n_f32(v16, vsubq_f32(v14, v16), v13);
      }

      else
      {
        v11 = v16;
      }

      *a2 = v11;
      v12 = a2 + 1;
    }

    else
    {
      a2->i8[0] = 0;
      a2[1].i8[0] = 0;
      if (v15 != 1)
      {
        return result;
      }

      *a2 = v14;
      v12 = a2 + 1;
    }

    v12->i8[0] = 1;
  }

  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 96))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::emissive(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LOWORD(v1) = (*(*v1 + 96))(v1);
    v2 = BYTE1(v1);
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresDepthPeel>(ecs2::Entity,md::ls::RequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A078E8;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresDepthPeel>(ecs2::Entity,md::ls::RequiresDepthPeel &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(a2);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata) = *(a2 + 4096);
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  result = geo::Color<float,4,(geo::ColorSpace)0>::hash(a2);
  v6 = result - 0x61C8864680B583EBLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_30;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = result - 0x61C8864680B583EBLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 != v6)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v13 = *(v11 + 32);
    if (v13 != v2 || v13 == 0)
    {
      if (v13 == v2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v11[2] == *a2 && v11[3] == *(a2 + 8))
    {
      return result;
    }

LABEL_29:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ShouldSkipRender>(ecs2::Entity,md::ls::ShouldSkipRender &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A350D8;
  a2[1] = *(result + 8);
  return result;
}

_BYTE *std::__function::__func<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>((**(a1 + 8) + 3144), *a3);
  v5 = result && (*result & 1) != 0;
  *(a2 + 11) = v5;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::Style> * const&>(ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::Style> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::RouteStyleContext::RouteStyleContext(uint64_t a1, float *a2, uint64_t a3, int a4, float a5)
{
  v423 = *MEMORY[0x1E69E9840];
  *(a1 + 264) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 2) = 0;
  v10 = *(a3 + 248);
  v11 = *(a3 + 256);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v414, v10, v11);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v417)
  {
    v404 = a4;
    v12 = a2[2];
    v13 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*a2 + 16), *(*(*a2 + 16) + 8));
    v14 = v414[3];
    if (v12 >= 0x17)
    {
      v15 = 23;
    }

    else
    {
      v15 = v12;
    }

    v16 = *v14;
    v406 = a2;
    v410 = a3;
    if (*v14)
    {
      v17 = *v16;
      v18 = *v16 == 1.0;
      if (*(v14 + 10) == 1 && v17 != 0.0 && v17 != 1.0)
      {
LABEL_17:
        v21 = *(v14 + 16);
        if (v21)
        {
          v22 = *(v21 + 72);
          if (v22)
          {
            v23 = *v22 + 120 * *(v22 + v15 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x5Cu) != *(v23 + 12))
            {
              goto LABEL_30;
            }
          }

          if (*(v14 + 56))
          {
            v24 = *(v14 + 48);
            v25 = 8 * *(v14 + 56);
            v20 = 1;
            while (1)
            {
              v26 = *(*v24 + 72);
              if (v26)
              {
                v27 = *v26 + 120 * *(v26 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v27, 0x5Cu) != *(v27 + 12))
                {
                  goto LABEL_30;
                }
              }

              v24 += 8;
              v25 -= 8;
              if (!v25)
              {
                goto LABEL_27;
              }
            }
          }
        }

        v20 = 1;
LABEL_27:
        v28 = *(v14 + 16 * v20 + 16);
        if (v28)
        {
          v29 = *(v28 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v15 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x5Cu) != *(v30 + 12))
            {
LABEL_30:
              v407 = 1;
              goto LABEL_31;
            }
          }

          v42 = v14 + 16 * v20;
          if (*(v42 + 56))
          {
            v43 = *(v42 + 48);
            v44 = 8 * *(v42 + 56);
            while (1)
            {
              v45 = *(*v43 + 72);
              if (v45)
              {
                v46 = *v45 + 120 * *(v45 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x5Cu) != *(v46 + 12))
                {
                  goto LABEL_30;
                }
              }

              v407 = 0;
              v43 += 8;
              v44 -= 8;
              if (!v44)
              {
                goto LABEL_31;
              }
            }
          }
        }

        v407 = 0;
LABEL_31:
        if (v16)
        {
          v31 = *v16;
          v32 = *v16 == 1.0;
          if (*(v14 + 10) == 1 && v31 != 0.0 && v31 != 1.0)
          {
LABEL_39:
            v35 = *(v14 + 16);
            if (v35)
            {
              v36 = *(v35 + 72);
              if (v36)
              {
                v37 = *v36 + 120 * *(v36 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x5Du) != *(v37 + 12))
                {
                  goto LABEL_59;
                }
              }

              if (*(v14 + 56))
              {
                v38 = *(v14 + 48);
                v39 = 8 * *(v14 + 56);
                while (1)
                {
                  v40 = *(*v38 + 72);
                  if (v40)
                  {
                    v41 = *v40 + 120 * *(v40 + v15 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x5Du) != *(v41 + 12))
                    {
                      goto LABEL_59;
                    }
                  }

                  v38 += 8;
                  v34 = 1;
                  v39 -= 8;
                  if (!v39)
                  {
                    goto LABEL_56;
                  }
                }
              }
            }

            v34 = 1;
LABEL_56:
            v47 = *(v14 + 16 * v34 + 16);
            if (v47)
            {
              v48 = *(v47 + 72);
              if (v48)
              {
                v49 = *v48 + 120 * *(v48 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x5Du) != *(v49 + 12))
                {
LABEL_59:
                  v50 = 1;
LABEL_60:
                  v51 = v404;
                  goto LABEL_61;
                }
              }

              v65 = v14 + 16 * v34;
              if (*(v65 + 56))
              {
                v66 = *(v65 + 48);
                v67 = 8 * *(v65 + 56);
                v51 = v404;
                while (1)
                {
                  v68 = *(*v66 + 72);
                  if (v68)
                  {
                    v69 = *v68 + 120 * *(v68 + v15 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x5Du) != *(v69 + 12))
                    {
                      break;
                    }
                  }

                  v50 = 0;
                  v66 += 8;
                  v67 -= 8;
                  if (!v67)
                  {
                    goto LABEL_61;
                  }
                }

                v50 = 1;
LABEL_61:
                if (v407)
                {
                  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(buf, v13, &v414, v12, 2u);
                  *(a1 + 8) = *buf;
                }

                if (v50)
                {
                  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)93,(gss::PropertyID)490>(buf, v13, &v414, v12);
                  *(a1 + 56) = *buf;
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v411, v414[3], 504, v15, 2u, 0);
                *buf = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v411.f32)), vdupq_n_s32(0x37800080u));
                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v414[3], 507, v15, 2u, 0);
                md::AccessibilityHelper::luminanceAdjustedColor(&v411, *v13, buf, v52);
                *(a1 + 88) = v411;
                v53 = v414[3];
                v54 = *v53;
                if (*v53 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v53 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v53 + v54 + 11), v57 == 2))
                {
                  v58 = *(v53 + 16);
                  if (v58)
                  {
                    v59 = *(v58 + 72);
                    if (v59)
                    {
                      v60 = *v59 + 120 * *(v59 + v15 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x13Fu) != *(v60 + 12))
                      {
                        goto LABEL_94;
                      }
                    }

                    if (*(v53 + 56))
                    {
                      v61 = *(v53 + 48);
                      v62 = 8 * *(v53 + 56);
                      while (1)
                      {
                        v63 = *(*v61 + 72);
                        if (v63)
                        {
                          v64 = *v63 + 120 * *(v63 + v15 + 16);
                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v64, 0x13Fu) != *(v64 + 12))
                          {
                            goto LABEL_94;
                          }
                        }

                        v61 += 8;
                        v57 = 1;
                        v62 -= 8;
                        if (!v62)
                        {
                          goto LABEL_91;
                        }
                      }
                    }
                  }

                  v57 = 1;
                }

LABEL_91:
                v70 = *(v53 + 16 * v57 + 16);
                if (!v70)
                {
                  goto LABEL_95;
                }

                v71 = *(v70 + 72);
                if (!v71 || (v72 = *v71 + 120 * *(v71 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v72, 0x13Fu) == *(v72 + 12)))
                {
                  v82 = v53 + 16 * v57;
                  if (!*(v82 + 56))
                  {
LABEL_95:
                    *(a1 + 312) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(104, 2, v53);
                    if (v51)
                    {
                      v73 = v414[3];
                      v74 = fminf(fmaxf(v12, 0.0), 23.0);
                      v75 = *v73;
                      if (*v73 && (v76 = *v75, LODWORD(v75) = *v75 == 1.0, *(v73 + 10) == 1) && (v76 != 0.0 ? (v77 = v76 == 1.0) : (v77 = 1), !v77) || (v78 = *(v73 + v75 + 11), v76 = 0.0, v78 == 2))
                      {
                        buf[0] = 1;
                        v411.i8[0] = 1;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v73, 313, 0, buf, v74);
                        v393 = v392;
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v73, 313, 1, &v411, v74);
                        v79 = v393 + ((v394 - v393) * v76);
                      }

                      else
                      {
                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v414[3], 313, v78, 0, v74);
                      }

                      *(a1 + 340) = v79;
                    }

                    WeakRetained = objc_loadWeakRetained((v410 + 200));
                    *(a1 + 1) = 0;
                    v405 = WeakRetained;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      *(a1 + 1) = 1;
                      if ((v407 & 1) == 0)
                      {
                        if (WeakRetained)
                        {
                          [WeakRetained lineColor];
                        }

                        else
                        {
                          memset(buf, 0, sizeof(buf));
                        }

                        *(a1 + 8) = *buf;
                      }

                      if ((v50 & 1) == 0)
                      {
                        if (WeakRetained)
                        {
                          [WeakRetained lineColor];
                        }

                        else
                        {
                          memset(buf, 0, sizeof(buf));
                        }

                        *(a1 + 56) = *buf;
                      }
                    }

                    else if ((v407 & 1) == 0)
                    {
                      if ((hasLogErrorOnce & 1) == 0)
                      {
                        if (GEOGetVectorKitRouteLog_onceToken != -1)
                        {
                          dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
                        }

                        v81 = GEOGetVectorKitRouteLog_log;
                        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, "Route FillColor not defined", buf, 2u);
                        }

                        md::RouteLineSection::dumpStyleAttributes(v410);
                        hasLogErrorOnce = 1;
                      }

                      *(a1 + 8) = xmmword_1B33B1340;
                    }

                    v87 = *(a1 + 8);
                    *(a1 + 24) = v87;
                    *(a1 + 40) = v87;
                    v88 = v414;
                    v89 = v414[3];
                    v90 = *v89;
                    if (*v89)
                    {
                      v91 = *v90;
                      v92 = *v90 == 1.0;
                      if (*(v89 + 10) == 1 && v91 != 0.0 && v91 != 1.0)
                      {
LABEL_139:
                        v95 = *(v89 + 16);
                        if (v95)
                        {
                          v96 = *(v95 + 72);
                          if (v96)
                          {
                            v97 = *v96 + 120 * *(v96 + v15 + 16);
                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v97, 0xF0u) != *(v97 + 12))
                            {
                              goto LABEL_152;
                            }
                          }

                          if (*(v89 + 56))
                          {
                            v98 = *(v89 + 48);
                            v99 = 8 * *(v89 + 56);
                            v94 = 1;
                            while (1)
                            {
                              v100 = *(*v98 + 72);
                              if (v100)
                              {
                                v101 = *v100 + 120 * *(v100 + v15 + 16);
                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v101, 0xF0u) != *(v101 + 12))
                                {
                                  goto LABEL_152;
                                }
                              }

                              v98 += 8;
                              v99 -= 8;
                              if (!v99)
                              {
                                goto LABEL_149;
                              }
                            }
                          }
                        }

                        v94 = 1;
LABEL_149:
                        v102 = *(v89 + 16 * v94 + 16);
                        if (!v102)
                        {
                          goto LABEL_153;
                        }

                        v103 = *(v102 + 72);
                        if (!v103 || (v104 = *v103 + 120 * *(v103 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v104, 0xF0u) == *(v104 + 12)))
                        {
                          v116 = v89 + 16 * v94;
                          if (!*(v116 + 56))
                          {
LABEL_153:
                            *(a1 + 72) = *(a1 + 56);
                            if (v90)
                            {
                              v105 = *v90;
                              v106 = *v90 == 1.0;
                              if (*(v89 + 10) == 1 && v105 != 0.0 && v105 != 1.0)
                              {
LABEL_161:
                                v109 = *(v89 + 16);
                                if (v109)
                                {
                                  v110 = *(v109 + 72);
                                  if (v110)
                                  {
                                    v111 = *v110 + 120 * *(v110 + v15 + 16);
                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v111, 0x1A3u) != *(v111 + 12))
                                    {
                                      goto LABEL_180;
                                    }
                                  }

                                  if (*(v89 + 56))
                                  {
                                    v112 = *(v89 + 48);
                                    v113 = 8 * *(v89 + 56);
                                    while (1)
                                    {
                                      v114 = *(*v112 + 72);
                                      if (v114)
                                      {
                                        v115 = *v114 + 120 * *(v114 + v15 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v115, 0x1A3u) != *(v115 + 12))
                                        {
                                          goto LABEL_180;
                                        }
                                      }

                                      v112 += 8;
                                      v108 = 1;
                                      v113 -= 8;
                                      if (!v113)
                                      {
                                        goto LABEL_177;
                                      }
                                    }
                                  }
                                }

                                v108 = 1;
LABEL_177:
                                v121 = *(v89 + 16 * v108 + 16);
                                if (!v121)
                                {
LABEL_181:
                                  *(a1 + 104) = *(a1 + 88);
                                  v124 = v88[3];
                                  v125 = *v124;
                                  if (*v124 && (v126 = *v125, LODWORD(v125) = *v125 == 1.0, *(v124 + 10) == 1) && (v126 != 0.0 ? (v127 = v126 == 1.0) : (v127 = 1), !v127) || (v128 = *(v124 + v125 + 11), v128 == 2))
                                  {
                                    v129 = *(v124 + 16);
                                    if (v129)
                                    {
                                      v130 = *(v129 + 72);
                                      if (v130)
                                      {
                                        v131 = *v130 + 120 * *(v130 + v15 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v131, 0x1FAu) != *(v131 + 12))
                                        {
                                          goto LABEL_208;
                                        }
                                      }

                                      if (*(v124 + 56))
                                      {
                                        v132 = *(v124 + 48);
                                        v133 = 8 * *(v124 + 56);
                                        while (1)
                                        {
                                          v134 = *(*v132 + 72);
                                          if (v134)
                                          {
                                            v135 = *v134 + 120 * *(v134 + v15 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v135, 0x1FAu) != *(v135 + 12))
                                            {
                                              goto LABEL_208;
                                            }
                                          }

                                          v132 += 8;
                                          v128 = 1;
                                          v133 -= 8;
                                          if (!v133)
                                          {
                                            goto LABEL_205;
                                          }
                                        }
                                      }
                                    }

                                    v128 = 1;
                                  }

LABEL_205:
                                  v141 = *(v124 + 16 * v128 + 16);
                                  if (!v141)
                                  {
                                    goto LABEL_209;
                                  }

                                  v142 = *(v141 + 72);
                                  if (!v142 || (v143 = *v142 + 120 * *(v142 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v143, 0x1FAu) == *(v143 + 12)))
                                  {
                                    v152 = v124 + 16 * v128;
                                    if (!*(v152 + 56))
                                    {
LABEL_209:
                                      *(a1 + 5) = 0;
                                      v144 = *(v124 + 11);
                                      if (v144 == 2)
                                      {
                                        v145 = *(v124 + 16);
                                        if (v145)
                                        {
                                          v146 = *(v145 + 72);
                                          if (v146)
                                          {
                                            v147 = *v146 + 120 * *(v146 + v15 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v147, 0x12Cu) != *(v147 + 12))
                                            {
                                              goto LABEL_229;
                                            }
                                          }

                                          if (*(v124 + 56))
                                          {
                                            v148 = *(v124 + 48);
                                            v149 = 8 * *(v124 + 56);
                                            while (1)
                                            {
                                              v150 = *(*v148 + 72);
                                              if (v150)
                                              {
                                                v151 = *v150 + 120 * *(v150 + v15 + 16);
                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v151, 0x12Cu) != *(v151 + 12))
                                                {
                                                  goto LABEL_229;
                                                }
                                              }

                                              v148 += 8;
                                              v144 = 1;
                                              v149 -= 8;
                                              if (!v149)
                                              {
                                                goto LABEL_226;
                                              }
                                            }
                                          }
                                        }

                                        v144 = 1;
                                      }

LABEL_226:
                                      v157 = *(v124 + 16 * v144 + 16);
                                      if (v157)
                                      {
                                        v158 = *(v157 + 72);
                                        if (v158)
                                        {
                                          v159 = *v158 + 120 * *(v158 + v15 + 16);
                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v159, 0x12Cu) != *(v159 + 12))
                                          {
LABEL_229:
                                            v160 = 0;
                                            goto LABEL_230;
                                          }
                                        }

                                        v169 = v124 + 16 * v144;
                                        if (*(v169 + 56))
                                        {
                                          v170 = *(v169 + 48);
                                          v171 = 8 * *(v169 + 56);
                                          while (1)
                                          {
                                            v172 = *(*v170 + 72);
                                            if (v172)
                                            {
                                              v173 = *v172 + 120 * *(v172 + v15 + 16);
                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v173, 0x12Cu) != *(v173 + 12))
                                              {
                                                goto LABEL_229;
                                              }
                                            }

                                            v170 += 8;
                                            v160 = 1;
                                            v171 -= 8;
                                            if (!v171)
                                            {
                                              goto LABEL_230;
                                            }
                                          }
                                        }
                                      }

                                      v160 = 1;
LABEL_230:
                                      v161 = *(v124 + 12);
                                      if (v161 == 2)
                                      {
                                        v162 = *(v124 + 16);
                                        if (v162)
                                        {
                                          v163 = *(v162 + 72);
                                          if (v163)
                                          {
                                            v164 = *v163 + 120 * *(v163 + v15 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v164, 0x12Cu) != *(v164 + 12))
                                            {
                                              goto LABEL_251;
                                            }
                                          }

                                          if (*(v124 + 56))
                                          {
                                            v165 = *(v124 + 48);
                                            v166 = 8 * *(v124 + 56);
                                            v161 = 1;
                                            while (1)
                                            {
                                              v167 = *(*v165 + 72);
                                              if (v167)
                                              {
                                                v168 = *v167 + 120 * *(v167 + v15 + 16);
                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v168, 0x12Cu) != *(v168 + 12))
                                                {
                                                  goto LABEL_251;
                                                }
                                              }

                                              v165 += 8;
                                              v166 -= 8;
                                              if (!v166)
                                              {
                                                goto LABEL_248;
                                              }
                                            }
                                          }
                                        }

                                        v161 = 1;
                                      }

LABEL_248:
                                      v174 = *(v124 + 16 * v161 + 16);
                                      if (!v174)
                                      {
                                        goto LABEL_258;
                                      }

                                      v175 = *(v174 + 72);
                                      if (!v175 || (v176 = *v175 + 120 * *(v175 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v176, 0x12Cu) == *(v176 + 12)))
                                      {
                                        v177 = v124 + 16 * v161;
                                        if (!*(v177 + 56))
                                        {
                                          goto LABEL_258;
                                        }

                                        v178 = *(v177 + 48);
                                        v179 = 8 * *(v177 + 56);
                                        while (1)
                                        {
                                          v180 = *(*v178 + 72);
                                          if (v180)
                                          {
                                            v181 = *v180 + 120 * *(v180 + v15 + 16);
                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v181, 0x12Cu) != *(v181 + 12))
                                            {
                                              break;
                                            }
                                          }

                                          v178 += 8;
                                          v179 -= 8;
                                          if (!v179)
                                          {
                                            goto LABEL_258;
                                          }
                                        }
                                      }

LABEL_251:
                                      if ((v160 & 1) == 0)
                                      {
                                        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(buf, v124, 0x12Cu, v15, 2);
                                        goto LABEL_259;
                                      }

LABEL_258:
                                      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(buf, v124, 0x12Cu, v15, 1);
LABEL_259:
                                      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate((a1 + 272));
                                      *(a1 + 272) = *buf;
                                      *(a1 + 288) = v420;
                                      v420 = 0;
                                      memset(buf, 0, sizeof(buf));
                                      *(a1 + 304) = v422;
                                      std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
                                      v182 = v406;
                                      v184 = *(a1 + 272);
                                      v183 = *(a1 + 280);
                                      *(a1 + 5) = v183 != v184;
                                      if (*(v406 + 145))
                                      {
                                        v185 = 0;
                                        *(a1 + 6) = 0;
                                      }

                                      else
                                      {
                                        v186 = *(a1 + 1) | (v183 != v184);
                                        *(a1 + 6) = v186 ^ 1;
                                        if (v186)
                                        {
                                          v185 = 0;
                                        }

                                        else
                                        {
                                          v185 = *(v406 + 192);
                                        }
                                      }

                                      *a1 = v185 & 1;
                                      md::RouteLineSection::halfWidthAtZoom(&v414, v12);
                                      v188 = v187 + v187;
                                      *(a1 + 316) = v187 + v187;
                                      v189 = v414;
                                      if (v417 != 1)
                                      {
                                        v198 = v414[3];
                                        v200 = *v198;
                                        v197 = 0.0;
                                        v206 = 0.0;
                                        goto LABEL_284;
                                      }

                                      v190 = v414[3];
                                      v191 = fminf(fmaxf(v12, 0.0), 23.0);
                                      v192 = *v190;
                                      if (*v190 && (v193 = *v192, LODWORD(v192) = *v192 == 1.0, *(v190 + 10) == 1) && (v193 != 0.0 ? (v194 = v193 == 1.0) : (v194 = 1), !v194) || (v195 = *(v190 + v192 + 11), v193 = 0.0, v195 == 2))
                                      {
                                        buf[0] = 1;
                                        v411.i8[0] = 1;
                                        v395 = v193;
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v190, 97, 0, buf, v191);
                                        v397 = v396;
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v190, 97, 1, &v411, v191);
                                        v197 = v397 + ((v398 - v397) * v395);
                                      }

                                      else
                                      {
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v414[3], 97, v195, 0, v191);
                                        v197 = v196;
                                      }

                                      v198 = v189[3];
                                      v199 = fminf(fmaxf(v12, 0.0), 23.0);
                                      v200 = *v198;
                                      if (*v198)
                                      {
                                        v201 = *v200;
                                        v202 = *v200 == 1.0;
                                        if (*(v198 + 10) == 1 && v201 != 0.0 && v201 != 1.0)
                                        {
LABEL_564:
                                          buf[0] = 1;
                                          v411.i8[0] = 1;
                                          v399 = v199;
                                          v400 = v201;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 505, 0, buf, v199);
                                          v409 = v188;
                                          v402 = v401;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 505, 1, &v411, v399);
                                          v206 = v402 + ((v403 - v402) * v400);
                                          v188 = v409;
LABEL_284:
                                          *(a1 + 332) = 0;
                                          v207 = v406[32];
                                          v208 = ((a5 * 0.5) * v188) * v207;
                                          *(a1 + 320) = v208;
                                          v209 = *(v410 + 144);
                                          v210 = *(v410 + 168);
                                          v211 = exp((*(v410 + 152) + (*(v410 + 176) - *(v410 + 152)) * 0.5) * 6.28318531 + -3.14159265);
                                          v212 = atan(v211);
                                          v213 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v212 * 114.591559 + -90.0) / ((v210 - v209) * v406[45]);
                                          *(a1 + 336) = v213 * a5;
                                          *(a1 + 324) = (v197 * a5) * v207;
                                          *(a1 + 328) = (v206 * a5) * v207;
                                          v214 = fminf(fmaxf(v12, 0.0), 23.0);
                                          if (v200)
                                          {
                                            v215 = *v200;
                                            v216 = *v200 == 1.0;
                                            if (*(v198 + 10) == 1 && v215 != 0.0 && v215 != 1.0)
                                            {
                                              goto LABEL_560;
                                            }
                                          }

                                          else
                                          {
                                            v216 = 0;
                                          }

                                          v217 = *(v198 + v216 + 11);
                                          v215 = 0.0;
                                          if (v217 != 2)
                                          {
                                            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 464, v217, 0, v214);
LABEL_290:
                                            *(a1 + 348) = v218;
                                            *(a1 + 344) = v208;
                                            occludedColorForColor(buf, (a1 + 8));
                                            *(a1 + 168) = *buf;
                                            occludedColorForColor(buf, (a1 + 40));
                                            *(a1 + 184) = *buf;
                                            if (*(v406 + 176) == 1)
                                            {
                                              v219 = +[VKDebugSettings sharedSettings];
                                              v220 = [v219 enableDynamicRouteWidth];

                                              if (v220)
                                              {
                                                *(a1 + 332) = fminf(fmaxf((v406[39] * 0.2) + -2.4, 0.0), 1.0);
                                              }
                                            }

                                            v221 = *(v410 + 264);
                                            v222 = *(v410 + 272);
                                            if (v222)
                                            {
                                              atomic_fetch_add_explicit(&v222->__shared_owners_, 1uLL, memory_order_relaxed);
                                            }

                                            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(buf, v221, v222);
                                            if (v222)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v222);
                                            }

                                            v223 = v422;
                                            *(a1 + 3) = v422;
                                            if (v223 != 1)
                                            {
                                              goto LABEL_358;
                                            }

                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v411, *(*buf + 24), 92, v15, 2u, 0);
                                            v408 = vdupq_n_s32(0x37800080u);
                                            *(a1 + 120) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v411.f32)), v408);
                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v411, *(*buf + 24), 93, v15, 2u, 0);
                                            *(a1 + 136) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v411.f32)), v408);
                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v411, *(*buf + 24), 504, v15, 2u, 0);
                                            *(a1 + 152) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v411.f32)), v408);
                                            v224 = *(*buf + 24);
                                            v225 = *v224;
                                            if (*v224)
                                            {
                                              v226 = *v225;
                                              v227 = *v225 == 1.0;
                                              if (*(v224 + 10) == 1 && v226 != 0.0 && v226 != 1.0)
                                              {
LABEL_303:
                                                v229 = *(v224 + 16);
                                                if (v229)
                                                {
                                                  v230 = *(v229 + 72);
                                                  v182 = v406;
                                                  if (v230)
                                                  {
                                                    v231 = *v230 + 120 * *(v230 + v15 + 16);
                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v231, 0x5Cu) != *(v231 + 12))
                                                    {
                                                      goto LABEL_316;
                                                    }
                                                  }

                                                  if (*(v224 + 56))
                                                  {
                                                    v232 = *(v224 + 48);
                                                    v233 = 8 * *(v224 + 56);
                                                    while (1)
                                                    {
                                                      v234 = *(*v232 + 72);
                                                      if (v234)
                                                      {
                                                        v235 = *v234 + 120 * *(v234 + v15 + 16);
                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v235, 0x5Cu) != *(v235 + 12))
                                                        {
                                                          break;
                                                        }
                                                      }

                                                      v232 += 8;
                                                      v228 = 1;
                                                      v233 -= 8;
                                                      if (!v233)
                                                      {
                                                        goto LABEL_313;
                                                      }
                                                    }

                                                    LOBYTE(v236) = 1;
                                                    goto LABEL_324;
                                                  }
                                                }

                                                v228 = 1;
LABEL_313:
                                                v236 = *(v224 + 16 * v228 + 16);
                                                if (!v236)
                                                {
LABEL_324:
                                                  v182 = v406;
LABEL_325:
                                                  if (*(a1 + 1) != 1)
                                                  {
                                                    goto LABEL_358;
                                                  }

                                                  if ((v236 & 1) == 0)
                                                  {
                                                    if (v405)
                                                    {
                                                      [v405 lineColor];
                                                      v224 = *(*buf + 24);
                                                    }

                                                    else
                                                    {
                                                      v411 = 0uLL;
                                                    }

                                                    *(a1 + 120) = v411;
                                                    v225 = *v224;
                                                  }

                                                  if (v225)
                                                  {
                                                    v244 = *v225;
                                                    v245 = *v225 == 1.0;
                                                    if (*(v224 + 10) == 1 && v244 != 0.0 && v244 != 1.0)
                                                    {
LABEL_336:
                                                      v247 = *(v224 + 16);
                                                      if (v247)
                                                      {
                                                        v248 = *(v247 + 72);
                                                        if (v248)
                                                        {
                                                          v249 = *v248 + 120 * *(v248 + v15 + 16);
                                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v249, 0x5Du) != *(v249 + 12))
                                                          {
                                                            goto LABEL_358;
                                                          }
                                                        }

                                                        if (*(v224 + 56))
                                                        {
                                                          v250 = *(v224 + 48);
                                                          v251 = 8 * *(v224 + 56);
                                                          while (1)
                                                          {
                                                            v252 = *(*v250 + 72);
                                                            if (v252)
                                                            {
                                                              v253 = *v252 + 120 * *(v252 + v15 + 16);
                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v253, 0x5Du) != *(v253 + 12))
                                                              {
                                                                goto LABEL_358;
                                                              }
                                                            }

                                                            v250 += 8;
                                                            v246 = 1;
                                                            v251 -= 8;
                                                            if (!v251)
                                                            {
                                                              goto LABEL_346;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      v246 = 1;
LABEL_346:
                                                      v254 = *(v224 + 16 * v246 + 16);
                                                      if (!v254)
                                                      {
                                                        goto LABEL_354;
                                                      }

                                                      v255 = *(v254 + 72);
                                                      if (v255)
                                                      {
                                                        v256 = *v255 + 120 * *(v255 + v15 + 16);
                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v256, 0x5Du) != *(v256 + 12))
                                                        {
                                                          goto LABEL_358;
                                                        }
                                                      }

                                                      v257 = v224 + 16 * v246;
                                                      if (*(v257 + 56))
                                                      {
                                                        v258 = *(v257 + 48);
                                                        v259 = 8 * *(v257 + 56);
                                                        while (1)
                                                        {
                                                          v260 = *(*v258 + 72);
                                                          if (v260)
                                                          {
                                                            v261 = *v260 + 120 * *(v260 + v15 + 16);
                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v261, 0x5Du) != *(v261 + 12))
                                                            {
                                                              break;
                                                            }
                                                          }

                                                          v258 += 8;
                                                          v259 -= 8;
                                                          if (!v259)
                                                          {
                                                            goto LABEL_354;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
LABEL_354:
                                                        if (v405)
                                                        {
                                                          [v405 lineColor];
                                                        }

                                                        else
                                                        {
                                                          v411 = 0uLL;
                                                        }

                                                        *(a1 + 136) = v411;
                                                      }

LABEL_358:
                                                      if (*(a1 + 5) == 1)
                                                      {
                                                        *(a1 + 8) = 0;
                                                        *(a1 + 16) = 0;
                                                      }

                                                      occludedColorForColor(&v411, (a1 + 56));
                                                      *(a1 + 200) = v411;
                                                      occludedColorForColor(&v411, (a1 + 72));
                                                      *(a1 + 216) = v411;
                                                      occludedColorForColor(&v411, (a1 + 104));
                                                      *(a1 + 248) = v411;
                                                      *(a1 + 4) = 0;
                                                      v263 = *(v410 + 280);
                                                      v262 = *(v410 + 288);
                                                      if (v262)
                                                      {
                                                        atomic_fetch_add_explicit(&v262->__shared_owners_, 1uLL, memory_order_relaxed);
                                                        if (!v263)
                                                        {
LABEL_540:
                                                          std::__shared_weak_count::__release_shared[abi:nn200100](v262);
                                                          goto LABEL_541;
                                                        }

                                                        v264 = *(v182 + 144);
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v262);
                                                        if (v264 != 1)
                                                        {
LABEL_541:
                                                          *(a1 + 2) = 1;
                                                          if (v422 == 1)
                                                          {
                                                            (*(**buf + 56))(*buf);
                                                          }

                                                          if (v421)
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:nn200100](v421);
                                                          }

                                                          if (*&buf[8])
                                                          {
                                                            std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                                                          }

                                                          if (v417)
                                                          {
                                                            (*(*v414 + 56))(v414);
                                                          }

                                                          goto LABEL_549;
                                                        }

                                                        v263 = *(v410 + 280);
                                                        v265 = *(v410 + 288);
                                                        if (v265)
                                                        {
                                                          atomic_fetch_add_explicit(&v265->__shared_owners_, 1uLL, memory_order_relaxed);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if (!v263 || *(v182 + 144) != 1)
                                                        {
                                                          goto LABEL_541;
                                                        }

                                                        v265 = 0;
                                                      }

                                                      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v411, v263, v265);
                                                      if (v265)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v265);
                                                      }

                                                      v266 = v413;
                                                      *(a1 + 4) = v413;
                                                      if (v266 != 1)
                                                      {
                                                        goto LABEL_535;
                                                      }

                                                      if ((v182[44] & 1) == 0)
                                                      {
                                                        *(a1 + 344) = (*(a1 + 316) * 0.5) * v182[32];
                                                      }

                                                      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v411.i64[0] + 24), 448, v15, 2u, 0);
                                                      v268 = v267;
                                                      v269 = v411.i64[0];
                                                      v270 = *(v411.i64[0] + 24);
                                                      v271 = *v270;
                                                      if (*v270 && (v272 = *v271, LODWORD(v271) = *v271 == 1.0, *(v270 + 10) == 1) && (v272 != 0.0 ? (v273 = v272 == 1.0) : (v273 = 1), !v273) || (v274 = *(v270 + v271 + 11), v274 == 2))
                                                      {
                                                        v275 = *(v270 + 16);
                                                        if (v275)
                                                        {
                                                          v276 = *(v275 + 72);
                                                          if (v276)
                                                          {
                                                            v277 = *v276 + 120 * *(v276 + v15 + 16);
                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v277, 0x5Cu) != *(v277 + 12))
                                                            {
                                                              goto LABEL_394;
                                                            }
                                                          }

                                                          if (*(v270 + 56))
                                                          {
                                                            v278 = *(v270 + 48);
                                                            v279 = 8 * *(v270 + 56);
                                                            while (1)
                                                            {
                                                              v280 = *(*v278 + 72);
                                                              if (v280)
                                                              {
                                                                v281 = *v280 + 120 * *(v280 + v15 + 16);
                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v281, 0x5Cu) != *(v281 + 12))
                                                                {
                                                                  goto LABEL_394;
                                                                }
                                                              }

                                                              v278 += 8;
                                                              v274 = 1;
                                                              v279 -= 8;
                                                              if (!v279)
                                                              {
                                                                goto LABEL_391;
                                                              }
                                                            }
                                                          }
                                                        }

                                                        v274 = 1;
                                                      }

LABEL_391:
                                                      v282 = *(v270 + 16 * v274 + 16);
                                                      if (v282)
                                                      {
                                                        v283 = *(v282 + 72);
                                                        if (v283)
                                                        {
                                                          v284 = *v283 + 120 * *(v283 + v15 + 16);
                                                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v284, 0x5Cu) != *(v284 + 12))
                                                          {
LABEL_394:
                                                            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v270, 92, v15, 2u, 0);
                                                            *(a1 + 168) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                            v269 = v411.i64[0];
LABEL_401:
                                                            v290 = *(v269 + 24);
                                                            v291 = *v290;
                                                            if (*v290 && (v292 = *v291, LODWORD(v291) = *v291 == 1.0, *(v290 + 10) == 1) && (v292 != 0.0 ? (v293 = v292 == 1.0) : (v293 = 1), !v293) || (v294 = *(v290 + v291 + 11), v294 == 2))
                                                            {
                                                              v295 = *(v290 + 16);
                                                              if (v295)
                                                              {
                                                                v296 = *(v295 + 72);
                                                                if (v296)
                                                                {
                                                                  v297 = *v296 + 120 * *(v296 + v15 + 16);
                                                                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v297, 0xF0u) != *(v297 + 12))
                                                                  {
                                                                    goto LABEL_422;
                                                                  }
                                                                }

                                                                if (*(v290 + 56))
                                                                {
                                                                  v298 = *(v290 + 48);
                                                                  v299 = 8 * *(v290 + 56);
                                                                  while (1)
                                                                  {
                                                                    v300 = *(*v298 + 72);
                                                                    if (v300)
                                                                    {
                                                                      v301 = *v300 + 120 * *(v300 + v15 + 16);
                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v301, 0xF0u) != *(v301 + 12))
                                                                      {
                                                                        goto LABEL_422;
                                                                      }
                                                                    }

                                                                    v298 += 8;
                                                                    v294 = 1;
                                                                    v299 -= 8;
                                                                    if (!v299)
                                                                    {
                                                                      goto LABEL_419;
                                                                    }
                                                                  }
                                                                }
                                                              }

                                                              v294 = 1;
                                                            }

LABEL_419:
                                                            v302 = *(v290 + 16 * v294 + 16);
                                                            if (v302)
                                                            {
                                                              v303 = *(v302 + 72);
                                                              if (v303)
                                                              {
                                                                v304 = *v303 + 120 * *(v303 + v15 + 16);
                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v304, 0xF0u) != *(v304 + 12))
                                                                {
LABEL_422:
                                                                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v290, 240, v15, 2u, 0);
                                                                  *(a1 + 184) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                                  v269 = v411.i64[0];
                                                                  goto LABEL_429;
                                                                }
                                                              }

                                                              v305 = v290 + 16 * v294;
                                                              if (*(v305 + 56))
                                                              {
                                                                v306 = *(v305 + 48);
                                                                v307 = 8 * *(v305 + 56);
                                                                do
                                                                {
                                                                  v308 = *(*v306 + 72);
                                                                  if (v308)
                                                                  {
                                                                    v309 = *v308 + 120 * *(v308 + v15 + 16);
                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v309, 0xF0u) != *(v309 + 12))
                                                                    {
                                                                      goto LABEL_422;
                                                                    }
                                                                  }

                                                                  v306 += 8;
                                                                  v307 -= 8;
                                                                }

                                                                while (v307);
                                                              }
                                                            }

                                                            *(a1 + 196) = *(a1 + 196) * v268;
LABEL_429:
                                                            v310 = *(v269 + 24);
                                                            v311 = *v310;
                                                            if (*v310)
                                                            {
                                                              v312 = *v311;
                                                              v313 = *v311 == 1.0;
                                                              if (*(v310 + 10) == 1 && v312 != 0.0 && v312 != 1.0)
                                                              {
LABEL_437:
                                                                v316 = *(v310 + 16);
                                                                if (v316)
                                                                {
                                                                  v317 = *(v316 + 72);
                                                                  if (v317)
                                                                  {
                                                                    v318 = *v317 + 120 * *(v317 + v15 + 16);
                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v318, 0x5Du) != *(v318 + 12))
                                                                    {
                                                                      goto LABEL_450;
                                                                    }
                                                                  }

                                                                  if (*(v310 + 56))
                                                                  {
                                                                    v319 = *(v310 + 48);
                                                                    v320 = 8 * *(v310 + 56);
                                                                    while (1)
                                                                    {
                                                                      v321 = *(*v319 + 72);
                                                                      if (v321)
                                                                      {
                                                                        v322 = *v321 + 120 * *(v321 + v15 + 16);
                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v322, 0x5Du) != *(v322 + 12))
                                                                        {
                                                                          goto LABEL_450;
                                                                        }
                                                                      }

                                                                      v319 += 8;
                                                                      v315 = 1;
                                                                      v320 -= 8;
                                                                      if (!v320)
                                                                      {
                                                                        goto LABEL_447;
                                                                      }
                                                                    }
                                                                  }
                                                                }

                                                                v315 = 1;
LABEL_447:
                                                                v323 = *(v310 + 16 * v315 + 16);
                                                                if (!v323)
                                                                {
                                                                  goto LABEL_451;
                                                                }

                                                                v324 = *(v323 + 72);
                                                                if (!v324 || (v325 = *v324 + 120 * *(v324 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v325, 0x5Du) == *(v325 + 12)))
                                                                {
                                                                  v337 = v310 + 16 * v315;
                                                                  if (!*(v337 + 56))
                                                                  {
LABEL_451:
                                                                    if (v311)
                                                                    {
                                                                      v326 = *v311;
                                                                      v327 = *v311 == 1.0;
                                                                      if (*(v310 + 10) == 1 && v326 != 0.0 && v326 != 1.0)
                                                                      {
LABEL_459:
                                                                        v330 = *(v310 + 16);
                                                                        if (v330)
                                                                        {
                                                                          v331 = *(v330 + 72);
                                                                          if (v331)
                                                                          {
                                                                            v332 = *v331 + 120 * *(v331 + v15 + 16);
                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v332, 0x1A3u) != *(v332 + 12))
                                                                            {
                                                                              goto LABEL_478;
                                                                            }
                                                                          }

                                                                          if (*(v310 + 56))
                                                                          {
                                                                            v333 = *(v310 + 48);
                                                                            v334 = 8 * *(v310 + 56);
                                                                            while (1)
                                                                            {
                                                                              v335 = *(*v333 + 72);
                                                                              if (v335)
                                                                              {
                                                                                v336 = *v335 + 120 * *(v335 + v15 + 16);
                                                                                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v336, 0x1A3u) != *(v336 + 12))
                                                                                {
                                                                                  goto LABEL_478;
                                                                                }
                                                                              }

                                                                              v333 += 8;
                                                                              v329 = 1;
                                                                              v334 -= 8;
                                                                              if (!v334)
                                                                              {
                                                                                goto LABEL_475;
                                                                              }
                                                                            }
                                                                          }
                                                                        }

                                                                        v329 = 1;
LABEL_475:
                                                                        v342 = *(v310 + 16 * v329 + 16);
                                                                        if (!v342)
                                                                        {
                                                                          goto LABEL_479;
                                                                        }

                                                                        v343 = *(v342 + 72);
                                                                        if (!v343 || (v344 = *v343 + 120 * *(v343 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v344, 0x1A3u) == *(v344 + 12)))
                                                                        {
                                                                          v356 = v310 + 16 * v329;
                                                                          if (!*(v356 + 56))
                                                                          {
LABEL_479:
                                                                            if (v311)
                                                                            {
                                                                              v345 = *v311;
                                                                              v346 = *v311 == 1.0;
                                                                              if (*(v310 + 10) == 1 && v345 != 0.0 && v345 != 1.0)
                                                                              {
LABEL_487:
                                                                                v349 = *(v310 + 16);
                                                                                if (v349)
                                                                                {
                                                                                  v350 = *(v349 + 72);
                                                                                  if (v350)
                                                                                  {
                                                                                    v351 = *v350 + 120 * *(v350 + v15 + 16);
                                                                                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v351, 0x1F8u) != *(v351 + 12))
                                                                                    {
                                                                                      goto LABEL_506;
                                                                                    }
                                                                                  }

                                                                                  if (*(v310 + 56))
                                                                                  {
                                                                                    v352 = *(v310 + 48);
                                                                                    v353 = 8 * *(v310 + 56);
                                                                                    while (1)
                                                                                    {
                                                                                      v354 = *(*v352 + 72);
                                                                                      if (v354)
                                                                                      {
                                                                                        v355 = *v354 + 120 * *(v354 + v15 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v355, 0x1F8u) != *(v355 + 12))
                                                                                        {
                                                                                          goto LABEL_506;
                                                                                        }
                                                                                      }

                                                                                      v352 += 8;
                                                                                      v348 = 1;
                                                                                      v353 -= 8;
                                                                                      if (!v353)
                                                                                      {
                                                                                        goto LABEL_503;
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }

                                                                                v348 = 1;
LABEL_503:
                                                                                v361 = *(v310 + 16 * v348 + 16);
                                                                                if (!v361)
                                                                                {
                                                                                  goto LABEL_507;
                                                                                }

                                                                                v362 = *(v361 + 72);
                                                                                if (!v362 || (v363 = *v362 + 120 * *(v362 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v363, 0x1F8u) == *(v363 + 12)))
                                                                                {
                                                                                  v375 = v310 + 16 * v348;
                                                                                  if (!*(v375 + 56))
                                                                                  {
LABEL_507:
                                                                                    if (v311)
                                                                                    {
                                                                                      v364 = *v311;
                                                                                      v365 = *v311 == 1.0;
                                                                                      if (*(v310 + 10) == 1 && v364 != 0.0 && v364 != 1.0)
                                                                                      {
                                                                                        goto LABEL_515;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v365 = 0;
                                                                                    }

                                                                                    v367 = *(v310 + v365 + 11);
                                                                                    if (v367 != 2)
                                                                                    {
LABEL_531:
                                                                                      v380 = *(v310 + 16 * v367 + 16);
                                                                                      if (!v380)
                                                                                      {
                                                                                        goto LABEL_535;
                                                                                      }

                                                                                      v381 = *(v380 + 72);
                                                                                      if (v381)
                                                                                      {
                                                                                        v382 = *v381 + 120 * *(v381 + v15 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v382, 0x1FAu) != *(v382 + 12))
                                                                                        {
                                                                                          goto LABEL_534;
                                                                                        }
                                                                                      }

                                                                                      v384 = v310 + 16 * v367;
                                                                                      if (*(v384 + 56))
                                                                                      {
                                                                                        v385 = *(v384 + 48);
                                                                                        v386 = 8 * *(v384 + 56);
                                                                                        do
                                                                                        {
                                                                                          v387 = *(*v385 + 72);
                                                                                          if (v387)
                                                                                          {
                                                                                            v388 = *v387 + 120 * *(v387 + v15 + 16);
                                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v388, 0x1FAu) != *(v388 + 12))
                                                                                            {
                                                                                              goto LABEL_534;
                                                                                            }
                                                                                          }

                                                                                          v385 += 8;
                                                                                          v386 -= 8;
                                                                                        }

                                                                                        while (v386);
                                                                                      }

LABEL_535:
                                                                                      if (v413 == 1)
                                                                                      {
                                                                                        (*(*v411.i64[0] + 56))(v411.i64[0]);
                                                                                      }

                                                                                      if (v412)
                                                                                      {
                                                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v412);
                                                                                      }

                                                                                      v262 = v411.i64[1];
                                                                                      if (!v411.i64[1])
                                                                                      {
                                                                                        goto LABEL_541;
                                                                                      }

                                                                                      goto LABEL_540;
                                                                                    }

LABEL_515:
                                                                                    v368 = *(v310 + 16);
                                                                                    if (v368)
                                                                                    {
                                                                                      v369 = *(v368 + 72);
                                                                                      if (v369)
                                                                                      {
                                                                                        v370 = *v369 + 120 * *(v369 + v15 + 16);
                                                                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v370, 0x1FAu) != *(v370 + 12))
                                                                                        {
LABEL_534:
                                                                                          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v310, 506, 2u, v214);
                                                                                          *(a1 + 248) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                                                          goto LABEL_535;
                                                                                        }
                                                                                      }

                                                                                      if (*(v310 + 56))
                                                                                      {
                                                                                        v371 = *(v310 + 48);
                                                                                        v372 = 8 * *(v310 + 56);
                                                                                        while (1)
                                                                                        {
                                                                                          v373 = *(*v371 + 72);
                                                                                          if (v373)
                                                                                          {
                                                                                            v374 = *v373 + 120 * *(v373 + v15 + 16);
                                                                                            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v374, 0x1FAu) != *(v374 + 12))
                                                                                            {
                                                                                              goto LABEL_534;
                                                                                            }
                                                                                          }

                                                                                          v371 += 8;
                                                                                          v367 = 1;
                                                                                          v372 -= 8;
                                                                                          if (!v372)
                                                                                          {
                                                                                            goto LABEL_531;
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }

                                                                                    v367 = 1;
                                                                                    goto LABEL_531;
                                                                                  }

                                                                                  v376 = *(v375 + 48);
                                                                                  v377 = 8 * *(v375 + 56);
                                                                                  while (1)
                                                                                  {
                                                                                    v378 = *(*v376 + 72);
                                                                                    if (v378)
                                                                                    {
                                                                                      v379 = *v378 + 120 * *(v378 + v15 + 16);
                                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v379, 0x1F8u) != *(v379 + 12))
                                                                                      {
                                                                                        break;
                                                                                      }
                                                                                    }

                                                                                    v376 += 8;
                                                                                    v377 -= 8;
                                                                                    if (!v377)
                                                                                    {
                                                                                      goto LABEL_507;
                                                                                    }
                                                                                  }
                                                                                }

LABEL_506:
                                                                                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v310, 504, 2u, v214);
                                                                                *(a1 + 232) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                                                v310 = *(v411.i64[0] + 24);
                                                                                v311 = *v310;
                                                                                goto LABEL_507;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v346 = 0;
                                                                            }

                                                                            v348 = *(v310 + v346 + 11);
                                                                            if (v348 != 2)
                                                                            {
                                                                              goto LABEL_503;
                                                                            }

                                                                            goto LABEL_487;
                                                                          }

                                                                          v357 = *(v356 + 48);
                                                                          v358 = 8 * *(v356 + 56);
                                                                          while (1)
                                                                          {
                                                                            v359 = *(*v357 + 72);
                                                                            if (v359)
                                                                            {
                                                                              v360 = *v359 + 120 * *(v359 + v15 + 16);
                                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v360, 0x1A3u) != *(v360 + 12))
                                                                              {
                                                                                break;
                                                                              }
                                                                            }

                                                                            v357 += 8;
                                                                            v358 -= 8;
                                                                            if (!v358)
                                                                            {
                                                                              goto LABEL_479;
                                                                            }
                                                                          }
                                                                        }

LABEL_478:
                                                                        gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v310, 419, 2u, v214);
                                                                        *(a1 + 216) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                                        v310 = *(v411.i64[0] + 24);
                                                                        v311 = *v310;
                                                                        goto LABEL_479;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v327 = 0;
                                                                    }

                                                                    v329 = *(v310 + v327 + 11);
                                                                    if (v329 != 2)
                                                                    {
                                                                      goto LABEL_475;
                                                                    }

                                                                    goto LABEL_459;
                                                                  }

                                                                  v338 = *(v337 + 48);
                                                                  v339 = 8 * *(v337 + 56);
                                                                  while (1)
                                                                  {
                                                                    v340 = *(*v338 + 72);
                                                                    if (v340)
                                                                    {
                                                                      v341 = *v340 + 120 * *(v340 + v15 + 16);
                                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v341, 0x5Du) != *(v341 + 12))
                                                                      {
                                                                        break;
                                                                      }
                                                                    }

                                                                    v338 += 8;
                                                                    v339 -= 8;
                                                                    if (!v339)
                                                                    {
                                                                      goto LABEL_451;
                                                                    }
                                                                  }
                                                                }

LABEL_450:
                                                                gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v418, v310, 93, 2u, v214);
                                                                *(a1 + 200) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v418)), vdupq_n_s32(0x37800080u));
                                                                v310 = *(v411.i64[0] + 24);
                                                                v311 = *v310;
                                                                goto LABEL_451;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v313 = 0;
                                                            }

                                                            v315 = *(v310 + v313 + 11);
                                                            if (v315 != 2)
                                                            {
                                                              goto LABEL_447;
                                                            }

                                                            goto LABEL_437;
                                                          }
                                                        }

                                                        v285 = v270 + 16 * v274;
                                                        if (*(v285 + 56))
                                                        {
                                                          v286 = *(v285 + 48);
                                                          v287 = 8 * *(v285 + 56);
                                                          do
                                                          {
                                                            v288 = *(*v286 + 72);
                                                            if (v288)
                                                            {
                                                              v289 = *v288 + 120 * *(v288 + v15 + 16);
                                                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v289, 0x5Cu) != *(v289 + 12))
                                                              {
                                                                goto LABEL_394;
                                                              }
                                                            }

                                                            v286 += 8;
                                                            v287 -= 8;
                                                          }

                                                          while (v287);
                                                        }
                                                      }

                                                      *(a1 + 180) = *(a1 + 180) * v268;
                                                      goto LABEL_401;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v245 = 0;
                                                  }

                                                  v246 = *(v224 + v245 + 11);
                                                  if (v246 != 2)
                                                  {
                                                    goto LABEL_346;
                                                  }

                                                  goto LABEL_336;
                                                }

                                                v237 = *(v236 + 72);
                                                v182 = v406;
                                                if (!v237 || (v238 = *v237 + 120 * *(v237 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v238, 0x5Cu) == *(v238 + 12)))
                                                {
                                                  v239 = v224 + 16 * v228;
                                                  v236 = *(v239 + 56);
                                                  if (!*(v239 + 56))
                                                  {
                                                    goto LABEL_325;
                                                  }

                                                  v240 = *(v239 + 48);
                                                  v241 = 8 * v236;
                                                  while (1)
                                                  {
                                                    v242 = *(*v240 + 72);
                                                    if (v242)
                                                    {
                                                      v243 = *v242 + 120 * *(v242 + v15 + 16);
                                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v243, 0x5Cu) != *(v243 + 12))
                                                      {
                                                        break;
                                                      }
                                                    }

                                                    LOBYTE(v236) = 0;
                                                    v240 += 8;
                                                    v241 -= 8;
                                                    if (!v241)
                                                    {
                                                      goto LABEL_325;
                                                    }
                                                  }
                                                }

LABEL_316:
                                                LOBYTE(v236) = 1;
                                                goto LABEL_325;
                                              }
                                            }

                                            else
                                            {
                                              v227 = 0;
                                            }

                                            v228 = *(v224 + v227 + 11);
                                            if (v228 != 2)
                                            {
                                              goto LABEL_313;
                                            }

                                            goto LABEL_303;
                                          }

LABEL_560:
                                          buf[0] = 1;
                                          v411.i8[0] = 1;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 464, 0, buf, v214);
                                          v390 = v389;
                                          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 464, 1, &v411, v214);
                                          v218 = v390 + ((v391 - v390) * v215);
                                          goto LABEL_290;
                                        }
                                      }

                                      else
                                      {
                                        v202 = 0;
                                      }

                                      v204 = *(v198 + v202 + 11);
                                      v201 = 0.0;
                                      if (v204 != 2)
                                      {
                                        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v198, 505, v204, 0, v199);
                                        v206 = v205;
                                        goto LABEL_284;
                                      }

                                      goto LABEL_564;
                                    }

                                    v153 = *(v152 + 48);
                                    v154 = 8 * *(v152 + 56);
                                    while (1)
                                    {
                                      v155 = *(*v153 + 72);
                                      if (v155)
                                      {
                                        v156 = *v155 + 120 * *(v155 + v15 + 16);
                                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v156, 0x1FAu) != *(v156 + 12))
                                        {
                                          break;
                                        }
                                      }

                                      v153 += 8;
                                      v154 -= 8;
                                      if (!v154)
                                      {
                                        goto LABEL_209;
                                      }
                                    }
                                  }

LABEL_208:
                                  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v124, 506, v15, 2u, 0);
                                  *(a1 + 104) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                                  v124 = v414[3];
                                  goto LABEL_209;
                                }

                                v122 = *(v121 + 72);
                                if (!v122 || (v123 = *v122 + 120 * *(v122 + v15 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v123, 0x1A3u) == *(v123 + 12)))
                                {
                                  v136 = v89 + 16 * v108;
                                  if (!*(v136 + 56))
                                  {
                                    goto LABEL_181;
                                  }

                                  v137 = *(v136 + 48);
                                  v138 = 8 * *(v136 + 56);
                                  while (1)
                                  {
                                    v139 = *(*v137 + 72);
                                    if (v139)
                                    {
                                      v140 = *v139 + 120 * *(v139 + v15 + 16);
                                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v140, 0x1A3u) != *(v140 + 12))
                                      {
                                        break;
                                      }
                                    }

                                    v137 += 8;
                                    v138 -= 8;
                                    if (!v138)
                                    {
                                      goto LABEL_181;
                                    }
                                  }
                                }

LABEL_180:
                                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v89, 419, v15, 2u, 0);
                                *(a1 + 72) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                                v88 = v414;
                                goto LABEL_181;
                              }
                            }

                            else
                            {
                              v106 = 0;
                            }

                            v108 = *(v89 + v106 + 11);
                            if (v108 != 2)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_161;
                          }

                          v117 = *(v116 + 48);
                          v118 = 8 * *(v116 + 56);
                          while (1)
                          {
                            v119 = *(*v117 + 72);
                            if (v119)
                            {
                              v120 = *v119 + 120 * *(v119 + v15 + 16);
                              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v120, 0xF0u) != *(v120 + 12))
                              {
                                break;
                              }
                            }

                            v117 += 8;
                            v118 -= 8;
                            if (!v118)
                            {
                              goto LABEL_153;
                            }
                          }
                        }

LABEL_152:
                        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(buf, v89, 240, v15, 2u, 0);
                        *(a1 + 40) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*buf)), vdupq_n_s32(0x37800080u));
                        v88 = v414;
                        v89 = v414[3];
                        v90 = *v89;
                        goto LABEL_153;
                      }
                    }

                    else
                    {
                      v92 = 0;
                    }

                    v94 = *(v89 + v92 + 11);
                    if (v94 != 2)
                    {
                      goto LABEL_149;
                    }

                    goto LABEL_139;
                  }

                  v83 = *(v82 + 48);
                  v84 = 8 * *(v82 + 56);
                  while (1)
                  {
                    v85 = *(*v83 + 72);
                    if (v85)
                    {
                      v86 = *v85 + 120 * *(v85 + v15 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x13Fu) != *(v86 + 12))
                      {
                        break;
                      }
                    }

                    v83 += 8;
                    v84 -= 8;
                    if (!v84)
                    {
                      goto LABEL_95;
                    }
                  }
                }

LABEL_94:
                *(a1 + 264) = gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<unsigned int>(v53, fminf(fmaxf(v12, 0.0), 23.0));
                v53 = v414[3];
                goto LABEL_95;
              }
            }

            v50 = 0;
            goto LABEL_60;
          }
        }

        else
        {
          v32 = 0;
        }

        v34 = *(v14 + v32 + 11);
        if (v34 != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = *(v14 + v18 + 11);
    if (v20 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_549:
  if (v416)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v416);
  }

  if (v415)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v415);
  }

  return a1;
}