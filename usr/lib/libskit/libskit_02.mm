void sub_2998E13F8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 424))
  {
    MEMORY[0x29C2A31E0](*(v1 - 424), 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *skit::internal::anonymous namespace::push_hit(void *result, float *a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, float a7)
{
  if (a4 >= a6 && *a2 < a7)
  {
    v9 = result;
    v10 = result[1];
    v11 = result[2];
    if (v10 >= v11)
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *result) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0x666666666666666)
      {
        std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *result) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x333333333333333)
      {
        v16 = 0x666666666666666;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Hit>>(v16);
      }

      v17 = 40 * v13;
      *v17 = 0;
      *(v17 + 8) = a3;
      *(v17 + 16) = a7;
      *(v17 + 20) = a4;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0;
      v12 = 40 * v13 + 40;
      v18 = v9[1] - *v9;
      v19 = (40 * v13 - v18);
      memcpy(v19, *v9, v18);
      v20 = *v9;
      *v9 = v19;
      v9[1] = v12;
      v9[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 8) = a3;
      *(v10 + 16) = a7;
      *(v10 + 20) = a4;
      v12 = v10 + 40;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
    }

    v9[1] = v12;
    v21 = *v9;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(skit::Hit const&,skit::Hit const&),std::__wrap_iter<skit::Hit*>>(v21, v12, &v46, 0xCCCCCCCCCCCCCCCDLL * ((v12 - v21) >> 3));
    result = *v9;
    v22 = v9[1];
    v23 = v22 - *v9;
    v24 = 0xCCCCCCCCCCCCCCCDLL * (v23 >> 3);
    if (v24 > a5)
    {
      if (v23 >= 41)
      {
        v25 = 0;
        v26 = *(result + 1);
        v46 = *result;
        v47 = v26;
        v48 = result[4];
        v27 = result;
        do
        {
          v28 = v27;
          v27 += 10 * v25 + 10;
          v29 = 2 * v25;
          v25 = (2 * v25) | 1;
          v30 = v29 + 2;
          if (v29 + 2 < v24)
          {
            v31 = v27[4];
            v32 = v27[14];
            if (v31 <= v32)
            {
              if (v31 >= v32)
              {
                v33 = *(v27 + 1);
                v34 = *(v27 + 6);
                v35 = v33 <= v34;
                v36 = v33 <= v34 ? 0 : 40;
                v27 = (v27 + v36);
                if (!v35)
                {
                  v25 = v30;
                }
              }
            }

            else
            {
              v27 += 10;
              v25 = v29 + 2;
            }
          }

          v37 = *v27;
          v38 = *(v27 + 1);
          *(v28 + 4) = *(v27 + 4);
          *v28 = v37;
          *(v28 + 1) = v38;
        }

        while (v25 <= ((v24 - 2) >> 1));
        v39 = (v22 - 40);
        if (v39 == v27)
        {
          v43 = v46;
          v44 = v47;
          *(v27 + 4) = v48;
          *v27 = v43;
          *(v27 + 1) = v44;
        }

        else
        {
          v40 = *v39;
          v41 = *(v39 + 1);
          *(v27 + 4) = *(v39 + 4);
          *v27 = v40;
          *(v27 + 1) = v41;
          v42 = v47;
          *v39 = v46;
          *(v39 + 1) = v42;
          *(v39 + 4) = v48;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(skit::Hit const&,skit::Hit const&),std::__wrap_iter<skit::Hit*>>(result, (v27 + 10), &v45, 0xCCCCCCCCCCCCCCCDLL * (((v27 + 10) - result) >> 3));
        }

        result = *v9;
        v22 = v9[1];
      }

      v9[1] = v22 - 40;
      *a2 = *(result + 4);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Hit>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(skit::Hit const&,skit::Hit const&),std::__wrap_iter<skit::Hit*>>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 40 * (v6 >> 1));
    v11 = (a2 - 40);
    if ((*a3)(v10, a2 - 40))
    {
      v13 = *v11;
      v14 = v11[1];
      v21 = v11[2].n128_i64[0];
      v19 = v13;
      v20 = v14;
      do
      {
        v15 = v10;
        v16 = *v10;
        v17 = v10[1];
        v11[2].n128_u64[0] = v10[2].n128_u64[0];
        *v11 = v16;
        v11[1] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 40 * v9);
        v11 = v15;
      }

      while (((*a3)(v10, &v19) & 1) != 0);
      result = v19;
      v18 = v20;
      v15[2].n128_u64[0] = v21;
      *v15 = result;
      v15[1] = v18;
    }
  }

  return result;
}

BOOL skit::internal::anonymous namespace::hit_score_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0;
  }

  return *(a1 + 8) > *(a2 + 8);
}

BOOL skit::internal::MultiIndexV2::should_merge(skit::internal::MultiIndexV2 *this, unint64_t a2)
{
  if (*(this + 288) != 1)
  {
    return 0;
  }

  v3 = *(this + 4);
  v4 = *(this + 3);
  v5 = skit::internal::MultiIndexV2::index_count_threshold(v4, v3, 3 * (a2 >> 2));
  if (v4 == v3)
  {
    v9 = 0;
    v12 = *(this + 27);
    LODWORD(v10) = *(this + 27);
  }

  else
  {
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = *v7++;
      v6 += *(*(v8 + 192) + 12);
    }

    while (v7 != v3);
    v9 = 0;
    v10 = *(this + 27);
    do
    {
      v11 = *v4++;
      v9 += (*(*(v11 + 24) + 12) - *(*(v11 + 24) + 16));
    }

    while (v4 != v3);
    v12 = v6 + v10;
  }

  return v5 > 2 || v12 >= 0x65 && 10 * (v9 + (v10 - *(this + 28))) < 9 * v12;
}

uint64_t skit::internal::PostingListV2::seek_to_block(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = (a2 - v3) / 384;
  v5 = a1[1];
  v6 = (v5 + 8 * v4);
  v7 = *(*a1 + 8);
  v8 = (v5 + 8 * v7);
  if (v4 != v7)
  {
    v9 = (8 * v7 - 8 * v4) >> 3;
    do
    {
      v10 = v9 >> 1;
      v11 = &v6[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v9 += ~(v9 >> 1);
      if (v13 < a3)
      {
        v6 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  if (v6 == v8)
  {
    return v3 + 6 * *(*a1 + 12);
  }

  else
  {
    return v3 + 48 * (v6 - v5);
  }
}

BOOL skit::AliasSpanMatchCompare::compare_locale(skit::AliasSpanMatchCompare *this, int a2)
{
  if (this)
  {
    v2 = this == a2;
  }

  else
  {
    v2 = 1;
  }

  return v2 || a2 == 0;
}

BOOL skit::AliasSpanMatchCompare::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = a2[16] == a3[16] || a2[16] == 0;
  if (!a3[16])
  {
    v3 = 1;
  }

  if ((a3[16] ^ a2[16]) > 0xFF || !v3)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = *(a2 + 1);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  v7 = *(a3 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 1);
  }

  if (v6 != v7)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v5 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = v6 - 1;
  do
  {
    v13 = *v10++;
    v12 = v13;
    v15 = *v9++;
    v14 = v15;
    v17 = v11-- != 0;
    result = v14 == v12;
  }

  while (v14 == v12 && v17);
  return result;
}

void std::__shared_ptr_emplace<skit::internal::AliasImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F93B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2A3200);
}

uint64_t skit::Alias::init(const char **this)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (*this)
  {
    v2 = *this;
    if (v1[23] < 0)
    {
      v2 = *v1;
    }

    marisa::Trie::mmap((v1 + 48), v2);
    v3 = v1 + 24;
    if (v1[47] < 0)
    {
      v3 = *v3;
    }

    marisa::Trie::mmap((v1 + 56), v3);
    result = 0;
    *(v1 + 64) = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::Alias::close(skit::Alias *this)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (*this)
  {
    v1[64] = 0;
    marisa::Trie::clear((v1 + 48));
    marisa::Trie::clear((v1 + 56));
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::Alias::is_initialized(skit::Alias *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 64);
  }

  return v1 & 1;
}

void skit::Alias::find(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (*a1 && v4[64] == 1)
  {
    marisa::Agent::Agent(v21);
    marisa::Agent::Agent(v26);
    v8 = 2 * a3;
    marisa::Agent::set_query(v21, a2);
    while (marisa::Trie::predictive_search((v4 + 56), v21))
    {
      if (v8 + 6 > v23 || (v23 & 1) != 0)
      {
        break;
      }

      v10 = v22 + v8;
      if (*(v22 + v8))
      {
        break;
      }

      v11 = (v10 + 4);
      v12 = v22 + v23;
      if (v10 + 4 < v12)
      {
        v13 = *(v10 + 2);
        do
        {
          v14 = *v11;
          marisa::Agent::set_query(v26);
          marisa::Trie::reverse_lookup((v4 + 48), v26);
          std::basic_string<char16_t>::basic_string[abi:ne200100](&__p, __src, v28 >> 1);
          v15 = __p;
          v29[0] = v25;
          *(v29 + 7) = *(&v25 + 7);
          v16 = HIBYTE(v25);
          __p = 0;
          v25 = 0uLL;
          v17 = *(a4 + 8);
          if (v17 == *(a4 + 12))
          {
            skit::SmallVector<std::tuple<std::basic_string<char16_t>,skit::GroupId>,2u,true>::_reserve_more(a4, v17 + (v17 >> 1) + 1);
            v17 = *(a4 + 8);
          }

          v18 = *a4 + 32 * v17;
          v19 = v29[0];
          *v18 = v15;
          *(v18 + 8) = v19;
          *(v18 + 15) = *(v29 + 7);
          *(v18 + 23) = v16;
          v29[0] = 0;
          *(v29 + 7) = 0;
          *(v18 + 24) = v13;
          ++*(a4 + 8);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p);
          }

          ++v11;
        }

        while (v11 < v12);
      }
    }

    marisa::Agent::~Agent(v26);
    marisa::Agent::~Agent(v21);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_2998E20F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, __int128 buf)
{
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  marisa::Agent::~Agent(&buf);
  marisa::Agent::~Agent(&a12);
  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v29 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v30 = (*(*v28 + 16))(v28);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v30;
      _os_log_error_impl(&dword_2998C6000, v29, OS_LOG_TYPE_ERROR, "Alias::find : Exception thrown while searching Marisa Trie : %{public}s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2998E20B4);
  }

  _Unwind_Resume(a1);
}

