uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v15 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(9uLL);
  v17 = prime;
  v18 = *(a1 + 88);
  if (prime > *&v18)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v15, v17);
    goto LABEL_15;
  }

  if (prime < *&v18)
  {
    v19 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v18 < 3uLL || (v20 = vcnt_s8(v18), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
    {
      v22 = std::__next_prime(v19);
      if (v17 <= v22)
      {
        v17 = v22;
      }

      if (v17 >= *&v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 1 << -__clz(v19 - 1);
      if (v19 >= 2)
      {
        v19 = v21;
      }

      if (v17 <= v19)
      {
        v17 = v19;
      }

      if (v17 >= *&v18)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a3);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a4);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a5);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a6);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a7);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v15, a8);
  v23 = *(a1 + 88);
  if (!*&v23)
  {
    goto LABEL_35;
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = 236;
    if (*&v23 <= 0xECuLL)
    {
      v25 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v25 = (v23.i32[0] - 1) & 0xECLL;
  }

  v26 = *(*v15 + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v24.u32[0] < 2uLL)
  {
    v28 = *&v23 - 1;
    while (1)
    {
      v29 = v27[1];
      if (v29 == 236)
      {
        if (*(v27 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v29 & v28) != v25)
      {
        goto LABEL_35;
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v30 = v27[1];
    if (v30 == 236)
    {
      break;
    }

    if (v30 >= *&v23)
    {
      v30 %= *&v23;
    }

    if (v30 != v25)
    {
      goto LABEL_35;
    }

LABEL_30:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  if (*(v27 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

uint64_t webm::SegmentParser::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 234) = 0;
  *(a1 + 232) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 16) = 0xFFFFFFFFLL;
  *(a1 + 40) = -1;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v3;
  *(a1 + 200) = v4;
  *(a1 + 224) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 216) = a3;
  }

  else
  {
    *(a1 + 216) = v5;
    if (!v5)
    {
      *(a1 + 188) = 8;
      return 0;
    }
  }

  *(a1 + 188) = 0;
  return 0;
}

uint64_t webm::SegmentParser::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  result = webm::MasterParser::InitAfterSeek(a1, a2, a3);
  *(a1 + 233) = 1;
  *(a1 + 236) = 0;
  return result;
}

uint64_t webm::SegmentParser::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v4 = a2;
  *a4 = 0;
  if ((*(a1 + 233) & 1) == 0)
  {
    v6 = a3;
    v7 = a4;
    v8 = *(a1 + 192);
    v12 = 408125543;
    v13 = v8;
    v14 = *(a1 + 200);
    result = (*(*a2 + 6))(a2, &v12, a1 + 236);
    if (result)
    {
      return result;
    }

    *(a1 + 233) = 1;
    a4 = v7;
    a3 = v6;
  }

  v11 = &unk_2882A8218;
  if (*(a1 + 236) == 1)
  {
    v4 = &v11;
  }

  if (*(a1 + 234))
  {
LABEL_10:
    v10 = *(a1 + 192);
    v12 = 408125543;
    v13 = v10;
    v14 = *(a1 + 200);
    return (*(*v4 + 22))(v4, &v12, a3, a4);
  }

  result = webm::MasterParser::Feed(a1, v4, a3, a4);
  if (!result)
  {
    *(a1 + 234) = 1;
    goto LABEL_10;
  }

  return result;
}

void webm::SegmentParser::~SegmentParser(webm::SegmentParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v4 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(3uLL);
  v6 = prime;
  v7 = *(a1 + 88);
  if (prime > *&v7)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v4, v6);
    goto LABEL_15;
  }

  if (prime < *&v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v7 < 3uLL || (v9 = vcnt_s8(v7), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v8);
      if (v6 <= v11)
      {
        v6 = v11;
      }

      if (v6 >= *&v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }

      if (v6 <= v8)
      {
        v6 = v8;
      }

      if (v6 >= *&v7)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v4, a2);
  v12 = *(a1 + 88);
  if (!*&v12)
  {
    goto LABEL_35;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 236;
    if (*&v12 <= 0xECuLL)
    {
      v14 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v14 = (v12.i32[0] - 1) & 0xECLL;
  }

  v15 = *(*v4 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v13.u32[0] < 2uLL)
  {
    v17 = *&v12 - 1;
    while (1)
    {
      v18 = v16[1];
      if (v18 == 236)
      {
        if (*(v16 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v18 & v17) != v14)
      {
        goto LABEL_35;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v19 = v16[1];
    if (v19 == 236)
    {
      break;
    }

    if (v19 >= *&v12)
    {
      v19 %= *&v12;
    }

    if (v19 != v14)
    {
      goto LABEL_35;
    }

LABEL_30:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_35;
    }
  }

  if (*(v16 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

void webm::ChaptersParser::~ChaptersParser(webm::ChaptersParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webm::EditionEntryParser::~EditionEntryParser(webm::EditionEntryParser *this)
{
  *this = &unk_2882A84E0;
  *(this + 5) = &unk_2882A81D0;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 1);
    if (v5 != v4)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v5 - 136));
      }

      while (v5 != v4);
      v6 = *(this + 1);
    }

    *(this + 2) = v4;
    operator delete(v6);
  }
}

{
  *this = &unk_2882A84E0;
  *(this + 5) = &unk_2882A81D0;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 1);
    if (v5 != v4)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v5 - 136));
      }

      while (v5 != v4);
      v6 = *(this + 1);
    }

    *(this + 2) = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::EditionEntry>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 32) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 40, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 40, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 36) = 1;
  }

  if ((*(a1 + 37) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 32);
    if (result)
    {
      return result;
    }

    *(a1 + 37) = 1;
  }

  if (*(a1 + 32) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::EditionEntry>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = v7;
    if (v8 != v7)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v8 - 136));
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 16) = v7;
    operator delete(v9);
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 22) = 0;
  *(v6 + 16) = 0;
  v10 = *(a2 + 4);
  v11 = *(a2 + 8);
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v10;
  *(a1 + 240) = v11;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v12 = *(a2 + 8);
  if (v12 == -1)
  {
    *(a1 + 256) = a3;
    goto LABEL_10;
  }

  *(a1 + 256) = v12;
  if (v12)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v13 = 8;
LABEL_11:
  *(a1 + 228) = v13;
  return 0;
}

uint64_t webm::MasterValueParser<webm::EditionEntry>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = a2;
    v7 = a3;
    v8 = *(a1 + 16);
    v9 = v5;
    if (v8 != v5)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v8 - 136));
      }

      while (v8 != v5);
      v9 = *v4;
    }

    *(a1 + 16) = v5;
    operator delete(v9);
    a3 = v7;
    a2 = v6;
  }

  *(v4 + 22) = 0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(a1 + 37) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 40, a2, a3);
}

uint64_t webm::MasterValueParser<webm::EditionEntry>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  *(a2 + 16) = *(a1 + 112);
  *a2 = v2;
  return *(a1 + 272) & 1;
}

uint64_t webm::EditionEntryParser::OnParseCompleted(webm::EditionEntryParser *this, webm::Callback *a2)
{
  v2 = *(this + 58);
  v4[0] = 17849;
  v4[1] = v2;
  v5 = *(this + 15);
  return (*(*a2 + 160))(a2, v4, this + 8);
}

void *webm::MasterValueParser<webm::EditionEntry>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A84E0;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v8 = *v2;
      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      operator delete(v2);
      v2 = v8;
    }

    while (v8);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v5 - 136));
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  return a1;
}

void webm::MasterValueParser<webm::EditionEntry>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A84E0;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v5 - 136));
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::EditionEntry>::ChildParser<webm::ChapterAtomParser,webm::MasterValueParser<webm::EditionEntry>::RepeatedChildFactory<webm::ChapterAtomParser,webm::ChapterAtom>::BuildParser(webm::MasterValueParser<webm::EditionEntry>*,webm::EditionEntry*)::{lambda(webm::ChapterAtomParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8600;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((a1 + 1));
  return a1;
}

void webm::MasterValueParser<webm::EditionEntry>::ChildParser<webm::ChapterAtomParser,webm::MasterValueParser<webm::EditionEntry>::RepeatedChildFactory<webm::ChapterAtomParser,webm::ChapterAtom>::BuildParser(webm::MasterValueParser<webm::EditionEntry>*,webm::EditionEntry*)::{lambda(webm::ChapterAtomParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8600;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((a1 + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::EditionEntry>::ChildParser<webm::ChapterAtomParser,webm::MasterValueParser<webm::EditionEntry>::RepeatedChildFactory<webm::ChapterAtomParser,webm::ChapterAtom>::BuildParser(webm::MasterValueParser<webm::EditionEntry>*,webm::EditionEntry*)::{lambda(webm::ChapterAtomParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::ChapterAtom>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 384) + 32) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 392);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 == 136)
      {
        if (v10 == v9)
        {
LABEL_14:
          __break(1u);
          return result;
        }

        if ((*(v10 + 128) & 1) == 0)
        {
          do
          {
            v9 -= 136;
            webm::ChapterAtom::~ChapterAtom(v9);
          }

          while (v9 != v10);
          v8[1] = v10;
          v8 = *(a1 + 392);
          v9 = v8[1];
          result = v6;
        }
      }

      if (v9 >= v8[2])
      {
        std::vector<webm::Element<webm::ChapterAtom>>::__emplace_back_slow_path<webm::ChapterAtom,BOOL>(v8);
      }

      if (v9)
      {
        *v9 = *(a1 + 8);
        v11 = *(a1 + 24);
        *(v9 + 32) = *(a1 + 40);
        *(v9 + 16) = v11;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
        *(v9 + 40) = *(a1 + 48);
        v12 = *(a1 + 56);
        *(v9 + 57) = *(a1 + 65);
        *(v9 + 48) = v12;
        *(v9 + 88) = 0;
        *(v9 + 96) = 0;
        *(v9 + 80) = 0;
        *(v9 + 80) = *(a1 + 88);
        *(v9 + 96) = *(a1 + 104);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(v9 + 104) = 0;
        *(v9 + 112) = 0;
        *(v9 + 120) = 0;
        *(v9 + 104) = *(a1 + 112);
        *(v9 + 120) = *(a1 + 128);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(v9 + 128) = 1;
        v8[1] = v9 + 136;
        return result;
      }

      goto LABEL_14;
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  webm::ChapterAtom::operator=(a1 + 8, v11);
  webm::ChapterAtom::~ChapterAtom(v11);
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  *(a1 + 160) = 0xFFFFFFFFLL;
  *(a1 + 184) = -1;
  *(a1 + 196) = 0;
  *(a1 + 188) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = v6;
  *(a1 + 344) = v7;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v8 = *(a2 + 8);
  if (v8 == -1)
  {
    *(a1 + 360) = a3;
    goto LABEL_5;
  }

  *(a1 + 360) = v8;
  if (v8)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 8;
LABEL_6:
  *(a1 + 332) = v9;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  webm::ChapterAtom::operator=(a1 + 8, v7);
  webm::ChapterAtom::~ChapterAtom(v7);
  *(a1 + 136) = 0;
  *(a1 + 140) = 256;
  return webm::MasterParser::InitAfterSeek(a1 + 144, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 376) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 200);
  *(a2 + 16) = *(a1 + 216);
  *a2 = v2;
  return *(a1 + 376) & 1;
}

void webm::MasterValueParser<webm::ChapterAtom>::MasterValueParser<webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::ByteParser<std::string>,std::string>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>,webm::MasterValueParser<webm::ChapterAtom>::RepeatedChildFactory<webm::ChapterDisplayParser,webm::ChapterDisplay>,webm::MasterValueParser<webm::ChapterAtom>::RecursiveChildFactory<webm::ChapterAtomParser>>(uint64_t a1)
{
  *a1 = &unk_2882A8600;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  operator new();
}

void webm::ChapterAtomParser::~ChapterAtomParser(webm::ChapterAtomParser *this)
{
  *this = &unk_2882A8600;
  *(this + 18) = &unk_2882A81D0;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((this + 8));
}

{
  *this = &unk_2882A8600;
  *(this + 18) = &unk_2882A81D0;
  v2 = *(this + 30);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((this + 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 140) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 136) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 144, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 144, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 140) = 1;
  }

  if ((*(a1 + 141) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 136);
    if (result)
    {
      return result;
    }

    *(a1 + 141) = 1;
  }

  if (*(a1 + 136) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::ChapterAtom>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8600;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((a1 + 1));
  return a1;
}

void webm::MasterValueParser<webm::ChapterAtom>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8600;
  a1[18] = &unk_2882A81D0;
  v2 = a1[30];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[28];
  a1[28] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::ChapterAtom::~ChapterAtom((a1 + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 136) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::IntParser<unsigned long long>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterAtom>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 136) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = *(a1 + 8);
    *(v6 + 16) = *(a1 + 24);
    *v6 = result;
    *(a1 + 31) = 0;
    *(a1 + 8) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::ByteParser<std::string>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    return 4294966270;
  }

  if (v2 > 0x7FFFFFFFFFFFFFF7)
  {
    return 4294966267;
  }

  v4 = (a1 + 8);
  if (v2)
  {
    v5 = *(a1 + 31);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v8 = *(a1 + 16);
      v6 = v2 - v8;
      if (v2 > v8)
      {
        v14 = *(a1 + 24);
        v7 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v5 = HIBYTE(v14);
        if (v7 - v8 >= v6)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v4 = *(a1 + 8);
      *(a1 + 16) = v2;
    }

    else
    {
      v6 = v2 - v5;
      if (v2 > v5)
      {
        v7 = 22;
        v8 = *(a1 + 31);
        if (22 - v5 >= v6)
        {
LABEL_10:
          v10 = a1;
          if ((v5 & 0x80) != 0)
          {
            v4 = *v4;
          }

          bzero(v4 + v8, v6);
          v11 = v8 + v6;
          a1 = v10;
          if (*(v10 + 31) < 0)
          {
            *(v10 + 16) = v11;
          }

          else
          {
            *(v10 + 31) = v11 & 0x7F;
          }

          v12 = v4 + v11;
          goto LABEL_32;
        }

LABEL_9:
        v9 = a1;
        std::string::__grow_by((a1 + 8), v7, v6 - v7 + v8, v8, v8, 0, 0);
        a1 = v9;
        *(v9 + 16) = v8;
        LOBYTE(v5) = *(v9 + 31);
        goto LABEL_10;
      }

      *(a1 + 31) = v2;
    }

    v12 = v4 + v2;
LABEL_32:
    v13 = 0;
    *v12 = 0;
    goto LABEL_33;
  }

  LODWORD(v13) = *(a1 + 55);
  if (*(a1 + 31) < 0)
  {
    v15 = a1;
    if (v13 >= 0)
    {
      v16 = (a1 + 32);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    if (v13 >= 0)
    {
      v17 = *(a1 + 55);
    }

    else
    {
      v17 = *(a1 + 40);
    }

    std::string::__assign_no_alias<false>((a1 + 8), v16, v17);
    a1 = v15;
    LODWORD(v13) = *(v15 + 55);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  if ((v13 & 0x80000000) != 0)
  {
    v18 = a1;
    std::string::__assign_no_alias<true>((a1 + 8), *(a1 + 32), *(a1 + 40));
    a1 = v18;
    LODWORD(v13) = *(v18 + 55);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_35:
    v13 = *(a1 + 40);
    goto LABEL_33;
  }

  *v4 = *(a1 + 32);
  *(a1 + 24) = *(a1 + 48);
LABEL_29:
  v13 = v13;
LABEL_33:
  *(a1 + 56) = v13;
  return 0;
}

uint64_t webm::ByteParser<std::string>::~ByteParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::ByteParser<std::string>::~ByteParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

uint64_t webm::ByteParser<std::string>::Feed(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = result;
  *a4 = 0;
  v7 = *(result + 56);
  v8 = *(result + 31);
  if (v8 < 0)
  {
    if (v7 == *(result + 16))
    {
      return 0;
    }
  }

  else if (v7 == v8)
  {
    return 0;
  }

  v9 = (result + 8);
  do
  {
    v17 = 0;
    v11 = *(v6 + 31);
    if (v11 < 0)
    {
      v11 = *(v6 + 16);
      if (!v11)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v12 = *v9;
    }

    else
    {
      if (!*(v6 + 31))
      {
        goto LABEL_22;
      }

      v12 = v6 + 8;
    }

    result = (*(*a3 + 16))(a3, v11 - v7, v12 + v7, &v17);
    v10 = v17;
    *a4 += v17;
    v7 = *(v6 + 56) + v10;
    *(v6 + 56) = v7;
  }

  while (result == -1);
  if (result)
  {
    return result;
  }

  while (1)
  {
    while (1)
    {
      v13 = *(v6 + 31);
      if (v13 < 0)
      {
        break;
      }

      if (!*(v6 + 31) || *(v6 + 7 + v13))
      {
        return 0;
      }

      *(v6 + 31) = v13 - 1;
      *(v9 + v13 - 1) = 0;
    }

    v14 = *(v6 + 16);
    if (!v14)
    {
      break;
    }

    v15 = *v9;
    if (*(*v9 + v14 - 1))
    {
      break;
    }

    v16 = v14 - 1;
    *(v6 + 16) = v16;
    *(v15 + v16) = 0;
  }

  return 0;
}

void webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::ChapterDisplayParser,webm::MasterValueParser<webm::ChapterAtom>::RepeatedChildFactory<webm::ChapterDisplayParser,webm::ChapterDisplay>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::ChapterDisplayParser*)#1}>::~ChildParser(uint64_t a1)
{
  webm::MasterValueParser<webm::ChapterDisplay>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::ChapterDisplayParser,webm::MasterValueParser<webm::ChapterAtom>::RepeatedChildFactory<webm::ChapterDisplayParser,webm::ChapterDisplay>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::ChapterDisplayParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::ChapterDisplay>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 336) + 136) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 344);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 == 88)
      {
        if (v10 == v9)
        {
          goto LABEL_22;
        }

        if ((*(v10 + 80) & 1) == 0)
        {
          do
          {
            v9 -= 88;
            webm::Element<webm::ChapterDisplay>::~Element(v9);
          }

          while (v9 != v10);
          v8[1] = v10;
          v8 = *(a1 + 344);
          v9 = v8[1];
          result = v6;
        }
      }

      v11 = v8[2];
      if (v9 >= v11)
      {
        v13 = v9 - *v8;
        v14 = 0x2E8BA2E8BA2E8BA3 * (v13 >> 3) + 1;
        if (v14 > 0x2E8BA2E8BA2E8BALL)
        {
          goto LABEL_23;
        }

        v15 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *v8) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v14)
        {
          v16 = 0x2E8BA2E8BA2E8BA3 * (v13 >> 3) + 1;
        }

        if (v15 >= 0x1745D1745D1745DLL)
        {
          v17 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          if (v17 <= 0x2E8BA2E8BA2E8BALL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      else if (v9)
      {
        v12 = *(a1 + 8);
        *(v9 + 16) = *(a1 + 24);
        *v9 = v12;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *(v9 + 24) = *(a1 + 32);
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 32) = 0;
        *(v9 + 32) = *(a1 + 40);
        *(v9 + 48) = *(a1 + 56);
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = *(a1 + 64);
        *(v9 + 72) = *(a1 + 80);
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(v9 + 80) = 1;
        v8[1] = v9 + 88;
        return result;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  webm::MasterValueParser<webm::ChapterDisplay>::PreInit();
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 136) = -1;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = v6;
  *(a1 + 296) = v7;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v8 = *(a2 + 8);
  if (v8 == -1)
  {
    *(a1 + 312) = a3;
  }

  else
  {
    *(a1 + 312) = v8;
    if (!v8)
    {
      *(a1 + 284) = 8;
      return 0;
    }
  }

  *(a1 + 284) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  webm::MasterValueParser<webm::ChapterDisplay>::PreInit();
  *(a1 + 93) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 96, a2, a3);
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 152);
  *(a2 + 16) = *(a1 + 168);
  *a2 = v2;
  return *(a1 + 328) & 1;
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 92) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 88) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 96, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 96, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 92) = 1;
  }

  if ((*(a1 + 93) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 88);
    if (result)
    {
      return result;
    }

    *(a1 + 93) = 1;
  }

  if (*(a1 + 88) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void webm::MasterValueParser<webm::ChapterDisplay>::~MasterValueParser(uint64_t a1)
{
  webm::MasterValueParser<webm::ChapterDisplay>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 88) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = *(a1 + 8);
    *(v6 + 16) = *(a1 + 24);
    *v6 = result;
    *(a1 + 31) = 0;
    *(a1 + 8) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::RepeatedChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::RepeatedChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::ChapterDisplay>::RepeatedChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::ChapterDisplay>*,webm::ChapterDisplay*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::ByteParser<std::string>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 64) + 88) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 72);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 != 32)
      {
        goto LABEL_8;
      }

      if (v10 == v9)
      {
        goto LABEL_23;
      }

      if ((*(v10 + 24) & 1) == 0)
      {
        do
        {
          v13 = *(v9 - 9);
          v9 -= 32;
          if (v13 < 0)
          {
            operator delete(*v9);
            result = v6;
          }
        }

        while (v9 != v10);
        v8[1] = v10;
        v8 = *(a1 + 72);
        v9 = v8[1];
        v11 = v8[2];
        if (v9 < v11)
        {
LABEL_9:
          if (v9)
          {
            v12 = *(a1 + 8);
            *(v9 + 16) = *(a1 + 24);
            *v9 = v12;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            *(a1 + 8) = 0;
            *(v9 + 24) = 1;
            v8[1] = v9 + 32;
            return result;
          }

          goto LABEL_23;
        }
      }

      else
      {
LABEL_8:
        v11 = v8[2];
        if (v9 < v11)
        {
          goto LABEL_9;
        }
      }

      v14 = v9 - *v8;
      v15 = (v14 >> 5) + 1;
      if (v15 >> 59)
      {
        goto LABEL_24;
      }

      v16 = v11 - *v8;
      v17 = v16 >> 4;
      if (v16 >> 4 <= v15)
      {
        v17 = (v14 >> 5) + 1;
      }

      v18 = v16 >= 0x7FFFFFFFFFFFFFE0;
      v19 = 0x7FFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 59))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_23:
      __break(1u);