void skit::Alias::match(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (*a1 && *(v4 + 64) == 1)
  {
    marisa::Agent::Agent(v10);
    marisa::Agent::Agent(v11);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
    if (v8 > a4)
    {
      skit::internal::AliasImpl::span_match_alias(v4, a2, a3, a4, v8, v10, v11);
    }

    marisa::Agent::~Agent(v11);
    marisa::Agent::~Agent(v10);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_2998E2308(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  marisa::Agent::~Agent(&buf);
  marisa::Agent::~Agent(&a9);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v18 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v19 = (*(*v17 + 16))(v17);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v19;
      _os_log_error_impl(&dword_2998C6000, v18, OS_LOG_TYPE_ERROR, "Alias::init : Exception thrown while loading Marisa Trie file : %{public}s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2998E22D8);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<skit::Token>,skit::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<skit::Token>,skit::Token*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<skit::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  *v11 = a1[1];
  *&v11[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v9 = *(a1 + 3);
  v10 = a1[5];
  v5 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = *(a2 + 40);
  *(a1 + 3) = *(a2 + 24);
  a1[5] = v6;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v11;
  *(a2 + 15) = *&v11[7];
  *(a2 + 23) = v4;
  result = v9;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 36);
  v7 = a1[18];
  if (v6 < v7)
  {
    goto LABEL_2;
  }

  if (v6 <= v7)
  {
    v9 = *(a1 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 1);
    }

    v11 = *(a2 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    if (v9 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      if (v12 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v10 >= 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = *a1;
      }

      do
      {
        v16 = *v14;
        v17 = *v15;
        if (v16 < v17)
        {
          goto LABEL_2;
        }

        if (v17 < v16)
        {
          goto LABEL_23;
        }

        ++v14;
        ++v15;
      }

      while (--v13);
    }

    if (v11 < v9)
    {
LABEL_2:
      v8 = *(a3 + 36);
      if (v8 >= v6)
      {
        if (v8 > v6)
        {
          goto LABEL_45;
        }

        v22 = *(a2 + 23);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(a2 + 8);
        }

        v24 = *(a3 + 23);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(a3 + 8);
        }

        if (v22 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v22;
        }

        if (v26)
        {
          if (v25 >= 0)
          {
            v27 = a3;
          }

          else
          {
            v27 = *a3;
          }

          if (v23 >= 0)
          {
            v28 = a2;
          }

          else
          {
            v28 = *a2;
          }

          do
          {
            v29 = *v27;
            v30 = *v28;
            if (v29 < v30)
            {
              goto LABEL_47;
            }

            if (v30 < v29)
            {
              goto LABEL_45;
            }

            ++v27;
            ++v28;
          }

          while (--v26);
        }

        if (v24 >= v22)
        {
LABEL_45:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, a2);
          v31 = *(a3 + 36);
          v32 = *(a2 + 36);
          if (v31 >= v32)
          {
            if (v31 > v32)
            {
              return;
            }

            v51 = *(a2 + 23);
            v52 = v51;
            if ((v51 & 0x80u) != 0)
            {
              v51 = *(a2 + 8);
            }

            v53 = *(a3 + 23);
            v54 = v53;
            if ((v53 & 0x80u) != 0)
            {
              v53 = *(a3 + 8);
            }

            if (v51 >= v53)
            {
              v55 = v53;
            }

            else
            {
              v55 = v51;
            }

            if (v55)
            {
              if (v54 >= 0)
              {
                v56 = a3;
              }

              else
              {
                v56 = *a3;
              }

              if (v52 >= 0)
              {
                v57 = a2;
              }

              else
              {
                v57 = *a2;
              }

              while (1)
              {
                v58 = *v56;
                v59 = *v57;
                if (v58 < v59)
                {
                  break;
                }

                if (v59 < v58)
                {
                  return;
                }

                ++v56;
                ++v57;
                if (!--v55)
                {
                  goto LABEL_109;
                }
              }
            }

            else
            {
LABEL_109:
              if (v53 >= v51)
              {
                return;
              }
            }
          }

          a1 = a2;
        }
      }

LABEL_47:
      v21 = a3;
      goto LABEL_48;
    }
  }

LABEL_23:
  v18 = *(a3 + 36);
  if (v18 >= v6)
  {
    if (v18 > v6)
    {
      return;
    }

    v33 = *(a2 + 23);
    v34 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v33 = *(a2 + 8);
    }

    v35 = *(a3 + 23);
    v36 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(a3 + 8);
    }

    if (v33 >= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v33;
    }

    if (v37)
    {
      if (v36 >= 0)
      {
        v38 = a3;
      }

      else
      {
        v38 = *a3;
      }

      if (v34 >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      while (1)
      {
        v40 = *v38;
        v41 = *v39;
        if (v40 < v41)
        {
          break;
        }

        if (v41 < v40)
        {
          return;
        }

        ++v38;
        ++v39;
        if (!--v37)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
LABEL_69:
      if (v35 >= v33)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a2, a3);
  v19 = *(a2 + 36);
  v20 = v5[18];
  if (v19 >= v20)
  {
    if (v19 > v20)
    {
      return;
    }

    v42 = *(v5 + 23);
    v43 = v42;
    if ((v42 & 0x80u) != 0)
    {
      v42 = *(v5 + 1);
    }

    v44 = *(a2 + 23);
    v45 = v44;
    if ((v44 & 0x80u) != 0)
    {
      v44 = *(a2 + 8);
    }

    if (v42 >= v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v42;
    }

    if (v46)
    {
      if (v45 >= 0)
      {
        v47 = a2;
      }

      else
      {
        v47 = *a2;
      }

      if (v43 >= 0)
      {
        v48 = v5;
      }

      else
      {
        v48 = *v5;
      }

      while (1)
      {
        v49 = *v47;
        v50 = *v48;
        if (v49 < v50)
        {
          break;
        }

        if (v50 < v49)
        {
          return;
        }

        ++v47;
        ++v48;
        if (!--v46)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
LABEL_89:
      if (v44 >= v42)
      {
        return;
      }
    }
  }

  a1 = v5;
  v21 = a2;
LABEL_48:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, v21);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, a2, a3);
  v8 = *(a4 + 36);
  v9 = *(a3 + 36);
  if (v8 >= v9)
  {
    if (v8 > v9)
    {
      return;
    }

    v14 = *(a3 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(a4 + 23);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a4 + 8);
    }

    if (v14 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      if (v17 >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      if (v15 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      while (1)
      {
        v21 = *v19;
        v22 = *v20;
        if (v21 < v22)
        {
          break;
        }

        if (v22 < v21)
        {
          return;
        }

        ++v19;
        ++v20;
        if (!--v18)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      if (v16 >= v14)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a3, a4);
  v10 = *(a3 + 36);
  v11 = *(a2 + 36);
  if (v10 >= v11)
  {
    if (v10 > v11)
    {
      return;
    }

    v23 = *(a2 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a2 + 8);
    }

    v25 = *(a3 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(a3 + 8);
    }

    if (v23 >= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    if (v27)
    {
      if (v26 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      if (v24 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      while (1)
      {
        v30 = *v28;
        v31 = *v29;
        if (v30 < v31)
        {
          break;
        }

        if (v31 < v30)
        {
          return;
        }

        ++v28;
        ++v29;
        if (!--v27)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      if (v25 >= v23)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a2, a3);
  v12 = *(a2 + 36);
  v13 = a1[18];
  if (v12 >= v13)
  {
    if (v12 > v13)
    {
      return;
    }

    v32 = *(a1 + 23);
    v33 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v32 = *(a1 + 1);
    }

    v34 = *(a2 + 23);
    v35 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(a2 + 8);
    }

    if (v32 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v32;
    }

    if (v36)
    {
      if (v35 >= 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = *a2;
      }

      if (v33 >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      while (1)
      {
        v39 = *v37;
        v40 = *v38;
        if (v39 < v40)
        {
          break;
        }

        if (v40 < v39)
        {
          return;
        }

        ++v37;
        ++v38;
        if (!--v36)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
LABEL_65:
      if (v34 >= v32)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, a2);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, a2, a3, a4);
  v10 = *(a5 + 36);
  v11 = *(a4 + 36);
  if (v10 >= v11)
  {
    if (v10 > v11)
    {
      return;
    }

    v18 = *(a4 + 23);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a4 + 8);
    }

    v20 = *(a5 + 23);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a5 + 8);
    }

    if (v18 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (v22)
    {
      if (v21 >= 0)
      {
        v23 = a5;
      }

      else
      {
        v23 = *a5;
      }

      if (v19 >= 0)
      {
        v24 = a4;
      }

      else
      {
        v24 = *a4;
      }

      while (1)
      {
        v25 = *v23;
        v26 = *v24;
        if (v25 < v26)
        {
          break;
        }

        if (v26 < v25)
        {
          return;
        }

        ++v23;
        ++v24;
        if (!--v22)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
      if (v20 >= v18)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a4, a5);
  v12 = *(a4 + 36);
  v13 = *(a3 + 36);
  if (v12 >= v13)
  {
    if (v12 > v13)
    {
      return;
    }

    v27 = *(a3 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a3 + 8);
    }

    v29 = *(a4 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(a4 + 8);
    }

    if (v27 >= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    if (v31)
    {
      if (v30 >= 0)
      {
        v32 = a4;
      }

      else
      {
        v32 = *a4;
      }

      if (v28 >= 0)
      {
        v33 = a3;
      }

      else
      {
        v33 = *a3;
      }

      while (1)
      {
        v34 = *v32;
        v35 = *v33;
        if (v34 < v35)
        {
          break;
        }

        if (v35 < v34)
        {
          return;
        }

        ++v32;
        ++v33;
        if (!--v31)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
LABEL_46:
      if (v29 >= v27)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a3, a4);
  v14 = *(a3 + 36);
  v15 = *(a2 + 36);
  if (v14 >= v15)
  {
    if (v14 > v15)
    {
      return;
    }

    v36 = *(a2 + 23);
    v37 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v36 = *(a2 + 8);
    }

    v38 = *(a3 + 23);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(a3 + 8);
    }

    if (v36 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v36;
    }

    if (v40)
    {
      if (v39 >= 0)
      {
        v41 = a3;
      }

      else
      {
        v41 = *a3;
      }

      if (v37 >= 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = *a2;
      }

      while (1)
      {
        v43 = *v41;
        v44 = *v42;
        if (v43 < v44)
        {
          break;
        }

        if (v44 < v43)
        {
          return;
        }

        ++v41;
        ++v42;
        if (!--v40)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
LABEL_66:
      if (v38 >= v36)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a2, a3);
  v16 = *(a2 + 36);
  v17 = a1[18];
  if (v16 >= v17)
  {
    if (v16 > v17)
    {
      return;
    }

    v45 = *(a1 + 23);
    v46 = v45;
    if ((v45 & 0x80u) != 0)
    {
      v45 = *(a1 + 1);
    }

    v47 = *(a2 + 23);
    v48 = v47;
    if ((v47 & 0x80u) != 0)
    {
      v47 = *(a2 + 8);
    }

    if (v45 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v45;
    }

    if (v49)
    {
      if (v48 >= 0)
      {
        v50 = a2;
      }

      else
      {
        v50 = *a2;
      }

      if (v46 >= 0)
      {
        v51 = a1;
      }

      else
      {
        v51 = *a1;
      }

      while (1)
      {
        v52 = *v50;
        v53 = *v51;
        if (v52 < v53)
        {
          break;
        }

        if (v53 < v52)
        {
          return;
        }

        ++v50;
        ++v51;
        if (!--v49)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
LABEL_86:
      if (v47 >= v45)
      {
        return;
      }
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, a2);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24));
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
      v5 = (a2 - 24);
      v6 = *(a2 - 6);
      v7 = a1[18];
      if (v6 >= v7)
      {
        if (v6 > v7)
        {
          return 1;
        }

        v37 = *(a1 + 23);
        v38 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v37 = *(a1 + 1);
        }

        v39 = *(a2 - 25);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(a2 - 5);
        }

        if (v37 >= v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = v37;
        }

        if (v41)
        {
          if (v40 >= 0)
          {
            v42 = a2 - 24;
          }

          else
          {
            v42 = *v5;
          }

          if (v38 >= 0)
          {
            v43 = a1;
          }

          else
          {
            v43 = *a1;
          }

          while (1)
          {
            v44 = *v42;
            v45 = *v43;
            if (v44 < v45)
            {
              break;
            }

            if (v45 < v44)
            {
              return 1;
            }

            ++v42;
            ++v43;
            if (!--v41)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
LABEL_87:
          if (v39 >= v37)
          {
            return 1;
          }
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, v5);
      return 1;
    }
  }

  v8 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, (a1 + 24), (a1 + 48));
  v9 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = v9[18];
    v12 = v8[18];
    if (v11 < v12)
    {
      break;
    }

    if (v11 <= v12)
    {
      v24 = *(v8 + 23);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v8 + 1);
      }

      v26 = *(v9 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v9 + 1);
      }

      if (v24 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      if (v28)
      {
        if (v27 >= 0)
        {
          v29 = v9;
        }

        else
        {
          v29 = *v9;
        }

        if (v25 >= 0)
        {
          v30 = v8;
        }

        else
        {
          v30 = *v8;
        }

        do
        {
          v31 = *v29;
          v32 = *v30;
          if (v31 < v32)
          {
            goto LABEL_14;
          }

          if (v32 < v31)
          {
            goto LABEL_65;
          }

          ++v29;
          ++v30;
        }

        while (--v28);
      }

      if (v26 < v24)
      {
        break;
      }
    }

LABEL_65:
    v8 = v9;
    v9 += 24;
    if (v9 == a2)
    {
      return 1;
    }
  }

LABEL_14:
  v46 = *v9;
  v47 = *(v9 + 2);
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  v48 = *(v9 + 12);
  v13 = v9;
  v49 = *(v9 + 5);
  while (1)
  {
    v14 = v8;
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    *v13 = *v8;
    *(v13 + 2) = *(v8 + 2);
    *(v8 + 23) = 0;
    *v8 = 0;
    *(v13 + 12) = *(v8 + 12);
    *(v13 + 5) = *(v8 + 5);
    if (v8 == a1)
    {
      break;
    }

    v8 -= 24;
    v15 = *(v14 - 6);
    v13 = v14;
    if (WORD6(v48) >= v15)
    {
      if (WORD6(v48) > v15)
      {
        goto LABEL_60;
      }

      v16 = *(v14 - 25);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v14 - 5);
      }

      v18 = HIBYTE(v47);
      if (v47 < 0)
      {
        v18 = *(&v46 + 1);
      }

      if (v16 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      if (v19)
      {
        if (v47 >= 0)
        {
          v20 = &v46;
        }

        else
        {
          v20 = v46;
        }

        if (v17 >= 0)
        {
          v21 = v14 - 24;
        }

        else
        {
          v21 = *v8;
        }

        while (1)
        {
          v22 = *v20;
          v23 = *v21;
          if (v22 < v23)
          {
            break;
          }

          if (v23 < v22)
          {
            goto LABEL_60;
          }

          ++v20;
          ++v21;
          if (!--v19)
          {
            goto LABEL_37;
          }
        }

        v13 = v14;
      }

      else
      {
LABEL_37:
        v13 = v14;
        if (v18 >= v16)
        {
LABEL_60:
          v33 = v14;
          goto LABEL_62;
        }
      }
    }
  }

  v33 = a1;
LABEL_62:
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  v34 = v46;
  *(v33 + 2) = v47;
  *v33 = v34;
  v35 = v48;
  *(v14 + 5) = v49;
  *(v14 + 12) = v35;
  if (++v10 != 8)
  {
    goto LABEL_65;
  }

  return v9 + 24 == a2;
}

void std::__shared_ptr_emplace<skit::internal::ContextImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F93BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2A3200);
}

__int128 **skit::ContextV2::index_writer@<X0>(__int128 **result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v47[3] = *MEMORY[0x29EDCA608];
  *a4 = 0;
  v4 = *result;
  if (*result)
  {
    v7 = *(v4 + 55);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *(v4 + 4);
      v7 = *(v4 + 5);
    }

    else
    {
      v8 = (v4 + 2);
    }

    v40[0] = v8;
    v40[1] = v7;
    v39[0] = a2;
    v39[1] = a3;
    std::mutex::lock((v4 + 56));
    v47[0] = v8;
    v47[1] = v7;
    *out = a2;
    *&out[8] = a3;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *v4, *(v4 + 1));
    }

    else
    {
      v9 = *v4;
      v42.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v42.__r_.__value_.__l.__data_ = v9;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v42, v47);
    std::__fs::filesystem::_PathCVT<char16_t>::__append_range[abi:ne200100](&v42, ".", L"");
    if (*(v4 + 6))
    {
      goto LABEL_9;
    }

    memset(&v45, 0, sizeof(v45));
    if (*(v4 + 23) >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = *v4;
    }

    if (stat(v14, &v45))
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v29 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v32 = *(v4 + 23);
        v33 = *v4;
        v34 = __error();
        if (v32 >= 0)
        {
          v35 = v4;
        }

        else
        {
          v35 = v33;
        }

        v36 = *v34;
        v43 = 136446466;
        *v44 = v35;
        *&v44[8] = 1024;
        *&v44[10] = v36;
        _os_log_error_impl(&dword_2998C6000, v29, OS_LOG_TYPE_ERROR, "ContextImpl::make_path : stat failed for context parent directory @ %{public}s : %{darwin.errno}d", &v43, 0x12u);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        *v42.__r_.__value_.__l.__data_ = 0;
        v42.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v42.__r_.__value_.__s.__data_[0] = 0;
        *(&v42.__r_.__value_.__s + 23) = 0;
      }

      goto LABEL_50;
    }

    if ((v45.st_mode & 0x4000) == 0)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v30 = skit::internal::get_logging_context(void)::logger;
      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      if (*(v4 + 23) >= 0)
      {
        v31 = v4;
      }

      else
      {
        v31 = *v4;
      }

      v43 = 136446210;
      *v44 = v31;
      v24 = "ContextImpl::make_path : parent path is not a directory %{public}s";
      v26 = &v43;
      v27 = v30;
      v28 = 12;
      goto LABEL_55;
    }

    *(v4 + 6) = v45.st_mode & 0x1FF;
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v15 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
    {
      v16 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v42.__r_.__value_.__r.__words[0];
      }

      v45.st_dev = 136446210;
      *&v45.st_mode = v16;
      _os_log_impl(&dword_2998C6000, v15, OS_LOG_TYPE_INFO, "ContextImpl::make_path : Creating context dir %{public}s", &v45, 0xCu);
    }

    v17 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
    if (!mkdir(v17, *(v4 + 12)) || *__error() == 17)
    {
LABEL_9:
      std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v42, out);
      std::__fs::filesystem::_PathCVT<char16_t>::__append_range[abi:ne200100](&v42, L".idx", L"");
      std::__fs::filesystem::__status(&v42, 0);
      if (v41 == 2 || ((v43 = 0, *&v44[4] = std::system_category(), directories = std::__fs::filesystem::__create_directories(&v42, &v43), !v43) ? (v11 = directories) : (v11 = 0), v11))
      {
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
        }

        else
        {
          v37 = v42;
        }

        v38 = 0;
LABEL_18:
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        memset(out, 0, sizeof(out));
        uuid_generate_random(out);
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, *v4, *(v4 + 1));
        }

        else
        {
          v12 = *v4;
          *&v45.st_uid = *(v4 + 2);
          *&v45.st_dev = v12;
        }

        std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v45, v40);
        std::string::append(&v45, ".ctx", 4uLL);
        std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v45, v39);
        std::string::push_back(&v45, 95);
        operator new();
      }

      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v18 = skit::internal::get_logging_context(void)::logger;
      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
LABEL_50:
        memset(&v37, 0, sizeof(v37));
        v38 = -1;
        goto LABEL_18;
      }

      v25 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v42.__r_.__value_.__r.__words[0];
      }

      v45.st_dev = 136446466;
      *&v45.st_mode = v25;
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = v43;
      v24 = "ContextImpl::make_pth : mkdir for component failed @ %{public}s : %{darwin.errno}d";
    }

    else
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v18 = skit::internal::get_logging_context(void)::logger;
      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v19 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
      v20 = v42.__r_.__value_.__r.__words[0];
      v21 = __error();
      v22 = &v42;
      v23 = *v21;
      if (v19 < 0)
      {
        v22 = v20;
      }

      v45.st_dev = 136446466;
      *&v45.st_mode = v22;
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = v23;
      v24 = "ContextImpl::make_path : mkdir for context directory failed @ %{public}s : %{darwin.errno}d";
    }

    v26 = &v45;
    v27 = v18;
    v28 = 18;
LABEL_55:
    _os_log_error_impl(&dword_2998C6000, v27, OS_LOG_TYPE_ERROR, v24, v26, v28);
    goto LABEL_50;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998E3B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v44 + 56));
  skit::IndexWriter::~IndexWriter(v43);
  _Unwind_Resume(a1);
}