LABEL_24:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v8 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(5uLL);
  v10 = prime;
  v11 = *(a1 + 88);
  if (prime > *&v11)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v8, v10);
    goto LABEL_15;
  }

  if (prime < *&v11)
  {
    v12 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v11 < 3uLL || (v13 = vcnt_s8(v11), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v15 = std::__next_prime(v12);
      if (v10 <= v15)
      {
        v10 = v15;
      }

      if (v10 >= *&v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }

      if (v10 <= v12)
      {
        v10 = v12;
      }

      if (v10 >= *&v11)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v8, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v8, a3);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v8, a4);
  v16 = *(a1 + 88);
  if (!*&v16)
  {
    goto LABEL_35;
  }

  v17 = vcnt_s8(v16);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = 236;
    if (*&v16 <= 0xECuLL)
    {
      v18 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v18 = (v16.i32[0] - 1) & 0xECLL;
  }

  v19 = *(*v8 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v17.u32[0] < 2uLL)
  {
    v21 = *&v16 - 1;
    while (1)
    {
      v22 = v20[1];
      if (v22 == 236)
      {
        if (*(v20 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v22 & v21) != v18)
      {
        goto LABEL_35;
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v23 = v20[1];
    if (v23 == 236)
    {
      break;
    }

    if (v23 >= *&v16)
    {
      v23 %= *&v16;
    }

    if (v23 != v18)
    {
      goto LABEL_35;
    }

LABEL_30:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_35;
    }
  }

  if (*(v20 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::ChapterDisplay>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882A8798;
  *(a1 + 96) = &unk_2882A81D0;
  v2 = *(a1 + 192);
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 64);
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 9);
        v5 -= 4;
        if (v9 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(a1 + 64);
    }

    *(a1 + 72) = v4;
    operator delete(v6);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 9);
        v11 -= 4;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *(a1 + 40);
    }

    *(a1 + 48) = v10;
    operator delete(v12);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t webm::Element<webm::ChapterDisplay>::~Element(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 32);
    }

    *(a1 + 40) = v6;
    operator delete(v8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void webm::MasterValueParser<webm::ChapterDisplay>::PreInit()
{
  HIBYTE(v1) = 3;
  if (__p > "eng" || __p + 3 <= "eng")
  {
    __p[1] = 0;
    v1 = 0;
    __p[0] = 0;
    operator new();
  }

  __break(1u);
}

void *webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::RecursiveParser<webm::ChapterAtomParser>,webm::MasterValueParser<webm::ChapterAtom>::RecursiveChildFactory<webm::ChapterAtomParser>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::RecursiveParser<webm::ChapterAtomParser>*)#1}>::~ChildParser(void *result)
{
  v1 = result[1];
  *result = &unk_2882A88D0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::RecursiveParser<webm::ChapterAtomParser>,webm::MasterValueParser<webm::ChapterAtom>::RecursiveChildFactory<webm::ChapterAtomParser>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::RecursiveParser<webm::ChapterAtomParser>*)#1}>::~ChildParser(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2882A88D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::ChapterAtom>::ChildParser<webm::RecursiveParser<webm::ChapterAtomParser>,webm::MasterValueParser<webm::ChapterAtom>::RecursiveChildFactory<webm::ChapterAtomParser>::BuildParser(webm::MasterValueParser<webm::ChapterAtom>*,webm::ChapterAtom*)::{lambda(webm::RecursiveParser<webm::ChapterAtomParser>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (!result && *(*(a1 + 24) + 136) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 32);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 == 136)
      {
        if (v10 == v9)
        {
LABEL_14:
          __break(1u);
          return result;
        }

        if ((*(v10 + 128) & 1) == 0)
        {
          do
          {
            v9 -= 136;
            webm::ChapterAtom::~ChapterAtom(v9);
          }

          while (v9 != v10);
          v8[1] = v10;
          v8 = *(a1 + 32);
          v9 = v8[1];
          result = v6;
        }
      }

      v11 = *(a1 + 8);
      if (v9 >= v8[2])
      {
        std::vector<webm::Element<webm::ChapterAtom>>::__emplace_back_slow_path<webm::ChapterAtom,BOOL>(v8);
      }

      if (v9)
      {
        *v9 = *(v11 + 8);
        v12 = *(v11 + 24);
        *(v9 + 32) = *(v11 + 40);
        *(v9 + 16) = v12;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 24) = 0;
        *(v9 + 40) = *(v11 + 48);
        v13 = *(v11 + 56);
        *(v9 + 57) = *(v11 + 65);
        *(v9 + 48) = v13;
        *(v9 + 88) = 0;
        *(v9 + 96) = 0;
        *(v9 + 80) = 0;
        *(v9 + 80) = *(v11 + 88);
        *(v9 + 96) = *(v11 + 104);
        *(v11 + 88) = 0;
        *(v11 + 96) = 0;
        *(v11 + 104) = 0;
        *(v9 + 104) = 0;
        *(v9 + 112) = 0;
        *(v9 + 120) = 0;
        *(v9 + 104) = *(v11 + 112);
        *(v9 + 120) = *(v11 + 128);
        *(v11 + 112) = 0;
        *(v11 + 120) = 0;
        *(v11 + 128) = 0;
        *(v9 + 128) = 1;
        v8[1] = v9 + 136;
        return result;
      }

      goto LABEL_14;
    }
  }

  return result;
}

uint64_t webm::RecursiveParser<webm::ChapterAtomParser>::Init(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 4294966265;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  v2 = *(*v1 + 24);

  return v2();
}

uint64_t webm::RecursiveParser<webm::ChapterAtomParser>::InitAfterSeek(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  v2 = *(*v1 + 32);

  return v2();
}

void *webm::RecursiveParser<webm::ChapterAtomParser>::~RecursiveParser(void *result)
{
  v1 = result[1];
  *result = &unk_2882A88D0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void webm::RecursiveParser<webm::ChapterAtomParser>::~RecursiveParser(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2882A88D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void webm::ChapterAtom::~ChapterAtom(webm::ChapterAtom *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = *(this + 14);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v3 - 136));
      }

      while (v3 != v2);
      v4 = *(this + 13);
    }

    *(this + 14) = v2;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 11);
    v7 = *(this + 10);
    if (v6 != v5)
    {
      do
      {
        v6 = webm::Element<webm::ChapterDisplay>::~Element(v6 - 88);
      }

      while (v6 != v5);
      v7 = *(this + 10);
    }

    *(this + 11) = v5;
    operator delete(v7);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::vector<webm::Element<webm::ChapterAtom>>::__emplace_back_slow_path<webm::ChapterAtom,BOOL>(void *a1)
{
  v1 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x1E1E1E1E1E1E1E1)
  {
    if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
    }

    if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
    {
      v2 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x1E1E1E1E1E1E1E1)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v14 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(7uLL);
  v16 = prime;
  v17 = *(a1 + 88);
  if (prime > *&v17)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v14, v16);
    goto LABEL_15;
  }

  if (prime < *&v17)
  {
    v18 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v17 < 3uLL || (v19 = vcnt_s8(v17), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
    {
      v21 = std::__next_prime(v18);
      if (v16 <= v21)
      {
        v16 = v21;
      }

      if (v16 >= *&v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = 1 << -__clz(v18 - 1);
      if (v18 >= 2)
      {
        v18 = v20;
      }

      if (v16 <= v18)
      {
        v16 = v18;
      }

      if (v16 >= *&v17)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a3);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a4);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a5);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a6);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v14, a7);
  v22 = *(a1 + 88);
  if (!*&v22)
  {
    goto LABEL_35;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = 236;
    if (*&v22 <= 0xECuLL)
    {
      v24 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v24 = (v22.i32[0] - 1) & 0xECLL;
  }

  v25 = *(*v14 + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v23.u32[0] < 2uLL)
  {
    v27 = *&v22 - 1;
    while (1)
    {
      v28 = v26[1];
      if (v28 == 236)
      {
        if (*(v26 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v28 & v27) != v24)
      {
        goto LABEL_35;
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v29 = v26[1];
    if (v29 == 236)
    {
      break;
    }

    if (v29 >= *&v22)
    {
      v29 %= *&v22;
    }

    if (v29 != v24)
    {
      goto LABEL_35;
    }

LABEL_30:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_35;
    }
  }

  if (*(v26 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

uint64_t webm::ChapterAtom::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v5 = *(a2 + 1);
  *(a1 + 32) = a2[4];
  *(a1 + 16) = v5;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  v6 = (a1 + 80);
  v7 = *(a1 + 80);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 57);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 57) = v8;
  if (v7)
  {
    v9 = *(a1 + 88);
    v10 = v7;
    if (v9 != v7)
    {
      do
      {
        v9 = webm::Element<webm::ChapterDisplay>::~Element(v9 - 88);
      }

      while (v9 != v7);
      v10 = *v6;
    }

    *(a1 + 88) = v7;
    operator delete(v10);
    *v6 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = a2[12];
  a2[10] = 0;
  a2[11] = 0;
  a2[12] = 0;
  v11 = (a1 + 104);
  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = *(a1 + 112);
    v14 = *(a1 + 104);
    if (v13 != v12)
    {
      do
      {
        webm::ChapterAtom::~ChapterAtom((v13 - 136));
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 112) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = a2[15];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  return a1;
}

void webm::ClusterParser::~ClusterParser(webm::ClusterParser *this)
{
  *this = &unk_2882A8978;
  *(this + 12) = &unk_2882A81D0;
  v2 = *(this + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(this + 8))
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](this + 8);
    operator delete(*(this + 8));
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A8978;
  *(this + 12) = &unk_2882A81D0;
  v2 = *(this + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (*(this + 8))
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](this + 8);
    operator delete(*(this + 8));
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Cluster>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 92) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 88) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 96, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 96, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 92) = 1;
  }

  if ((*(a1 + 93) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 88);
    if (result)
    {
      return result;
    }

    *(a1 + 93) = 1;
  }

  if (*(a1 + 88) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Cluster>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  *(v7 - 4) = 0;
  *(v7 - 3) = 0;
  *(v7 - 8) = 0;
  *(v7 - 2) = 0;
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 64);
  v8 = *(a1 + 64);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (v8)
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100]((a1 + 64));
    operator delete(*v9);
  }

  *v9 = 0;
  *(a1 + 72) = 0;
  *(a1 + 86) = 0;
  *(a1 + 80) = 0;
  v10 = *(a2 + 4);
  v11 = *(a2 + 8);
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 136) = -1;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = v10;
  *(a1 + 296) = v11;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v12 = *(a2 + 8);
  if (v12 == -1)
  {
    *(a1 + 312) = a3;
    goto LABEL_9;
  }

  *(a1 + 312) = v12;
  if (v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = 8;
LABEL_10:
  *(a1 + 284) = v13;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Cluster>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v7 = (a1 + 40);
  v6 = *(a1 + 40);
  *(v7 - 4) = 0;
  *(v7 - 3) = 0;
  *(v7 - 8) = 0;
  *(v7 - 2) = 0;
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 64);
  v8 = *(a1 + 64);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  if (v8)
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100]((a1 + 64));
    operator delete(*v9);
  }

  *v9 = 0;
  *(a1 + 72) = 0;
  *(a1 + 85) = 0;
  *(a1 + 80) = 0;
  *(a1 + 93) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 96, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Cluster>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 152);
  *(a2 + 16) = *(a1 + 168);
  *a2 = v2;
  return *(a1 + 328) & 1;
}

uint64_t webm::ClusterParser::OnParseStarted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 288);
  v5[0] = 524531317;
  v5[1] = v3;
  v6 = *(a1 + 296);
  return (*(*a2 + 72))(a2, v5, a1 + 8, a3);
}

uint64_t webm::ClusterParser::OnParseCompleted(webm::ClusterParser *this, webm::Callback *a2)
{
  v2 = *(this + 72);
  v4[0] = 524531317;
  v4[1] = v2;
  v5 = *(this + 296);
  return (*(*a2 + 136))(a2, v4, this + 8);
}

void *webm::MasterValueParser<webm::Cluster>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8978;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (a1[8])
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](a1 + 8);
    operator delete(a1[8]);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::Cluster>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8978;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if (a1[8])
  {
    std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](a1 + 8);
    operator delete(a1[8]);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Cluster>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Cluster>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 88) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

void *webm::MasterValueParser<webm::Cluster>::ChildParser<webm::BasicBlockParser<webm::SimpleBlock>,webm::MasterValueParser<webm::Cluster>::RepeatedChildFactory<webm::BasicBlockParser<webm::SimpleBlock>,webm::SimpleBlock,webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::BasicBlockParser<webm::SimpleBlock>*)#1},webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::~ChildParser(void *result)
{
  *result = &unk_2882A7FE8;
  v1 = result[21];
  if (v1)
  {
    result[22] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void webm::MasterValueParser<webm::Cluster>::ChildParser<webm::BasicBlockParser<webm::SimpleBlock>,webm::MasterValueParser<webm::Cluster>::RepeatedChildFactory<webm::BasicBlockParser<webm::SimpleBlock>,webm::SimpleBlock,webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::BasicBlockParser<webm::SimpleBlock>*)#1},webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A7FE8;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Cluster>::ChildParser<webm::BasicBlockParser<webm::SimpleBlock>,webm::MasterValueParser<webm::Cluster>::RepeatedChildFactory<webm::BasicBlockParser<webm::SimpleBlock>,webm::SimpleBlock,webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::BasicBlockParser<webm::SimpleBlock>*)#1},webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 208);
  if (v5[93])
  {
    goto LABEL_2;
  }

  v7 = a3;
  v8 = a4;
  v9 = a2;
  result = (*(*v5 + 56))(v5, a2, v5 + 88);
  if (!result)
  {
    v10 = *(a1 + 208);
    *(v10 + 93) = 1;
    a4 = v8;
    a3 = v7;
    a2 = v9;
    if (*(v10 + 88) == 1)
    {
      return 0x80000000;
    }

LABEL_2:
    result = webm::BasicBlockParser<webm::SimpleBlock>::Feed(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    if (*(*(a1 + 208) + 88) == 1 || ((*(*a1 + 48))(a1) & 1) != 0)
    {
      return 0;
    }

    v11 = *(a1 + 216);
    v13 = *v11;
    v12 = v11[1];
    if (v12 - *v11 == 32)
    {
      if (v13 == v12)
      {
        goto LABEL_25;
      }

      if ((*(v13 + 24) & 1) == 0)
      {
        v11[1] = v13;
        v12 = v13;
      }
    }

    v14 = v11[2];
    if (v12 >= v14)
    {
      v16 = ((v12 - v13) >> 5) + 1;
      if (v16 >> 59)
      {
        goto LABEL_26;
      }

      v17 = v14 - v13;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v16 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        if (!(v16 >> 59))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v12)
    {
      v15 = *(a1 + 16);
      *(v12 + 16) = *(a1 + 32);
      *v12 = v15;
      *(v12 + 24) = 1;
      result = 0;
      v11[1] = v12 + 32;
      return result;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webm::MasterValueParser<webm::Cluster>::ChildParser<webm::BlockGroupParser,webm::MasterValueParser<webm::Cluster>::RepeatedChildFactory<webm::BlockGroupParser,webm::BlockGroup,webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::BlockGroupParser*)#1},webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::~ChildParser(void *a1)
{
  webm::MasterValueParser<webm::BlockGroup>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

void webm::MasterValueParser<webm::Cluster>::ChildParser<webm::BlockGroupParser,webm::MasterValueParser<webm::Cluster>::RepeatedChildFactory<webm::BlockGroupParser,webm::BlockGroup,webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::BuildParser(webm::MasterValueParser<webm::Cluster>*,webm::Cluster*)::{lambda(webm::BlockGroupParser*)#1},webm::MasterValueParser<webm::Cluster>::TagUseAsStart>::Feed(void *a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v8 = a1[53];
  if ((v8[93] & 1) != 0 || !(*(*v8 + 56))(v8, a2, v8 + 88) && (v9 = a1[53], *(v9 + 93) = 1, *(v9 + 88) != 1))
  {
    *a4 = 0;
    if ((*(a1 + 181) & 1) == 0)
    {
      v15 = 0;
      if ((*(*a1 + 56))(a1, a2, &v15))
      {
        return;
      }

      *(a1 + 44) = v15;
      *(a1 + 181) = 1;
    }

    if (!webm::MasterValueParser<webm::BlockGroup>::Feed(a1, a2, a3, a4) && *(a1[53] + 88) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
    {
      v10 = a1[54];
      v12 = *v10;
      v11 = v10[1];
      if (v11 - *v10 == 176)
      {
        if (v12 == v11)
        {
LABEL_20:
          __break(1u);
          return;
        }

        if ((*(v12 + 168) & 1) == 0)
        {
          std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](a1[54]);
          v10 = a1[54];
          v11 = v10[1];
        }
      }

      v16 = 1;
      if (v11 >= v10[2])
      {
        std::vector<webm::Element<webm::BlockGroup>>::__emplace_back_slow_path<webm::BlockGroup,BOOL>(v10);
      }

      if (v11)
      {
        v13 = *(a1 + 1);
        v14 = *(a1 + 3);
        *(v11 + 25) = *(a1 + 33);
        *v11 = v13;
        *(v11 + 16) = v14;
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        *(v11 + 48) = 0;
        *(v11 + 48) = *(a1 + 7);
        *(v11 + 64) = a1[9];
        a1[7] = 0;
        a1[8] = 0;
        a1[9] = 0;
        *(v11 + 72) = *(a1 + 80);
        *(v11 + 80) = *(a1 + 11);
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        *(v11 + 96) = 0;
        *(v11 + 96) = *(a1 + 13);
        *(v11 + 112) = a1[15];
        a1[14] = 0;
        a1[15] = 0;
        a1[13] = 0;
        *(v11 + 120) = *(a1 + 8);
        *(v11 + 144) = 0;
        *(v11 + 152) = 0;
        *(v11 + 136) = 0;
        *(v11 + 136) = *(a1 + 9);
        *(v11 + 152) = a1[20];
        a1[19] = 0;
        a1[20] = 0;
        a1[18] = 0;
        *(v11 + 160) = *(a1 + 168);
        *(v11 + 168) = 1;
        v10[1] = v11 + 176;
        return;
      }

      goto LABEL_20;
    }
  }
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  webm::MasterValueParser<webm::BlockGroup>::PreInit(a1);
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  *(a1 + 200) = 0xFFFFFFFFLL;
  *(a1 + 224) = -1;
  *(a1 + 236) = 0;
  *(a1 + 228) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = v6;
  *(a1 + 384) = v7;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v8 = *(a2 + 8);
  if (v8 == -1)
  {
    *(a1 + 400) = a3;
  }

  else
  {
    *(a1 + 400) = v8;
    if (!v8)
    {
      *(a1 + 372) = 8;
      return 0;
    }
  }

  *(a1 + 372) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  webm::MasterValueParser<webm::BlockGroup>::PreInit(a1);
  *(a1 + 181) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 184, a2, a3);
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 416) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 240);
  *(a2 + 16) = *(a1 + 256);
  *a2 = v2;
  return *(a1 + 416) & 1;
}

uint64_t webm::BlockGroupParser::OnParseStarted(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 376);
  v4[0] = 160;
  v4[1] = v2;
  v5 = *(a1 + 384);
  return (*(*a2 + 96))(a2, v4);
}

uint64_t webm::BlockGroupParser::OnParseCompleted(webm::BlockGroupParser *this, webm::Callback *a2)
{
  v2 = *(this + 94);
  v4[0] = 160;
  v4[1] = v2;
  v5 = *(this + 24);
  return (*(*a2 + 120))(a2, v4, this + 8);
}

void webm::MasterValueParser<webm::BlockGroup>::~MasterValueParser(void *a1)
{
  webm::MasterValueParser<webm::BlockGroup>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 180) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 176) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 184, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 184, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 180) = 1;
  }

  if ((*(a1 + 181) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 176);
    if (result)
    {
      return result;
    }

    *(a1 + 181) = 1;
  }

  if (*(a1 + 176) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BasicBlockParser<webm::Block>,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BasicBlockParser<webm::Block>,webm::Block>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BasicBlockParser<webm::Block>*)#1}>::~ChildParser(void *result)
{
  *result = &unk_2882A7FA0;
  v1 = result[20];
  if (v1)
  {
    result[21] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BasicBlockParser<webm::Block>,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BasicBlockParser<webm::Block>,webm::Block>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BasicBlockParser<webm::Block>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A7FA0;
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BasicBlockParser<webm::Block>,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BasicBlockParser<webm::Block>,webm::Block>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BasicBlockParser<webm::Block>*)#1}>::Feed(__n128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::BasicBlockParser<webm::Block>::Feed(a1, a2, a3, a4) && *(a1[12].n128_u64[1] + 176) != 1 && ((*(a1->n128_u64[0] + 48))(a1) & 1) == 0)
  {
    v6 = a1[13].n128_u64[0];
    result = a1[1];
    *v6 = result;
    v6[1].n128_u8[0] = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::VirtualBlockParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::VirtualBlockParser,webm::VirtualBlock>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::VirtualBlockParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v12 = 0;
  v8 = *(a1 + 96);
  while (v8 != 2)
  {
    if (v8 == 1)
    {
      if (*(a1 + 8) < *(a1 + 16))
      {
        return 4294966266;
      }

      v8 = 2;
      *(a1 + 96) = 2;
    }

    else if (!v8)
    {
      result = webm::BlockHeaderParser::Feed(a1 + 40, a2, a3, &v12);
      v10 = v12;
      *a4 += v12;
      *(a1 + 16) += v10;
      if (result)
      {
        return result;
      }

      *(a1 + 24) = *(a1 + 48);
      *(a1 + 32) = *(a1 + 56);
      v8 = 1;
      *(a1 + 96) = 1;
    }
  }

  if (*(*(a1 + 104) + 176) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 112);
  *v11 = *(a1 + 24);
  *(v11 + 16) = 1;
  return result;
}

void *webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BlockAdditionsParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BlockAdditionsParser,webm::BlockAdditions>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BlockAdditionsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8C18;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 40);
        if (v9)
        {
          *(v5 - 32) = v9;
          operator delete(v9);
        }

        v5 -= 56;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  return a1;
}

void webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BlockAdditionsParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BlockAdditionsParser,webm::BlockAdditions>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BlockAdditionsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8C18;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 40);
        if (v9)
        {
          *(v5 - 32) = v9;
          operator delete(v9);
        }

        v5 -= 56;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::BlockAdditionsParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::BlockAdditionsParser,webm::BlockAdditions>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::BlockAdditionsParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::BlockAdditions>::Feed(a1, a2, a3, a4) && *(*(a1 + 280) + 176) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 288);
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      v9 = *v6;
      if (v8 != v7)
      {
        do
        {
          v10 = *(v8 - 5);
          if (v10)
          {
            *(v8 - 4) = v10;
            operator delete(v10);
          }

          v8 -= 56;
        }

        while (v8 != v7);
        v9 = *v6;
      }

      v6[1] = v7;
      operator delete(v9);
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    result = *(a1 + 8);
    *v6 = result;
    v6[2] = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::BlockAdditions>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 40);
        if (v10)
        {
          *(v8 - 32) = v10;
          operator delete(v10);
        }

        v8 -= 56;
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 16) = v7;
    operator delete(v9);
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 22) = 0;
  *(v6 + 16) = 0;
  v11 = *(a2 + 4);
  v12 = *(a2 + 8);
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v11;
  *(a1 + 240) = v12;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v13 = *(a2 + 8);
  if (v13 == -1)
  {
    *(a1 + 256) = a3;
    goto LABEL_13;
  }

  *(a1 + 256) = v13;
  if (v13)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v14 = 8;
LABEL_14:
  *(a1 + 228) = v14;
  return 0;
}

uint64_t webm::MasterValueParser<webm::BlockAdditions>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v4 = a1 + 8;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = a2;
    v7 = a3;
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    if (v8 != v5)
    {
      do
      {
        v10 = *(v8 - 40);
        if (v10)
        {
          *(v8 - 32) = v10;
          operator delete(v10);
        }

        v8 -= 56;
      }

      while (v8 != v5);
      v9 = *v4;
    }

    *(a1 + 16) = v5;
    operator delete(v9);
    a3 = v7;
    a2 = v6;
  }

  *(v4 + 22) = 0;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(a1 + 37) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 40, a2, a3);
}

uint64_t webm::MasterValueParser<webm::BlockAdditions>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  *(a2 + 16) = *(a1 + 112);
  *a2 = v2;
  return *(a1 + 272) & 1;
}

uint64_t webm::MasterValueParser<webm::BlockAdditions>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 32) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 40, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 40, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 36) = 1;
  }

  if ((*(a1 + 37) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 32);
    if (result)
    {
      return result;
    }

    *(a1 + 37) = 1;
  }

  if (*(a1 + 32) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::BlockAdditions>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8C18;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 40);
        if (v9)
        {
          *(v5 - 32) = v9;
          operator delete(v9);
        }

        v5 -= 56;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  return a1;
}

void webm::MasterValueParser<webm::BlockAdditions>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8C18;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[1];
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 40);
        if (v9)
        {
          *(v5 - 32) = v9;
          operator delete(v9);
        }

        v5 -= 56;
      }

      while (v5 != v4);
      v6 = a1[1];
    }

    a1[2] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::BlockAdditions>::ChildParser<webm::BlockMoreParser,webm::MasterValueParser<webm::BlockAdditions>::RepeatedChildFactory<webm::BlockMoreParser,webm::BlockMore>::BuildParser(webm::MasterValueParser<webm::BlockAdditions>*,webm::BlockAdditions*)::{lambda(webm::BlockMoreParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8CD8;
  a1[8] = &unk_2882A81D0;
  v2 = a1[20];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::BlockAdditions>::ChildParser<webm::BlockMoreParser,webm::MasterValueParser<webm::BlockAdditions>::RepeatedChildFactory<webm::BlockMoreParser,webm::BlockMore>::BuildParser(webm::MasterValueParser<webm::BlockAdditions>*,webm::BlockAdditions*)::{lambda(webm::BlockMoreParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8CD8;
  a1[8] = &unk_2882A81D0;
  v2 = a1[20];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::BlockAdditions>::ChildParser<webm::BlockMoreParser,webm::MasterValueParser<webm::BlockAdditions>::RepeatedChildFactory<webm::BlockMoreParser,webm::BlockMore>::BuildParser(webm::MasterValueParser<webm::BlockAdditions>*,webm::BlockAdditions*)::{lambda(webm::BlockMoreParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::BlockMore>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 304) + 32) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 312);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 != 56)
      {
        goto LABEL_8;
      }

      if (v10 == v9)
      {
        goto LABEL_24;
      }

      if ((*(v10 + 48) & 1) == 0)
      {
        do
        {
          v12 = *(v9 - 40);
          if (v12)
          {
            *(v9 - 32) = v12;
            operator delete(v12);
            result = v6;
          }

          v9 -= 56;
        }

        while (v9 != v10);
        v8[1] = v10;
        v8 = *(a1 + 312);
        v9 = v8[1];
        v11 = v8[2];
        if (v9 < v11)
        {
LABEL_9:
          if (v9)
          {
            *v9 = *(a1 + 8);
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 16) = 0;
            *(v9 + 16) = *(a1 + 24);
            *(v9 + 32) = *(a1 + 40);
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            *(a1 + 24) = 0;
            *(v9 + 40) = *(a1 + 48);
            *(v9 + 48) = 1;
            v8[1] = v9 + 56;
            return result;
          }

          goto LABEL_24;
        }
      }

      else
      {
LABEL_8:
        v11 = v8[2];
        if (v9 < v11)
        {
          goto LABEL_9;
        }
      }

      v13 = v9 - *v8;
      v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3) + 1;
      if (v14 > 0x492492492492492)
      {
        goto LABEL_25;
      }

      v15 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *v8) >> 3);
      v16 = 2 * v15;
      if (2 * v15 <= v14)
      {
        v16 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3) + 1;
      }

      if (v15 >= 0x249249249249249)
      {
        v17 = 0x492492492492492;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0x492492492492492)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_24:
      __break(1u);