BOOL skit::ContextV2::index_exists(__int128 **a1, unint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v3 + 55);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 4);
    v4 = *(v3 + 5);
  }

  else
  {
    v5 = (v3 + 2);
  }

  v12[0] = v5;
  v12[1] = v4;
  v11[0] = a2;
  v11[1] = a3;
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
  }

  else
  {
    v7 = *v3;
    __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&__p, v12);
  std::string::append(&__p, ".ctx", 4uLL);
  std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&__p, v11);
  std::string::append(&__p, ".idx", 4uLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = access(p_p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9 == 0;
}

void sub_2998E3CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::ContextV2::index_rename(__int128 **a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 + 55);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = *(v5 + 4);
      v6 = *(v5 + 5);
    }

    else
    {
      v7 = (v5 + 2);
    }

    v29[0] = v7;
    v29[1] = v6;
    v28[0] = a2;
    v28[1] = a3;
    v27[0] = a4;
    v27[1] = a5;
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *v5, *(v5 + 1));
    }

    else
    {
      v9 = *v5;
      v26.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&v26.__r_.__value_.__l.__data_ = v9;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v26, v29);
    std::string::append(&v26, ".ctx", 4uLL);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v26;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v26, v27);
    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&__p, v28);
    std::string::append(&v26, ".idx", 4uLL);
    std::string::append(&__p, ".idx", 4uLL);
    std::mutex::lock((v5 + 56));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    rename(p_p, v12, v10);
    v8 = v13;
    std::mutex::unlock((v5 + 56));
    if (v8)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v16 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v18 = __p.__r_.__value_.__r.__words[0];
        v19 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
        v20 = v26.__r_.__value_.__r.__words[0];
        v21 = __error();
        v22 = &v26;
        v23 = *v21;
        if (v19 < 0)
        {
          v22 = v20;
        }

        *buf = 136446722;
        v24 = &__p;
        if (v17 < 0)
        {
          v24 = v18;
        }

        v31 = v24;
        v32 = 2082;
        v33 = v22;
        v34 = 1024;
        v35 = v23;
        _os_log_error_impl(&dword_2998C6000, v16, OS_LOG_TYPE_ERROR, "ContextImpl::rename_index : unable to rename index @  %{public}s  --->  %{public}s : %{darwin.errno}d", buf, 0x1Cu);
      }

      v8 = 0xFFFFFFFFLL;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2998E3F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::ContextV2::index_remove(__int128 **a1, uint64_t a2, std::string::size_type a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1)
  {
    v6 = *(v3 + 55);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = *(v3 + 4);
      v6 = *(v3 + 5);
    }

    else
    {
      v7 = (v3 + 2);
    }

    v26[0] = v7;
    v26[1] = v6;
    v25[0] = a2;
    v25[1] = a3;
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *v3, *(v3 + 1));
    }

    else
    {
      v9 = *v3;
      v24.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&v24.__r_.__value_.__l.__data_ = v9;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v24, v26);
    std::string::append(&v24, ".ctx", 4uLL);
    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v24, v25);
    std::string::append(&v24, ".idx", 4uLL);
    std::mutex::lock((v3 + 56));
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v24;
    }

    else
    {
      v11 = v24.__r_.__value_.__r.__words[0];
    }

    if (skit::internal::remove_all(v11, v10) && *__error() != 2)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v14 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        skit::to_string(&__p, a2, a3);
        v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v16 = __p.__r_.__value_.__r.__words[0];
        v17 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
        v18 = v24.__r_.__value_.__r.__words[0];
        v19 = __error();
        v20 = &v24;
        v21 = *v19;
        if (v17 < 0)
        {
          v20 = v18;
        }

        *buf = 136446722;
        p_p = &__p;
        if (v15 < 0)
        {
          p_p = v16;
        }

        v28 = p_p;
        v29 = 2082;
        v30 = v20;
        v31 = 1024;
        v32 = v21;
        _os_log_error_impl(&dword_2998C6000, v14, OS_LOG_TYPE_ERROR, "Context::remove_index : failed to remove index %{public}s @ %{public}s : %{darwin.errno}d", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 0;
    }

    std::mutex::unlock((v3 + 56));
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2998E4220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v21 + 56));
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::ContextV2::cleanup(__int128 **this)
{
  v39 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 55);
    if ((v2 & 0x8000000000000000) != 0)
    {
      v3 = *(v1 + 4);
      v2 = *(v1 + 5);
    }

    else
    {
      v3 = (v1 + 2);
    }

    v35[0] = v3;
    v35[1] = v2;
    if (*(v1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, *v1, *(v1 + 1));
    }

    else
    {
      v5 = *v1;
      v34.__r_.__value_.__r.__words[2] = *(v1 + 2);
      *&v34.__r_.__value_.__l.__data_ = v5;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v34, v35);
    std::string::append(&v34, ".ctx", 4uLL);
    std::mutex::lock((v1 + 56));
    v33.__val_ = 0;
    v33.__cat_ = std::system_category();
    MEMORY[0x29C2A3120](&v31, &v34, &v33, 2);
    if (!v33.__val_)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".txn");
      memset(buf, 0, sizeof(buf));
      v6 = v31;
      v7 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = v32;
        v29.__imp_.__ptr_ = v6;
        v29.__imp_.__cntrl_ = v7;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      else
      {
        v29.__imp_.__ptr_ = v31;
        v29.__imp_.__cntrl_ = 0;
      }

      v4 = 0;
      while (1)
      {
        if (!v29.__imp_.__ptr_)
        {
          if (v29.__imp_.__cntrl_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29.__imp_.__cntrl_);
          }

          v37.__pn_.__r_.__value_.__r.__words[0] = buf;
          std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v37);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_47;
        }

        v9 = std::__fs::filesystem::directory_iterator::__dereference(&v29);
        v10 = v9;
        if (((1 << v9[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
        {
          std::__fs::filesystem::__status(v9, 0);
          v11 = v36;
        }

        else
        {
          v11 = v9[3].__pn_.__r_.__value_.__s.__data_[0];
        }

        if (v11 == 2)
        {
          std::__fs::filesystem::path::extension[abi:ne200100](&v37, v10);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12.__data_ = &__p;
          }

          else
          {
            v12.__data_ = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12.__size_ = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v12.__size_ = __p.__r_.__value_.__l.__size_;
          }

          v13 = std::__fs::filesystem::path::__compare(&v37, v12);
          v15 = v13;
          if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__pn_.__r_.__value_.__l.__data_);
            if (v15)
            {
              goto LABEL_35;
            }
          }

          else if (v13)
          {
            goto LABEL_35;
          }

          if ((v10->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = v10;
          }

          else
          {
            v16 = v10->__pn_.__r_.__value_.__r.__words[0];
          }

          if (skit::internal::remove_all(v16, v14) && *__error() != 2)
          {
            if (skit::internal::get_logging_context(void)::once != -1)
            {
            }

            v17 = skit::internal::get_logging_context(void)::logger;
            if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
            {
              v18 = SHIBYTE(v10->__pn_.__r_.__value_.__r.__words[2]);
              v28 = v10->__pn_.__r_.__value_.__r.__words[0];
              v19 = *__error();
              v20 = v28;
              if (v18 >= 0)
              {
                v20 = v10;
              }

              LODWORD(v37.__pn_.__r_.__value_.__l.__data_) = 136446466;
              *(v37.__pn_.__r_.__value_.__r.__words + 4) = v20;
              WORD2(v37.__pn_.__r_.__value_.__r.__words[1]) = 1024;
              *(&v37.__pn_.__r_.__value_.__r.__words[1] + 6) = v19;
              _os_log_error_impl(&dword_2998C6000, v17, OS_LOG_TYPE_ERROR, "ContextImpl::cleanup : failed to remove transaction directory @ %{public}s : %{darwin.errno}d", &v37, 0x12u);
            }

            v4 = 0xFFFFFFFFLL;
          }
        }

LABEL_35:
        std::__fs::filesystem::directory_iterator::__increment(&v29, 0);
      }
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v23 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v24 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
      v25 = v34.__r_.__value_.__r.__words[0];
      std::error_code::message(&__p, &v33);
      v26 = &v34;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v26;
      *&buf[12] = 2082;
      *&buf[14] = p_p;
      _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, "ContextImpl::cleanup : failed to construct directory iterator %{public}s : %{public}s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v4 = 0xFFFFFFFFLL;
LABEL_47:
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    std::mutex::unlock((v1 + 56));
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_2998E46BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::mutex::unlock((v35 + 56));
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_DWORD *skit::Document::Document(_DWORD *a1, _OWORD *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  v3 = *a1;
  if (!*a1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v10 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v19) = 0;
    v11 = "initialized with an empty buffer";
    goto LABEL_16;
  }

  v4 = a1[2];
  if (v4 <= 0x17)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v14 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = a1[2];
    v19 = 67109120;
    v20 = v15;
    v11 = "buffer too small, %u bytes";
    v12 = v14;
    v13 = 8;
    goto LABEL_17;
  }

  v5 = *(v3 + 20);
  if (v5 + 24 != v4)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v16 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v17 = *(*a1 + 20) + 24;
    v18 = a1[2];
    v19 = 67109376;
    v20 = v17;
    v21 = 1024;
    v22 = v18;
    v11 = "buffer size mismatch, %u != %u";
    v12 = v16;
    v13 = 14;
LABEL_17:
    _os_log_error_impl(&dword_2998C6000, v12, OS_LOG_TYPE_ERROR, v11, &v19, v13);
LABEL_14:
    *a1 = &skit::Document::empty_doc;
    a1[2] = 24;
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = v3 + v5 + 24;
    v7 = v3 + 24;
    while (v7 <= v6)
    {
      if (v7)
      {
        v7 += *(v7 + 2) + 4;
      }

      if (v7 == v6)
      {
        goto LABEL_10;
      }
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v10 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v19) = 0;
    v11 = "buffer iterator bounds check failed";
LABEL_16:
    v12 = v10;
    v13 = 2;
    goto LABEL_17;
  }

LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::AliasSpanMatchImpl(uint64_t a1, __int128 *a2, size_t a3)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 24) = v7;
  v8 = *a3;
  *(a1 + 52) = *(a3 + 12);
  *(a1 + 40) = v8;
  skit::SmallVector<skit::GroupId,4u,true>::move(a1 + 72, a3 + 32);
  *(a1 + 96) = *(a3 + 56);
  skit::SpanMatchV3::append_alias_id(a3, *(a2 + 16), *(a2 + 7) - *(a2 + 6));
  return a1;
}

void sub_2998E4AD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3 != (v1 + 88))
  {
    free(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL skit::EmojiFilter::filter(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = v3 + 1;
      v5 = a2[v3];
      if ((v5 & 0xFC00) != 0xD800 || v4 == a3)
      {
        ++v3;
      }

      else
      {
        v7 = a2[v4];
        v8 = v7 & 0xFC00;
        v3 += 2;
        v9 = v7 + (v5 << 10) - 56613888;
        if (v8 == 56320)
        {
          v5 = v9;
        }

        else
        {
          v3 = v4;
        }
      }

      if (v5 - 48 <= 9)
      {
        break;
      }

      if (v5 >> 4 >= 0x20D)
      {
        if (a3 < 3)
        {
          if (a3 == 2 && (v5 == 8505 || v5 - 9398 <= 0x33))
          {
            if (*a2 != v5)
            {
              return 0;
            }

            v11 = a2[1] & 0xFFFE;
            v12 = 65038;
            return v11 == v12;
          }
        }

        else
        {
          result = 0;
          if (v5 - 127344 <= 0xF && ((1 << (v5 - 112)) & 0xC003) != 0 || v5 == 8505)
          {
            return result;
          }

          if (v5 - 9398 < 0x34)
          {
            return 0;
          }
        }

        result = 1;
        if (v5 < 0x2E7F || v5 == 65039 || v5 - 126976 < 0xB00)
        {
          return result;
        }
      }

      if (v3 >= a3)
      {
        return 0;
      }
    }

    if (a3 == 3 && v5 == *a2 && a2[1] == -497)
    {
      v11 = a2[2];
      v12 = 8419;
      return v11 == v12;
    }
  }

  return 0;
}

void skit::EmojiFilter::filter(skit::EmojiFilter *this, skit::TokenStream *a2, unint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v4 = v3 - a3;
  if (v3 > a3)
  {
    v7 = 48 * a3;
    do
    {
      skit::EmojiFilter::filter(this, (*a2 + v7));
      v7 += 48;
      --v4;
    }

    while (v4);
  }
}

float skit::EmojiFilter::filter(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (skit::EmojiFilter::filter(a1, a2, v5))
  {
    result = *(a1 + 16) * v2[8];
    v2[8] = result;
    *(v2 + 20) = (*(v2 + 20) | *(a1 + 20) & 4) & (~*(a1 + 20) | 0xFFFE);
  }

  return result;
}

int32x2_t skit::FieldBundle::add(int32x2_t *a1, __int16 a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5)
  {
    operator new[]();
  }

  v9 = a1[4];
  v10 = a1[5];
  if (*&v9 >= *&v10)
  {
    v13 = a1[3];
    v14 = *&v9 - v13;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*&v9 - v13) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((*&v10 - v13) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<skit::FieldBundle::FieldData>>(v18);
    }

    v19 = 24 * v15;
    if (a4 >= 0x200)
    {
      v20 = 512;
    }

    else
    {
      v20 = a4;
    }

    *v19 = a2;
    *(24 * v15 + 2) = v20;
    *(24 * v15 + 8) = a3;
    *(24 * v15 + 0x10) = v20;
    v12 = v19 + 24;
    v21 = v19 - v14;
    memcpy((v19 - v14), v13, v14);
    v22 = a1[3];
    a1[3] = v21;
    a1[4] = v12;
    a1[5] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    **&v9 = a2;
    if (a4 >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = a4;
    }

    *(*&v9 + 2) = v11;
    *(*&v9 + 8) = a3;
    *(*&v9 + 16) = v11;
    v12 = *&v9 + 24;
  }

  a1[4] = v12;
  v23.i32[0] = 1;
  v23.i32[1] = a4 + 4;
  result = vadd_s32(v23, a1[2]);
  a1[2] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<std::byte []>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<std::byte []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x29C2A31E0](v4, 0x1000C8077774924);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<skit::FieldBundle::FieldData>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void skit::FieldBundle::add(skit::FieldBundle *this, unsigned __int16 a2, const skit::TokenStream *a3)
{
  v3 = *a3;
  v4 = 2;
  while (v3 != *(a3 + 1))
  {
    v5 = *(v3 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v3 + 8);
    }

    v4 += 2 * v5 + 18;
    v3 += 48;
  }

  operator new[]();
}

void skit::FieldBundle::clear(skit::FieldBundle *this)
{
  uuid_clear(this);
  *(this + 2) = 0;
  *(this + 4) = *(this + 3);
  v2 = *(this + 6);
  v3 = *(this + 7);
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      MEMORY[0x29C2A31E0](v4, 0x1000C8077774924);
    }
  }

  *(this + 7) = v2;
}

void skit::FieldBundle::to_iovec(skit::FieldBundle *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::__allocate_at_least[abi:ne200100]<std::allocator<iovec>>((2 * *(this + 4)) | 1u);
}