LABEL_25:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::BlockMore>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  *(v7 - 16) = 1;
  *(v7 - 8) = 0;
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 80) = 0xFFFFFFFFLL;
  *(a1 + 104) = -1;
  *(a1 + 116) = 0;
  *(a1 + 108) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v8;
  *(a1 + 264) = v9;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 280) = a3;
  }

  else
  {
    *(a1 + 280) = v10;
    if (!v10)
    {
      *(a1 + 252) = 8;
      return 0;
    }
  }

  *(a1 + 252) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::BlockMore>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  *(v5 - 16) = 1;
  *(v5 - 8) = 0;
  if (v4)
  {
    *(a1 + 32) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 60) = 256;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;

  return webm::MasterParser::InitAfterSeek(a1 + 64, a2, a3);
}

uint64_t webm::MasterValueParser<webm::BlockMore>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 120);
  *(a2 + 16) = *(a1 + 136);
  *a2 = v2;
  return *(a1 + 296) & 1;
}

uint64_t webm::MasterValueParser<webm::BlockMore>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 60) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 56) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 64, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 64, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 60) = 1;
  }

  if ((*(a1 + 61) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 56);
    if (result)
    {
      return result;
    }

    *(a1 + 61) = 1;
  }

  if (*(a1 + 56) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::BlockMore>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8CD8;
  a1[8] = &unk_2882A81D0;
  v2 = a1[20];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::BlockMore>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8CD8;
  a1[8] = &unk_2882A81D0;
  v2 = a1[20];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::BlockMore>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::BlockMore>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::BlockMore>*,webm::BlockMore*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 56) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

void *webm::MasterValueParser<webm::BlockMore>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::BlockMore>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::BlockMore>*,webm::BlockMore*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
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

void webm::MasterValueParser<webm::BlockMore>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::BlockMore>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::BlockMore>*,webm::BlockMore*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
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

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::BlockMore>::ChildParser<webm::ByteParser<std::vector<unsigned char>>,webm::MasterValueParser<webm::BlockMore>::SingleChildFactory<webm::ByteParser<std::vector<unsigned char>>,std::vector<unsigned char>>::BuildParser(webm::MasterValueParser<webm::BlockMore>*,webm::BlockMore*)::{lambda(webm::ByteParser<std::vector<unsigned char>>*)#1}>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  *a4 = 0;
  v5 = result + 1;
  v6 = result[7];
  if (v6 != result[2] - result[1])
  {
    do
    {
      v14 = 0;
      v9 = v4[1];
      v10 = v4[2];
      if (v9 == v10)
      {
        __break(1u);
        return result;
      }

      result = (*(*a3 + 16))(a3, v10 - (v9 + v6), v9 + v6, &v14);
      v11 = v14;
      *a4 += v14;
      v6 = v4[7] + v11;
      v4[7] = v6;
    }

    while (result == -1);
    if (result)
    {
      return result;
    }
  }

  if (*(v4[8] + 56) == 1)
  {
    return 0;
  }

  if ((*(*v4 + 48))(v4))
  {
    return 0;
  }

  v12 = v4[9];
  v13 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v13;
    operator delete(v13);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
  }

  result = 0;
  *v12 = *(v4 + 1);
  *(v12 + 16) = v4[3];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(v12 + 24) = 1;
  return result;
}

uint64_t webm::ByteParser<std::vector<unsigned char>>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    return 4294966270;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    return 4294966267;
  }

  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16) - v3;
    if (v2 > v4)
    {
      v5 = a1;
      std::vector<unsigned char>::__append(a1 + 8, v2 - v4);
      a1 = v5;
LABEL_6:
      *(a1 + 56) = 0;
      return 0;
    }

    if (v2 >= v4)
    {
      goto LABEL_6;
    }

    *(a1 + 16) = v3 + v2;
    *(a1 + 56) = 0;
    return 0;
  }

  else
  {
    v7 = a1;
    std::vector<unsigned char>::__assign_with_size[abi:sn200100]<unsigned char *,unsigned char *>((a1 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
    v7[7] = v7[5] - v7[4];
    return 0;
  }
}

void *webm::ByteParser<std::vector<unsigned char>>::~ByteParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
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

void webm::ByteParser<std::vector<unsigned char>>::~ByteParser(void *a1)
{
  *a1 = &unk_2882A8DC8;
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

  JUMPOUT(0x2743DA540);
}

void *webm::ByteParser<std::vector<unsigned char>>::Feed(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v4 = result[7];
  if (v4 == result[2] - result[1])
  {
    return 0;
  }

  v7 = result;
  while (1)
  {
    v11 = 0;
    v8 = v7[1];
    v9 = v7[2];
    if (v8 == v9)
    {
      break;
    }

    result = (*(*a3 + 16))(a3, v9 - (v8 + v4), v8 + v4, &v11);
    v10 = v11;
    *a4 += v11;
    v4 = v7[7] + v10;
    v7[7] = v4;
    if (result != -1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v6 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(3uLL);
  v8 = prime;
  v9 = *(a1 + 88);
  if (prime > *&v9)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v6, v8);
    goto LABEL_15;
  }

  if (prime < *&v9)
  {
    v10 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v9 < 3uLL || (v11 = vcnt_s8(v9), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v13 = std::__next_prime(v10);
      if (v8 <= v13)
      {
        v8 = v13;
      }

      if (v8 >= *&v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }

      if (v8 <= v10)
      {
        v8 = v10;
      }

      if (v8 >= *&v9)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v6, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v6, a3);
  v14 = *(a1 + 88);
  if (!*&v14)
  {
    goto LABEL_35;
  }

  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = 236;
    if (*&v14 <= 0xECuLL)
    {
      v16 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v16 = (v14.i32[0] - 1) & 0xECLL;
  }

  v17 = *(*v6 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v15.u32[0] < 2uLL)
  {
    v19 = *&v14 - 1;
    while (1)
    {
      v20 = v18[1];
      if (v20 == 236)
      {
        if (*(v18 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v20 & v19) != v16)
      {
        goto LABEL_35;
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v21 = v18[1];
    if (v21 == 236)
    {
      break;
    }

    if (v21 >= *&v14)
    {
      v21 %= *&v14;
    }

    if (v21 != v16)
    {
      goto LABEL_35;
    }

LABEL_30:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_35;
    }
  }

  if (*(v18 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 176) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::IntParser<long long>,webm::MasterValueParser<webm::BlockGroup>::RepeatedChildFactory<webm::IntParser<long long>,long long>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::IntParser<long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 24);
  *a4 = 0;
  if (v6 <= 8)
  {
    if (v6)
    {
      v9 = v6 + 1;
      while (1)
      {
        v23 = 0;
        v24 = 0;
        result = (*(*a3 + 16))(a3, 1, &v23, &v24);
        if (result)
        {
          break;
        }

        ++*a4;
        *(a1 + 8) = v23 | (*(a1 + 8) << 8);
        if (--v9 <= 1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = 0;
    }
  }

  else
  {
    result = 4294966270;
  }

  v10 = *(a1 + 24);
  v11 = v10 == *a4;
  *(a1 + 24) = v10 - *a4;
  if (v11)
  {
    v12 = *(a1 + 28);
    if (v12 >= 1)
    {
      v13 = -1 << (8 * v12 - 1);
      v14 = *(a1 + 8);
      if ((v14 & v13) != 0)
      {
        *(a1 + 8) = v14 | v13;
      }
    }
  }

  if (!result && *(*(a1 + 32) + 176) != 1)
  {
    v15 = result;
    v16 = (*(*a1 + 48))(a1);
    result = v15;
    if ((v16 & 1) == 0)
    {
      v17 = *(a1 + 40);
      v19 = *v17;
      v18 = v17[1];
      if (v18 - *v17 == 16)
      {
        if (v19 == v18)
        {
          goto LABEL_32;
        }

        if ((*(v19 + 8) & 1) == 0)
        {
          v17[1] = v19;
          v18 = v19;
        }
      }

      v20 = v17[2];
      if (v18 >= v20)
      {
        v21 = ((v18 - v19) >> 4) + 1;
        if (v21 >> 60)
        {
          goto LABEL_33;
        }

        v22 = v20 - v19;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v21 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (!(v21 >> 60))
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      else if (v18)
      {
        *v18 = *(a1 + 8);
        *(v18 + 8) = 1;
        v17[1] = v18 + 16;
        return result;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webm::IntParser<long long>::Init(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 8)
  {
    return 4294966270;
  }

  *(a1 + 24) = v2;
  *(a1 + 28) = v2;
  if (v2)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return 0;
}

uint64_t webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::IntParser<long long>,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::IntParser<long long>,long long>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::IntParser<long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 24);
  *a4 = 0;
  if (v6 <= 8)
  {
    if (v6)
    {
      v9 = v6 + 1;
      while (1)
      {
        v18 = 0;
        v19 = 0;
        result = (*(*a3 + 16))(a3, 1, &v18, &v19);
        if (result)
        {
          break;
        }

        ++*a4;
        *(a1 + 8) = v18 | (*(a1 + 8) << 8);
        if (--v9 <= 1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = 0;
    }
  }

  else
  {
    result = 4294966270;
  }

  v10 = *(a1 + 24);
  v11 = v10 == *a4;
  *(a1 + 24) = v10 - *a4;
  if (v11)
  {
    v12 = *(a1 + 28);
    if (v12 >= 1)
    {
      v13 = -1 << (8 * v12 - 1);
      v14 = *(a1 + 8);
      if ((v14 & v13) != 0)
      {
        *(a1 + 8) = v14 | v13;
      }
    }
  }

  if (!result && *(*(a1 + 32) + 176) != 1)
  {
    v15 = result;
    v16 = (*(*a1 + 48))(a1);
    result = v15;
    if ((v16 & 1) == 0)
    {
      v17 = *(a1 + 40);
      *v17 = *(a1 + 8);
      *(v17 + 8) = 1;
    }
  }

  return result;
}

void *webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::SlicesParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::SlicesParser,webm::Slices>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::SlicesParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8F48;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::SlicesParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::SlicesParser,webm::Slices>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::SlicesParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A8F48;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::BlockGroup>::ChildParser<webm::SlicesParser,webm::MasterValueParser<webm::BlockGroup>::SingleChildFactory<webm::SlicesParser,webm::Slices>::BuildParser(webm::MasterValueParser<webm::BlockGroup>*,webm::BlockGroup*)::{lambda(webm::SlicesParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::Slices>::Feed(a1, a2, a3, a4) && *(*(a1 + 280) + 176) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 288);
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    result = *(a1 + 8);
    *v6 = result;
    *(v6 + 16) = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Slices>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  *v7 = 0;
  v7[1] = 0;
  *(v7 + 22) = 0;
  v7[2] = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v8;
  *(a1 + 240) = v9;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 256) = a3;
  }

  else
  {
    *(a1 + 256) = v10;
    if (!v10)
    {
      *(a1 + 228) = 8;
      return 0;
    }
  }

  *(a1 + 228) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Slices>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *(v5 + 22) = 0;
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(a1 + 37) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 40, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Slices>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  *(a2 + 16) = *(a1 + 112);
  *a2 = v2;
  return *(a1 + 272) & 1;
}

uint64_t webm::MasterValueParser<webm::Slices>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 32) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 40, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 40, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 36) = 1;
  }

  if ((*(a1 + 37) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 32);
    if (result)
    {
      return result;
    }

    *(a1 + 37) = 1;
  }

  if (*(a1 + 32) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::Slices>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8F48;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::Slices>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8F48;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void *webm::MasterValueParser<webm::Slices>::ChildParser<webm::TimeSliceParser,webm::MasterValueParser<webm::Slices>::RepeatedChildFactory<webm::TimeSliceParser,webm::TimeSlice>::BuildParser(webm::MasterValueParser<webm::Slices>*,webm::Slices*)::{lambda(webm::TimeSliceParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9008;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Slices>::ChildParser<webm::TimeSliceParser,webm::MasterValueParser<webm::Slices>::RepeatedChildFactory<webm::TimeSliceParser,webm::TimeSlice>::BuildParser(webm::MasterValueParser<webm::Slices>*,webm::Slices*)::{lambda(webm::TimeSliceParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9008;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Slices>::ChildParser<webm::TimeSliceParser,webm::MasterValueParser<webm::Slices>::RepeatedChildFactory<webm::TimeSliceParser,webm::TimeSlice>::BuildParser(webm::MasterValueParser<webm::Slices>*,webm::Slices*)::{lambda(webm::TimeSliceParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::TimeSlice>::Feed(a1, a2, a3, a4) && *(*(a1 + 272) + 32) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 280);
    v7 = *v6;
    v8 = v6[1];
    if (v8 - *v6 == 24)
    {
      if (v7 == v8)
      {
        goto LABEL_21;
      }

      if ((v7[1].n128_u8[0] & 1) == 0)
      {
        v6[1] = v7;
        v8 = v7;
      }
    }

    v9 = v6[2];
    if (v8 >= v9)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) + 1;
      if (v10 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_22;
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (v12 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v8)
    {
      result = *(a1 + 8);
      *v8 = result;
      v8[1].n128_u8[0] = 1;
      v6[1] = (v8 + 24);
      return result;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::TimeSlice>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 22) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 48) = 0xFFFFFFFFLL;
  *(a1 + 72) = -1;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = v3;
  *(a1 + 232) = v4;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 248) = a3;
  }

  else
  {
    *(a1 + 248) = v5;
    if (!v5)
    {
      *(a1 + 220) = 8;
      return 0;
    }
  }

  *(a1 + 220) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::TimeSlice>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 21) = 0;
  *(a1 + 29) = 1;
  return webm::MasterParser::InitAfterSeek(a1 + 32, a2, a3);
}

uint64_t webm::MasterValueParser<webm::TimeSlice>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 264) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  *(a2 + 16) = *(a1 + 104);
  *a2 = v2;
  return *(a1 + 264) & 1;
}

uint64_t webm::MasterValueParser<webm::TimeSlice>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 28) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 24) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 32, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 32, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 28) = 1;
  }

  if ((*(a1 + 29) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 24);
    if (result)
    {
      return result;
    }

    *(a1 + 29) = 1;
  }

  if (*(a1 + 24) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::TimeSlice>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9008;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::TimeSlice>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9008;
  a1[4] = &unk_2882A81D0;
  v2 = a1[16];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::TimeSlice>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::TimeSlice>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::TimeSlice>*,webm::TimeSlice*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 24) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

void *webm::MasterValueParser<webm::BlockGroup>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A8AC8;
  a1[23] = &unk_2882A81D0;
  v2 = a1[35];
  if (v2)
  {
    do
    {
      v9 = *v2;
      v10 = v2[3];
      v2[3] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      operator delete(v2);
      v2 = v9;
    }

    while (v9);
  }

  v3 = a1[33];
  a1[33] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = a1[8];
    v8 = a1[7];
    if (v7 != v6)
    {
      do
      {
        v11 = *(v7 - 40);
        if (v11)
        {
          *(v7 - 32) = v11;
          operator delete(v11);
        }

        v7 -= 56;
      }

      while (v7 != v6);
      v8 = a1[7];
    }

    a1[8] = v6;
    operator delete(v8);
  }

  return a1;
}

void std::vector<webm::Element<webm::BlockGroup>>::clear[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 176)
  {
    v5 = *(i - 40);
    if (v5)
    {
      *(i - 32) = v5;
      operator delete(v5);
    }

    v6 = *(i - 80);
    if (v6)
    {
      *(i - 72) = v6;
      operator delete(v6);
    }

    v7 = *(i - 128);
    if (v7)
    {
      v8 = *(i - 120);
      v4 = *(i - 128);
      if (v8 != v7)
      {
        do
        {
          v9 = *(v8 - 40);
          if (v9)
          {
            *(v8 - 32) = v9;
            operator delete(v9);
          }

          v8 -= 56;
        }

        while (v8 != v7);
        v4 = *(i - 128);
      }

      *(i - 120) = v7;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<webm::Element<webm::BlockGroup>>::__emplace_back_slow_path<webm::BlockGroup,BOOL>(void *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x1745D1745D1745DLL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
    {
      v2 = 0x1745D1745D1745DLL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webm::MasterValueParser<webm::BlockGroup>::PreInit(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(a1 + 56);
  *(a1 + 33) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 5);
        if (v6)
        {
          *(v4 - 4) = v6;
          operator delete(v6);
        }

        v4 -= 56;
      }

      while (v4 != v3);
      v5 = *v2;
    }

    *(a1 + 64) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 104);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = 0;
  if (v7)
  {
    *(a1 + 112) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 144);
  *(a1 + 136) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  if (v8)
  {
    *(a1 + 152) = v8;
    operator delete(v8);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v10 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(5uLL);
  v12 = prime;
  v13 = *(a1 + 88);
  if (prime > *&v13)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v10, v12);
    goto LABEL_15;
  }

  if (prime < *&v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v13 < 3uLL || (v15 = vcnt_s8(v13), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v17 = std::__next_prime(v14);
      if (v12 <= v17)
      {
        v12 = v17;
      }

      if (v12 >= *&v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }

      if (v12 <= v14)
      {
        v12 = v14;
      }

      if (v12 >= *&v13)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v10, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v10, a3);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v10, a4);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v10, a5);
  v18 = *(a1 + 88);
  if (!*&v18)
  {
    goto LABEL_35;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = 236;
    if (*&v18 <= 0xECuLL)
    {
      v20 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v20 = (v18.i32[0] - 1) & 0xECLL;
  }

  v21 = *(*v10 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v19.u32[0] < 2uLL)
  {
    v23 = *&v18 - 1;
    while (1)
    {
      v24 = v22[1];
      if (v24 == 236)
      {
        if (*(v22 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v24 & v23) != v20)
      {
        goto LABEL_35;
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v25 = v22[1];
    if (v25 == 236)
    {
      break;
    }

    if (v25 >= *&v18)
    {
      v25 %= *&v18;
    }

    if (v25 != v20)
    {
      goto LABEL_35;
    }

LABEL_30:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  if (*(v22 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

void webm::CuesParser::~CuesParser(webm::CuesParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webm::CuePointParser::~CuePointParser(webm::CuePointParser *this)
{
  *this = &unk_2882A9158;
  *(this + 7) = &unk_2882A81D0;
  v2 = *(this + 19);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A9158;
  *(this + 7) = &unk_2882A81D0;
  v2 = *(this + 19);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::CuePoint>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 52) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 48) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 56, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 56, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 52) = 1;
  }

  if ((*(a1 + 53) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 48);
    if (result)
    {
      return result;
    }

    *(a1 + 53) = 1;
  }

  if (*(a1 + 48) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::CuePoint>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + 24);
  v6 = *(a1 + 24);
  *(v7 - 2) = 0;
  *(v7 - 8) = 0;
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  *v7 = 0;
  v7[1] = 0;
  *(v7 + 22) = 0;
  v7[2] = 0;
  v8 = *(a2 + 4);
  v9 = *(a2 + 8);
  *(a1 + 72) = 0xFFFFFFFFLL;
  *(a1 + 96) = -1;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = v8;
  *(a1 + 256) = v9;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v10 = *(a2 + 8);
  if (v10 == -1)
  {
    *(a1 + 272) = a3;
  }

  else
  {
    *(a1 + 272) = v10;
    if (!v10)
    {
      *(a1 + 244) = 8;
      return 0;
    }
  }

  *(a1 + 244) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::CuePoint>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  *(v5 - 2) = 0;
  *(v5 - 8) = 0;
  if (v4)
  {
    *(a1 + 32) = v4;
    v6 = a3;
    v7 = a2;
    operator delete(v4);
    a2 = v7;
    a3 = v6;
  }

  *(v5 + 22) = 0;
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  *(a1 + 53) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 56, a2, a3);
}

uint64_t webm::MasterValueParser<webm::CuePoint>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 288) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 112);
  *(a2 + 16) = *(a1 + 128);
  *a2 = v2;
  return *(a1 + 288) & 1;
}

uint64_t webm::CuePointParser::OnParseCompleted(webm::CuePointParser *this, webm::Callback *a2)
{
  v2 = *(this + 62);
  v4[0] = 187;
  v4[1] = v2;
  v5 = *(this + 16);
  return (*(*a2 + 152))(a2, v4, this + 8);
}

void *webm::MasterValueParser<webm::CuePoint>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9158;
  a1[7] = &unk_2882A81D0;
  v2 = a1[19];
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void webm::MasterValueParser<webm::CuePoint>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9158;
  a1[7] = &unk_2882A81D0;
  v2 = a1[19];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::CuePoint>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::CuePoint>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::CuePoint>*,webm::CuePoint*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 48) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

void *webm::MasterValueParser<webm::CuePoint>::ChildParser<webm::CueTrackPositionsParser,webm::MasterValueParser<webm::CuePoint>::RepeatedChildFactory<webm::CueTrackPositionsParser,webm::CueTrackPositions>::BuildParser(webm::MasterValueParser<webm::CuePoint>*,webm::CuePoint*)::{lambda(webm::CueTrackPositionsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9260;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::CuePoint>::ChildParser<webm::CueTrackPositionsParser,webm::MasterValueParser<webm::CuePoint>::RepeatedChildFactory<webm::CueTrackPositionsParser,webm::CueTrackPositions>::BuildParser(webm::MasterValueParser<webm::CuePoint>*,webm::CuePoint*)::{lambda(webm::CueTrackPositionsParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A9260;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::CuePoint>::ChildParser<webm::CueTrackPositionsParser,webm::MasterValueParser<webm::CuePoint>::RepeatedChildFactory<webm::CueTrackPositionsParser,webm::CueTrackPositions>::BuildParser(webm::MasterValueParser<webm::CuePoint>*,webm::CuePoint*)::{lambda(webm::CueTrackPositionsParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::CueTrackPositions>::Feed(a1, a2, a3, a4) && *(*(a1 + 336) + 48) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 344);
    v8 = *v6;
    v7 = v6[1];
    if (v7 - *v6 == 88)
    {
      if (v8 == v7)
      {
        goto LABEL_20;
      }

      if ((*(v8 + 80) & 1) == 0)
      {
        v6[1] = v8;
        v7 = v8;
      }
    }

    v9 = v6[2];
    if (v7 >= v9)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v8) >> 3) + 1;
      if (v12 > 0x2E8BA2E8BA2E8BALL)
      {
        goto LABEL_21;
      }

      v13 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v8) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x1745D1745D1745DLL)
      {
        v12 = 0x2E8BA2E8BA2E8BALL;
      }

      if (v12)
      {
        if (v12 <= 0x2E8BA2E8BA2E8BALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v7)
    {
      *v7 = *(a1 + 8);
      result = *(a1 + 24);
      v10 = *(a1 + 40);
      v11 = *(a1 + 72);
      *(v7 + 48) = *(a1 + 56);
      *(v7 + 64) = v11;
      *(v7 + 16) = result;
      *(v7 + 32) = v10;
      *(v7 + 80) = 1;
      v6[1] = v7 + 88;
      return result;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::CueTrackPositions>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 136) = -1;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = v3;
  *(a1 + 296) = v4;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 312) = a3;
  }

  else
  {
    *(a1 + 312) = v5;
    if (!v5)
    {
      *(a1 + 284) = 8;
      return 0;
    }
  }

  *(a1 + 284) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::CueTrackPositions>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 92) = 256;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return webm::MasterParser::InitAfterSeek(a1 + 96, a2, a3);
}

uint64_t webm::MasterValueParser<webm::CueTrackPositions>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 152);
  *(a2 + 16) = *(a1 + 168);
  *a2 = v2;
  return *(a1 + 328) & 1;
}