void sub_2998E5650(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<iovec>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void skit::FieldSpanMatcherV2::FieldSpanMatcherV2()
{
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>();
}

{
  std::allocate_shared[abi:ne200100]<skit::internal::FieldSpanMatcherImpl,std::allocator<skit::internal::FieldSpanMatcherImpl>,std::basic_string<char16_t> &,skit::TokenStream &,BOOL &,0>();
}

uint64_t skit::FieldSpanMatcherV2::query_token_stream_begin(skit::FieldSpanMatcherV2 *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV2::query_token_stream_end(skit::FieldSpanMatcherV2 *this)
{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

{
  if (*this)
  {
    return *(*this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV2::alias_span_matcher(uint64_t *a1, __int128 *a2, char a3, uint64_t a4)
{
  v10[10] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (v4)
  {
    v9[0] = v10;
    v9[1] = 0x200000000;
    v8 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = skit::internal::FieldSpanMatcherImpl::alias_span_matcher(v4, &v8, a3, a4, v9, 0);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v9);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2998E584C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  _Unwind_Resume(a1);
}

void skit::FieldSpanMatcherV2::alias_filters(uint64_t **a1, char a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    skit::internal::FieldSpanMatcherImpl::alias_filters(v3, a2, a3);
  }
}

void skit::FieldSpanMatcherV2::clear_alias_span_matcher(skit::internal::FieldSpanMatcherImpl **this)
{
  v1 = *this;
  if (v1)
  {
    skit::internal::FieldSpanMatcherImpl::clear_alias_span_matcher(v1);
  }
}

uint64_t skit::FieldSpanMatcherV2::query_alias_matches_begin(skit::FieldSpanMatcherV2 *this)
{
  if (*this)
  {
    return *(*this + 1184);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::FieldSpanMatcherV2::query_alias_matches_end(skit::FieldSpanMatcherV2 *this)
{
  if (*this)
  {
    return *(*this + 1184) + 72 * *(*this + 1192);
  }

  else
  {
    return 0;
  }
}

void skit::FieldSpanMatcherV2::match(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  skit::FieldSpanMatcherV2::match(a1, a2, a3);
}

{
  v13[32] = *MEMORY[0x29EDCA608];
  v8 = 0;
  *__p = 0u;
  v10 = 0u;
  v11 = 0;
  v12[0] = v13;
  v12[1] = 0x400000000;
  v6[0] = &v7;
  v6[1] = 0x200000000;
  v3 = *a1;
  if (v3)
  {
    skit::internal::FieldSpanMatcherImpl::match(v3, &v8, a3, v6, 0);
  }

  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(v6);
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(v12);
  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_2998E59B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  skit::SmallVector<skit::AliasMatch,2u,true>::~SmallVector(va);
  skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::~FieldMatchesImpl(va1);
  _Unwind_Resume(a1);
}

size_t skit::anonymous namespace::field_span_match_to_v2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v7 = (a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 31);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      result = std::basic_string<char16_t>::__assign_no_alias<false>(result, v7, v8);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      result = std::basic_string<char16_t>::__assign_no_alias<true>(result, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(result + 16) = *(a2 + 24);
      *result = v6;
    }
  }

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v9 + (v10 << 6);
  if (*(a1 + 60) >= v10)
  {
    if (v10)
    {
      v21 = *(a1 + 48);
      do
      {
        v22 = *(v9 + 8);
        v23 = *(v9 + 12);
        *v21 = *v9;
        *(v21 + 8) = v22;
        *(v21 + 12) = v23;
        *(v21 + 16) = *(v9 + 16);
        v24 = *(v9 + 24);
        v9 += 64;
        *(v21 + 24) = v24;
        v21 += 32;
      }

      while (v9 != v11);
    }
  }

  else
  {
    v12 = *(a1 + 56) + (*(a1 + 56) >> 1);
    if (v12 + 1 > v10)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = *(a2 + 56);
    }

    v14 = malloc_type_malloc(32 * v13, 0x1000040E0EAB150uLL);
    if (!v14)
    {
      exception = __cxa_allocate_exception(8uLL);
      v26 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v26, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

    v15 = v14;
    v16 = v14;
    do
    {
      v17 = *(v9 + 8);
      v18 = *(v9 + 12);
      *v16 = *v9;
      v16[2] = v17;
      v16[3] = v18;
      *(v16 + 2) = *(v9 + 16);
      v19 = *(v9 + 24);
      v9 += 64;
      *(v16 + 3) = v19;
      v16 += 8;
    }

    while (v9 != v11);
    v20 = *(a1 + 48);
    if (v20 != (a1 + 64))
    {
      free(v20);
    }

    *(a1 + 48) = v15;
    result = malloc_size(v15);
    *(a1 + 60) = result >> 5;
  }

  *(a1 + 56) = v10;
  return result;
}

uint64_t skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::~FieldMatchesImpl(uint64_t a1)
{
  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector((a1 + 48));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<true>(std::basic_string<char16_t> *__dst, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = __n_add > 0xA;
  v6 = __n_add - 10;
  if (v5)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(__dst, 0xAuLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __n_add, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __n_add;
    if (__n_add)
    {
      memmove(__dst, __src, 2 * __n_add);
    }

    __dst->__r_.__value_.__s.__data_[__n_add] = 0;
  }

  return __dst;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<false>(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __n_add)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v5 - 1, __n_add - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __n_add;
    if (__n_add)
    {
      memmove(v6, __src, 2 * __n_add);
    }

    *(v6 + __n_add) = 0;
  }

  return this;
}

void skit::FieldSpanMatcherV2::match(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v12[32] = *MEMORY[0x29EDCA608];
  v7 = 0;
  *__p = 0u;
  v9 = 0u;
  v10 = 0;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v4 = *a1;
  if (v4)
  {
    skit::internal::FieldSpanMatcherImpl::match(v4, &v7, a3, a4, 1);
  }

  skit::SmallVector<skit::SpanMatchV3,8u,true>::~SmallVector(v11);
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2998E5D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::~FieldMatchesImpl(va);
  _Unwind_Resume(a1);
}

uint64_t skit::FieldSpanMatcherV2::merge_field(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v83 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  if ((a4 & 1) == 0)
  {
    *a2 = vaddq_s32(*a2, *(a3 + 32));
  }

  v7 = *(a3 + 56);
  if (!v7)
  {
LABEL_26:
    v25 = 0;
    goto LABEL_98;
  }

  v8 = 48;
  if (*(v4 + 602))
  {
    v8 = 24;
  }

  v9 = (v4 + v8);
  v10 = *(v4 + v8 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v9 = *v9;
    v10 = *(v4 + v8 + 8);
  }

  v11 = *(a3 + 48);
  v12 = &v11[2 * v7];
  v76 = *(a2 + 24);
  v13 = v76;
  do
  {
    if (v13 == *(a2 + 28))
    {
      skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::_reserve_more((a2 + 16), v13 + (v13 >> 1) + 1);
      v13 = *(a2 + 24);
    }

    v14 = *(a2 + 16);
    LOWORD(v78) = *a3;
    if (*(a3 + 31) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      __p = *(a3 + 8);
    }

    v80 = *(a3 + 32);
    v15 = v80;
    v16 = v11[1];
    v81 = *v11;
    v82 = v16;
    v17 = *(v11 + 6);
    if (v80.i32[2] < v17)
    {
      v80.i32[0] = v17 + v80.i32[0] - v80.i32[2];
    }

    v18 = v14 + 392 * v13;
    v19.i32[0] = *(v11 + 5);
    v19.i32[1] = v17;
    *(v80.i64 + 4) = vmax_u32(*&vextq_s8(v15, v15, 4uLL), v19);
    *v18 = v18 + 16;
    *(v18 + 8) = 0x400000001;
    std::uninitialized_copy[abi:ne200100]<skit::FieldMatchV2 const*,skit::FieldMatchV2*>(&v78, &v83, v18 + 16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a3 + 31) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((v18 + 336), *(a3 + 8), *(a3 + 16));
    }

    else
    {
      v21 = *(a3 + 8);
      *(v18 + 352) = *(a3 + 24);
      *(v18 + 336) = v21;
    }

    v22 = *v11;
    v23 = v11[1];
    v11 += 2;
    *(v18 + 360) = v22;
    *(v18 + 376) = v23;
    v13 = *(a2 + 24) + 1;
    *(a2 + 24) = v13;
  }

  while (v11 != v12);
  v24 = v76;
  if (v13 != v76)
  {
    v72 = 0;
    v26 = *(a2 + 16);
    v27 = &v26[49 * v76];
    v28 = &v26[49 * v13];
    v71 = v26;
    while (1)
    {
      v77 = (v28 - 49);
      if (!v24)
      {
        goto LABEL_84;
      }

      v29 = 0;
      v30 = v26;
      do
      {
        while (1)
        {
          v31 = *(v30 + 91);
          v32 = *(v28 - 8);
          if (v32 < v31)
          {
            break;
          }

          if (v32 != v31)
          {
            if (v10 < v31)
            {
              std::__throw_out_of_range[abi:ne200100]("string_view::substr");
            }

            v33 = v32 - v31;
            if (v10 - v31 < v33)
            {
              v33 = v10 - v31;
            }

            v78 = v9 + 2 * v31;
            __p.__r_.__value_.__r.__words[0] = v33;
            if (skit::is_significant(&v78))
            {
              break;
            }
          }

          v34 = *(v28 - 96);
          if (v34)
          {
            v35 = *(v30 + 2);
            v36 = *v30 + 80 * v35;
            v37 = *v77;
            v38 = v35 + v34;
            if (v35 + v34 <= *(v30 + 3))
            {
              v43 = *v30 + 80 * v35;
            }

            else
            {
              v74 = *v77;
              v75 = *(v28 - 96);
              v39 = v35 + (v35 >> 1);
              v73 = v38;
              if (v39 + 1 > v38)
              {
                v40 = v39 + 1;
              }

              else
              {
                v40 = v38;
              }

              v41 = malloc_type_malloc(80 * v40, 0x10120409E7384ACuLL);
              if (!v41)
              {
                exception = __cxa_allocate_exception(8uLL);
                v70 = std::bad_alloc::bad_alloc(exception);
                __cxa_throw(v70, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
              }

              v42 = *v30;
              v43 = v41;
              if (*v30 != v36)
              {
                do
                {
                  *v43 = *v42;
                  v44 = *(v42 + 8);
                  *(v43 + 24) = *(v42 + 3);
                  *(v43 + 8) = v44;
                  *(v42 + 2) = 0;
                  *(v42 + 3) = 0;
                  *(v42 + 1) = 0;
                  v45 = *(v42 + 2);
                  v46 = *(v42 + 4);
                  *(v43 + 48) = *(v42 + 3);
                  *(v43 + 64) = v46;
                  *(v43 + 32) = v45;
                  v43 += 80;
                  v42 += 80;
                }

                while (v42 != v36);
                v42 = *v30;
              }

              v47 = *(v30 + 2);
              v48 = &v42[80 * v47];
              if (v48 != v36)
              {
                v49 = v43 + 80 * v75;
                do
                {
                  *v49 = *v36;
                  v50 = *(v36 + 8);
                  *(v49 + 24) = *(v36 + 24);
                  *(v49 + 8) = v50;
                  *(v36 + 16) = 0;
                  *(v36 + 24) = 0;
                  *(v36 + 8) = 0;
                  v51 = *(v36 + 32);
                  v52 = *(v36 + 64);
                  *(v49 + 48) = *(v36 + 48);
                  *(v49 + 64) = v52;
                  *(v49 + 32) = v51;
                  v49 += 80;
                  v36 += 80;
                }

                while (v36 != v48);
                v42 = *v30;
                v47 = *(v30 + 2);
              }

              if (v47)
              {
                v53 = v42 + 31;
                v54 = 80 * v47;
                do
                {
                  if (*v53 < 0)
                  {
                    operator delete(*(v53 - 23));
                  }

                  v53 += 80;
                  v54 -= 80;
                }

                while (v54);
                v42 = *v30;
                v26 = v71;
              }

              if (v42 != (v30 + 2))
              {
                free(v42);
              }

              *v30 = v41;
              *(v30 + 3) = malloc_size(v41) / 0x50;
              v37 = v74;
              v34 = v75;
              v38 = v73;
            }

            *(v30 + 2) = v38;
            std::uninitialized_copy[abi:ne200100]<skit::FieldMatchV2 const*,skit::FieldMatchV2*>(v37, v37 + 80 * v34, v43);
          }

          if ((*(v30 + 359) & 0x8000000000000000) != 0)
          {
            if (v30[43])
            {
LABEL_66:
              if (*(v30 + 91) < *(v28 - 8))
              {
                std::basic_string<char16_t>::push_back(v30 + 14, v20);
              }
            }
          }

          else if (*(v30 + 359))
          {
            goto LABEL_66;
          }

          v55 = *(v28 - 33);
          if (v55 >= 0)
          {
            v56 = (v28 - 7);
          }

          else
          {
            v56 = *(v28 - 7);
          }

          if (v55 >= 0)
          {
            v57 = *(v28 - 33);
          }

          else
          {
            v57 = *(v28 - 6);
          }

          std::basic_string<char16_t>::append(v30 + 14, v56, v57);
          LODWORD(v58) = *(v30 + 90);
          v59 = *(v28 - 8);
          v60 = *(v28 - 7);
          if (v59 >= v58)
          {
            v58 = v58;
          }

          else
          {
            v58 = v59;
          }

          LODWORD(v61) = *(v30 + 91);
          if (v61 <= v60)
          {
            v61 = v60;
          }

          else
          {
            v61 = v61;
          }

          v30[45] = v58 | (v61 << 32);
          *(v30 + 92) += *(v28 - 6);
          *(v30 + 93) = *(v28 - 5) + *(v30 + 93);
          v30[47] = vadd_s32(v30[47], *(v28 - 2));
          *(v30 + 96) += *(v28 - 2);
          v30 += 49;
          v29 = 1;
          if (v30 == v27)
          {
            goto LABEL_83;
          }
        }

        v30 += 49;
      }

      while (v30 != v27);
      if ((v29 & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_83:
      skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::erase(a2 + 16, v77);
      v72 = 1;
LABEL_84:
      v28 -= 49;
      v24 = v76;
      if (v77 == v27)
      {
        v24 = *(a2 + 24);
        v25 = v72;
        if (v24)
        {
          goto LABEL_86;
        }

        goto LABEL_98;
      }
    }
  }

  v25 = 0;
  if (v76)
  {
LABEL_86:
    v62 = 0;
    do
    {
      if (v62)
      {
        v63 = 0;
        v64 = *(a2 + 16);
        v65 = v64 + 392 * v62;
        v66 = (v64 + 364);
        while (*(v65 + 360) < *(v66 - 1) || *(v65 + 364) > *v66)
        {
          ++v63;
          v66 += 98;
          if (v62 == v63)
          {
            LODWORD(v63) = v62;
            goto LABEL_95;
          }
        }

        skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::erase(a2 + 16, v65);
        v24 = *(a2 + 24);
      }

      else
      {
        LODWORD(v63) = 0;
      }

LABEL_95:
      if (v63 == v62)
      {
        ++v62;
      }
    }

    while (v62 < v24);
  }

LABEL_98:
  v67 = *MEMORY[0x29EDCA608];
  return v25 & 1;
}

void skit::FieldSpanMatcherV2::finalize(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && *(a2 + 44))
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 56))
    {
      v7 = *(a2 + 48);
      do
      {
        v8 = *(v7 + 4) - *v7;
        if (v8 < 0x34)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }

        if (v8 < 0x18)
        {
          v9 = 3;
        }

        if (v8 < 0xB)
        {
          v9 = 2;
        }

        if (v8 < 5)
        {
          v9 = 1;
        }

        if (v8 >= 3)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV2>(v2, v7, *(a2 + 44), v6);
        if (v8 > 2 || (*(v2 + 602) & 1) != 0 || *(v7 + 4) - *v7 <= v8 || *(v7 + 8) <= v10)
        {
          v7 += 32;
          v13 = *(a2 + 56);
        }

        else
        {
          v11 = *(a2 + 56);
          v12 = *(a2 + 48) + 32 * v11;
          if (v12 != v7 + 32)
          {
            memmove(v7, (v7 + 32), v12 - (v7 + 32));
            LODWORD(v11) = *(a2 + 56);
          }

          v13 = v11 - 1;
          *(a2 + 56) = v13;
        }
      }

      while (v7 != *(a2 + 48) + 32 * v13);
    }
  }
}

{
  v2 = *a1;
  if (*a1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*v2 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v6 = *(v4 + 28) + v6 - *(v4 + 24);
        v4 += 48;
      }

      while (v4 != v5);
    }

    if (*(a2 + 24))
    {
      v7 = *(a2 + 16);
      while (1)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = 0;
          v10 = 80 * v8;
          v11 = (*v7 + 44);
          do
          {
            v12 = *v11;
            v11 += 20;
            v9 += v12;
            v10 -= 80;
          }

          while (v10);
        }

        else
        {
          v9 = 0;
        }

        v13 = *(a2 + 12) <= v9 ? v9 : *(a2 + 12);
        if (!v13)
        {
          break;
        }

        v14 = *(v7 + 364) - *(v7 + 360);
        if (v14 < 0x34)
        {
          v15 = 4;
        }

        else
        {
          v15 = 5;
        }

        if (v14 < 0x18)
        {
          v15 = 3;
        }

        if (v14 < 0xB)
        {
          v15 = 2;
        }

        if (v14 < 5)
        {
          v15 = 1;
        }

        if (v14 >= 3)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV2>(v2, (v7 + 360), v13, v6);
        if ((*(v2 + 602) & 1) != 0 || *(v7 + 364) - *(v7 + 360) <= v14 || *(v7 + 368) <= v16)
        {
          v17 = *(v7 + 8);
          if (v17)
          {
            v18 = 80 * v17;
            v19 = (*v7 + 48);
            do
            {
              if (*(v19 - 4))
              {
                skit::internal::FieldSpanMatcherImpl::final_align_and_score<skit::SpanMatchV2>(v2, v19, *(v19 - 1), v6);
              }

              v19 += 20;
              v18 -= 80;
            }

            while (v18);
          }

          goto LABEL_41;
        }

        skit::SmallVector<skit::MergedFieldMatchV2,8u,true>::erase(a2 + 16, v7);
LABEL_42:
        if (v7 == *(a2 + 16) + 392 * *(a2 + 24))
        {
          return;
        }
      }

      *(v7 + 372) = 0;
LABEL_41:
      v7 += 392;
      goto LABEL_42;
    }
  }
}

void *skit::IndexReader::IndexReader(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void *skit::IndexReader::IndexReader(void *this, const skit::IndexReader *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

__n128 skit::IndexReader::IndexReader(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void skit::IndexReader::IndexReader(skit::IndexReader *this, std::__fs::filesystem::path *a2)
{
  std::allocate_shared[abi:ne200100]<skit::internal::IndexReaderImpl,std::allocator<skit::internal::IndexReaderImpl>,std::__fs::filesystem::path,0>();
}

{
  std::allocate_shared[abi:ne200100]<skit::internal::IndexReaderImpl,std::allocator<skit::internal::IndexReaderImpl>,std::__fs::filesystem::path,0>();
}

void std::__shared_ptr_emplace<skit::internal::IndexReaderImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F93BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2A3200);
}

void *skit::IndexReader::operator=(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t skit::IndexReader::operator=(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 8);
  *a1 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

BOOL skit::IndexReader::exists(skit::IndexReader *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = (v1 + 168);
  if (*(v1 + 191) < 0)
  {
    v2 = *v2;
  }

  return access(v2, 0) == 0;
}

uint64_t skit::IndexReader::is_open(skit::IndexReader *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 456);
  }

  return v1 & 1;
}

uint64_t skit::IndexReader::close(skit::IndexReader *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0xFFFFFFFFLL;
  }

  skit::internal::MultiIndexV2::close((v1 + 168));

  return skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(v1);
}

uint64_t *skit::IndexReader::populate_docs(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 192);
    for (i = *(v2 + 200); v3 != i; result = skit::internal::DiskMetaStore::populate_doc(v6 + 168, *a2, a2[1]))
    {
      v6 = *v3++;
    }
  }

  return result;
}

unint64_t skit::IndexReader::get_doc(uint64_t a1, skit::internal *this)
{
  if (*a1)
  {
    return skit::internal::MultiIndexV2::get_doc<skit::Uuid>(*(*a1 + 192), *(*a1 + 200), this);
  }

  else
  {
    return 0;
  }
}

unint64_t skit::internal::MultiIndexV2::get_doc<skit::Uuid>(uint64_t *a1, uint64_t *a2, skit::internal *this)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  while (1)
  {
    v6 = *v5;
    v7 = *(*v5 + 224);
    if (v7)
    {
      v8 = skit::internal::murmur3_32(this, 0x10uLL, 0);
      v9 = v7[1];
      v10 = 16 * ((*v7 ^ (v8 >> 7)) % v9);
      v11 = 16 * v9;
      v12 = &v7[v11 / 4 + 4];
      while (1)
      {
        v13 = v10;
        v14 = *(v7 + v10 + 16);
        if (v14 == (v8 & 0x7F))
        {
          v15 = &v12[20 * v13];
          v17 = *v15;
          v16 = *(v15 + 1);
          if (*this == v17 && *(this + 1) == v16)
          {
            break;
          }
        }

        if (v14 == 128)
        {
          goto LABEL_13;
        }

        v10 = (v13 + 1) % v11;
      }

      if (v11 - 1 != v13)
      {
        break;
      }
    }

LABEL_13:
    if (++v5 == a2)
    {
      return 0;
    }
  }

  if (!*(v6 + 288))
  {
    return 0;
  }

  return skit::internal::DiskMetaStore::get_doc_internal((v6 + 168), *&v12[20 * v13 + 16]);
}

unint64_t skit::IndexReader::get_doc(skit::IndexReader *this, uint64_t a2)
{
  v3 = a2;
  if (*this)
  {
    return skit::internal::MultiIndexV2::get_doc<long long>(*(*this + 192), *(*this + 200), &v3);
  }

  else
  {
    return 0;
  }
}

unint64_t skit::internal::MultiIndexV2::get_doc<long long>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = *a3;
  while (1)
  {
    v4 = *a1;
    v5 = *(*a1 + 192);
    v6 = *(v5 + 32);
    if (v3 >= v6 && *(v5 + 40) > v3)
    {
      break;
    }

    if (++a1 == a2)
    {
      return 0;
    }
  }

  if (!*(v4 + 288))
  {
    return 0;
  }

  return skit::internal::DiskMetaStore::get_doc_internal((v4 + 168), v3 - v6);
}

void skit::IndexReader::search(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a1)
  {
    v6 = *(a4 + 8);
    v7 = *(a4 + 12);
    v8 = *(a4 + 16);
    v9 = *(a4 + 20);
    v10 = *(a4 + 24);
    v11 = (*a1 + 168);
    v12 = *(a4 + 4);

    skit::internal::MultiIndexV2::search(v11, a2, a3, v12, v6, v7, v8, v10, v9);
  }

  else
  {
    v15 = v4;
    v16 = v5;
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v13 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2998C6000, v13, OS_LOG_TYPE_ERROR, "IndexReader::search : reader is not initialized", v14, 2u);
    }
  }
}

uint64_t skit::IndexReader::segment_cnt(skit::IndexReader *this)
{
  if (*this)
  {
    return (*(*this + 200) - *(*this + 192)) >> 3;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexReader::size_bytes(skit::IndexReader *this)
{
  if (*this)
  {
    return skit::internal::MultiIndexV2::disk_index_size(*(*this + 192), *(*this + 200));
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexReader::size(skit::IndexReader *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += *(*(v5 + 192) + 12);
    }

    while (v2 != v3);
  }

  return v4 + *(v1 + 276);
}

uint64_t skit::IndexReader::record_cnt(skit::IndexReader *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += (*(*(v5 + 192) + 12) - *(*(v5 + 192) + 16));
    }

    while (v2 != v3);
  }

  return v4 + (*(v1 + 276) - *(v1 + 280));
}

uint64_t skit::IndexReader::last_ts(skit::IndexReader *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *(v1 + 192);
  v2 = *(v1 + 200);
  if (v3 == v2)
  {
    return -1;
  }

  v4 = *(*(v2 - 8) + 24);
  if (!v4)
  {
    return -1;
  }

  else
  {
    return *(v4 + 32);
  }
}

uint64_t skit::IndexReader::index_count_threshold(skit::IndexReader *this, unint64_t a2)
{
  if (*this)
  {
    return skit::internal::MultiIndexV2::index_count_threshold(*(*this + 192), *(*this + 200), a2);
  }

  else
  {
    return 0;
  }
}

skit::internal::StringRegistry *skit::IndexReader::get_registered_str(skit::internal::StringRegistry **this, unsigned int a2)
{
  result = *this;
  if (result)
  {
    return skit::internal::StringRegistry::get_str(result, a2);
  }

  return result;
}

void *skit::IndexReader::is_registered_str(void **a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  result = *a1;
  if (result)
  {
    return skit::internal::StringRegistry::is_registered(result, a2, a3);
  }

  return result;
}

void *skit::IndexWriter::IndexWriter(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void *skit::IndexWriter::IndexWriter(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void skit::IndexWriter::IndexWriter()
{
  v0 = *MEMORY[0x29EDCA608];
  std::make_unique[abi:ne200100]<skit::internal::IndexWriterImpl,skit::Uuid,std::__fs::filesystem::path,std::__fs::filesystem::path,0>();
}

{
  v0 = *MEMORY[0x29EDCA608];
  std::make_unique[abi:ne200100]<skit::internal::IndexWriterImpl,skit::Uuid,std::__fs::filesystem::path,std::__fs::filesystem::path,0>();
}

void sub_2998E706C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 39) < 0)
  {
    operator delete(*(v21 + 16));
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  MEMORY[0x29C2A3200](v21, v22);
  _Unwind_Resume(a1);
}

uint64_t *skit::IndexWriter::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<skit::internal::IndexWriterImpl>::reset[abi:ne200100](a1, v3);
  return a1;
}

uint64_t *std::unique_ptr<skit::internal::IndexWriterImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    skit::internal::IndexWriterImpl::abort_txn(v2);
    skit::internal::MultiIndexV2::~MultiIndexV2((v2 + 208), v3);
    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(v2 + 40);
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    JUMPOUT(0x29C2A3200);
  }

  return result;
}

void skit::IndexWriter::~IndexWriter(skit::internal::IndexWriterImpl **this)
{
  v2 = *this;
  if (v2)
  {
    skit::internal::IndexWriterImpl::abort_txn(v2);
  }

  std::unique_ptr<skit::internal::IndexWriterImpl>::reset[abi:ne200100](this, 0);
}

void *skit::IndexWriter::id(skit::IndexWriter *this)
{
  if (*this)
  {
    return *this;
  }

  else
  {
  }
}

uint64_t *skit::IndexWriter::set_mode(uint64_t *this, __int16 a2)
{
  v2 = *this;
  if (*this)
  {
    *(v2 + 504) = a2 & 0x1FF;
    *(v2 + 200) = a2 & 0x1FF;
  }

  return this;
}

void skit::IndexWriter::set_dp_class(skit::IndexWriter *this, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (*this)
  {
    if ((a2 - 8) <= 0xFFFFFFF6)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v6 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
      {
        v7[0] = 67109120;
        v7[1] = a2;
        _os_log_fault_impl(&dword_2998C6000, v6, OS_LOG_TYPE_FAULT, "MultiIndexV2 : invalid protection class %d", v7, 8u);
      }
    }

    *(v2 + 500) = a2;
    v4 = *MEMORY[0x29EDCA608];

    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::set_dp_class(v2 + 40, a2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
  }
}

uint64_t skit::IndexWriter::set_term_index_write_cache(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    *(*this + 512) = a2;
  }

  return this;
}

uint64_t skit::IndexWriter::set_doc_store_write_cache(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    *(*this + 520) = a2;
  }

  return this;
}

uint64_t skit::IndexWriter::is_active(skit::IndexWriter *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 528);
  }

  return v1 & 1;
}

uint64_t skit::IndexWriter::start_txn(skit::IndexWriter *this)
{
  v26 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this)
  {
    goto LABEL_16;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v2 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
  {
    v3 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v3 = *v3;
    }

    v16 = 68289282;
    v17 = 16;
    v18 = 2098;
    v19 = v1;
    v20 = 2082;
    v21 = v3;
    _os_log_impl(&dword_2998C6000, v2, OS_LOG_TYPE_INFO, "IndexWriterImpl::start_txn : starting transaction %{public,uuid_t}.16P @ %{public}s", &v16, 0x1Cu);
  }

  if (*(v1 + 528) == 1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v10 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v16 = 68289026;
    v17 = 16;
    v18 = 2098;
    v19 = v1;
    v11 = "IndexWriterImpl::start_txn : transaction %{public,uuid_t}.16P has already been started";
    v12 = v10;
    v13 = 18;
LABEL_31:
    _os_log_fault_impl(&dword_2998C6000, v12, OS_LOG_TYPE_FAULT, v11, &v16, v13);
    goto LABEL_16;
  }

  v4 = (v1 + 16);
  v5 = (v1 + 16);
  if (*(v1 + 39) < 0)
  {
    v5 = *v4;
  }

  v6 = (v1 + 208);
  v7 = (v1 + 208);
  if (*(v1 + 231) < 0)
  {
    v7 = *v6;
  }

  if (copyfile(v5, v7, 0, 0x10E800Fu))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v14 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    if (*(v1 + 39) < 0)
    {
      v4 = *v4;
    }

    if (*(v1 + 231) < 0)
    {
      v6 = *v6;
    }

    v15 = *__error();
    v16 = 68289794;
    v17 = 16;
    v18 = 2098;
    v19 = v1;
    v20 = 2082;
    v21 = v4;
    v22 = 2082;
    v23 = v6;
    v24 = 1024;
    v25 = v15;
    v11 = "IndexWriterImpl::start_txn : transaction %{public,uuid_t}.16P file clone failed @ %{public}s  ->  %{public}s : %{darwin.errno}d";
    v12 = v14;
    v13 = 44;
    goto LABEL_31;
  }

  if (!skit::internal::MultiIndexV2::open((v1 + 208)))
  {
    result = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::open(v1 + 40);
    if (!result)
    {
      *(v1 + 528) = 1;
      goto LABEL_17;
    }
  }

LABEL_16:
  result = 0xFFFFFFFFLL;
LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::IndexWriter::abort_txn(skit::internal::IndexWriterImpl **this)
{
  v1 = *this;
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  skit::internal::IndexWriterImpl::abort_txn(v1);
  return 0;
}

uint64_t skit::IndexWriter::append(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, iovec *a6, int a7, float a8)
{
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = *a2;
  *(v8 + 529) = 1;
  return skit::internal::MultiIndexV2::append(v8 + 208, *a3, a3[1], a4, a5, a6, a7, v9, a8);
}