uint64_t webm::MasterValueParser<webm::CueTrackPositions>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 92) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 88) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 96, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 96, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 92) = 1;
  }

  if ((*(a1 + 93) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 88);
    if (result)
    {
      return result;
    }

    *(a1 + 93) = 1;
  }

  if (*(a1 + 88) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

void *webm::MasterValueParser<webm::CueTrackPositions>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9260;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::CueTrackPositions>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9260;
  a1[12] = &unk_2882A81D0;
  v2 = a1[24];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::CueTrackPositions>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::CueTrackPositions>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::CueTrackPositions>*,webm::CueTrackPositions*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 88) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::MasterParser::MasterParser<std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  *a1 = &unk_2882A81D0;
  *(a1 + 8) = &unk_2882A8170;
  *(a1 + 16) = -1;
  *(a1 + 24) = &unk_2882AAB98;
  *(a1 + 32) = &unk_2882AAC50;
  *(a1 + 40) = -1;
  *(a1 + 80) = 0u;
  v12 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = &unk_2882AAC08;
  *(a1 + 160) = &unk_2882AABC0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  prime = std::__next_prime(7uLL);
  v14 = prime;
  v15 = *(a1 + 88);
  if (prime > *&v15)
  {
LABEL_2:
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(v12, v14);
    goto LABEL_15;
  }

  if (prime < *&v15)
  {
    v16 = vcvtps_u32_f32(*(a1 + 104) / *(a1 + 112));
    if (*&v15 < 3uLL || (v17 = vcnt_s8(v15), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
    {
      v19 = std::__next_prime(v16);
      if (v14 <= v19)
      {
        v14 = v19;
      }

      if (v14 >= *&v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = 1 << -__clz(v16 - 1);
      if (v16 >= 2)
      {
        v16 = v18;
      }

      if (v14 <= v16)
      {
        v14 = v16;
      }

      if (v14 >= *&v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_2;
  }

LABEL_15:
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v12, a2);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v12, a3);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v12, a4);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v12, a5);
  std::__hash_table<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::__unordered_map_hasher<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,webm::MasterParser::IdHash,std::equal_to<webm::Id>,true>,std::__unordered_map_equal<webm::Id,std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>,std::equal_to<webm::Id>,webm::MasterParser::IdHash,true>,std::allocator<std::__hash_value_type<webm::Id,std::unique_ptr<webm::ElementParser>>>>::__emplace_unique_key_args<webm::Id,std::pair<webm::Id,std::unique_ptr<webm::ElementParser>>>(v12, a6);
  v20 = *(a1 + 88);
  if (!*&v20)
  {
    goto LABEL_35;
  }

  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = 236;
    if (*&v20 <= 0xECuLL)
    {
      v22 = 0xECu % *(a1 + 88);
    }
  }

  else
  {
    v22 = (v20.i32[0] - 1) & 0xECLL;
  }

  v23 = *(*v12 + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_35:
    operator new();
  }

  if (v21.u32[0] < 2uLL)
  {
    v25 = *&v20 - 1;
    while (1)
    {
      v26 = v24[1];
      if (v26 == 236)
      {
        if (*(v24 + 4) == 236)
        {
          return a1;
        }
      }

      else if ((v26 & v25) != v22)
      {
        goto LABEL_35;
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v27 = v24[1];
    if (v27 == 236)
    {
      break;
    }

    if (v27 >= *&v20)
    {
      v27 %= *&v20;
    }

    if (v27 != v22)
    {
      goto LABEL_35;
    }

LABEL_30:
    v24 = *v24;
    if (!v24)
    {
      goto LABEL_35;
    }
  }

  if (*(v24 + 4) != 236)
  {
    goto LABEL_30;
  }

  return a1;
}

void webm::InfoParser::~InfoParser(webm::InfoParser *this)
{
  webm::MasterValueParser<webm::Info>::~MasterValueParser(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Info>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 156) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 152) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 160, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 160, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 156) = 1;
  }

  if ((*(a1 + 157) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 152);
    if (result)
    {
      return result;
    }

    *(a1 + 157) = 1;
  }

  if (*(a1 + 152) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Info>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 1000000;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator delete(*(a1 + 88));
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 111) < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  operator delete(*(a1 + 120));
LABEL_4:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  *(a1 + 176) = 0xFFFFFFFFLL;
  *(a1 + 200) = -1;
  *(a1 + 212) = 0;
  *(a1 + 204) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = v6;
  *(a1 + 360) = v7;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v8 = *(a2 + 8);
  if (v8 == -1)
  {
    *(a1 + 376) = a3;
  }

  else
  {
    *(a1 + 376) = v8;
    if (!v8)
    {
      *(a1 + 348) = 8;
      return 0;
    }
  }

  *(a1 + 348) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Info>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 1000000;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator delete(*(a1 + 88));
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 112) = 0;
    *(a1 + 104) = 0;
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 111) < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  operator delete(*(a1 + 120));
LABEL_4:
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 256;

  return webm::MasterParser::InitAfterSeek(a1 + 160, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Info>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 392) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  *(a2 + 16) = *(a1 + 232);
  *a2 = v2;
  return *(a1 + 392) & 1;
}

uint64_t webm::InfoParser::OnParseCompleted(webm::InfoParser *this, webm::Callback *a2)
{
  v2 = *(this + 88);
  v4[0] = 357149030;
  v4[1] = v2;
  v5 = *(this + 360);
  return (*(*a2 + 64))(a2, v4, this + 8);
}

void webm::MasterValueParser<webm::Info>::~MasterValueParser(uint64_t a1)
{
  webm::MasterValueParser<webm::Info>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Info>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 152) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

double webm::MasterValueParser<webm::Info>::ChildParser<webm::FloatParser,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::FloatParser,double>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::FloatParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 <= 8)
    {
      v9 = v5 + 1;
      while (1)
      {
        v14 = 0;
        v15 = 0;
        v7 = (*(*a3 + 16))(a3, 1, &v14, &v15);
        if (v7)
        {
          break;
        }

        ++*a4;
        *(a1 + 24) = v14 | (*(a1 + 24) << 8);
        if (--v9 <= 1)
        {
          v7 = 0;
          break;
        }
      }
    }

    else
    {
      v7 = -1026;
    }

    v11 = *(a1 + 32);
    v12 = v11 == *a4;
    *(a1 + 32) = v11 - *a4;
    if (v12)
    {
      if (*(a1 + 36) == 1)
      {
        result = *(a1 + 24);
        *(a1 + 8) = result;
        if (v7)
        {
          return result;
        }
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
        if (v7)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return result;
    }
  }

  if (*(*(a1 + 40) + 152) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v13 = *(a1 + 48);
    result = *(a1 + 8);
    *v13 = result;
    *(v13 + 8) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Info>::ChildParser<webm::DateParser,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::DateParser,long long>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::DateParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 152) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::MasterValueParser<webm::Info>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::Info>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Info>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Info>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Info>*,webm::Info*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 152) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = *(a1 + 8);
    *(v6 + 16) = *(a1 + 24);
    *v6 = result;
    *(a1 + 31) = 0;
    *(a1 + 8) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Info>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882A9368;
  *(a1 + 160) = &unk_2882A81D0;
  v2 = *(a1 + 256);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 88));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

  operator delete(*(a1 + 120));
  if (*(a1 + 111) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*(a1 + 56));
  return a1;
}

void webm::SeekHeadParser::~SeekHeadParser(webm::SeekHeadParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webm::SeekParser::~SeekParser(webm::SeekParser *this)
{
  *this = &unk_2882A9590;
  *(this + 5) = &unk_2882A81D0;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A9590;
  *(this + 5) = &unk_2882A81D0;
  v2 = *(this + 17);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Seek>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 36) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 32) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 40, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 40, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 36) = 1;
  }

  if ((*(a1 + 37) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 32);
    if (result)
    {
      return result;
    }

    *(a1 + 37) = 1;
  }

  if (*(a1 + 32) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Seek>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 30) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v3;
  *(a1 + 240) = v4;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    *(a1 + 256) = a3;
  }

  else
  {
    *(a1 + 256) = v5;
    if (!v5)
    {
      *(a1 + 228) = 8;
      return 0;
    }
  }

  *(a1 + 228) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Seek>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 29) = 0;
  *(a1 + 24) = 0;
  *(a1 + 37) = 1;
  return webm::MasterParser::InitAfterSeek(a1 + 40, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Seek>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  *(a2 + 16) = *(a1 + 112);
  *a2 = v2;
  return *(a1 + 272) & 1;
}

uint64_t webm::SeekParser::OnParseCompleted(webm::SeekParser *this, webm::Callback *a2)
{
  v2 = *(this + 58);
  v4[0] = 19899;
  v4[1] = v2;
  v5 = *(this + 15);
  return (*(*a2 + 56))(a2, v4, this + 8);
}

void *webm::MasterValueParser<webm::Seek>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9590;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void webm::MasterValueParser<webm::Seek>::~MasterValueParser(void *a1)
{
  *a1 = &unk_2882A9590;
  a1[5] = &unk_2882A81D0;
  v2 = a1[17];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Seek>::ChildParser<webm::IdElementParser,webm::MasterValueParser<webm::Seek>::SingleChildFactory<webm::IdElementParser,webm::Id>::BuildParser(webm::MasterValueParser<webm::Seek>*,webm::Seek*)::{lambda(webm::IdElementParser*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 12);
  *a4 = 0;
  if (v5 > 4)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 12) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      result = (*(*a3 + 16))(a3, 1, &v13, &v14);
      if (result)
      {
        break;
      }

      v11 = *a4 + 1;
      *a4 = v11;
      *(a1 + 8) = v13 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 12) - v11;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 12);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 12) = v5;
  if (*(*(a1 + 16) + 32) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v12 = *(a1 + 24);
  *v12 = *(a1 + 8);
  *(v12 + 4) = 1;
  return result;
}

uint64_t webm::MasterValueParser<webm::Seek>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Seek>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Seek>*,webm::Seek*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 32) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

void webm::TagsParser::~TagsParser(webm::TagsParser *this)
{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  *this = &unk_2882A81D0;
  v2 = *(this + 12);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webm::TagParser::~TagParser(webm::TagParser *this)
{
  webm::MasterValueParser<webm::Tag>::~MasterValueParser(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Tag>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 116) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 112) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 120, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 120, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 116) = 1;
  }

  if ((*(a1 + 117) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 112);
    if (result)
    {
      return result;
    }

    *(a1 + 117) = 1;
  }

  if (*(a1 + 112) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Tag>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 50;
  *(a1 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 56);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  v7 = (a1 + 88);
  v8 = *(a1 + 88);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = v8;
    if (v9 != v8)
    {
      do
      {
        webm::SimpleTag::~SimpleTag((v9 - 168));
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 96) = v8;
    operator delete(v10);
  }

  *v7 = 0;
  *(a1 + 96) = 0;
  *(a1 + 110) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 4);
  v12 = *(a2 + 8);
  *(a1 + 136) = 0xFFFFFFFFLL;
  *(a1 + 160) = -1;
  *(a1 + 172) = 0;
  *(a1 + 164) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = v11;
  *(a1 + 320) = v12;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v13 = *(a2 + 8);
  if (v13 == -1)
  {
    *(a1 + 336) = a3;
    goto LABEL_14;
  }

  *(a1 + 336) = v13;
  if (v13)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v14 = 8;
LABEL_15:
  *(a1 + 308) = v14;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Tag>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 50;
  *(a1 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 56);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  v7 = (a1 + 88);
  v8 = *(a1 + 88);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = v8;
    if (v9 != v8)
    {
      do
      {
        webm::SimpleTag::~SimpleTag((v9 - 168));
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 96) = v8;
    operator delete(v10);
  }

  *v7 = 0;
  *(a1 + 96) = 0;
  *(a1 + 109) = 0;
  *(a1 + 104) = 0;
  *(a1 + 117) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 120, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Tag>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 176);
  *(a2 + 16) = *(a1 + 192);
  *a2 = v2;
  return *(a1 + 352) & 1;
}

uint64_t webm::TagParser::OnParseCompleted(webm::TagParser *this, webm::Callback *a2)
{
  v2 = *(this + 78);
  v4[0] = 29555;
  v4[1] = v2;
  v5 = *(this + 20);
  return (*(*a2 + 168))(a2, v4, this + 8);
}