uint64_t skit::IndexWriter::clear(char **this)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this || v1[528] != 1)
  {
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  v1[529] = 1;
  skit::internal::MultiIndexV2::clear((v1 + 208));
  if (skit::internal::MultiIndexV2::open((v1 + 208)))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v4 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
    {
      v5 = v1 + 16;
      if (v1[39] < 0)
      {
        v5 = *v5;
      }

      v6[0] = 68289282;
      v6[1] = 16;
      v7 = 2098;
      v8 = v1;
      v9 = 2082;
      v10 = v5;
      _os_log_impl(&dword_2998C6000, v4, OS_LOG_TYPE_INFO, "IndexWriterImpl::abort_txn : clear  transaction %{public,uuid_t}.16P @ %{public}s", v6, 0x1Cu);
    }

    goto LABEL_12;
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear((v1 + 40));
  result = 0;
LABEL_5:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::IndexWriter::flush(skit::IndexWriter *this)
{
  if (*this)
  {
    return skit::internal::MultiIndexV2::flush((*this + 208));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t skit::IndexWriter::flush_threshold(skit::IndexWriter *this)
{
  if (*this)
  {
    return *(*this + 488);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexWriter::flush_threshold(uint64_t this, unint64_t a2)
{
  if (*this)
  {
    v2 = 100663296;
    if (a2 < 0x6000000)
    {
      v2 = a2;
    }

    if (v2 <= 0x100000)
    {
      v2 = 0x100000;
    }

    *(*this + 488) = v2;
  }

  return this;
}

uint64_t skit::IndexWriter::segment_cnt(skit::IndexWriter *this)
{
  if (*this)
  {
    return (*(*this + 240) - *(*this + 232)) >> 3;
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexWriter::size_bytes(skit::IndexWriter *this)
{
  if (*this)
  {
    return skit::internal::MultiIndexV2::disk_index_size(*(*this + 232), *(*this + 240));
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexWriter::size(skit::IndexWriter *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += *(*(v5 + 192) + 12);
    }

    while (v2 != v3);
  }

  return v4 + *(v1 + 316);
}

uint64_t skit::IndexWriter::record_cnt(skit::IndexWriter *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 += (*(*(v5 + 192) + 12) - *(*(v5 + 192) + 16));
    }

    while (v2 != v3);
  }

  return v4 + (*(v1 + 316) - *(v1 + 320));
}

uint64_t skit::IndexWriter::last_ts(skit::IndexWriter *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *(v1 + 232);
  v2 = *(v1 + 240);
  if (v3 == v2)
  {
    return -1;
  }

  v4 = *(*(v2 - 8) + 24);
  if (!v4)
  {
    return -1;
  }

  else
  {
    return *(v4 + 32);
  }
}

uint64_t skit::IndexWriter::index_count_threshold(skit::IndexWriter *this, unint64_t a2)
{
  v2 = *this;
  if (*this && *(v2 + 528) == 1)
  {
    return skit::internal::MultiIndexV2::index_count_threshold(*(v2 + 232), *(v2 + 240), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexWriter::merge_indexes(skit::IndexWriter *this)
{
  if (*this)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL skit::IndexWriter::set_doc_wgt(uint64_t *a1, skit::internal *this, float a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *(v3 + 529) = 1;
  v6 = *(v3 + 232);
  v7 = *(v3 + 240);
  while (v6 != v7)
  {
    if (skit::internal::DiskMetaStore::set_doc_wgt((*v6 + 168), this, a3))
    {
      return 1;
    }

    v6 += 8;
  }

  return skit::internal::MemMetaStore::set_doc_wgt(v3 + 304, this, a3);
}

unint64_t skit::IndexWriter::get_doc(uint64_t a1, skit::internal *this)
{
  if (*a1)
  {
    return skit::internal::MultiIndexV2::get_doc<skit::Uuid>(*(*a1 + 232), *(*a1 + 240), this);
  }

  else
  {
    return 0;
  }
}

unint64_t skit::IndexWriter::get_doc(skit::IndexWriter *this, uint64_t a2)
{
  v3 = a2;
  if (*this)
  {
    return skit::internal::MultiIndexV2::get_doc<long long>(*(*this + 232), *(*this + 240), &v3);
  }

  else
  {
    return 0;
  }
}

BOOL skit::IndexWriter::erase(uint64_t *a1, __int128 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1)
  {
    *(v2 + 529) = 1;
    v7 = *a2;
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    while (1)
    {
      if (v3 == v4)
      {
        result = skit::internal::MemMetaStore::set_doc_wgt(v2 + 304, &v7, 0.0);
        goto LABEL_9;
      }

      if (skit::internal::DiskMetaStore::set_doc_wgt((*v3 + 168), &v7, 0.0))
      {
        break;
      }

      v3 += 8;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t skit::IndexWriter::register_str(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a1;
  if (!*a1 || *(v3 + 528) != 1)
  {
    return -1;
  }

  *(v3 + 529) = 1;
  return skit::internal::StringRegistry::put_str(v3 + 40, a2, a3);
}

uint64_t skit::IndexWriter::get_registered_str(skit::IndexWriter *this, unsigned int a2)
{
  v2 = *this;
  if (*this && *(v2 + 528) == 1)
  {
    return skit::internal::StringRegistry::get_str((v2 + 40), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t skit::IndexWriter::erase_registered_str(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 + 528) != 1)
  {
    return 0;
  }

  *(v3 + 529) = 1;
  v9[0] = a2;
  v9[1] = a3;
  if (!*(v3 + 64) || skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(v3 + 40))
  {
    return 0;
  }

  for (i = skit::internal::murmur3_32(a2, 2 * a3, *(*(v3 + 64) + 12)) & 0x7FFFFFFF; !skit::internal::StringRegistry::lookup((v3 + 40), i, v9); ++i)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return skit::internal::StringRegistry::erase_internal((v3 + 40), i);
}

uint64_t skit::IndexWriter::erase_registered_str(skit::IndexWriter *this, unsigned int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if (*(v2 + 528) != 1)
  {
    return 0;
  }

  *(v2 + 529) = 1;
  if (!*(v2 + 64) || skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(v2 + 40))
  {
    return 0;
  }

  return skit::internal::StringRegistry::erase_internal((v2 + 40), a2);
}

BOOL skit::NumberFilter::filter(uint64_t a1, _WORD *a2, unint64_t a3)
{
  v3 = ((*a2 - 43) & 0xFFFD) == 0;
  if (a3 <= v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 + 1;
  v7 = ((*a2 - 43) & 0xFFFD) == 0;
  do
  {
    v8 = a2[v7];
    if (v8 == 46)
    {
      ++v4;
    }

    if ((v8 - 48) < 0xA)
    {
      ++v5;
    }

    v7 = v6;
  }

  while (a3 > v6++);
  return v4 <= 1 && v5 != 0 && a3 == v5 + v3 + v4;
}

void skit::NumberFilter::filter(skit::NumberFilter *this, skit::TokenStream *a2, unint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v4 = v3 - a3;
  if (v3 > a3)
  {
    v7 = 48 * a3;
    do
    {
      skit::NumberFilter::filter(this, (*a2 + v7));
      v7 += 48;
      --v4;
    }

    while (v4);
  }
}

float skit::NumberFilter::filter(uint64_t a1, float *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (skit::NumberFilter::filter(a1, a2, v5))
  {
    result = *(a1 + 16) * v2[8];
    v2[8] = result;
    *(v2 + 20) = (*(v2 + 20) | *(a1 + 20) & 4) & (~*(a1 + 20) | 0xFFFE);
  }

  return result;
}

uint64_t skit::simil(skit *this, const char *a2, const char *a3)
{
  v5 = strlen(this);
  v7 = strlen(a2);
  result = 0;
  if (v5)
  {
    if (v7)
    {
      return ((200 * skit::rsimil(this, v5, a2, v7, 1, v6)) / (v7 + v5));
    }
  }

  return result;
}

uint64_t skit::rsimil(skit *this, const char *a2, uint64_t a3, const char *a4, int a5, int a6)
{
  if (a2 < 1)
  {
    return 0;
  }

  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = this;
  v10 = 0;
  v11 = 0;
  v47 = 0;
  v12 = a4;
  v45 = a3 + 1;
  v42 = this + 1;
  v13 = a2;
  v43 = a2;
  do
  {
    if (v11 < v7)
    {
      v14 = 0;
      v15 = &v42[v10];
      do
      {
        v16 = *(v9 + v10);
        if (v6)
        {
          if (*(v8 + v14) == v16 && *(v9 + v11 + v10) == *(v8 + v11 + v14))
          {
            v17 = 0;
            do
            {
              v18 = v15[v17];
              v19 = *(v45 + v14 + v17++);
              v20 = v10 + v17;
            }

            while (v17 + v14 < v12 && v20 < v13 && v18 == v19);
            v23 = v17;
            if (v17 > v11)
            {
              v24 = v10;
            }

            else
            {
              v24 = v47;
            }

            v25 = HIDWORD(v47);
            if (v23 > v11)
            {
              v25 = v14;
            }

            v47 = __PAIR64__(v25, v24);
            if (v23 > v11)
            {
              v11 = v20 - v10;
            }
          }
        }

        else
        {
          v26 = __tolower(v16);
          if (v26 == __tolower(*(v8 + v14)))
          {
            v27 = __tolower(*(this + v11 + v10));
            v8 = a3;
            if (v27 == __tolower(*(a3 + v11 + v14)))
            {
              v28 = 0;
              do
              {
                v29 = __tolower(v15[v28]);
                v30 = __tolower(*(v45 + v14 + v28));
                v31 = v10 + v28 + 1;
                if (v31 >= v13)
                {
                  break;
                }
              }

              while (v29 == v30 && v14 + v28++ + 1 < v7);
              v33 = v31 - v10;
              if (v33 > v11)
              {
                v34 = v10;
              }

              else
              {
                v34 = v47;
              }

              v35 = HIDWORD(v47);
              if (v33 > v11)
              {
                v35 = v14;
              }

              v47 = __PAIR64__(v35, v34);
              if (v33 > v11)
              {
                v11 = v33;
              }

              v6 = a5;
              v8 = a3;
            }
          }

          v9 = this;
        }

        ++v14;
      }

      while (v14 < v7 - v11);
    }

    ++v10;
  }

  while (v10 < v43 - v11);
  if (!v11)
  {
    return 0;
  }

  v36 = 0;
  if (v47)
  {
    v37 = HIDWORD(v47);
    if (HIDWORD(v47))
    {
      v38 = skit::rsimil(v9, v47, v8, HIDWORD(v47), v6, a6);
      v9 = this;
      v36 = v38;
    }
  }

  else
  {
    v37 = HIDWORD(v47);
  }

  v40 = 0;
  v41 = v11 + v47;
  if (v43 != v41 && v7 != v11 + v37)
  {
    v40 = skit::rsimil((v9 + v41), (v43 - v41), v8 + v11 + v37, (v7 - (v11 + v37)), v6, a6);
  }

  return (v36 + v11 + v40);
}

uint64_t skit::isimil(skit *this, const char *a2, const char *a3)
{
  v5 = strlen(this);
  v7 = strlen(a2);
  result = 0;
  if (v5)
  {
    if (v7)
    {
      return ((200 * skit::rsimil(this, v5, a2, v7, 0, v6)) / (v7 + v5));
    }
  }

  return result;
}

uint64_t skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::max_span_match(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 48);
  if (v1 < 2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = (v2 + 76);
    for (i = 1; i != v1; ++i)
    {
      v6 = *v4;
      v4 += 16;
      if (v6 <= *(v2 + (v3 << 6) + 12))
      {
        v3 = v3;
      }

      else
      {
        v3 = i;
      }
    }
  }

  return v2 + (v3 << 6);
}

void skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::clear(uint64_t a1)
{
  *a1 = 0;
  if (*(a1 + 31) < 0)
  {
    **(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 31) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = v2 << 6;
    v4 = *(a1 + 48) + 48;
    do
    {
      v5 = *(v4 - 16);
      if (v4 != v5)
      {
        free(v5);
      }

      v4 += 64;
      v3 -= 64;
    }

    while (v3);
  }

  *(a1 + 56) = 0;
}

uint64_t skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::FieldMatchImpl(uint64_t a1, uint64_t a2, skit::SpanMatchV3 *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v6, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 8);
    v6->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  *(a1 + 32) = *(a2 + 32);
  skit::SpanMatchV3::SpanMatchV3((a1 + 48), a3);
  v8 = *(a3 + 6);
  v9 = *(a2 + 40);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v11 != 0 && v10)
  {
    *(a1 + 32) += v11;
  }

  v12.i32[0] = *(a3 + 5);
  v12.i32[1] = v8;
  *(a1 + 36) = vmax_u32(*(a1 + 36), v12);
  return a1;
}

void skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::MergedFieldMatchImpl()
{
  v0 = *MEMORY[0x29EDCA608];
  skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::FieldMatchImpl();
}

{
    ;
  }
}

uint64_t skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::max_token_cnt(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  v4 = 112 * v1;
  v5 = (v3 + 32);
  do
  {
    v6 = *v5;
    v5 += 28;
    result = (v6 + result);
    v4 -= 112;
  }

  while (v4);
  return result;
}

uint64_t skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::max_code_unit_cnt(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  v4 = 112 * v1;
  v5 = (v3 + 44);
  do
  {
    v6 = *v5;
    v5 += 28;
    result = (v6 + result);
    v4 -= 112;
  }

  while (v4);
  return result;
}

uint64_t skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::max_stop_word_cnt(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  v4 = 112 * v1;
  v5 = (v3 + 36);
  do
  {
    v6 = *v5;
    v5 += 28;
    result = (v6 + result);
    v4 -= 112;
  }

  while (v4);
  return result;
}

uint64_t skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::max_alias_token_cnt(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = *v2;
  v4 = 112 * v1;
  v5 = (v3 + 40);
  do
  {
    v6 = *v5;
    v5 += 28;
    result = (v6 + result);
    v4 -= 112;
  }

  while (v4);
  return result;
}

size_t skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::merge(char **a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a1 + 2);
    v6 = &(*a1)[112 * v5];
    v7 = *a2;
    v8 = (*a2 + 112 * v4);
    v9 = v5 + v4;
    if (v5 + v4 <= *(a1 + 3))
    {
      v14 = &(*a1)[112 * v5];
    }

    else
    {
      v28 = *a2 + 112 * v4;
      v10 = v5 + (v5 >> 1);
      if (v10 + 1 > v9)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = v9;
      }

      v12 = skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::allocate(v11);
      v13 = *a1;
      v14 = v12;
      if (*a1 != v6)
      {
        do
        {
          *v14 = *v13;
          v15 = *(v13 + 8);
          *(v14 + 24) = *(v13 + 3);
          *(v14 + 8) = v15;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          *(v13 + 1) = 0;
          *(v14 + 32) = *(v13 + 2);
          v16 = *(v13 + 3);
          *(v14 + 60) = *(v13 + 60);
          *(v14 + 48) = v16;
          skit::SmallVector<skit::GroupId,4u,true>::move(v14 + 80, (v13 + 80));
          *(v14 + 104) = *(v13 + 26);
          v14 += 112;
          v13 += 112;
        }

        while (v13 != v6);
        v13 = *a1;
      }

      v17 = *(a1 + 2);
      v18 = &v13[112 * v17];
      if (v18 != v6)
      {
        v19 = v14 + 112 * v4;
        do
        {
          *v19 = *v6;
          v20 = *(v6 + 8);
          *(v19 + 24) = *(v6 + 24);
          *(v19 + 8) = v20;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 8) = 0;
          *(v19 + 32) = *(v6 + 32);
          v21 = *(v6 + 48);
          *(v19 + 60) = *(v6 + 60);
          *(v19 + 48) = v21;
          skit::SmallVector<skit::GroupId,4u,true>::move(v19 + 80, v6 + 80);
          *(v19 + 104) = *(v6 + 104);
          v6 += 112;
          v19 += 112;
        }

        while (v6 != v18);
        v13 = *a1;
        v17 = *(a1 + 2);
      }

      if (v17)
      {
        v22 = 112 * v17;
        do
        {
          skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::~FieldMatchImpl(v13);
          v13 += 112;
          v22 -= 112;
        }

        while (v22);
        v13 = *a1;
      }

      if (v13 != (a1 + 2))
      {
        free(v13);
      }

      *a1 = v12;
      *(a1 + 3) = ((malloc_size(v12) >> 4) * 0x2492492492492493uLL) >> 64;
      v8 = v28;
    }

    *(a1 + 2) = v9;
    std::uninitialized_copy[abi:ne200100]<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>> const*,skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>*>(v7, v8, v14);
  }

  v23 = *(a1 + 487);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v23 = a1[59];
  }

  if (v23 && *(a1 + 123) < *(a2 + 488))
  {
    std::basic_string<char16_t>::push_back((a1 + 58), a2);
  }

  v24 = *(a2 + 487);
  if (v24 >= 0)
  {
    v25 = (a2 + 464);
  }

  else
  {
    v25 = *(a2 + 464);
  }

  if (v24 >= 0)
  {
    v26 = *(a2 + 487);
  }

  else
  {
    v26 = *(a2 + 472);
  }

  std::basic_string<char16_t>::append((a1 + 58), v25, v26);

  return skit::SpanMatchV3::merge((a1 + 61), (a2 + 488));
}

uint64_t skit::internal::MergeStateImpl<skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>>::clear(uint64_t result)
{
  v1 = result;
  *result = 0;
  *(result + 8) = 0;
  v2 = *(result + 24);
  if (v2)
  {
    v3 = 552 * v2;
    v4 = *(result + 16) + 536;
    do
    {
      v5 = *(v4 - 16);
      if (v4 != v5)
      {
        free(v5);
      }

      if (*(v4 - 49) < 0)
      {
        operator delete(*(v4 - 72));
      }

      result = skit::SmallVector<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>,4u,true>::~SmallVector(v4 - 536);
      v4 += 552;
      v3 -= 552;
    }

    while (v3);
  }

  *(v1 + 24) = 0;
  return result;
}

void *skit::MphStopWordFilter::MphStopWordFilter(void *this)
{
  *this = &unk_2A1F93C50;
  this[1] = &skit::default_stop_word;
  return this;
}

{
  *this = &unk_2A1F93C50;
  this[1] = &skit::default_stop_word;
  return this;
}

float skit::MphStopWordFilter::filter(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
  if (v4 > a3)
  {
    v5 = a3;
    v6 = *(a1 + 8);
    v7 = *(v6 + 24);
    do
    {
      v8 = v3 + 48 * v5;
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = (v3 + 48 * v5);
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      v12 = v7;
      if (v11)
      {
        v13 = *(*(v6 + 8) + 2 * (*(v6 + 16) & skit::internal::murmur3_32(v10, 2 * v11, *(v6 + 20))));
        v12 = v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          v14 = *v6 + 24 * v13;
          v12 = v7;
          if (*(v14 + 8) == v11)
          {
            v15 = *v14;
            while (*v10 == *v15)
            {
              ++v15;
              v10 = (v10 + 2);
              if (!--v11)
              {
                v12 = *v6 + 24 * v13;
                goto LABEL_17;
              }
            }

            v12 = v7;
          }
        }
      }

LABEL_17:
      result = *(v12 + 16) * *(v8 + 32);
      *(v8 + 32) = result;
      *(v8 + 40) = (*(v8 + 40) | *(v12 + 20) & 4) & (*(v12 + 20) | 0xFFFE);
      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

BOOL skit::is_significant(uint64_t *a1)
{
  if (skit::is_significant(std::u16string_view const&)::once != -1)
  {
  }

  if (!skit::is_significant(std::u16string_view const&)::significant_chars)
  {
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  while (1)
  {
    result = v3 < v2;
    if (v3 >= v2)
    {
      break;
    }

    v6 = v3 + 1;
    v7 = *(v4 + 2 * v3);
    if ((v7 & 0xFC00) == 0xD800 && v6 != v2)
    {
      v9 = *(v4 + 2 * v6);
      v10 = v9 & 0xFC00;
      v11 = v3 + 2;
      v12 = v9 + (v7 << 10) - 56613888;
      if (v10 == 56320)
      {
        LODWORD(v6) = v11;
        v7 = v12;
      }

      else
      {
        v7 = v7;
      }
    }

    v13 = MEMORY[0x29C2A35E0](skit::is_significant(std::u16string_view const&)::significant_chars, v7);
    v3 = v6;
    if (v13)
    {
      return 1;
    }
  }

  return result;
}

uint64_t skit::anonymous namespace::make_uset_significant_chars(skit::_anonymous_namespace_ *this, void *a2)
{
  v3 = uset_openPattern();
  result = MEMORY[0x29C2A35F0]();
  *this = v3;
  return result;
}

void skit::to_string(std::string *this, uint64_t a2, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  std::string::reserve(this, __requested_capacity);
  v15 = 0;
  *__s = 0;
  if (v3 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      v8 = *(a2 + 2 * v6);
      if ((v8 & 0xFC00) == 0xD800 && v7 != v3)
      {
        break;
      }

      if (v8 > 0x7F)
      {
        if (v8 <= 0x7FF)
        {
          __s[0] = (v8 >> 6) | 0xC0;
          v13 = 1;
LABEL_19:
          v10 = v13 + 1;
          __s[v13] = v8 & 0x3F | 0x80;
          goto LABEL_20;
        }

LABEL_17:
        __s[0] = (v8 >> 12) | 0xE0;
        v12 = 1;
LABEL_18:
        v13 = v12 + 1;
        *(__s | v12) = (v8 >> 6) & 0x3F | 0x80;
        goto LABEL_19;
      }

      __s[0] = *(a2 + 2 * v6);
      v10 = 1;
LABEL_20:
      std::string::append(this, __s, v10);
      v6 = v7;
      if (v7 >= v3)
      {
        return;
      }
    }

    v11 = *(a2 + 2 * v7);
    if ((v11 & 0xFC00) != 0xDC00)
    {
      goto LABEL_17;
    }

    LODWORD(v7) = v6 + 2;
    v8 = v11 + (v8 << 10) - 56613888;
    __s[0] = (v8 >> 18) | 0xF0;
    __s[1] = (v8 >> 12) & 0x3F | 0x80;
    v12 = 2;
    goto LABEL_18;
  }
}

uint64_t skit::codepoint_cnt(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  LODWORD(v4) = 0;
  while (1)
  {
    v5 = v4;
    v6 = v4 + 1;
    v7 = *(a1 + v4);
    if ((v7 & 0x80000000) == 0 || v6 == a2)
    {
LABEL_19:
      LODWORD(v4) = v6;
      goto LABEL_20;
    }

    v8 = v7;
    if (v7 < 0xE0u)
    {
      LODWORD(v4) = v6;
      if (v8 >= 0xC2)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (v7 <= 0xEFu)
    {
      v9 = a00000000000000_0[v7 & 0xF] >> (*(a1 + v6) >> 5);
      LODWORD(v4) = v6;
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

    if (v7 > 0xF4u)
    {
      goto LABEL_19;
    }

    LODWORD(v4) = v6;
    if ((byte_2998EC288[*(a1 + v6) >> 4] >> (v8 + 16)))
    {
      break;
    }

LABEL_20:
    ++result;
    if (v4 >= a2)
    {
      return result;
    }
  }

  v4 = v5 + 2;
  if (v5 + 2 != a2)
  {
    LODWORD(v6) = v5 + 2;
    if (*(a1 + v4) <= -65)
    {
LABEL_8:
      LODWORD(v6) = v6 + 1;
      if (v6 == a2)
      {
        return ++result;
      }

LABEL_11:
      if (*(a1 + v6) >= -64)
      {
        LODWORD(v4) = v6;
      }

      else
      {
        LODWORD(v4) = v6 + 1;
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  return ++result;
}

{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v3 + 1;
    if ((*(a1 + 2 * v3) & 0xFC00) == 0xD800 && v4 != a2)
    {
      v6 = v3 + 2;
      if ((*(a1 + 2 * v4) & 0xFC00) == 0xDC00)
      {
        LODWORD(v4) = v6;
      }
    }

    ++v2;
    v3 = v4;
  }

  while (v4 < a2);
  return v2;
}

unint64_t skit::levenshtein(skit *this, const char *a2, const char *a3)
{
  v33[1] = *MEMORY[0x29EDCA608];
  v5 = strlen(this);
  v6 = strlen(a2);
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v5)
  {
    if (v9 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v14 = vdupq_n_s64(v12 - 2);
    v15 = v11 + 2;
    v16 = 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v16 - 1), xmmword_2998EB7C0)));
      if (v17.i8[0])
      {
        *(v15 - 1) = v16;
      }

      if (v17.i8[4])
      {
        *v15 = v16 + 1;
      }

      v16 += 2;
      v15 += 2;
      v13 -= 2;
    }

    while (v13);
  }

  if (v8)
  {
    v18 = 2;
    if (v9 <= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v9;
    }

    if ((v8 + 1) > 2)
    {
      v18 = v8 + 1;
    }

    v20 = v19 - 1;
    v21 = 1;
    do
    {
      v22 = v21;
      if (v5)
      {
        v23 = v21 - 1;
        v24 = a2[v21 - 1];
        v25 = v11 + 1;
        v26 = this;
        v27 = v20;
        v28 = v22;
        do
        {
          v29 = *v26;
          v26 = (v26 + 1);
          if (v29 != v24)
          {
            ++v23;
          }

          v30 = *v25;
          if (*v25 + 1 >= v28 + 1)
          {
            ++v28;
          }

          else
          {
            v28 = *v25 + 1;
          }

          if (v28 >= v23)
          {
            v28 = v23;
          }

          *v25++ = v28;
          v23 = v30;
          --v27;
        }

        while (v27);
      }

      v21 = v22 + 1;
    }

    while (v22 + 1 != v18);
    *v11 = v22;
  }

  result = v11[v5];
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::Token::serialize(skit::Token *this, byte *a2, uint64_t a3)
{
  v3 = *(this + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 1);
  }

  if (2 * v3 + 18 > a3)
  {
    return -1;
  }

  *a2 = v3;
  v7 = a2 + 2;
  v8 = *(this + 23);
  v9 = *(this + 1);
  if (v8 >= 0)
  {
    v9 = *(this + 23);
  }

  v10 = 2 * v9;
  v11 = this;
  if (v8 < 0)
  {
    v11 = *this;
  }

  memcpy(v7, v11, 2 * v9);
  v12 = &a2[v10];
  *(v12 + 2) = *(this + 6);
  *(v12 + 6) = *(this + 7);
  v13 = *(this + 8);
  v14 = 65504.0;
  if (v13 <= 65504.0)
  {
    v14 = *(this + 8);
  }

  if (v13 >= -65504.0)
  {
    _S0 = v14;
  }

  else
  {
    _S0 = *"";
  }

  __asm { FCVT            H0, S0 }

  *(v12 + 5) = _H0;
  *(v12 + 6) = *(this + 18);
  *(v12 + 7) = *(this + 19);
  *(v12 + 8) = *(this + 20);
  return v10 + 18;
}

unint64_t skit::Token::deserialize(std::basic_string<char16_t> *this, const byte *a2, uint64_t a3)
{
  if (a3 < 18)
  {
    return -1;
  }

  v5 = *a2;
  v6 = 2 * v5;
  v7 = 2 * v5 + 18;
  if (v7 > a3)
  {
    return -1;
  }

  v8 = std::basic_string<char16_t>::__assign_external(this, a2 + 1, v5);
  v8[1].__r_.__value_.__r.__words[0] = *&a2[v6 + 2];
  _H0 = *&a2[v6 + 10];
  __asm { FCVT            S0, H0 }

  LODWORD(v8[1].__r_.__value_.__r.__words[1]) = _S0;
  v8[1].__r_.__value_.__s.__data_[6] = *&a2[v6 + 12];
  v8[1].__r_.__value_.__s.__data_[7] = *&a2[v6 + 14];
  v8[1].__r_.__value_.__s.__data_[8] = *&a2[v6 + 16];
  return v7;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::__assign_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0xA)
    {
      v8 = 10;
LABEL_6:
      std::basic_string<char16_t>::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, 2 * __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t skit::TokenStream::serialize(skit::TokenStream *this, byte *a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    *a2 = -21845 * ((*(this + 2) - *this) >> 4);
    v5 = *this;
    v6 = *(this + 1);
    if (*this == v6)
    {
      return a3 - v3;
    }

    v7 = a2 + 2;
    while (1)
    {
      v8 = skit::Token::serialize(v5, v7, v3);
      if (v8 < 1)
      {
        break;
      }

      v3 -= v8;
      v7 += v8;
      v5 = (v5 + 48);
      if (v5 == v6)
      {
        return a3 - v3;
      }
    }
  }

  return -1;
}

uint64_t skit::TokenStream::deserialize(skit::TokenStream *this, const byte *a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    std::vector<skit::Token>::resize(this, *a2);
    v7 = *this;
    v8 = *(this + 1);
    if (v7 == v8)
    {
      return a3 - v3;
    }

    v9 = a2 + 2;
    while (1)
    {
      v10 = skit::Token::deserialize(v7, v9, v3);
      if (v10 < 1)
      {
        break;
      }

      v3 -= v10;
      v9 += v10;
      v7 += 2;
      if (v7 == v8)
      {
        return a3 - v3;
      }
    }
  }

  return -1;
}

void skit::MultiNGram::~MultiNGram(skit::MultiNGram *this)
{
  *this = &unk_2A1F93D50;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  JUMPOUT(0x29C2A3200);
}

{
  *this = &unk_2A1F93D50;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void skit::MultiNGram::tokenize_str(uint64_t a1, uint64_t *a2, void *__src, unint64_t a4)
{
  v76 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  if (!v5)
  {
    skit::Token::Token(__p, __src, a4);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    __dst[0] = &v70;
    LOBYTE(__dst[1]) = 0;
    operator new();
  }

  v70 = 0;
  v71 = 0;
  v72 = 0;
  (**v5)(v5, &v70, __src);
  v6 = v70;
  v61 = v71;
  if (v70 != v71)
  {
    v60 = (a1 + 28);
    do
    {
      if (*(a1 + 40) == 1)
      {
        strcpy(__srca, "^");
        v7 = v6;
        if (*(v6 + 23) < 0)
        {
          v7 = *v6;
        }

        *&__srca[2] = *v7;
        std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__p, __srca);
        v69 = 1065353216;
        v8 = a2[1];
        if (v8 >= a2[2])
        {
          v13 = std::vector<skit::Token>::__emplace_back_slow_path<std::basic_string<char16_t>,float,float const&>(a2, __p, &v69, v60);
        }

        else
        {
          v9 = __p[0];
          __dst[0] = __p[1];
          *(__dst + 7) = *(&__p[1] + 7);
          v10 = HIBYTE(__p[2]);
          memset(__p, 0, 24);
          v11 = *v60;
          *(v8 + 15) = *(__dst + 7);
          v12 = __dst[0];
          *v8 = v9;
          *(v8 + 8) = v12;
          *(v8 + 23) = v10;
          *(v8 + 24) = 0;
          *(v8 + 32) = v11;
          *(v8 + 36) = 0x10000;
          *(v8 + 40) = 3;
          v13 = v8 + 48;
          *(v8 + 44) = 0;
        }

        a2[1] = v13;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(a1 + 40))
        {
          v14 = *(v6 + 23);
          if (v14 < 0)
          {
            v15 = *v6;
            v14 = *(v6 + 1);
          }

          else
          {
            v15 = v6;
          }

          *__srca = v15[v14 - 1];
          *&__srca[2] = 36;
          std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__p, __srca);
          v69 = 1065353216;
          v16 = a2[1];
          if (v16 >= a2[2])
          {
            v21 = std::vector<skit::Token>::__emplace_back_slow_path<std::basic_string<char16_t>,float,float const&>(a2, __p, &v69, v60);
          }

          else
          {
            v17 = __p[0];
            __dst[0] = __p[1];
            *(__dst + 7) = *(&__p[1] + 7);
            v18 = HIBYTE(__p[2]);
            memset(__p, 0, 24);
            v19 = *v60;
            *(v16 + 15) = *(__dst + 7);
            v20 = __dst[0];
            *v16 = v17;
            *(v16 + 8) = v20;
            *(v16 + 23) = v18;
            *(v16 + 24) = 0;
            *(v16 + 32) = v19;
            *(v16 + 36) = 0x10000;
            *(v16 + 40) = 3;
            v21 = v16 + 48;
            *(v16 + 44) = 0;
          }

          a2[1] = v21;
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v22 = *(v6 + 23);
      if (v22 < 0)
      {
        v22 = *(v6 + 1);
      }

      v23 = *(a1 + 8);
      if (*(a1 + 12) < v22)
      {
        LODWORD(v22) = *(a1 + 12);
      }

      v62 = v22;
      while (v23 <= v22)
      {
        v24 = *(v6 + 23);
        if (v24 < 0)
        {
          v25 = *v6;
          v24 = *(v6 + 1);
        }

        else
        {
          v25 = v6;
        }

        v26 = v24 - v23;
        v63 = *a2;
        v64 = a2[1];
        v27 = 0.0;
        v67 = v26 + 1;
        if (v26 != -1)
        {
          v28 = 0;
          v29 = v23 | 3;
          if (v29 == 11)
          {
            v30 = 13;
          }

          else
          {
            v30 = v29 + 1;
          }

          v65 = v30;
          v31 = v25;
          v32 = 0.0;
          do
          {
            if (v23 >= 0xB)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v65);
            }

            HIBYTE(__dst[2]) = v23;
            if (v23)
            {
              memmove(__dst, v25, 2 * v23);
            }

            *(__dst + v23) = 0;
            v33 = *(v6 + 6);
            v34 = v6;
            if (*(v6 + 23) < 0)
            {
              v34 = *v6;
            }

            v35 = *(a1 + 36) * v23;
            v36 = expf(v32) * v35;
            v37 = a2[1];
            v38 = a2[2];
            if (v37 >= v38)
            {
              v42 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *a2) >> 4);
              v43 = v42 + 1;
              if (v42 + 1 > 0x555555555555555)
              {
                std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
              }

              v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - *a2) >> 4);
              if (2 * v44 > v43)
              {
                v43 = 2 * v44;
              }

              if (v44 >= 0x2AAAAAAAAAAAAAALL)
              {
                v45 = 0x555555555555555;
              }

              else
              {
                v45 = v43;
              }

              __p[4] = a2;
              if (v45)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(v45);
              }

              v46 = 48 * v42;
              __p[0] = 0;
              __p[1] = (48 * v42);
              __p[3] = 0;
              v47 = __dst[0];
              *&__srca[7] = *(&__dst[1] + 7);
              *__srca = __dst[1];
              v48 = HIBYTE(__dst[2]);
              memset(__dst, 0, sizeof(__dst));
              v49 = *__srca;
              *v46 = v47;
              *(v46 + 8) = v49;
              *(v46 + 15) = *&__srca[7];
              *(v46 + 23) = v48;
              *(v46 + 24) = 0;
              *(v46 + 32) = v36;
              *(v46 + 36) = 0x10000;
              *(v46 + 40) = 3;
              *(v46 + 44) = 0;
              __p[2] = (48 * v42 + 48);
              v50 = a2[1];
              v51 = 48 * v42 + *a2 - v50;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<skit::Token>,skit::Token*>(a2, *a2, v50, v46 + *a2 - v50);
              v52 = *a2;
              *a2 = v51;
              v53 = a2[2];
              v66 = __p[2];
              *(a2 + 1) = *&__p[2];
              __p[2] = v52;
              __p[3] = v53;
              __p[0] = v52;
              __p[1] = v52;
              std::__split_buffer<skit::Token>::~__split_buffer(__p);
              v41 = v66;
            }

            else
            {
              v39 = __dst[0];
              __p[0] = __dst[1];
              *(__p + 7) = *(&__dst[1] + 7);
              v40 = HIBYTE(__dst[2]);
              memset(__dst, 0, sizeof(__dst));
              *v37 = v39;
              *(v37 + 8) = __p[0];
              *(v37 + 15) = *(__p + 7);
              *(v37 + 23) = v40;
              *(v37 + 24) = 0;
              *(v37 + 32) = v36;
              *(v37 + 36) = 0x10000;
              *(v37 + 40) = 3;
              *(v37 + 44) = 0;
              v41 = (v37 + 48);
            }

            a2[1] = v41;
            v54 = v33 + ((v31 - v34) >> 1);
            *(v41 - 3) = v54 | ((v54 + v23) << 32);
            v55 = *(a2[1] - 16);
            v56 = *(a1 + 24);
            if (SHIBYTE(__dst[2]) < 0)
            {
              operator delete(__dst[0]);
            }

            v27 = v27 + v55;
            v32 = v32 - v56;
            ++v28;
            v25 += 2;
            v31 += 2;
          }

          while (v28 < v67);
        }

        if (*(a1 + 42))
        {
          v57 = a2[1];
          for (i = *a2 + 0xFFFFFFF000000010 * ((v64 - v63) >> 4); i != v57; i += 48)
          {
            *(i + 32) = (1.0 / v27) * *(i + 32);
          }
        }

        ++v23;
        LODWORD(v22) = v62;
      }

      v6 += 24;
    }

    while (v6 != v61);
  }

  __p[0] = &v70;
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  v59 = *MEMORY[0x29EDCA608];
}

void sub_2998E9C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::vector<skit::Token>::__destroy_vector::operator()[abi:ne200100](&a26);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *skit::Token::Token(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  *(__dst + 3) = 0;
  *(__dst + 4) = 0x100003F800000;
  *(__dst + 20) = 3;
  *(__dst + 11) = 0;
  return __dst;
}

_BYTE *std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(_BYTE *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    do
    {
      v4 = &__src[2 * v3++];
    }

    while (*(v4 + 1));
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
    }

    if (v3 >= 0xB)
    {
      if ((v3 | 3) == 0xB)
      {
        v6 = 13;
      }

      else
      {
        v6 = (v3 | 3) + 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v6);
    }

    __dst[23] = v3;
    v5 = __dst;
    if (v3)
    {
      memmove(__dst, __src, 2 * v3);
      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    __dst[23] = 0;
  }

  v5 = __dst;
LABEL_15:
  *&v5[2 * v3] = 0;
  return __dst;
}

uint64_t std::vector<skit::Token>::__emplace_back_slow_path<std::basic_string<char16_t>,float,float const&>(uint64_t a1, uint64_t *a2, float *a3, int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v23 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(v7);
  }

  v8 = 48 * v4;
  *(&v22 + 1) = 0;
  *&v24[7] = *(a2 + 15);
  v9 = *a2;
  *v24 = a2[1];
  v10 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v11 = *a3;
  v12 = *a4;
  v13 = *v24;
  *v8 = v9;
  *(v8 + 8) = v13;
  *(v8 + 15) = *&v24[7];
  *(v8 + 23) = v10;
  *(v8 + 24) = 0;
  *(v8 + 32) = v12;
  *(v8 + 36) = 0;
  *(v8 + 38) = v11;
  *(v8 + 40) = 3;
  *(v8 + 44) = 0;
  *&v22 = 48 * v4 + 48;
  v14 = *(a1 + 8);
  v15 = 48 * v4 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<skit::Token>,skit::Token*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = *(a1 + 16);
  v20 = v22;
  *(a1 + 8) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v21[0] = v16;
  v21[1] = v16;
  std::__split_buffer<skit::Token>::~__split_buffer(v21);
  v18 = *MEMORY[0x29EDCA608];
  return v20;
}