void webm::MasterValueParser<webm::Tag>::~MasterValueParser(uint64_t a1)
{
  webm::MasterValueParser<webm::Tag>::~MasterValueParser(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Tag>::ChildParser<webm::TargetsParser,webm::MasterValueParser<webm::Tag>::SingleChildFactory<webm::TargetsParser,webm::Targets>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::TargetsParser*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A97E8;
  *(a1 + 88) = &unk_2882A81D0;
  v2 = *(a1 + 184);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void webm::MasterValueParser<webm::Tag>::ChildParser<webm::TargetsParser,webm::MasterValueParser<webm::Tag>::SingleChildFactory<webm::TargetsParser,webm::Targets>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::TargetsParser*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A97E8;
  *(a1 + 88) = &unk_2882A81D0;
  v2 = *(a1 + 184);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Tag>::ChildParser<webm::TargetsParser,webm::MasterValueParser<webm::Tag>::SingleChildFactory<webm::TargetsParser,webm::Targets>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::TargetsParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::MasterValueParser<webm::Targets>::Feed(a1, a2, a3, a4) && *(*(a1 + 328) + 112) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 336);
    v7 = *(a1 + 8);
    *(v6 + 8) = *(a1 + 16);
    *v6 = v7;
    if (*(v6 + 39) < 0)
    {
      operator delete(*(v6 + 16));
    }

    v8 = *(a1 + 24);
    *(v6 + 32) = *(a1 + 40);
    *(v6 + 16) = v8;
    *(a1 + 47) = 0;
    *(a1 + 24) = 0;
    v9 = *(v6 + 48);
    *(v6 + 40) = *(a1 + 48);
    if (v9)
    {
      *(v6 + 56) = v9;
      operator delete(v9);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
    }

    result = *(a1 + 56);
    *(v6 + 48) = result;
    *(v6 + 64) = *(a1 + 72);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(v6 + 72) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Targets>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 50;
  *(a1 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 56);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 78) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  *(a1 + 104) = 0xFFFFFFFFLL;
  *(a1 + 128) = -1;
  *(a1 + 140) = 0;
  *(a1 + 132) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = v7;
  *(a1 + 288) = v8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v9 = *(a2 + 8);
  if (v9 == -1)
  {
    *(a1 + 304) = a3;
  }

  else
  {
    *(a1 + 304) = v9;
    if (!v9)
    {
      *(a1 + 276) = 8;
      return 0;
    }
  }

  *(a1 + 276) = 0;
  return 0;
}

uint64_t webm::MasterValueParser<webm::Targets>::InitAfterSeek(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  *(a1 + 8) = 50;
  *(a1 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 56);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  if (v6)
  {
    *(a1 + 64) = v6;
    operator delete(v6);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 77) = 0;
  *(a1 + 72) = 0;
  *(a1 + 85) = 1;

  return webm::MasterParser::InitAfterSeek(a1 + 88, a2, a3);
}

uint64_t webm::MasterValueParser<webm::Targets>::GetCachedMetadata(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 320) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 144);
  *(a2 + 16) = *(a1 + 160);
  *a2 = v2;
  return *(a1 + 320) & 1;
}

uint64_t webm::MasterValueParser<webm::Targets>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if ((*(a1 + 84) & 1) == 0)
  {
    v10 = &unk_2882A8218;
    if (*(a1 + 80) == 1)
    {
      a2 = &v10;
    }

    result = webm::MasterParser::Feed(a1 + 88, a2, a3, a4);
    if (result == 0x80000000)
    {
      v9 = 0;
      a2 = &v10;
      result = webm::MasterParser::Feed(a1 + 88, &v10, a3, &v9);
      *a4 += v9;
    }

    if (result)
    {
      return result;
    }

    *(a1 + 84) = 1;
  }

  if ((*(a1 + 85) & 1) == 0)
  {
    result = (*(*a1 + 56))(a1, a2, a1 + 80);
    if (result)
    {
      return result;
    }

    *(a1 + 85) = 1;
  }

  if (*(a1 + 80) == 1)
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 64))(a1, a2);
  }
}

uint64_t webm::MasterValueParser<webm::Targets>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882A97E8;
  *(a1 + 88) = &unk_2882A81D0;
  v2 = *(a1 + 184);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void webm::MasterValueParser<webm::Targets>::~MasterValueParser(uint64_t a1)
{
  *a1 = &unk_2882A97E8;
  *(a1 + 88) = &unk_2882A81D0;
  v2 = *(a1 + 184);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Targets>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Targets>::SingleChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Targets>*,webm::Targets*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_14:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      result = (*(*a3 + 16))(a3, 1, &v12, &v13);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v12 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_14;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 80) == 1)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  result = 0;
  v11 = *(a1 + 40);
  *v11 = *(a1 + 8);
  *(v11 + 8) = 1;
  return result;
}

uint64_t webm::MasterValueParser<webm::Targets>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Targets>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Targets>*,webm::Targets*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void webm::MasterValueParser<webm::Targets>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Targets>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Targets>*,webm::Targets*)::{lambda(webm::ByteParser<std::string>*)#1}>::~ChildParser(uint64_t a1)
{
  *a1 = &unk_2882A86F0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

__n128 webm::MasterValueParser<webm::Targets>::ChildParser<webm::ByteParser<std::string>,webm::MasterValueParser<webm::Targets>::SingleChildFactory<webm::ByteParser<std::string>,std::string>::BuildParser(webm::MasterValueParser<webm::Targets>*,webm::Targets*)::{lambda(webm::ByteParser<std::string>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!webm::ByteParser<std::string>::Feed(a1, a2, a3, a4) && *(*(a1 + 64) + 80) != 1 && ((*(*a1 + 48))(a1) & 1) == 0)
  {
    v6 = *(a1 + 72);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = *(a1 + 8);
    *(v6 + 16) = *(a1 + 24);
    *v6 = result;
    *(a1 + 31) = 0;
    *(a1 + 8) = 0;
    *(v6 + 24) = 1;
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::Targets>::ChildParser<webm::IntParser<unsigned long long>,webm::MasterValueParser<webm::Targets>::RepeatedChildFactory<webm::IntParser<unsigned long long>,unsigned long long>::BuildParser(webm::MasterValueParser<webm::Targets>*,webm::Targets*)::{lambda(webm::IntParser<unsigned long long>*)#1}>::Feed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 24);
  *a4 = 0;
  if (v5 > 8)
  {
    v6 = 0;
    result = 4294966270;
LABEL_12:
    *(a1 + 24) = v5 - v6;
    return result;
  }

  if (v5)
  {
    v10 = v5 + 1;
    while (1)
    {
      v17 = 0;
      v18 = 0;
      result = (*(*a3 + 16))(a3, 1, &v17, &v18);
      if (result)
      {
        break;
      }

      ++*a4;
      *(a1 + 8) = v17 | (*(a1 + 8) << 8);
      if (--v10 <= 1)
      {
        v5 = *(a1 + 24) - *a4;
        goto LABEL_8;
      }
    }

    v6 = *a4;
    v5 = *(a1 + 24);
    goto LABEL_12;
  }

LABEL_8:
  *(a1 + 24) = v5;
  if (*(*(a1 + 32) + 80) == 1 || ((*(*a1 + 48))(a1) & 1) != 0)
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v13 = *v11;
  v12 = v11[1];
  if (v12 - *v11 == 16)
  {
    if (v13 == v12)
    {
      goto LABEL_28;
    }

    if ((*(v13 + 8) & 1) == 0)
    {
      v11[1] = v13;
      v12 = v13;
    }
  }

  v14 = v11[2];
  if (v12 >= v14)
  {
    v15 = ((v12 - v13) >> 4) + 1;
    if (v15 >> 60)
    {
      goto LABEL_29;
    }

    v16 = v14 - v13;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_28:
    __break(1u);
LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  *v12 = *(a1 + 8);
  *(v12 + 8) = 1;
  result = 0;
  v11[1] = v12 + 16;
  return result;
}

void *webm::MasterValueParser<webm::Tag>::ChildParser<webm::SimpleTagParser,webm::MasterValueParser<webm::Tag>::RepeatedChildFactory<webm::SimpleTagParser,webm::SimpleTag>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::SimpleTagParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A99E0;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((a1 + 1));
  return a1;
}

void webm::MasterValueParser<webm::Tag>::ChildParser<webm::SimpleTagParser,webm::MasterValueParser<webm::Tag>::RepeatedChildFactory<webm::SimpleTagParser,webm::SimpleTag>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::SimpleTagParser*)#1}>::~ChildParser(void *a1)
{
  *a1 = &unk_2882A99E0;
  a1[22] = &unk_2882A81D0;
  v2 = a1[34];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      v2[3] = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v3 = a1[32];
  a1[32] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  webm::SimpleTag::~SimpleTag((a1 + 1));

  JUMPOUT(0x2743DA540);
}

uint64_t webm::MasterValueParser<webm::Tag>::ChildParser<webm::SimpleTagParser,webm::MasterValueParser<webm::Tag>::RepeatedChildFactory<webm::SimpleTagParser,webm::SimpleTag>::BuildParser(webm::MasterValueParser<webm::Tag>*,webm::Tag*)::{lambda(webm::SimpleTagParser*)#1}>::Feed(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  result = webm::MasterValueParser<webm::SimpleTag>::Feed(a1, a2, a3, a4);
  if (!result && *(*(a1 + 416) + 112) != 1)
  {
    v6 = result;
    v7 = (*(*a1 + 48))(a1);
    result = v6;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 424);
      v10 = *v8;
      v9 = v8[1];
      if (v9 - *v8 == 168)
      {
        if (v10 == v9)
        {
LABEL_14:
          __break(1u);
          return result;
        }

        if ((*(v10 + 160) & 1) == 0)
        {
          do
          {
            v9 -= 168;
            webm::SimpleTag::~SimpleTag(v9);
          }

          while (v9 != v10);
          v8[1] = v10;
          v8 = *(a1 + 424);
          v9 = v8[1];
          result = v6;
        }
      }

      if (v9 >= v8[2])
      {
        std::vector<webm::Element<webm::SimpleTag>>::__emplace_back_slow_path<webm::SimpleTag,BOOL>(v8);
      }

      if (v9)
      {
        v11 = *(a1 + 8);
        *(v9 + 16) = *(a1 + 24);
        *v9 = v11;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *(v9 + 24) = *(a1 + 32);
        v12 = *(a1 + 40);
        *(v9 + 48) = *(a1 + 56);
        *(v9 + 32) = v12;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        *(v9 + 56) = *(a1 + 64);
        *(v9 + 64) = *(a1 + 72);
        v13 = *(a1 + 80);
        *(v9 + 88) = *(a1 + 96);
        *(v9 + 72) = v13;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *(v9 + 96) = *(a1 + 104);
        *(v9 + 112) = 0;
        *(v9 + 120) = 0;
        *(v9 + 104) = 0;
        *(v9 + 104) = *(a1 + 112);
        *(v9 + 120) = *(a1 + 128);
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 112) = 0;
        *(v9 + 128) = *(a1 + 136);
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *(v9 + 136) = 0;
        *(v9 + 136) = *(a1 + 144);
        *(v9 + 152) = *(a1 + 160);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(v9 + 160) = 1;
        v8[1] = v9 + 168;
        return result;
      }

      goto LABEL_14;
    }
  }

  return result;
}

uint64_t webm::MasterValueParser<webm::SimpleTag>::Init(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  memset(v12, 0, 32);
  HIBYTE(v11) = 3;
  if (&v10 > "und" || &v10 + 3 <= "und")
  {
    LODWORD(v10) = 6581877;
    v13 = v11;
    v12[2] = v10;
    v14 = 0;
    v15 = 1;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0;
    webm::SimpleTag::operator=(result + 8, v12);
    webm::SimpleTag::~SimpleTag(v12);
    *(v5 + 168) = 0;
    *(v5 + 172) = 0;
    v6 = *(a2 + 4);
    v7 = *(a2 + 8);
    *(v5 + 192) = 0xFFFFFFFFLL;
    *(v5 + 216) = -1;
    *(v5 + 228) = 0;
    *(v5 + 220) = 0;
    *(v5 + 352) = 0;
    *(v5 + 360) = 0;
    *(v5 + 368) = v6;
    *(v5 + 376) = v7;
    *(v5 + 400) = 0;
    *(v5 + 408) = 0;
    v8 = *(a2 + 8);
    if (v8 == -1)
    {
      *(v5 + 392) = a3;
    }

    else
    {
      *(v5 + 392) = v8;
      if (!v8)
      {
        v9 = 8;
LABEL_8:
        *(v5 + 364) = v9;
        return 0;
      }
    }

    v9 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}