void skit::WordDelimTokenizer::~WordDelimTokenizer(void **this)
{
  skit::WordDelimTokenizer::~WordDelimTokenizer(this);

  JUMPOUT(0x29C2A3200);
}

{
  *this = &unk_2A1F93C28;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

unint64_t skit::WordDelimTokenizer::tokenize_str(unint64_t result, uint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v7 = result;
    v8 = (result + 8);
    v9 = (result + 32);
    v10 = a3;
    do
    {
      v11 = *(v7 + 31);
      if (v11 < 0)
      {
        v12 = *(v7 + 8);
        v11 = *(v7 + 16);
      }

      else
      {
        v12 = v8;
      }

      result = std::u16string_view::find[abi:ne200100](v10, v4, v12, v11);
      if (result == -1)
      {
        break;
      }

      v13 = v4 >= result;
      v14 = v4 - result;
      if (!v13)
      {
        goto LABEL_25;
      }

      v15 = *(v7 + 55);
      if (v15 < 0)
      {
        v16 = *(v7 + 32);
        v17 = *(v7 + 40);
      }

      else
      {
        v16 = v9;
        v17 = *(v7 + 55);
      }

      v18 = &v10[result];
      result = std::u16string_view::find[abi:ne200100](v18, v14, v16, v17);
      if (result == -1)
      {
        break;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v15 = *(v7 + 40);
      }

      v19 = v15 + result;
      if (v14 >= v15 + result)
      {
        v20 = v15 + result;
      }

      else
      {
        v20 = v14;
      }

      v22[0] = v18;
      v22[1] = v20;
      v21 = *(a2 + 8);
      if (v21 >= *(a2 + 16))
      {
        result = std::vector<skit::Token>::__emplace_back_slow_path<std::u16string_view &>(a2, v22);
      }

      else
      {
        skit::Token::Token(*(a2 + 8), v18, v20);
        result = v21 + 48;
        *(a2 + 8) = v21 + 48;
      }

      *(a2 + 8) = result;
      *(result - 24) = ((v18 - a3) >> 1) | ((((v18 - a3) >> 1) + v20) << 32);
      v13 = v14 >= v19;
      v4 = v14 - v19;
      if (!v13)
      {
LABEL_25:
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v10 = &v18[v19];
    }

    while (v4);
  }

  return result;
}

uint64_t std::u16string_view::find[abi:ne200100](unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = &a1[a2];
  if (a4 <= a2)
  {
    v7 = a1;
    do
    {
      v5 = v7;
      if (a2 - a4 != -1)
      {
        v10 = 2 - 2 * a4 + 2 * a2;
        v5 = v7;
        while (*v5 != *a3)
        {
          ++v5;
          v10 -= 2;
          if (!v10)
          {
            goto LABEL_3;
          }
        }
      }

      if (v5 == &v7[a2 - a4 + 1] || v5 == 0)
      {
        break;
      }

      v9 = 0;
      while (a3[v9] == v5[v9])
      {
        if (a4 == ++v9)
        {
          goto LABEL_4;
        }
      }

      v7 = v5 + 1;
      a2 = v4 - (v5 + 1);
    }

    while (a2 >= a4);
  }

LABEL_3:
  v5 = v4;
LABEL_4:
  if (v5 == v4)
  {
    return -1;
  }

  else
  {
    return v5 - a1;
  }
}

uint64_t std::vector<skit::Token>::__emplace_back_slow_path<std::u16string_view &>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(v5);
  }

  v12 = 0;
  v13 = 48 * v2;
  v14 = 48 * v2;
  skit::Token::Token((48 * v2), *a2, *(a2 + 8));
  *&v14 = 48 * v2 + 48;
  v6 = *(a1 + 8);
  v7 = 48 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<skit::Token>,skit::Token*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<skit::Token>::~__split_buffer(&v12);
  return v11;
}

void sub_2998EA36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<skit::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *skit::MorphunTokenizer::MorphunTokenizer(void *a1)
{
  *a1 = &unk_2A1F93C78;
  a1[1] = 0;
  if (!MEMORY[0x2A1C7B550])
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v5 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2998C6000, v5, OS_LOG_TYPE_ERROR, "Skit requires libmorphun.dylib to use the MorphunTokenizer", v7, 2u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2A2FF0](exception, "Skit requires libmorphun.dylib to use the MorphunTokenizer");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  Tokenizer = morphun::TokenizerFactory::createTokenizer();
  v3 = a1[1];
  a1[1] = Tokenizer;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  return a1;
}

void sub_2998EA4CC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  _Unwind_Resume(a1);
}

void skit::MorphunTokenizer::~MorphunTokenizer(skit::MorphunTokenizer *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1F93C78;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  JUMPOUT(0x29C2A3200);
}

{
  v2 = *(this + 1);
  *this = &unk_2A1F93C78;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void skit::MorphunTokenizer::tokenize_str(uint64_t a1, uint64_t a2, void *__src, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (a4 >= 0xB)
  {
    if ((a4 | 3) == 0xB)
    {
      v7 = 13;
    }

    else
    {
      v7 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7);
  }

  v38 = a4;
  if (a4)
  {
    memmove(&__dst, __src, 2 * a4);
  }

  *(&__dst + a4) = 0;
  v8 = (*(**(a1 + 8) + 24))(*(a1 + 8), &__dst);
  v9 = v8[1];
  v10 = v8[2];
  morphun::TokenIterator::TokenIterator();
  v39 = v41;
  while (1)
  {
    v11 = v8[2];
    if (v11)
    {
      morphun::Token::getNext(v11);
      v12 = v8[2];
    }

    morphun::TokenIterator::TokenIterator();
    if (!morphun::TokenIterator::operator!=())
    {
      break;
    }

    v13 = morphun::TokenIterator::operator->();
    if ((morphun::Token::isHead(v13) & 1) == 0)
    {
      v14 = morphun::TokenIterator::operator->();
      if ((morphun::Token::isTail(v14) & 1) == 0)
      {
        v15 = morphun::TokenIterator::operator->();
        Value = morphun::Token::getValue(v15);
        v17 = *(Value + 23);
        v18 = v17 >= 0 ? Value : *Value;
        v19 = v17 >= 0 ? *(Value + 23) : *(Value + 8);
        v20 = morphun::TokenIterator::operator->();
        CleanValue = morphun::Token::getCleanValue(v20);
        v22 = *(CleanValue + 23);
        v23 = v22 >= 0 ? CleanValue : *CleanValue;
        v24 = v22 >= 0 ? *(CleanValue + 23) : *(CleanValue + 8);
        v25 = morphun::TokenIterator::operator->();
        v26 = (*(*v25 + 24))(v25);
        v27 = morphun::TokenIterator::operator->();
        v28 = (*(*v27 + 32))(v27);
        v29 = morphun::TokenIterator::operator->();
        isWhitespace = morphun::Token::isWhitespace(v29);
        v31 = morphun::TokenIterator::operator->();
        isSignificant = morphun::Token::isSignificant(v31);
        *&v41 = v18;
        *(&v41 + 1) = v19;
        v40[0] = v23;
        v40[1] = v24;
        if ((isWhitespace & 1) == 0)
        {
          v33 = isSignificant;
          v35 = *(a2 + 8);
          v34 = *(a2 + 16);
          if (v24)
          {
            if (v35 < v34)
            {
              skit::Token::Token(*(a2 + 8), v23, v24);
              goto LABEL_34;
            }

            v36 = std::vector<skit::Token>::__emplace_back_slow_path<std::u16string_view &>(a2, v40);
          }

          else if (v35 >= v34)
          {
            v36 = std::vector<skit::Token>::__emplace_back_slow_path<std::u16string_view &>(a2, &v41);
          }

          else
          {
            skit::Token::Token(*(a2 + 8), v18, v19);
LABEL_34:
            v36 = v35 + 48;
            *(a2 + 8) = v35 + 48;
          }

          *(a2 + 8) = v36;
          *(v36 - 24) = v26 | (v28 << 32);
          if ((v33 & 1) == 0)
          {
            *(v36 - 8) &= 0xFFFCu;
            *(v36 - 16) = 0;
          }
        }
      }
    }

    morphun::TokenIterator::operator++();
  }

  (*(*v8 + 16))(v8);
  if (v38 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2998EA904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  (*(*v15 + 16))(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::strip_bidi(_WORD *a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    v5 = 2 * a3;
    v6 = a1;
    do
    {
      v7 = *a2;
      v8 = vdupq_n_s16(v7);
      if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v8, xmmword_2998EB800), vceqq_s16(v8, xmmword_2998EB810))) & 0x8000) == 0)
      {
        *v6++ = v7;
      }

      ++a2;
      v5 -= 2;
    }

    while (v5);
    if (a4)
    {
      *v6 = 0;
    }

    return v6 - a1;
  }

  return v4;
}

unint64_t skit::strip_bidi@<X0>(void *__src@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0xB)
  {
    if ((a2 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (a2 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v5);
  }

  a3[23] = a2;
  if (a2)
  {
    memmove(a3, __src, 2 * a2);
  }

  *&a3[2 * a2] = 0;
  return skit::strip_bidi(a3);
}

void sub_2998EAA80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__CFString *skitRemoveBidiCharacters(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_36;
  }

  Length = CFStringGetLength(v1);
  if (!Length)
  {
    goto LABEL_31;
  }

  CharactersPtr = CFStringGetCharactersPtr(v2);
  if (!CharactersPtr)
  {
    v9 = malloc_type_malloc(2 * Length + 2, 0x1000040BDFB0063uLL);
    if (!v9)
    {
      goto LABEL_36;
    }

    v29.location = 0;
    v29.length = Length;
    CFStringGetCharacters(v2, v29, v9);
    v10 = &v9[Length];
    v11 = 2 * Length - 2;
    v12 = v9;
    while (1)
    {
      v13 = vld1q_dup_s16(v12);
      if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v13, xmmword_2998EB800), vceqq_s16(v13, xmmword_2998EB810))) & 0x8000) != 0)
      {
        break;
      }

      ++v12;
      v11 -= 2;
      if (v12 == v10)
      {
        goto LABEL_28;
      }
    }

    if (v12 == v10 || v12 + 1 == v10)
    {
      v10 = v12;
    }

    else
    {
      v22 = 1;
      v10 = v12;
      do
      {
        v23 = v12[v22];
        v24 = vdupq_n_s16(v23);
        if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v24, xmmword_2998EB800), vceqq_s16(v24, xmmword_2998EB810))) & 0x8000) == 0)
        {
          *v10++ = v23;
        }

        ++v22;
        v11 -= 2;
      }

      while (v11);
    }

LABEL_28:
    *v10 = 0;
    v25 = (v10 - v9) >> 1;
    if (v25 < Length)
    {
      v21 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithCharactersNoCopy:v9 length:v25 freeWhenDone:1];
LABEL_32:
      v26 = v21;
      goto LABEL_33;
    }

    free(v9);
LABEL_31:
    v21 = v2;
    goto LABEL_32;
  }

  if (Length < 1)
  {
    goto LABEL_31;
  }

  v5 = 0;
  v6 = 2 * Length - 2;
  while (1)
  {
    v7 = &CharactersPtr[v5];
    v8 = vld1q_dup_s16(v7);
    if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v8, xmmword_2998EB800), vceqq_s16(v8, xmmword_2998EB810))) & 0x8000) != 0)
    {
      break;
    }

    ++v5;
    v6 -= 2;
    if (Length == v5)
    {
      goto LABEL_31;
    }
  }

  v14 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  v15 = v14;
  if (v14)
  {
    memcpy(v14, CharactersPtr, 2 * v5);
    v16 = (v7 + 1);
    v17 = &CharactersPtr[Length];
    v18 = &v15[2 * v5];
    if (v7 + 1 != v17)
    {
      do
      {
        v19 = *v16;
        v20 = vdupq_n_s16(v19);
        if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v20, xmmword_2998EB800), vceqq_s16(v20, xmmword_2998EB810))) & 0x8000) == 0)
        {
          *v18 = v19;
          v18 += 2;
        }

        ++v16;
        v6 -= 2;
      }

      while (v6);
    }

    *v18 = 0;
    v21 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithCharactersNoCopy:v15 length:(v18 - v15) >> 1 freeWhenDone:1];
    goto LABEL_32;
  }

LABEL_36:
  v26 = 0;
LABEL_33:

  return v26;
}

void skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>::FieldMatchImpl()
{
    ;
  }
}

void skit::internal::FieldMatchesImpl<skit::SpanMatchV3>::clear()
{
    ;
  }
}

void skit::internal::AliasSpanMatchImpl<skit::AliasMatch,skit::SpanMatchV3>::AliasSpanMatchImpl()
{
    ;
  }
}

void skit::internal::MergedFieldMatchImpl<skit::internal::FieldMatchImpl<skit::internal::FieldMatchesImpl<skit::SpanMatchV3>>>::merge()
{
    ;
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAB0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAB8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAC0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAC8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2A1C6FAE8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}