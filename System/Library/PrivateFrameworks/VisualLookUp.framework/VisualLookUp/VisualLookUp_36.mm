void faiss::IndexIVFFlatDedup::IndexIVFFlatDedup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  faiss::IndexIVF::IndexIVF(a1, a2, a3, a4, 4 * a3, a5);
}

{
  faiss::IndexIVF::IndexIVF(a1, a2, a3, a4, 4 * a3, a5);
}

void faiss::IndexIVFFlatDedup::train(faiss::IndexIVFFlatDedup *this, uint64_t a2, const float *a3)
{
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
  operator new[]();
}

void sub_1D9C47A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1DA73F3F0](v5, 0x1000C8052888210);
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void faiss::IndexIVFFlatDedup::add_with_ids(faiss::IndexIVFFlatDedup *this, uint64_t a2, const float *a3, const uint64_t *a4)
{
  if (*(this + 25))
  {
    if (*(this + 14))
    {
      if (!*(this + 40))
      {
        operator new[]();
      }

      memset(&v12, 0, sizeof(v12));
      v8 = snprintf(0, 0, "Error: '%s' failed: IVFFlatDedup not implemented with direct_map", "direct_map.no()");
      std::string::resize(&v12, v8 + 1, 0);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12.__r_.__value_.__r.__words[0];
      }

      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v12.__r_.__value_.__l.__size_;
      }

      snprintf(v9, size, "Error: '%s' failed: IVFFlatDedup not implemented with direct_map", "direct_map.no()");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v12, "virtual void faiss::IndexIVFFlatDedup::add_with_ids(idx_t, const float *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 264);
    }

    faiss::IndexIVFFlatDedup::add_with_ids();
  }

  memset(&v12, 0, sizeof(v12));
  v4 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
  std::string::resize(&v12, v4 + 1, 0);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v12;
  }

  else
  {
    v5 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = v12.__r_.__value_.__l.__size_;
  }

  snprintf(v5, v6, "Error: '%s' failed", "is_trained");
  v7 = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(v7, &v12, "virtual void faiss::IndexIVFFlatDedup::add_with_ids(idx_t, const float *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 261);
}

void sub_1D9C47D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::IndexIVFFlatDedup::search_preassigned(std::string::size_type a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t *a5, float *a6, _DWORD *a7, void *a8, char a9, uint64_t a10)
{
  if (a9)
  {
    memset(&v40, 0, sizeof(v40));
    v28 = snprintf(0, 0, "Error: '%s' failed: store_pairs not supported in IVFDedup", "!store_pairs");
    std::string::resize(&v40, v28 + 1, 0);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v40;
    }

    else
    {
      v29 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    snprintf(v29, size, "Error: '%s' failed: store_pairs not supported in IVFDedup", "!store_pairs");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v40, "virtual void faiss::IndexIVFFlatDedup::search_preassigned(idx_t, const float *, idx_t, const idx_t *, const float *, float *, idx_t *, BOOL, const IVFSearchParameters *, IndexIVFStats *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 342);
  }

  v10 = a8;
  v11 = a7;
  faiss::IndexIVF::search_preassigned(a1, a2, a3, a4, a5, a6, a7, a8, 0, a10, 0);
  std::vector<long long>::vector[abi:ne200100](&v40, a4);
  std::vector<float>::vector[abi:ne200100](__p, a4);
  v34 = a2;
  if (a2 >= 1)
  {
    v37 = v11;
    v38 = 0;
    v35 = 8 * a4;
    v36 = 4 * a4;
    v15 = v10;
    v32 = v11;
    v33 = v10;
    do
    {
      if (a4 >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = &v10[v38 * a4];
        v20 = &v11[v38 * a4];
        while (!std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>((a1 + 232), &v15[v17]))
        {
          --v18;
          ++v17;
          ++v16;
          if (!(a4 + v18))
          {
            goto LABEL_18;
          }
        }

        v21 = -v18;
        v22 = v21;
        if (v21 >= a4)
        {
          v26 = v40.__r_.__value_.__r.__words[0];
          v27 = __p[0];
        }

        else
        {
          do
          {
            v23 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>((a1 + 232), &v19[v21]);
            v25 = v20[v21];
            v26 = v40.__r_.__value_.__r.__words[0];
            *(v40.__r_.__value_.__r.__words[0] + 8 * v22) = v19[v21];
            v27 = __p[0];
            *(__p[0] + v22++) = v25;
            if (v22 < a4)
            {
              while (v23 != v24)
              {
                *(v26 + 8 * v22) = v23[3];
                v27[v22++] = v25;
                if (v22 >= a4)
                {
                  break;
                }

                v23 = *v23;
              }
            }

            ++v21;
          }

          while (v22 < a4);
        }

        memcpy(&v15[v17], (v26 + v17 * 8), v35 - v17 * 8);
        memcpy(&v37[v16], &v27[v16], v36 - v16 * 4);
        v11 = v32;
        v10 = v33;
      }

LABEL_18:
      v37 = (v37 + v36);
      ++v38;
      v15 = (v15 + v35);
    }

    while (v38 != v34);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v40.__r_.__value_.__r.__words[0])
  {
    v40.__r_.__value_.__l.__size_ = v40.__r_.__value_.__r.__words[0];
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_1D9C47FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVFFlatDedup::remove_ids(uint64_t a1, unsigned int (***a2)(void, uint64_t))
{
  memset(v51, 0, sizeof(v51));
  v52 = 1065353216;
  __src = 0;
  v49 = 0;
  v50 = 0;
  v4 = *(a1 + 248);
  if (!v4)
  {
    goto LABEL_25;
  }

  do
  {
    while (1)
    {
      v5 = (**a2)(a2, v4[2]);
      v6 = v4[3];
      v7 = **a2;
      if (v5)
      {
        break;
      }

      if (v7(a2, v6))
      {
        goto LABEL_22;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    if (((v7)(a2, v6) & 1) == 0)
    {
      if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v51, v4 + 2))
      {
        __p.__r_.__value_.__r.__words[0] = (v4 + 2);
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v51, v4 + 2)[3];
        v9 = v4[3];
        v10 = v49;
        if (v49 >= v50)
        {
          v13 = __src;
          v14 = v49 - __src;
          v15 = (v49 - __src) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v17 = v50 - __src;
          if ((v50 - __src) >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long long,long long>>>(&__src, v18);
          }

          v19 = (16 * v15);
          *v19 = v8;
          v19[1] = v9;
          v11 = 16 * v15 + 16;
          memcpy(0, v13, v14);
          v20 = __src;
          __src = 0;
          v49 = v11;
          v50 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v49 = v8;
          *(v10 + 1) = v9;
          v11 = (v10 + 16);
        }

        v49 = v11;
      }

      else
      {
        v12 = v4[3];
        __p.__r_.__value_.__r.__words[0] = (v4 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v51, v4 + 2)[3] = v12;
      }
    }

LABEL_22:
    v4 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::erase((a1 + 232), v4);
  }

  while (v4);
LABEL_23:
  if (__src != v49)
  {
    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_multi<std::pair<long long,long long> &>();
  }

LABEL_25:
  if (*(a1 + 160))
  {
    memset(&__p, 0, sizeof(__p));
    v36 = snprintf(0, 0, "Error: '%s' failed: direct map remove not implemented", "direct_map.no()");
    std::string::resize(&__p, v36 + 1, 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    snprintf(p_p, size, "Error: '%s' failed: direct map remove not implemented", "direct_map.no()");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &__p, "virtual size_t faiss::IndexIVFFlatDedup::remove_ids(const IDSelector &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 416);
  }

  std::vector<long long>::vector[abi:ne200100](&__p, *(a1 + 48));
  if (!*(a1 + 48))
  {
    goto LABEL_45;
  }

  v21 = 0;
  do
  {
    v22 = (***(a1 + 112))(*(a1 + 112), v21);
    v44 = *(a1 + 112);
    v45 = (*(*v44 + 16))(v44, v21);
    v46 = v21;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = v22;
      while (1)
      {
        if ((**a2)(a2, *(v45 + 8 * v23)))
        {
          v41 = *(v45 + 8 * v23);
          if (!std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(v51, &v41))
          {
            --v24;
            v27 = *(a1 + 112);
            v28 = (*(*v27 + 40))(v27, v21, v24);
            v41 = *(a1 + 112);
            v42 = (*(*v41 + 48))(v41, v21, v24);
            v43 = v21;
            (*(*v27 + 80))(v27, v21, v23, v28, v42);
            faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v41);
            goto LABEL_34;
          }

          v25 = *(a1 + 112);
          v40 = *(v45 + 8 * v23);
          v41 = &v40;
          v26 = std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v51, &v40)[3];
          v41 = *(a1 + 112);
          v42 = (*(*v41 + 48))(v41, v21, v23);
          v43 = v21;
          (*(*v25 + 80))(v25, v21, v23, v26, v42);
          faiss::InvertedLists::ScopedCodes::~ScopedCodes(&v41);
        }

        ++v23;
LABEL_34:
        if (v23 >= v24)
        {
          goto LABEL_38;
        }
      }
    }

    v24 = v22;
LABEL_38:
    *(__p.__r_.__value_.__r.__words[0] + 8 * v21) = v22 - v24;
    faiss::InvertedLists::ScopedIds::~ScopedIds(&v44);
    ++v21;
    v29 = *(a1 + 48);
  }

  while (v21 < v29);
  if (!v29)
  {
LABEL_45:
    v31 = 0;
    goto LABEL_46;
  }

  v30 = 0;
  v31 = 0;
  do
  {
    v32 = *(__p.__r_.__value_.__r.__words[0] + 8 * v30);
    if (v32 >= 1)
    {
      v33 = *(a1 + 112);
      v34 = (**v33)(v33, v30);
      (*(*v33 + 96))(v33, v30, v34 - *(__p.__r_.__value_.__r.__words[0] + 8 * v30));
      v31 += v32;
      v29 = *(a1 + 48);
    }

    ++v30;
  }

  while (v30 < v29);
LABEL_46:
  *(a1 + 16) -= v31;
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (__src)
  {
    v49 = __src;
    operator delete(__src);
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(v51);
  return v31;
}

void sub_1D9C486B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v26);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(&a26);
  _Unwind_Resume(a1);
}

void faiss::IndexIVFFlatDedup::range_search(faiss::IndexIVFFlatDedup *this, uint64_t a2, const float *a3, float a4, faiss::RangeSearchResult *a5)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v6, "not implemented");
  faiss::FaissException::FaissException(exception, v6, "virtual void faiss::IndexIVFFlatDedup::range_search(idx_t, const float *, float, RangeSearchResult *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 464);
}

void sub_1D9C487E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::IndexIVFFlatDedup::update_vectors(faiss::IndexIVFFlatDedup *this, int a2, const uint64_t *a3, const float *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "not implemented");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::IndexIVFFlatDedup::update_vectors(int, const idx_t *, const float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 468);
}

void sub_1D9C4889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::IndexIVFFlatDedup::reconstruct_from_offset(faiss::IndexIVFFlatDedup *this, uint64_t a2, uint64_t a3, float *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "not implemented");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::IndexIVFFlatDedup::reconstruct_from_offset(int64_t, int64_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFFlat.cpp", 473);
}

void sub_1D9C48954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::IndexIVFFlat::~IndexIVFFlat(faiss::IndexIVFFlat *this)
{
  faiss::IndexIVF::~IndexIVF(this);

  JUMPOUT(0x1DA73F410);
}

void faiss::IndexIVFFlatDedup::~IndexIVFFlatDedup(faiss::IndexIVFFlatDedup *this)
{
  *this = &unk_1F5537F80;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(this + 232);

  faiss::IndexIVF::~IndexIVF(this);
}

{
  *this = &unk_1F5537F80;
  std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(this + 232);
  faiss::IndexIVF::~IndexIVF(this);

  JUMPOUT(0x1DA73F410);
}

uint64_t faiss::anonymous namespace::IVFFlatScanner<(faiss::MetricType)0,faiss::CMin<float,long long>>::scan_codes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = a5 - 1;
  v16 = a6 - 8;
  do
  {
    v17 = faiss::fvec_inner_product(*(a1 + 24), (a3 + 4 * *(a1 + 8) * v14), *(a1 + 8));
    if (*a5 >= v17)
    {
      goto LABEL_20;
    }

    if (*(a1 + 16) == 1)
    {
      v18 = v14 | (*(a1 + 32) << 32);
    }

    else
    {
      v18 = *(a4 + 8 * v14);
    }

    if (a7 < 2)
    {
      v19 = 1;
      goto LABEL_19;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a7)
      {
        v23 = v15[a7];
        goto LABEL_13;
      }

      v23 = v15[v21];
      v24 = a5[v21];
      if (v23 >= v24)
      {
        break;
      }

LABEL_13:
      v24 = v23;
      v25 = v16;
      v20 = v21;
      if (v23 > v17)
      {
        goto LABEL_18;
      }

LABEL_16:
      v15[v22] = v24;
      *(v16 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a7)
      {
        goto LABEL_19;
      }
    }

    v25 = a6;
    if (v24 <= v17)
    {
      goto LABEL_16;
    }

LABEL_18:
    v19 = v22;
LABEL_19:
    v15[v19] = v17;
    *(v16 + 8 * v19) = v18;
    ++v13;
LABEL_20:
    ++v14;
  }

  while (v14 != a2);
  return v13;
}

void faiss::anonymous namespace::IVFFlatScanner<(faiss::MetricType)0,faiss::CMin<float,long long>>::scan_codes_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, faiss::RangeQueryResult *a5, float a6)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v13 = faiss::fvec_inner_product(*(a1 + 24), (a3 + 4 * *(a1 + 8) * i), *(a1 + 8));
      if (v13 > a6)
      {
        if (*(a1 + 16) == 1)
        {
          v14 = i | (*(a1 + 32) << 32);
        }

        else
        {
          v14 = *(a4 + 8 * i);
        }

        faiss::RangeQueryResult::add(a5, v13, v14);
      }
    }
  }
}

uint64_t faiss::anonymous namespace::IVFFlatScanner<(faiss::MetricType)1,faiss::CMax<float,long long>>::scan_codes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = a5 - 1;
  v16 = a6 - 8;
  do
  {
    v17 = faiss::fvec_L2sqr(*(a1 + 24), (a3 + 4 * *(a1 + 8) * v14), *(a1 + 8));
    if (*a5 <= v17)
    {
      goto LABEL_20;
    }

    if (*(a1 + 16) == 1)
    {
      v18 = v14 | (*(a1 + 32) << 32);
    }

    else
    {
      v18 = *(a4 + 8 * v14);
    }

    if (a7 < 2)
    {
      v19 = 1;
      goto LABEL_19;
    }

    v20 = 3;
    v21 = 2;
    v22 = 1;
    while (1)
    {
      if (v21 == a7)
      {
        v23 = v15[a7];
        goto LABEL_13;
      }

      v23 = v15[v21];
      v24 = a5[v21];
      if (v23 <= v24)
      {
        break;
      }

LABEL_13:
      v24 = v23;
      v25 = v16;
      v20 = v21;
      if (v23 < v17)
      {
        goto LABEL_18;
      }

LABEL_16:
      v15[v22] = v24;
      *(v16 + 8 * v22) = *(v25 + 8 * v21);
      v19 = v20;
      v21 = 2 * v20;
      v20 = (2 * v20) | 1;
      v22 = v19;
      if (v21 > a7)
      {
        goto LABEL_19;
      }
    }

    v25 = a6;
    if (v24 >= v17)
    {
      goto LABEL_16;
    }

LABEL_18:
    v19 = v22;
LABEL_19:
    v15[v19] = v17;
    *(v16 + 8 * v19) = v18;
    ++v13;
LABEL_20:
    ++v14;
  }

  while (v14 != a2);
  return v13;
}

void faiss::anonymous namespace::IVFFlatScanner<(faiss::MetricType)1,faiss::CMax<float,long long>>::scan_codes_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, faiss::RangeQueryResult *a5, float a6)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v13 = faiss::fvec_L2sqr(*(a1 + 24), (a3 + 4 * *(a1 + 8) * i), *(a1 + 8));
      if (v13 < a6)
      {
        if (*(a1 + 16) == 1)
        {
          v14 = i | (*(a1 + 32) << 32);
        }

        else
        {
          v14 = *(a4 + 8 * i);
        }

        faiss::RangeQueryResult::add(a5, v13, v14);
      }
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__rehash<false>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && v4[2] == *a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long long,long long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
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

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
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

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void faiss::Index::range_search(faiss::Index *this, uint64_t a2, const float *a3, float a4, faiss::RangeSearchResult *a5)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v6, "range search not implemented");
  faiss::FaissException::FaissException(exception, v6, "virtual void faiss::Index::range_search(idx_t, const float *, float, RangeSearchResult *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 27);
}

void sub_1D9C4997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::assign(faiss::Index *this, uint64_t a2, const float *a3, uint64_t *a4, uint64_t a5)
{
  std::vector<float>::vector[abi:ne200100](__p, a5 * a2);
  (*(*this + 40))(this, a2, a3, a5, __p[0], a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9C49A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::Index::add_with_ids(faiss::Index *this, uint64_t a2, const float *a3, const uint64_t *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "add_with_ids not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::Index::add_with_ids(idx_t, const float *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 39);
}

void sub_1D9C49AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::remove_ids()
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v1, "remove_ids not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v1, "virtual size_t faiss::Index::remove_ids(const IDSelector &)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 43);
}

void sub_1D9C49BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::reconstruct(faiss::Index *this, uint64_t a2, float *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v4, "reconstruct not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v4, "virtual void faiss::Index::reconstruct(idx_t, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 48);
}

void sub_1D9C49C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

int *faiss::Index::reconstruct_n(int *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 1)
  {
    v7 = this;
    for (i = 0; i != a3; ++i)
    {
      this = (*(*v7 + 80))(v7, a2 + i, &a4[i * v7[2]]);
    }
  }

  return this;
}

void *faiss::Index::search_and_reconstruct(faiss::Index *this, uint64_t a2, const float *a3, uint64_t a4, float *a5, uint64_t *a6, float *a7)
{
  if (a4 <= 0)
  {
    memset(&v21, 0, sizeof(v21));
    v17 = snprintf(0, 0, "Error: '%s' failed", "k > 0");
    std::string::resize(&v21, v17 + 1, 0);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v21;
    }

    else
    {
      v18 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    snprintf(v18, size, "Error: '%s' failed", "k > 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v21, "virtual void faiss::Index::search_and_reconstruct(idx_t, const float *, idx_t, float *, idx_t *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 64);
  }

  result = (*(*this + 40))(this, a2, a3);
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v13;
      v16 = a4;
      do
      {
        if (a6[v15] < 0)
        {
          result = memset(&a7[v15 * *(this + 2)], 255, 4 * *(this + 2));
        }

        else
        {
          result = (*(*this + 80))(this);
        }

        ++v15;
        --v16;
      }

      while (v16);
      ++v14;
      v13 += a4;
    }

    while (v14 != a2);
  }

  return result;
}

void sub_1D9C49EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float faiss::Index::compute_residual(faiss::Index *this, float *a2, float *a3, uint64_t a4)
{
  (*(*this + 80))(this, a4);
  v8 = *(this + 2);
  if (v8)
  {
    do
    {
      v9 = *a2++;
      result = v9 - *a3;
      *a3++ = result;
      --v8;
    }

    while (v8);
  }

  return result;
}

int *faiss::Index::compute_residual_n(int *this, uint64_t a2, const float *a3, float *a4, const uint64_t *a5)
{
  if (a2 >= 1)
  {
    v9 = this;
    for (i = 0; i != a2; ++i)
    {
      this = (*(*v9 + 104))(v9, &a3[i * v9[2]], &a4[i * v9[2]], a5[i]);
    }
  }

  return this;
}

void faiss::Index::sa_code_size(faiss::Index *this)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "standalone codec not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v2, "virtual size_t faiss::Index::sa_code_size() const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 101);
}

void sub_1D9C4A0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::sa_encode(faiss::Index *this, uint64_t a2, const float *a3, unsigned __int8 *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "standalone codec not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::Index::sa_encode(idx_t, const float *, uint8_t *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 105);
}

void sub_1D9C4A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::sa_decode(faiss::Index *this, uint64_t a2, const unsigned __int8 *a3, float *a4)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v5, "standalone codec not implemented for this type of index");
  faiss::FaissException::FaissException(exception, v5, "virtual void faiss::Index::sa_decode(idx_t, const uint8_t *, float *) const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 109);
}

void sub_1D9C4A214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void faiss::Index::get_distance_computer(faiss::Index *this)
{
  if (*(this + 7) == 1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v2, "get_distance_computer() not implemented");
  faiss::FaissException::FaissException(exception, v2, "virtual DistanceComputer *faiss::Index::get_distance_computer() const", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/Index.cpp", 148);
}

void sub_1D9C4A350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

float faiss::anonymous namespace::GenericDistanceComputer::operator()(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 16) + 80))(*(a1 + 16), a2, *(a1 + 24));
  v3 = *(a1 + 48);
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);

  return faiss::fvec_L2sqr(v3, v4, v5);
}

float faiss::anonymous namespace::GenericDistanceComputer::symmetric_dis(faiss::_anonymous_namespace_::GenericDistanceComputer *this, uint64_t a2, uint64_t a3)
{
  (*(**(this + 2) + 80))(*(this + 2), a2, *(this + 3));
  (*(**(this + 2) + 80))(*(this + 2), a3, *(this + 3) + 4 * *(this + 1));
  v5 = *(this + 3);
  v6 = *(this + 1);

  return faiss::fvec_L2sqr(&v5[v6], v5, v6);
}

void faiss::anonymous namespace::GenericDistanceComputer::~GenericDistanceComputer(faiss::_anonymous_namespace_::GenericDistanceComputer *this)
{
  *this = &unk_1F5538218;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5538218;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA73F410);
}

void sub_1D9C4A6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  free(v15[53]);
  faiss::ProductQuantizer::~ProductQuantizer(v16);
  faiss::IndexIVF::~IndexIVF(v15);
  _Unwind_Resume(a1);
}

void faiss::ProductQuantizer::~ProductQuantizer(faiss::ProductQuantizer *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }
}

void faiss::IndexIVFPQ::train_residual_o(faiss::IndexIVFPQ *this, int *a2, const float *a3, float *a4)
{
  v15 = a2;
  v7 = faiss::fvecs_maybe_subsample(*(this + 2), &v15, (*(this + 35) * *(this + 79)), a3, *(this + 24), *(this + 80));
  v8 = v7;
  if (v7 == a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (*(this + 232) == 1)
  {
    if (*(this + 24) == 1)
    {
      puts("computing residuals");
    }

    operator new[]();
  }

  v10 = *(this + 24);
  if (v10 == 1)
  {
    printf("training %zdx%zd product quantizer on %lld vectors in %dD\n", *(this + 31), *(this + 35), v15, *(this + 2));
    LOBYTE(v10) = *(this + 24);
  }

  *(this + 288) = v10;
  faiss::ProductQuantizer::train((this + 240), v15, v8);
  if (*(this + 392) != 1)
  {
    goto LABEL_17;
  }

  if (*(this + 24) == 1)
  {
    puts("doing polysemous training for PQ");
  }

  faiss::PolysemousTraining::PolysemousTraining(v12);
  v11 = *(this + 50) ? *(this + 50) : v12;
  faiss::PolysemousTraining::optimize_pq_for_hamming(v11, (this + 240), v15, v8);
  if (v14 < 0)
  {
    operator delete(__p);
    if (a4)
    {
LABEL_18:
      operator new[]();
    }
  }

  else
  {
LABEL_17:
    if (a4)
    {
      goto LABEL_18;
    }
  }

  if (*(this + 232) == 1)
  {
    faiss::initialize_IVFPQ_precomputed_table(this + 420, *(this + 5));
  }

  if (v9)
  {
    MEMORY[0x1DA73F3F0](v9, 0x1000C8052888210);
  }
}

void sub_1D9C4AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (v28)
    {
LABEL_8:
      MEMORY[0x1DA73F3F0](v28, v26);
      if (!v27)
      {
LABEL_7:
        _Unwind_Resume(a1);
      }

LABEL_6:
      MEMORY[0x1DA73F3F0](v27, v26);
      goto LABEL_7;
    }
  }

  else if (v28)
  {
    goto LABEL_8;
  }

  if (!v27)
  {
    goto LABEL_7;
  }

  goto LABEL_6;
}

void faiss::IndexIVFPQ::encode(faiss::IndexIVFPQ *this, uint64_t a2, const float *a3, unsigned __int8 *a4)
{
  if (*(this + 232) == 1)
  {
    std::vector<float>::vector[abi:ne200100](__p, *(this + 2));
    (*(**(this + 5) + 104))(*(this + 5), a3, __p[0], a2);
    faiss::ProductQuantizer::compute_code(this + 240, __p[0], a4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = this + 240;

    faiss::ProductQuantizer::compute_code(v8, a3, a4);
  }
}

void sub_1D9C4ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::IndexIVFPQ::encode_multiple(faiss::IndexIVFPQ *this, uint64_t a2, uint64_t *a3, const float *a4, unsigned __int8 *a5, int a6)
{
  if (a6)
  {
    (*(**(this + 5) + 56))(*(this + 5), a2, a4, a3, 1);
  }

  v11 = *(*this + 160);

  return v11(this, a2, a4, a3, a5, 0);
}

void faiss::IndexIVFPQ::decode_multiple(faiss::IndexIVFPQ *this, uint64_t a2, const uint64_t *a3, const unsigned __int8 *a4, float *a5)
{
  faiss::ProductQuantizer::decode(this + 60, a4, a5, a2);
  if (*(this + 232) == 1)
  {
    std::vector<float>::vector[abi:ne200100](__p, *(this + 2));
    if (a2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        (*(**(this + 5) + 80))(*(this + 5), a3[v10], __p[0]);
        v11 = *(this + 2);
        if (v11)
        {
          v12 = __p[0];
          v13 = (a5 + v9 * v11);
          do
          {
            v14 = *v12++;
            *v13 = v14 + *v13;
            ++v13;
            --v11;
          }

          while (v11);
        }

        ++v10;
        v9 += 4;
      }

      while (v10 != a2);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1D9C4AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::IndexIVFPQ::add_core_o(faiss::IndexIVFPQ *this, uint64_t a2, const float *a3, const uint64_t *a4, float *a5, const uint64_t *a6)
{
  v6 = a6;
  v7 = a4;
  v34 = *MEMORY[0x1E69E9840];
  if (a2 <= 0x8000)
  {
    faiss::InterruptCallback::check(this);
    v24 = faiss::DirectMap::check_can_add(this + 40, v7);
    if (*(this + 25))
    {
      faiss::getmillisecs(v24);
      if (v6)
      {
        faiss::getmillisecs(v25);
        operator new[]();
      }

      operator new[]();
    }

    memset(&__str, 0, sizeof(__str));
    v26 = snprintf(0, 0, "Error: '%s' failed", "is_trained");
    std::string::resize(&__str, v26 + 1, 0);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    snprintf(p_str, size, "Error: '%s' failed", "is_trained");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &__str, "void faiss::IndexIVFPQ::add_core_o(idx_t, const float *, const idx_t *, float *, const idx_t *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 290);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0x8000;
  do
  {
    v14 = v11 + 0x8000;
    if (a2 >= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = a2;
    }

    if (v14 >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = v11 + 0x8000;
    }

    if (*(this + 24) == 1)
    {
      printf("IndexIVFPQ::add_core_o: adding %lld:%lld / %lld\n", v11, v16, a2);
    }

    v17 = v11 * *(this + 2);
    v18 = &a3[v17];
    if (a4)
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    v20 = &a5[v17];
    if (a5)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (a6)
    {
      v22 = v6;
    }

    else
    {
      v22 = 0;
    }

    result = faiss::IndexIVFPQ::add_core_o(this, v15 + v10, v18, v19, v21, v22);
    v6 += 0x8000;
    v7 += 0x8000;
    v12 += 0x8000;
    v10 -= 0x8000;
    v11 += 0x8000;
  }

  while (v14 < a2);
  return result;
}

void sub_1D9C4B3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_free_exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVFPQ::encode_vectors(faiss **this, int64_t a2, const float *a3, const float *a4, unsigned __int8 *a5, int a6)
{
  if (*(this + 232) == 1)
  {
    faiss::compute_residuals(this[5], a2, a3, a4, a5);
  }

  result = faiss::ProductQuantizer::compute_codes((this + 30), a3, a5, a2);
  if (a6)
  {
    result = faiss::Level1Quantizer::coarse_code_size((this + 5));
    v12 = a2 - 1;
    if (a2 >= 1)
    {
      v13 = result;
      do
      {
        v14 = this[16];
        v15 = &a5[(v14 + v13) * v12];
        memmove(&v15[v13], &a5[v14 * v12], v14);
        result = faiss::Level1Quantizer::encode_listno((this + 5), *&a4[2 * v12], v15);
        v16 = v12-- + 1;
      }

      while (v16 > 1);
    }
  }

  return result;
}

void sub_1D9C4B598(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1DA73F3F0](v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void faiss::IndexIVFPQ::sa_decode(faiss::IndexIVFPQ *this, uint64_t a2, const unsigned __int8 *a3, float *a4)
{
  v8 = faiss::Level1Quantizer::coarse_code_size((this + 40));
  std::vector<float>::vector[abi:ne200100](__p, *(this + 2));
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &a3[(*(this + 16) + v8) * v10];
      v12 = faiss::Level1Quantizer::decode_listno((this + 40), v11);
      v13 = *(this + 2);
      faiss::ProductQuantizer::decode(this + 60, &v11[v8], &a4[v10 * v13]);
      if (*(this + 232) == 1)
      {
        (*(**(this + 5) + 80))(*(this + 5), v12, __p[0]);
        v14 = *(this + 2);
        if (v14)
        {
          v15 = __p[0];
          v16 = (a4 + v9 * v13);
          do
          {
            v17 = *v15++;
            *v16 = v17 + *v16;
            ++v16;
            --v14;
          }

          while (v14);
        }
      }

      ++v10;
      v9 += 4;
    }

    while (v10 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1D9C4B7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::IndexIVFPQ::reconstruct_from_offset(faiss::IndexIVFPQ *this, uint64_t a2, uint64_t a3, float *a4)
{
  v7 = (*(**(this + 14) + 48))(*(this + 14));
  if (*(this + 232) == 1)
  {
    std::vector<float>::vector[abi:ne200100](__p, *(this + 2));
    (*(**(this + 5) + 80))(*(this + 5), a2, __p[0]);
    faiss::ProductQuantizer::decode(this + 60, v7, a4);
    v8 = *(this + 2);
    v9 = __p[0];
    if (v8 < 1)
    {
      if (!__p[0])
      {
        return;
      }
    }

    else
    {
      v10 = __p[0];
      do
      {
        v11 = *v10++;
        *a4 = v11 + *a4;
        ++a4;
        --v8;
      }

      while (v8);
    }

    __p[1] = v9;
    operator delete(v9);
  }

  else
  {

    faiss::ProductQuantizer::decode(this + 60, v7, a4);
  }
}

void sub_1D9C4B918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::IndexIVFPQ::scanListWithTable(uint64_t this, uint64_t a2, const unsigned __int8 *a3, faiss::KnnSearchResultsMetricBased *a4, float a5, const float *a6)
{
  if (a2)
  {
    v11 = this;
    for (i = 0; i != a2; ++i)
    {
      if (*(v11 + 256) != 8)
      {
        faiss::decode<faiss::PQDecoder8>();
      }

      v13 = *(v11 + 248);
      v14 = a5;
      if (v13)
      {
        v15 = a6;
        v14 = a5;
        v16 = a3;
        do
        {
          v17 = *v16++;
          v14 = v14 + v15[v17];
          v15 += *(v11 + 280);
          --v13;
        }

        while (v13);
      }

      a3 += *(v11 + 272);
      this = faiss::KnnSearchResultsMetricBased::add(a4, i, v14);
    }
  }

  return this;
}

uint64_t faiss::KnnSearchResultsMetricBased::add(uint64_t this, uint64_t a2, float a3)
{
  v3 = *(this + 48);
  if (v3 != 1)
  {
    if (v3)
    {
      return this;
    }

    v4 = *(this + 24);
    if (*v4 >= a3)
    {
      return this;
    }

    v5 = *(this + 8);
    if (v5)
    {
      v6 = *(v5 + 8 * a2);
    }

    else
    {
      v6 = a2 | (*this << 32);
    }

    v9 = *(this + 16);
    v10 = *(this + 32);
    v11 = v4 - 1;
    v12 = v10 - 8;
    if (v9 >= 2)
    {
      v13 = 1;
      v14 = 2;
      v15 = 3;
      while (1)
      {
        if (v14 == v9)
        {
          v16 = v11[v9];
        }

        else
        {
          v16 = v11[v14];
          v17 = v4[v14];
          if (v16 >= v17)
          {
            v18 = v10;
            if (v17 > a3)
            {
              goto LABEL_32;
            }

            goto LABEL_18;
          }
        }

        v17 = v16;
        v18 = v10 - 8;
        v15 = v14;
        if (v16 > a3)
        {
          goto LABEL_32;
        }

LABEL_18:
        v11[v13] = v17;
        *(v12 + 8 * v13) = *(v18 + 8 * v14);
        v19 = v15;
        v14 = 2 * v15;
        v15 = (2 * v15) | 1;
        v13 = v19;
        if (v14 > v9)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_22:
    v19 = 1;
    goto LABEL_33;
  }

  v7 = *(this + 24);
  if (*v7 <= a3)
  {
    return this;
  }

  v8 = *(this + 8);
  if (v8)
  {
    v6 = *(v8 + 8 * a2);
  }

  else
  {
    v6 = a2 | (*this << 32);
  }

  v20 = *(this + 16);
  v21 = *(this + 32);
  v11 = v7 - 1;
  v12 = v21 - 8;
  if (v20 < 2)
  {
    goto LABEL_22;
  }

  v13 = 1;
  v22 = 2;
  v23 = 3;
  while (1)
  {
    if (v22 == v20)
    {
      v24 = v11[v20];
      goto LABEL_27;
    }

    v24 = v11[v22];
    v25 = v7[v22];
    if (v24 <= v25)
    {
      break;
    }

LABEL_27:
    v25 = v24;
    v26 = v21 - 8;
    v23 = v22;
    if (v24 < a3)
    {
      goto LABEL_32;
    }

LABEL_30:
    v11[v13] = v25;
    *(v12 + 8 * v13) = *(v26 + 8 * v22);
    v19 = v23;
    v22 = 2 * v23;
    v23 = (2 * v23) | 1;
    v13 = v19;
    if (v22 > v20)
    {
      goto LABEL_33;
    }
  }

  v26 = v21;
  if (v25 >= a3)
  {
    goto LABEL_30;
  }

LABEL_32:
  v19 = v13;
LABEL_33:
  v11[v19] = a3;
  *(v12 + 8 * v19) = v6;
  ++*(this + 40);
  return this;
}

void sub_1D9C4C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::IndexIVFPQ::get_InvertedListScanner(faiss::IndexIVFPQ *this)
{
  v1 = *(this + 32);
  v2 = *(this + 7);
  if (v1 == 16)
  {
    if (v2 == 1)
    {
      operator new();
    }

    if (!v2)
    {
      operator new();
    }
  }

  else if (v1 == 8)
  {
    if (v2 == 1)
    {
      operator new();
    }

    if (!v2)
    {
      operator new();
    }
  }

  else
  {
    if (v2 == 1)
    {
      operator new();
    }

    if (!v2)
    {
      operator new();
    }
  }

  return 0;
}

double faiss::IndexIVFPQStats::reset(faiss::IndexIVFPQStats *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void *faiss::IndexIVFPQStats::get_indexIVFPQ_stats(faiss::IndexIVFPQStats *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    faiss::IndexIVFPQStats::get_indexIVFPQ_stats();
  }

  return &unk_1ECB70E28;
}

faiss::IndexIVFPQ *faiss::IndexIVFPQ::IndexIVFPQ(faiss::IndexIVFPQ *this)
{
  v2 = faiss::IndexIVF::IndexIVF(this);
  *v2 = &unk_1F5538268;
  faiss::ProductQuantizer::ProductQuantizer((v2 + 240));
  *(this + 392) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  return this;
}

uint64_t faiss::IndexIVFPQ::find_duplicates(faiss::IndexIVFPQ *this, uint64_t *a2, unint64_t *a3)
{
  *a3 = 0;
  if (!*(this + 6))
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  v5 = 0;
  v29 = vdupq_n_s64(4uLL);
  do
  {
    v6 = (***(v3 + 14))(*(v3 + 14), v5);
    std::vector<int>::vector[abi:ne200100](&v37, v6);
    if (v6)
    {
      v7 = 0;
      v8 = vdupq_n_s64(v6 - 1);
      v9 = v37 + 8;
      v10 = xmmword_1D9C84A30;
      v11 = xmmword_1D9C84A40;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v10));
        if (vuzp1_s16(v12, *v8.i8).u8[0])
        {
          *(v9 - 2) = v7;
        }

        if (vuzp1_s16(v12, *&v8).i8[2])
        {
          *(v9 - 1) = v7 + 1;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v11))).i32[1])
        {
          *v9 = v7 + 2;
          v9[1] = v7 + 3;
        }

        v7 += 4;
        v11 = vaddq_s64(v11, v29);
        v10 = vaddq_s64(v10, v29);
        v9 += 4;
      }

      while (((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v7);
    }

    v36[0] = *(v3 + 14);
    v13 = (*(*v36[0] + 8))(v36[0], v5);
    v14 = 126 - 2 * __clz((v38 - v37) >> 2);
    v36[1] = v13;
    v36[2] = v5;
    v15 = *(v3 + 16);
    v33 = v13;
    v34 = v15;
    if (v38 == v37)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    std::__introsort<std::_ClassicAlgPolicy,faiss::CodeCmp &,int *,false>(v37, v38, &v33, v16, 1);
    v33 = *(v3 + 14);
    v17 = (*(*v33 + 16))(v33, v5);
    v34 = v17;
    v35 = v5;
    v30 = v5;
    if (v6)
    {
      v18 = 0;
      v19 = v37;
      v20 = 0xFFFFFFFFLL;
      do
      {
        if ((v20 & 0x80000000) == 0 && (v21 = *&v19[4 * v20], v22 = *&v19[4 * v18], !memcmp((v13 + v15 * v21), (v13 + v15 * v22), v15)))
        {
          if (v18 == v20 + 1)
          {
            v23 = a3[v4++];
            v24 = *(v17 + 8 * v21);
            v25 = v23 + 1;
            a3[v4] = v23 + 1;
            a2[v23] = v24;
          }

          else
          {
            v25 = a3[v4];
          }

          v26 = *(v17 + 8 * v22);
          a3[v4] = v25 + 1;
          a2[v25] = v26;
        }

        else
        {
          v20 = v18;
        }

        ++v18;
      }

      while (v6 != v18);
    }

    faiss::InvertedLists::ScopedIds::~ScopedIds(&v33);
    faiss::InvertedLists::ScopedCodes::~ScopedCodes(v36);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v5 = v30 + 1;
    v3 = this;
  }

  while ((v30 + 1) < *(this + 6));
  return v4;
}

void sub_1D9C4CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void faiss::IndexIVFPQ::~IndexIVFPQ(void **this)
{
  *this = &unk_1F5538268;
  free(this[53]);
  v2 = this[46];
  if (v2)
  {
    this[47] = v2;
    operator delete(v2);
  }

  v3 = this[43];
  if (v3)
  {
    this[44] = v3;
    operator delete(v3);
  }

  faiss::IndexIVF::~IndexIVF(this);
}

{
  *this = &unk_1F5538268;
  free(this[53]);
  v2 = this[46];
  if (v2)
  {
    this[47] = v2;
    operator delete(v2);
  }

  v3 = this[43];
  if (v3)
  {
    this[44] = v3;
    operator delete(v3);
  }

  faiss::IndexIVF::~IndexIVF(this);

  JUMPOUT(0x1DA73F410);
}

{
  *this = &unk_1F5538268;
  free(this[53]);
  v2 = this[46];
  if (v2)
  {
    this[47] = v2;
    operator delete(v2);
  }

  v3 = this[43];
  if (v3)
  {
    this[44] = v3;
    operator delete(v3);
  }

  faiss::IndexIVF::~IndexIVF(this);
}

void faiss::AlignedTableTightAlloc<float,32>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) != a2)
  {
    memptr = 0;
    if (a2)
    {
      if (malloc_type_posix_memalign(&memptr, 0x20uLL, 4 * a2, 0x100004052888210uLL))
      {
        exception = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v6, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
      }

      v4 = *(a1 + 8);
      if (v4)
      {
        if (v4 >= a2)
        {
          v4 = a2;
        }

        memcpy(memptr, *a1, 4 * v4);
      }
    }

    *(a1 + 8) = a2;
    free(*a1);
    *a1 = memptr;
  }
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::distance_to_code(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  if (*(v2 + 16) != 8)
  {
    faiss::decode<faiss::PQDecoder8>();
  }

  result = *(a1 + 216);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = 4 * *(v2 + 40);
    do
    {
      v7 = *a2++;
      result = result + *(v5 + 4 * v7);
      v5 += v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::scan_codes(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v15 = *(a1 + 224);
  v208 = a6;
  v209 = v14;
  if (*(a1 + 52) >= 1)
  {
    if (v15 != 2)
    {
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 32);
    v18 = *(*(a1 + 8) + 416);
    if (v17 <= 19)
    {
      if (v17 != 4)
      {
        if (v17 != 8)
        {
          if (v17 == 16)
          {
            v19 = 0;
            if (a2)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = **(a1 + 160);
              v24 = a5 - 1;
              v25 = a6 - 8;
              while (1)
              {
                v26 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v23))))));
                if (vadd_s32(vdup_lane_s32(v26, 1), v26).i32[0] >= v18)
                {
                  goto LABEL_34;
                }

                if (*(v16 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v27 = *(v12 + 216);
                v28 = *(v16 + 8);
                if (v28)
                {
                  v29 = 0;
                  v30 = *(v12 + 56);
                  do
                  {
                    a1 = a3->u8[v29];
                    v27 = v27 + *(v30 + 4 * a1);
                    ++v29;
                    v30 += 4 * *(v16 + 40);
                  }

                  while (v28 != v29);
                }

                ++v21;
                if (*a5 >= v27)
                {
                  goto LABEL_34;
                }

                if (v14)
                {
                  v31 = *(v14 + 8 * v22);
                }

                else
                {
                  v31 = v22 | (v13 << 32);
                }

                if (a7 < 2)
                {
                  a1 = 1;
                  goto LABEL_33;
                }

                v32 = 3;
                v33 = 2;
                v34 = 1;
                while (1)
                {
                  if (v33 == a7)
                  {
                    v35 = v24[a7];
                    goto LABEL_27;
                  }

                  v35 = v24[v33];
                  v36 = a5[v33];
                  if (v35 >= v36)
                  {
                    break;
                  }

LABEL_27:
                  v36 = v35;
                  v37 = a6 - 8;
                  v32 = v33;
                  if (v35 > v27)
                  {
                    goto LABEL_32;
                  }

LABEL_30:
                  v24[v34] = v36;
                  *(v25 + 8 * v34) = *(v37 + 8 * v33);
                  a1 = v32;
                  v33 = 2 * v32;
                  v32 = (2 * v32) | 1;
                  v34 = a1;
                  if (v33 > a7)
                  {
                    goto LABEL_33;
                  }
                }

                v37 = a6;
                if (v36 <= v27)
                {
                  goto LABEL_30;
                }

LABEL_32:
                a1 = v34;
LABEL_33:
                v24[a1] = v27;
                *(v25 + 8 * a1) = v31;
                v19 = ++v20;
LABEL_34:
                ++a3;
                if (++v22 == a2)
                {
LABEL_276:
                  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                  qword_1ECB70E30 += v21;
                  return v19;
                }
              }
            }

LABEL_275:
            v21 = 0;
            goto LABEL_276;
          }

          goto LABEL_194;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_275;
        }

        v167 = 0;
        v21 = 0;
        v168 = 0;
        v169 = **(a1 + 160);
        v170 = a5 - 1;
        v171 = a6 - 8;
LABEL_224:
        v172 = vcnt_s8((a3->i64[0] ^ v169));
        v172.i16[0] = vaddlv_u8(v172);
        if (v18 <= v172.i32[0])
        {
          goto LABEL_246;
        }

        if (*(v16 + 16) != 8)
        {
          faiss::decode<faiss::PQDecoder8>();
        }

        v173 = *(v12 + 216);
        v174 = *(v16 + 8);
        if (v174)
        {
          v175 = 0;
          v176 = *(v12 + 56);
          a1 = 4 * *(v16 + 40);
          do
          {
            v173 = v173 + *(v176 + 4 * a3->u8[v175++]);
            v176 += a1;
          }

          while (v174 != v175);
        }

        ++v21;
        if (*a5 >= v173)
        {
          goto LABEL_246;
        }

        if (v14)
        {
          v177 = *(v14 + 8 * v168);
        }

        else
        {
          v177 = v168 | (v13 << 32);
        }

        if (a7 < 2)
        {
          v178 = 1;
          goto LABEL_245;
        }

        a1 = 3;
        v179 = 2;
        v180 = 1;
        while (v179 != a7)
        {
          v181 = v170[v179];
          v182 = a5[v179];
          if (v181 < v182)
          {
            goto LABEL_239;
          }

          v183 = a6;
          if (v182 > v173)
          {
LABEL_244:
            v178 = v180;
LABEL_245:
            v170[v178] = v173;
            *(v171 + 8 * v178) = v177;
            v19 = ++v167;
LABEL_246:
            a3 = (a3 + 8);
            if (++v168 == a2)
            {
              goto LABEL_276;
            }

            goto LABEL_224;
          }

LABEL_242:
          v170[v180] = v182;
          *(v171 + 8 * v180) = *(v183 + 8 * v179);
          v178 = a1;
          v179 = 2 * a1;
          a1 = (2 * a1) | 1;
          v180 = v178;
          if (v179 > a7)
          {
            goto LABEL_245;
          }
        }

        v181 = v170[a7];
LABEL_239:
        v182 = v181;
        v183 = a6 - 8;
        a1 = v179;
        if (v181 > v173)
        {
          goto LABEL_244;
        }

        goto LABEL_242;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_275;
      }

      v111 = 0;
      v21 = 0;
      v112 = 0;
      v113 = **(a1 + 160);
      v114 = a5 - 1;
      v115 = a6 - 8;
LABEL_144:
      a8.i32[0] = a3->i32[0] ^ v113;
      a8 = vcnt_s8(a8);
      a8.i16[0] = vaddlv_u8(a8);
      if (a8.i32[0] >= v18)
      {
        goto LABEL_166;
      }

      if (*(v16 + 16) != 8)
      {
        faiss::decode<faiss::PQDecoder8>();
      }

      v116 = *(v12 + 216);
      v117 = *(v16 + 8);
      if (v117)
      {
        v118 = 0;
        v119 = *(v12 + 56);
        a1 = 4 * *(v16 + 40);
        do
        {
          v116 = v116 + *(v119 + 4 * a3->u8[v118++]);
          v119 += a1;
        }

        while (v117 != v118);
      }

      ++v21;
      if (*a5 >= v116)
      {
        goto LABEL_166;
      }

      if (v14)
      {
        v120 = *(v14 + 8 * v112);
      }

      else
      {
        v120 = v112 | (v13 << 32);
      }

      if (a7 < 2)
      {
        v121 = 1;
        goto LABEL_165;
      }

      a1 = 3;
      v122 = 2;
      v123 = 1;
      while (v122 != a7)
      {
        v124 = v114[v122];
        v125 = a5[v122];
        if (v124 < v125)
        {
          goto LABEL_159;
        }

        v126 = a6;
        if (v125 > v116)
        {
LABEL_164:
          v121 = v123;
LABEL_165:
          v114[v121] = v116;
          *(v115 + 8 * v121) = v120;
          v19 = ++v111;
LABEL_166:
          a3 = (a3 + 4);
          if (++v112 == a2)
          {
            goto LABEL_276;
          }

          goto LABEL_144;
        }

LABEL_162:
        v114[v123] = v125;
        *(v115 + 8 * v123) = *(v126 + 8 * v122);
        v121 = a1;
        v122 = 2 * a1;
        a1 = (2 * a1) | 1;
        v123 = v121;
        if (v122 > a7)
        {
          goto LABEL_165;
        }
      }

      v124 = v114[a7];
LABEL_159:
      v125 = v124;
      v126 = a6 - 8;
      a1 = v122;
      if (v124 > v116)
      {
        goto LABEL_164;
      }

      goto LABEL_162;
    }

    if (v17 != 20)
    {
      if (v17 != 32)
      {
        if (v17 != 64)
        {
LABEL_194:
          v210 = *(a1 + 160);
          v211 = v17 / 8;
          v212 = v17 - (v16 & 0xFFFFFFF8);
          if (!a2)
          {
            v19 = 0;
            goto LABEL_275;
          }

          v207 = v18;
          v19 = 0;
          v21 = 0;
          v149 = 0;
          v204 = v13 << 32;
          v205 = v17;
          v150 = a5 - 1;
          v151 = a6 - 8;
LABEL_196:
          a1 = faiss::HammingComputerDefault::hamming(&v210, a3);
          if (a1 >= v207)
          {
            goto LABEL_220;
          }

          v152 = *(v12 + 32);
          if (*(v152 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v153 = *(v12 + 216);
          v154 = *(v152 + 8);
          if (v154)
          {
            v155 = 0;
            v156 = *(v12 + 56);
            v157 = 4 * *(v152 + 40);
            v158 = v208;
            do
            {
              v153 = v153 + *(v156 + 4 * a3->u8[v155++]);
              v156 += v157;
            }

            while (v154 != v155);
          }

          else
          {
            v158 = v208;
          }

          ++v21;
          if (*a5 >= v153)
          {
            goto LABEL_220;
          }

          if (v209)
          {
            v159 = *(v209 + 8 * v149);
          }

          else
          {
            v159 = v149 | v204;
          }

          if (a7 < 2)
          {
            v160 = 1;
            goto LABEL_219;
          }

          v161 = 3;
          v162 = 2;
          v163 = 1;
          while (v162 != a7)
          {
            v164 = v150[v162];
            v165 = a5[v162];
            if (v164 < v165)
            {
              goto LABEL_213;
            }

            v166 = v158;
            if (v165 > v153)
            {
LABEL_218:
              v160 = v163;
LABEL_219:
              v150[v160] = v153;
              *(v151 + 8 * v160) = v159;
              ++v19;
LABEL_220:
              a3 = (a3 + v205);
              if (++v149 == a2)
              {
                goto LABEL_276;
              }

              goto LABEL_196;
            }

LABEL_216:
            v150[v163] = v165;
            *(v151 + 8 * v163) = *(v166 + 8 * v162);
            v160 = v161;
            v162 = 2 * v161;
            v161 = (2 * v161) | 1;
            v163 = v160;
            if (v162 > a7)
            {
              goto LABEL_219;
            }
          }

          v164 = v150[a7];
LABEL_213:
          v165 = v164;
          v166 = v151;
          v161 = v162;
          if (v164 > v153)
          {
            goto LABEL_218;
          }

          goto LABEL_216;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_275;
        }

        v57 = 0;
        v21 = 0;
        v58 = 0;
        v59 = *(a1 + 160);
        v61 = v59[2];
        v60 = v59[3];
        v63 = *v59;
        v62 = v59[1];
        v64 = a5 - 1;
        v65 = a6 - 8;
LABEL_69:
        if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v63))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v62)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v61))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v60)))))))) >= v18)
        {
          goto LABEL_91;
        }

        if (*(v16 + 16) != 8)
        {
          faiss::decode<faiss::PQDecoder8>();
        }

        v66 = *(v12 + 216);
        v67 = *(v16 + 8);
        if (v67)
        {
          v68 = 0;
          v69 = *(v12 + 56);
          do
          {
            a1 = a3->u8[v68];
            v66 = v66 + *(v69 + 4 * a1);
            ++v68;
            v69 += 4 * *(v16 + 40);
          }

          while (v67 != v68);
        }

        ++v21;
        if (*a5 >= v66)
        {
          goto LABEL_91;
        }

        if (v14)
        {
          v70 = *(v14 + 8 * v58);
        }

        else
        {
          v70 = v58 | (v13 << 32);
        }

        if (a7 < 2)
        {
          a1 = 1;
          goto LABEL_90;
        }

        v71 = 3;
        v72 = 2;
        v73 = 1;
        while (v72 != a7)
        {
          v74 = v64[v72];
          v75 = a5[v72];
          if (v74 < v75)
          {
            goto LABEL_84;
          }

          v76 = a6;
          if (v75 > v66)
          {
LABEL_89:
            a1 = v73;
LABEL_90:
            v64[a1] = v66;
            *(v65 + 8 * a1) = v70;
            v19 = ++v57;
LABEL_91:
            a3 += 4;
            if (++v58 == a2)
            {
              goto LABEL_276;
            }

            goto LABEL_69;
          }

LABEL_87:
          v64[v73] = v75;
          *(v65 + 8 * v73) = *(v76 + 8 * v72);
          a1 = v71;
          v72 = 2 * v71;
          v71 = (2 * v71) | 1;
          v73 = a1;
          if (v72 > a7)
          {
            goto LABEL_90;
          }
        }

        v74 = v64[a7];
LABEL_84:
        v75 = v74;
        v76 = a6 - 8;
        v71 = v72;
        if (v74 > v66)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_275;
      }

      v184 = 0;
      v21 = 0;
      v185 = 0;
      v186 = *(a1 + 160);
      v188 = *v186;
      v187 = v186[1];
      v189 = a5 - 1;
      v190 = a6 - 8;
LABEL_250:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v188))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v187))))))) >= v18)
      {
        goto LABEL_272;
      }

      if (*(v16 + 16) != 8)
      {
        faiss::decode<faiss::PQDecoder8>();
      }

      v191 = *(v12 + 216);
      v192 = *(v16 + 8);
      if (v192)
      {
        v193 = 0;
        v194 = *(v12 + 56);
        do
        {
          a1 = a3->u8[v193];
          v191 = v191 + *(v194 + 4 * a1);
          ++v193;
          v194 += 4 * *(v16 + 40);
        }

        while (v192 != v193);
      }

      ++v21;
      if (*a5 >= v191)
      {
        goto LABEL_272;
      }

      if (v14)
      {
        v195 = *(v14 + 8 * v185);
      }

      else
      {
        v195 = v185 | (v13 << 32);
      }

      if (a7 < 2)
      {
        a1 = 1;
        goto LABEL_271;
      }

      v196 = 3;
      v197 = 2;
      v198 = 1;
      while (v197 != a7)
      {
        v199 = v189[v197];
        v200 = a5[v197];
        if (v199 < v200)
        {
          goto LABEL_265;
        }

        v201 = a6;
        if (v200 > v191)
        {
LABEL_270:
          a1 = v198;
LABEL_271:
          v189[a1] = v191;
          *(v190 + 8 * a1) = v195;
          v19 = ++v184;
LABEL_272:
          a3 += 2;
          if (++v185 == a2)
          {
            goto LABEL_276;
          }

          goto LABEL_250;
        }

LABEL_268:
        v189[v198] = v200;
        *(v190 + 8 * v198) = *(v201 + 8 * v197);
        a1 = v196;
        v197 = 2 * v196;
        v196 = (2 * v196) | 1;
        v198 = a1;
        if (v197 > a7)
        {
          goto LABEL_271;
        }
      }

      v199 = v189[a7];
LABEL_265:
      v200 = v199;
      v201 = a6 - 8;
      v196 = v197;
      if (v199 > v191)
      {
        goto LABEL_270;
      }

      goto LABEL_268;
    }

    v19 = 0;
    if (!a2)
    {
      goto LABEL_275;
    }

    v127 = 0;
    v21 = 0;
    v128 = 0;
    v129 = *(a1 + 160);
    v130 = *v129;
    v131 = v129[1].i32[0];
    v132 = a5 - 1;
    v133 = a6 - 8;
LABEL_170:
    v134 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v130))))));
    v135 = vadd_s32(vdup_lane_s32(v134, 1), v134);
    v136 = v135.i32[0];
    v135.i32[0] = a3[1].i32[0] ^ v131;
    v137 = vcnt_s8(v135);
    v137.i16[0] = vaddlv_u8(v137);
    if (v136 + v137.i32[0] >= v18)
    {
      goto LABEL_192;
    }

    if (*(v16 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v138 = *(v12 + 216);
    v139 = *(v16 + 8);
    if (v139)
    {
      v140 = 0;
      v141 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v138 = v138 + *(v141 + 4 * a3->u8[v140++]);
        v141 += a1;
      }

      while (v139 != v140);
    }

    ++v21;
    if (*a5 >= v138)
    {
      goto LABEL_192;
    }

    if (v14)
    {
      v142 = *(v14 + 8 * v128);
    }

    else
    {
      v142 = v128 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v143 = 1;
      goto LABEL_191;
    }

    a1 = 3;
    v144 = 2;
    v145 = 1;
    while (v144 != a7)
    {
      v146 = v132[v144];
      v147 = a5[v144];
      if (v146 < v147)
      {
        goto LABEL_185;
      }

      v148 = a6;
      if (v147 > v138)
      {
LABEL_190:
        v143 = v145;
LABEL_191:
        v132[v143] = v138;
        *(v133 + 8 * v143) = v142;
        v19 = ++v127;
LABEL_192:
        a3 = (a3 + 20);
        if (++v128 == a2)
        {
          goto LABEL_276;
        }

        goto LABEL_170;
      }

LABEL_188:
      v132[v145] = v147;
      *(v133 + 8 * v145) = *(v148 + 8 * v144);
      v143 = a1;
      v144 = 2 * a1;
      a1 = (2 * a1) | 1;
      v145 = v143;
      if (v144 > a7)
      {
        goto LABEL_191;
      }
    }

    v146 = v132[a7];
LABEL_185:
    v147 = v146;
    v148 = a6 - 8;
    a1 = v144;
    if (v146 > v138)
    {
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  if (!v15)
  {
    v96 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 8) + 40) + 80))(*(*(a1 + 8) + 40), v13, *(a1 + 72));
      v97 = faiss::fvec_inner_product(*(v12 + 72), *(v12 + 136), *(v12 + 24));
      a6 = v208;
      v96 = v97;
    }

    if (!a2)
    {
      return 0;
    }

    v19 = 0;
    v98 = 0;
    v206 = v13 << 32;
    v99 = a5 - 1;
    v100 = a6 - 8;
LABEL_122:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v101 = *(*(v12 + 32) + 32);
    v102 = v96 + faiss::fvec_inner_product(*(v12 + 80), *(v12 + 136), *(v12 + 24));
    if (*a5 >= v102)
    {
      goto LABEL_139;
    }

    if (v209)
    {
      v103 = *(v209 + 8 * v98);
    }

    else
    {
      v103 = v98 | v206;
    }

    if (a7 < 2)
    {
      v104 = 1;
      goto LABEL_138;
    }

    v105 = 3;
    v106 = 2;
    v107 = 1;
    while (v106 != a7)
    {
      v108 = v99[v106];
      v109 = a5[v106];
      if (v108 < v109)
      {
        goto LABEL_132;
      }

      v110 = v208;
      if (v109 > v102)
      {
LABEL_137:
        v104 = v107;
LABEL_138:
        v99[v104] = v102;
        *(v100 + 8 * v104) = v103;
        ++v19;
LABEL_139:
        a3 = (a3 + v101);
        if (++v98 == a2)
        {
          return v19;
        }

        goto LABEL_122;
      }

LABEL_135:
      v99[v107] = v109;
      *(v100 + 8 * v107) = *(v110 + 8 * v106);
      v104 = v105;
      v106 = 2 * v105;
      v105 = (2 * v105) | 1;
      v107 = v104;
      if (v106 > a7)
      {
        goto LABEL_138;
      }
    }

    v108 = v99[a7];
LABEL_132:
    v109 = v108;
    v110 = v100;
    v105 = v106;
    if (v108 > v102)
    {
      goto LABEL_137;
    }

    goto LABEL_135;
  }

  if (v15 == 1)
  {
    if (!a2)
    {
      return 0;
    }

    v77 = *(a1 + 32);
    if (*(v77 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v19 = 0;
    v78 = 0;
    v79 = 0;
    v80 = a5 - 1;
    v81 = *(v77 + 32);
    v82 = *(a1 + 64);
    v83 = a6 - 8;
    v84 = *(v77 + 8);
LABEL_96:
    v85 = *(v12 + 216);
    if (v84)
    {
      v86 = 0;
      v87 = v82;
      do
      {
        v85 = v85 + (*(*(*(v12 + 112) + 8 * v86) + 4 * a3->u8[v86]) + (*(v87 + 4 * a3->u8[v86]) * -2.0));
        ++v86;
        v87 += 4 * *(v77 + 40);
      }

      while (v84 != v86);
    }

    if (*a5 >= v85)
    {
      goto LABEL_116;
    }

    if (v209)
    {
      v88 = *(v209 + 8 * v79);
    }

    else
    {
      v88 = v79 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v89 = 1;
      goto LABEL_115;
    }

    v90 = 3;
    v91 = 2;
    v92 = 1;
    while (v91 != a7)
    {
      v93 = v80[v91];
      v94 = a5[v91];
      if (v93 < v94)
      {
        goto LABEL_109;
      }

      v95 = a6;
      if (v94 > v85)
      {
LABEL_114:
        v89 = v92;
LABEL_115:
        v80[v89] = v85;
        *(v83 + 8 * v89) = v88;
        v19 = ++v78;
LABEL_116:
        a3 = (a3 + v81);
        if (++v79 == a2)
        {
          return v19;
        }

        goto LABEL_96;
      }

LABEL_112:
      v80[v92] = v94;
      *(v83 + 8 * v92) = *(v95 + 8 * v91);
      v89 = v90;
      v91 = 2 * v90;
      v90 = (2 * v90) | 1;
      v92 = v89;
      if (v91 > a7)
      {
        goto LABEL_115;
      }
    }

    v93 = v80[a7];
LABEL_109:
    v94 = v93;
    v95 = a6 - 8;
    v90 = v91;
    if (v93 > v85)
    {
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  if (v15 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v210, "bad precomp mode");
    faiss::FaissException::FaissException(exception, &v210, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoder8>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoder8]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
  }

  if (a2)
  {
    v38 = *(a1 + 32);
    if (*(v38 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v19 = 0;
    v39 = 0;
    v40 = 0;
    v41 = a5 - 1;
    v42 = *(v38 + 32);
    v43 = *(a1 + 56);
    v44 = a6 - 8;
    v45 = *(v38 + 8);
LABEL_42:
    v46 = *(v12 + 216);
    if (v45)
    {
      v47 = 0;
      v48 = v43;
      do
      {
        v46 = v46 + *(v48 + 4 * a3->u8[v47++]);
        v48 += 4 * *(v38 + 40);
      }

      while (v45 != v47);
    }

    if (*a5 >= v46)
    {
      goto LABEL_62;
    }

    if (v209)
    {
      v49 = *(v209 + 8 * v40);
    }

    else
    {
      v49 = v40 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v50 = 1;
      goto LABEL_61;
    }

    v51 = 3;
    v52 = 2;
    v53 = 1;
    while (v52 != a7)
    {
      v54 = v41[v52];
      v55 = a5[v52];
      if (v54 < v55)
      {
        goto LABEL_55;
      }

      v56 = a6;
      if (v55 > v46)
      {
LABEL_60:
        v50 = v53;
LABEL_61:
        v41[v50] = v46;
        *(v44 + 8 * v50) = v49;
        v19 = ++v39;
LABEL_62:
        a3 = (a3 + v42);
        if (++v40 == a2)
        {
          return v19;
        }

        goto LABEL_42;
      }

LABEL_58:
      v41[v53] = v55;
      *(v44 + 8 * v53) = *(v56 + 8 * v52);
      v50 = v51;
      v52 = 2 * v51;
      v51 = (2 * v51) | 1;
      v53 = v50;
      if (v52 > a7)
      {
        goto LABEL_61;
      }
    }

    v54 = v41[a7];
LABEL_55:
    v55 = v54;
    v56 = a6 - 8;
    v51 = v52;
    if (v54 > v46)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  return 0;
}

void sub_1D9C4DD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v82 = 0;
            v83 = *(a1 + 20);
            v84 = *v83;
            v85 = v83[1].i32[0];
            v86 = v12 << 32;
            v138 = *v83;
            do
            {
              v87 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v84))))));
              v88 = vadd_s32(vdup_lane_s32(v87, 1), v87);
              v89 = v88.i32[0];
              v88.i32[0] = a3[1].i32[0] ^ v85;
              v90 = vcnt_s8(v88);
              v90.i16[0] = vaddlv_u8(v90);
              if (v89 + v90.i32[0] < v16)
              {
                v91 = *(v11 + 4);
                if (*(v91 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v92 = *(v11 + 54);
                v93 = *(v91 + 8);
                if (v93)
                {
                  v94 = 0;
                  v95 = *(v11 + 7);
                  v96 = 4 * *(v91 + 40);
                  do
                  {
                    v92 = v92 + *(v95 + 4 * a3->u8[v94++]);
                    v95 += v96;
                  }

                  while (v93 != v94);
                }

                ++v17;
                if (v92 > v8)
                {
                  if (v13)
                  {
                    v97 = *(v13 + 8 * v82);
                  }

                  else
                  {
                    v97 = v82 | v86;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v92, v97);
                  v84 = v138;
                }
              }

              a3 = (a3 + 20);
              ++v82;
            }

            while (v82 != a2);
          }

          goto LABEL_150;
        case 32:
          v17 = 0;
          if (a2)
          {
            v119 = 0;
            v120 = *(a1 + 20);
            v122 = *v120;
            v121 = v120[1];
            v123 = v12 << 32;
            v135 = *v120;
            v139 = v121;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v122))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v121))))))) < v16)
              {
                v124 = *(v11 + 4);
                if (*(v124 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v125 = *(v11 + 54);
                v126 = *(v124 + 8);
                if (v126)
                {
                  v127 = 0;
                  v128 = *(v11 + 7);
                  v129 = 4 * *(v124 + 40);
                  do
                  {
                    v125 = v125 + *(v128 + 4 * a3->u8[v127++]);
                    v128 += v129;
                  }

                  while (v126 != v127);
                }

                ++v17;
                if (v125 > v8)
                {
                  if (v13)
                  {
                    v130 = *(v13 + 8 * v119);
                  }

                  else
                  {
                    v130 = v119 | v123;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v125, v130);
                  v122 = v135;
                  v121 = v139;
                }
              }

              a3 += 2;
              ++v119;
            }

            while (v119 != a2);
          }

          goto LABEL_150;
        case 64:
          v17 = 0;
          if (a2)
          {
            v39 = 0;
            v40 = *(a1 + 20);
            v42 = v40[2];
            v41 = v40[3];
            v44 = *v40;
            v43 = v40[1];
            v45 = v12 << 32;
            v134 = v42;
            v137 = v41;
            v132 = *v40;
            v133 = v43;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v44))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v43)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v42))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v41)))))))) < v16)
              {
                v46 = *(v11 + 4);
                if (*(v46 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v47 = *(v11 + 54);
                v48 = *(v46 + 8);
                if (v48)
                {
                  v49 = 0;
                  v50 = *(v11 + 7);
                  v51 = 4 * *(v46 + 40);
                  do
                  {
                    v47 = v47 + *(v50 + 4 * a3->u8[v49++]);
                    v50 += v51;
                  }

                  while (v48 != v49);
                }

                ++v17;
                if (v47 > v8)
                {
                  if (v13)
                  {
                    v52 = *(v13 + 8 * v39);
                  }

                  else
                  {
                    v52 = v39 | v45;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v47, v52);
                  v42 = v134;
                  v41 = v137;
                  v44 = v132;
                  v43 = v133;
                }
              }

              a3 += 4;
              ++v39;
            }

            while (v39 != a2);
          }

          goto LABEL_150;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v72 = 0;
            v73 = **(a1 + 20);
            v74 = v12 << 32;
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v73;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v75 = *(v11 + 4);
                if (*(v75 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v76 = *(v11 + 54);
                v77 = *(v75 + 8);
                if (v77)
                {
                  v78 = 0;
                  v79 = *(v11 + 7);
                  v80 = 4 * *(v75 + 40);
                  do
                  {
                    v76 = v76 + *(v79 + 4 * a3->u8[v78++]);
                    v79 += v80;
                  }

                  while (v77 != v78);
                }

                ++v17;
                if (v76 > v8)
                {
                  if (v13)
                  {
                    v81 = *(v13 + 8 * v72);
                  }

                  else
                  {
                    v81 = v72 | v74;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v76, v81);
                }
              }

              a3 = (a3 + 4);
              ++v72;
            }

            while (v72 != a2);
          }

          goto LABEL_150;
        case 8:
          v17 = 0;
          if (a2)
          {
            v108 = 0;
            v109 = **(a1 + 20);
            v110 = v12 << 32;
            do
            {
              v111 = vcnt_s8((a3->i64[0] ^ v109));
              v111.i16[0] = vaddlv_u8(v111);
              if (v16 > v111.i32[0])
              {
                v112 = *(v11 + 4);
                if (*(v112 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v113 = *(v11 + 54);
                v114 = *(v112 + 8);
                if (v114)
                {
                  v115 = 0;
                  v116 = *(v11 + 7);
                  v117 = 4 * *(v112 + 40);
                  do
                  {
                    v113 = v113 + *(v116 + 4 * a3->u8[v115++]);
                    v116 += v117;
                  }

                  while (v114 != v115);
                }

                ++v17;
                if (v113 > v8)
                {
                  if (v13)
                  {
                    v118 = *(v13 + 8 * v108);
                  }

                  else
                  {
                    v118 = v108 | v110;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v113, v118);
                }
              }

              a3 = (a3 + 8);
              ++v108;
            }

            while (v108 != a2);
          }

          goto LABEL_150;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v20 = v12 << 32;
            v136 = v19;
            do
            {
              v21 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v21, 1), v21).i32[0] < v16)
              {
                v22 = *(v11 + 4);
                if (*(v22 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v23 = *(v11 + 54);
                v24 = *(v22 + 8);
                if (v24)
                {
                  v25 = 0;
                  v26 = *(v11 + 7);
                  v27 = 4 * *(v22 + 40);
                  do
                  {
                    v23 = v23 + *(v26 + 4 * a3->u8[v25++]);
                    v26 += v27;
                  }

                  while (v24 != v25);
                }

                ++v17;
                if (v23 > v8)
                {
                  if (v13)
                  {
                    v28 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v28 = v18 | v20;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v28);
                  v19 = v136;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_150:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v140 = *(a1 + 20);
    v141 = v15 / 8;
    v142 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v98 = 0;
      v99 = v15;
      v100 = v12 << 32;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v140, a3);
        if (a1 < v16)
        {
          v101 = *(v11 + 4);
          if (*(v101 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v102 = *(v11 + 54);
          v103 = *(v101 + 8);
          if (v103)
          {
            v104 = 0;
            v105 = *(v11 + 7);
            v106 = 4 * *(v101 + 40);
            do
            {
              v102 = v102 + *(v105 + 4 * a3->u8[v104++]);
              v105 += v106;
            }

            while (v103 != v104);
          }

          ++v17;
          if (v102 > v8)
          {
            if (v13)
            {
              v107 = *(v13 + 8 * v98);
            }

            else
            {
              v107 = v98 | v100;
            }

            a1 = faiss::RangeQueryResult::add(this, v102, v107);
          }
        }

        a3 = (a3 + v99);
        ++v98;
      }

      while (v98 != a2);
    }

    goto LABEL_150;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v53 = 0;
        v54 = v12 << 32;
        do
        {
          v55 = *(v11 + 4);
          if (*(v55 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v56 = *(v11 + 54);
          v57 = *(v55 + 8);
          if (v57)
          {
            v58 = *(v11 + 8);
            v59 = *(v11 + 14);
            v60 = a3;
            do
            {
              v62 = v60->u8[0];
              v60 = (v60 + 1);
              v61 = v62;
              v63 = *v59++;
              v56 = v56 + (*(v63 + 4 * v61) + (*(v58 + 4 * v61) * -2.0));
              v58 += 4 * *(v55 + 40);
              --v57;
            }

            while (v57);
          }

          v64 = *(v55 + 32);
          if (v56 > v8)
          {
            if (v13)
            {
              v65 = *(v13 + 8 * v53);
            }

            else
            {
              v65 = v53 | v54;
            }

            faiss::RangeQueryResult::add(this, v56, v65);
          }

          a3 = (a3 + v64);
          ++v53;
        }

        while (v53 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v140, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v140, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoder8>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoder8]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v29 = 0;
        v30 = v12 << 32;
        do
        {
          v31 = *(v11 + 4);
          if (*(v31 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v32 = *(v11 + 54);
          v33 = *(v31 + 8);
          if (v33)
          {
            v34 = *(v11 + 7);
            v35 = a3;
            do
            {
              v36 = v35->u8[0];
              v35 = (v35 + 1);
              v32 = v32 + *(v34 + 4 * v36);
              v34 += 4 * *(v31 + 40);
              --v33;
            }

            while (v33);
          }

          v37 = *(v31 + 32);
          if (v32 > v8)
          {
            if (v13)
            {
              v38 = *(v13 + 8 * v29);
            }

            else
            {
              v38 = v29 | v30;
            }

            faiss::RangeQueryResult::add(this, v32, v38);
          }

          a3 = (a3 + v37);
          ++v29;
        }

        while (v29 != a2);
      }
    }
  }

  else
  {
    v66 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 1) + 40) + 80))(*(*(a1 + 1) + 40), v12, *(a1 + 9));
      v66 = faiss::fvec_inner_product(*(v11 + 9), *(v11 + 17), *(v11 + 6));
    }

    if (a2)
    {
      v67 = 0;
      v68 = v12 << 32;
      do
      {
        faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
        v69 = *(*(v11 + 4) + 32);
        v70 = v66 + faiss::fvec_inner_product(*(v11 + 10), *(v11 + 17), *(v11 + 6));
        if (v70 > v8)
        {
          if (v13)
          {
            v71 = *(v13 + 8 * v67);
          }

          else
          {
            v71 = v67 | v68;
          }

          faiss::RangeQueryResult::add(this, v70, v71);
        }

        a3 = (a3 + v69);
        ++v67;
      }

      while (a2 != v67);
    }
  }
}

void sub_1D9C4E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder8>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

uint64_t faiss::anonymous namespace::QueryTables::QueryTables(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = a2 + 240;
  *(a1 + 32) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 232);
  *(a1 + 40) = *(a2 + 420);
  *(a1 + 80) = 0u;
  *(a1 + 152) = 0;
  v5 = (a1 + 152);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  std::vector<float>::resize((a1 + 80), 2 * *(a2 + 280) * *(a2 + 248) + 2 * v4);
  v6 = *(a1 + 80);
  v7 = *(a1 + 24);
  v8 = v7[1];
  v9 = v8 * v7[5];
  v10 = v6 + 4 * v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = v10;
  v11 = v10 + 4 * v9;
  v12 = v11 + 4 * *(a1 + 16);
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  LODWORD(v11) = *(a2 + 416);
  *(a1 + 44) = v11;
  if (v11)
  {
    v13 = v7[4];
    v14 = *(a1 + 152);
    v15 = *(a1 + 160) - v14;
    v16 = v13 >= v15;
    v17 = v13 - v15;
    if (v17 != 0 && v16)
    {
      std::vector<unsigned char>::__append(v5, v17);
      v8 = *(*(a1 + 24) + 8);
    }

    else if (!v16)
    {
      *(a1 + 160) = v14 + v13;
    }
  }

  *(a1 + 176) = 0;
  std::vector<float const*>::resize((a1 + 104), v8);
  return a1;
}

void sub_1D9C4E8B4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void faiss::anonymous namespace::QueryTables::~QueryTables(faiss::_anonymous_namespace_::QueryTables *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }
}

void std::vector<float const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<float const*>::__append(a1, a2 - v2);
  }
}

void std::vector<float const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void faiss::anonymous namespace::QueryTables::init_query(faiss::_anonymous_namespace_::QueryTables *this, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *(this + 16) = a2;
  if (!*(this + 8))
  {
    v8 = *(this + 3);
    v9 = *(this + 6);
    goto LABEL_6;
  }

  if ((*(this + 36) & 1) == 0)
  {
    faiss::ProductQuantizer::compute_distance_table(*(this + 3), a2, *(this + 6));
    goto LABEL_8;
  }

  if (*(this + 10))
  {
    v8 = *(this + 3);
    v9 = *(this + 7);
LABEL_6:
    faiss::ProductQuantizer::compute_inner_prod_table(v8, a2, v9, a4, a5, a6);
  }

LABEL_8:
  if ((*(this + 36) & 1) == 0 && *(this + 11))
  {
    v10 = *(this + 3);
    v11 = *(this + 19);

    faiss::ProductQuantizer::compute_code(v10, a2, v11);
  }
}

float faiss::anonymous namespace::QueryTables::precompute_list_tables(faiss::_anonymous_namespace_::QueryTables *this)
{
  cycles = faiss::get_cycles(this);
  v4 = cycles;
  v5 = 0.0;
  if (*(this + 36) != 1)
  {
    goto LABEL_31;
  }

  if (!*(this + 8))
  {
    (*(**(*this + 40) + 80))(*(*this + 40), *(this + 17), *(this + 9));
    v5 = faiss::fvec_inner_product(*(this + 16), *(this + 9), *(this + 4));
    if (!*(this + 11))
    {
      goto LABEL_31;
    }

    v26 = *(this + 4);
    if (v26 <= 0)
    {
      v30 = *(this + 8);
    }

    else
    {
      v27 = 0;
      v28 = *(this + 16);
      v29 = 4 * v26;
      v30 = *(this + 8);
      v31 = *(this + 9);
      do
      {
        *(v30 + v27) = *(v28 + v27) - *(v31 + v27);
        v27 += 4;
      }

      while (v29 != v27);
    }

    v33 = *(this + 3);
LABEL_30:
    faiss::ProductQuantizer::compute_code(v33, v30, *(this + 19));
    goto LABEL_31;
  }

  v6 = *(this + 10);
  if ((v6 + 1) < 2)
  {
    (*(**(*this + 40) + 104))(*(*this + 40), *(this + 16), *(this + 8), *(this + 17));
    faiss::ProductQuantizer::compute_distance_table(*(this + 3), *(this + 8), *(this + 6));
    if (!*(this + 11))
    {
      goto LABEL_31;
    }

LABEL_27:
    v33 = *(this + 3);
    v30 = *(this + 8);
    goto LABEL_30;
  }

  if (v6 == 1)
  {
    v5 = *(this + 36);
    v32 = *(*(this + 3) + 40) * *(*(this + 3) + 8);
    cycles = faiss::fvec_madd(v32, (*(*this + 424) + 4 * *(this + 17) * v32), *(this + 7), -2.0, *(this + 6), v3);
    if (!*(this + 11))
    {
      goto LABEL_31;
    }

    (*(**(*this + 40) + 104))(*(*this + 40), *(this + 16), *(this + 8), *(this + 17));
    goto LABEL_27;
  }

  if (v6 == 2)
  {
    v39 = cycles;
    v7 = *(*this + 40);
    {
      memset(&v43, 0, sizeof(v43));
      v35 = snprintf(0, 0, "Error: '%s' failed", "miq");
      std::string::resize(&v43, v35 + 1, 0);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v43;
      }

      else
      {
        v36 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      snprintf(v36, size, "Error: '%s' failed", "miq");
      exception = __cxa_allocate_exception(0x20uLL);
      faiss::FaissException::FaissException(exception, &v43, "float faiss::(anonymous namespace)::QueryTables::precompute_list_tables_L2()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 730);
    }

    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = *(this + 3);
    v14 = *(v13 + 8) / v8[6];
    v15 = *(this + 17);
    v16 = *(this + 6);
    v17 = *(this + 7);
    v18 = v14;
    v40 = v8;
    v41 = v14;
    v42 = v14;
    do
    {
      v19 = v10[7];
      v20 = v11 * v18;
      cycles = *(v13 + 40);
      v21 = (v11 * v18 + (v15 & ~(-1 << v19)) * *(v13 + 8)) * cycles;
      v22 = *(*this + 424) + 4 * v21;
      if (*(this + 11))
      {
        v23 = ++v11 * v18;
        if (v20 < v23)
        {
          v24 = v12;
          do
          {
            *(*(this + 19) + v24) = faiss::fvec_madd_and_argmin(cycles, v22, v17, -2.0, v16, v9);
            v13 = *(this + 3);
            cycles = *(v13 + 40);
            v22 += 4 * cycles;
            v16 += cycles;
            v17 += cycles;
            ++v24;
          }

          while (v24 < v23);
          v10 = v40;
        }

        v18 = v41;
      }

      else
      {
        cycles = faiss::fvec_madd(cycles * v18, (*(*this + 424) + 4 * v21), v17, -2.0, v16, v9);
        v13 = *(this + 3);
        v25 = *(v13 + 40) * v18;
        v16 += v25;
        v17 += v25;
        ++v11;
      }

      v15 >>= v19;
      v12 += v42;
    }

    while (v10[6] > v11);
    v4 = v39;
  }

LABEL_31:
  *(this + 22) += faiss::get_cycles(cycles) - v4;
  return v5;
}

void sub_1D9C4EF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  __cxa_free_exception(v19);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float faiss::anonymous namespace::QueryTables::precompute_list_table_pointers(faiss::_anonymous_namespace_::QueryTables *this)
{
  cycles = faiss::get_cycles(this);
  v3 = cycles;
  v4 = 0.0;
  if (*(this + 36) == 1)
  {
    if (!*(this + 8))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v28, "not implemented");
      faiss::FaissException::FaissException(exception, &v28, "float faiss::(anonymous namespace)::QueryTables::precompute_list_table_pointers()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 667);
    }

    v5 = *(this + 10);
    if (v5 == 2)
    {
      v11 = *(*this + 40);
      {
        memset(&v28, 0, sizeof(v28));
        v22 = snprintf(0, 0, "Error: '%s' failed", "miq");
        std::string::resize(&v28, v22 + 1, 0);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v28;
        }

        else
        {
          v23 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        snprintf(v23, size, "Error: '%s' failed", "miq");
        v25 = __cxa_allocate_exception(0x20uLL);
        faiss::FaissException::FaissException(v25, &v28, "float faiss::(anonymous namespace)::QueryTables::precompute_list_table_pointers_L2()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 784);
      }

      v12 = 0;
      v13 = 0;
      v14 = *(this + 3);
      v16 = *(cycles + 6);
      v15 = *(cycles + 7);
      v17 = *(v14 + 8) / v16;
      v18 = *(this + 17);
      if (v16 <= 1)
      {
        v16 = 1;
      }

      do
      {
        v19 = v13 + v17;
        if (v17 >= 1)
        {
          cycles = (*(*this + 424) + 4 * (v12 * v17 + *(v14 + 8) * (v18 & ~(-1 << v15))) * *(v14 + 40));
          do
          {
            *(*(this + 13) + 8 * v13) = cycles;
            v14 = *(this + 3);
            cycles = (cycles + 4 * *(v14 + 40));
            ++v13;
          }

          while (v13 < v19);
        }

        v18 >>= v15;
        ++v12;
        v13 = v19;
      }

      while (v12 != v16);
    }

    else
    {
      if (v5 != 1)
      {
        v27 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v28, "need precomputed tables");
        faiss::FaissException::FaissException(v27, &v28, "float faiss::(anonymous namespace)::QueryTables::precompute_list_table_pointers_L2()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 804);
      }

      v4 = *(this + 36);
      v6 = *(this + 3);
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = 0;
        v9 = *(*this + 424) + 4 * *(v6 + 40) * v7 * *(this + 17);
        do
        {
          *(*(this + 13) + 8 * v8) = v9;
          v10 = *(this + 3);
          v9 += 4 * *(v10 + 40);
          ++v8;
        }

        while (*(v10 + 8) > v8);
      }
    }

    if (*(this + 11))
    {
      v26 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v28, "not implemented");
      faiss::FaissException::FaissException(v26, &v28, "float faiss::(anonymous namespace)::QueryTables::precompute_list_table_pointers_L2()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 808);
    }
  }

  *(this + 22) += faiss::get_cycles(cycles) - v3;
  return v4;
}

void sub_1D9C4F388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::distance_to_code(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  if (*(v2 + 16) != 8)
  {
    faiss::decode<faiss::PQDecoder8>();
  }

  result = *(a1 + 216);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = 4 * *(v2 + 40);
    do
    {
      v7 = *a2++;
      result = result + *(v5 + 4 * v7);
      v5 += v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::scan_codes(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v15 = *(a1 + 224);
  v213 = a6;
  v214 = v14;
  if (*(a1 + 52) < 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&v215, "bad precomp mode");
          faiss::FaissException::FaissException(exception, &v215, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoder8>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoder8]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
        }

        if (a2)
        {
          v38 = *(a1 + 32);
          if (*(v38 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = a5 - 1;
          v43 = *(v38 + 32);
          v44 = *(a1 + 56);
          v45 = a6 - 8;
          v46 = *(v38 + 8);
LABEL_42:
          v47 = *(v12 + 216);
          if (v46)
          {
            v48 = 0;
            v49 = v44;
            do
            {
              v47 = v47 + *(v49 + 4 * a3->u8[v48++]);
              v49 += 4 * *(v38 + 40);
            }

            while (v46 != v48);
          }

          if (*a5 <= v47)
          {
            goto LABEL_62;
          }

          if (v214)
          {
            v50 = *(v214 + 8 * v41);
          }

          else
          {
            v50 = v41 | (v13 << 32);
          }

          if (a7 < 2)
          {
            v51 = 1;
            goto LABEL_61;
          }

          v52 = 3;
          v53 = 2;
          v54 = 1;
          while (v53 != a7)
          {
            v55 = v42[v53];
            v56 = a5[v53];
            if (v55 > v56)
            {
              goto LABEL_55;
            }

            v57 = a6;
            if (v56 < v47)
            {
LABEL_60:
              v51 = v54;
LABEL_61:
              v42[v51] = v47;
              *(v45 + 8 * v51) = v50;
              v39 = ++v40;
LABEL_62:
              a3 = (a3 + v43);
              if (++v41 == a2)
              {
                return v39;
              }

              goto LABEL_42;
            }

LABEL_58:
            v42[v54] = v56;
            *(v45 + 8 * v54) = *(v57 + 8 * v53);
            v51 = v52;
            v53 = 2 * v52;
            v52 = (2 * v52) | 1;
            v54 = v51;
            if (v53 > a7)
            {
              goto LABEL_61;
            }
          }

          v55 = v42[a7];
LABEL_55:
          v56 = v55;
          v57 = a6 - 8;
          v52 = v53;
          if (v55 < v47)
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

        return 0;
      }

      if (!a2)
      {
        return 0;
      }

      v78 = *(a1 + 32);
      if (*(v78 + 16) != 8)
      {
        faiss::decode<faiss::PQDecoder8>();
      }

      v39 = 0;
      v79 = 0;
      v80 = 0;
      v81 = a5 - 1;
      v82 = *(v78 + 32);
      v83 = *(a1 + 64);
      v84 = a6 - 8;
      v85 = *(v78 + 8);
LABEL_96:
      v86 = *(v12 + 216);
      if (v85)
      {
        v87 = 0;
        v88 = v83;
        do
        {
          v86 = v86 + (*(*(*(v12 + 112) + 8 * v87) + 4 * a3->u8[v87]) + (*(v88 + 4 * a3->u8[v87]) * -2.0));
          ++v87;
          v88 += 4 * *(v78 + 40);
        }

        while (v85 != v87);
      }

      if (*a5 <= v86)
      {
        goto LABEL_116;
      }

      if (v214)
      {
        v89 = *(v214 + 8 * v80);
      }

      else
      {
        v89 = v80 | (v13 << 32);
      }

      if (a7 < 2)
      {
        v90 = 1;
        goto LABEL_115;
      }

      v91 = 3;
      v92 = 2;
      v93 = 1;
      while (v92 != a7)
      {
        v94 = v81[v92];
        v95 = a5[v92];
        if (v94 > v95)
        {
          goto LABEL_109;
        }

        v96 = a6;
        if (v95 < v86)
        {
LABEL_114:
          v90 = v93;
LABEL_115:
          v81[v90] = v86;
          *(v84 + 8 * v90) = v89;
          v39 = ++v79;
LABEL_116:
          a3 = (a3 + v82);
          if (++v80 == a2)
          {
            return v39;
          }

          goto LABEL_96;
        }

LABEL_112:
        v81[v93] = v95;
        *(v84 + 8 * v93) = *(v96 + 8 * v92);
        v90 = v91;
        v92 = 2 * v91;
        v91 = (2 * v91) | 1;
        v93 = v90;
        if (v92 > a7)
        {
          goto LABEL_115;
        }
      }

      v94 = v81[a7];
LABEL_109:
      v95 = v94;
      v96 = a6 - 8;
      v91 = v92;
      if (v94 < v86)
      {
        goto LABEL_114;
      }

      goto LABEL_112;
    }

    if (*(a1 + 44) == 1)
    {
      v97 = (a1 + 72);
      (*(**(*(a1 + 8) + 40) + 104))(*(*(a1 + 8) + 40), *(a1 + 136), *(a1 + 72), v13);
      a6 = v213;
    }

    else
    {
      v97 = (a1 + 136);
    }

    if (!a2)
    {
      return 0;
    }

    v39 = 0;
    v192 = 0;
    v193 = *v97;
    v210 = v13 << 32;
    v194 = a5 - 1;
    v195 = a6 - 8;
LABEL_260:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v196 = *(*(v12 + 32) + 32);
    v197 = faiss::fvec_L2sqr(*(v12 + 80), v193, *(v12 + 24));
    if (*a5 <= v197)
    {
      goto LABEL_277;
    }

    if (v214)
    {
      v198 = *(v214 + 8 * v192);
    }

    else
    {
      v198 = v192 | v210;
    }

    if (a7 < 2)
    {
      v199 = 1;
      goto LABEL_276;
    }

    v200 = 3;
    v201 = 2;
    v202 = 1;
    while (v201 != a7)
    {
      v203 = v194[v201];
      v204 = a5[v201];
      if (v203 > v204)
      {
        goto LABEL_270;
      }

      v205 = v213;
      if (v204 < v197)
      {
LABEL_275:
        v199 = v202;
LABEL_276:
        v194[v199] = v197;
        *(v195 + 8 * v199) = v198;
        ++v39;
LABEL_277:
        a3 = (a3 + v196);
        if (++v192 == a2)
        {
          return v39;
        }

        goto LABEL_260;
      }

LABEL_273:
      v194[v202] = v204;
      *(v195 + 8 * v202) = *(v205 + 8 * v201);
      v199 = v200;
      v201 = 2 * v200;
      v200 = (2 * v200) | 1;
      v202 = v199;
      if (v201 > a7)
      {
        goto LABEL_276;
      }
    }

    v203 = v194[a7];
LABEL_270:
    v204 = v203;
    v205 = v195;
    v200 = v201;
    if (v203 < v197)
    {
      goto LABEL_275;
    }

    goto LABEL_273;
  }

  if (v15 != 2)
  {
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  v18 = *(*(a1 + 8) + 416);
  if (v17 > 19)
  {
    if (v17 != 20)
    {
      if (v17 != 32)
      {
        if (v17 != 64)
        {
LABEL_172:
          v215 = *(a1 + 160);
          v216 = v17 / 8;
          v217 = v17 - (v16 & 0xFFFFFFF8);
          if (!a2)
          {
            v209 = 0;
            v137 = 0;
            goto LABEL_281;
          }

          v137 = 0;
          v138 = v13;
          v139 = 0;
          v209 = 0;
          v212 = v17;
          v208 = v138 << 32;
          v140 = a5 - 1;
          v141 = a6 - 8;
LABEL_174:
          a1 = faiss::HammingComputerDefault::hamming(&v215, a3);
          if (a1 >= v18)
          {
            goto LABEL_198;
          }

          v142 = *(v12 + 32);
          if (*(v142 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v143 = *(v12 + 216);
          v144 = *(v142 + 8);
          if (v144)
          {
            v145 = 0;
            v146 = *(v12 + 56);
            v147 = 4 * *(v142 + 40);
            v148 = v213;
            do
            {
              v143 = v143 + *(v146 + 4 * a3->u8[v145++]);
              v146 += v147;
            }

            while (v144 != v145);
          }

          else
          {
            v148 = v213;
          }

          ++v137;
          if (*a5 <= v143)
          {
            goto LABEL_198;
          }

          if (v214)
          {
            v149 = *(v214 + 8 * v139);
          }

          else
          {
            v149 = v139 | v208;
          }

          if (a7 < 2)
          {
            v150 = 1;
            goto LABEL_197;
          }

          v151 = 3;
          v152 = 2;
          v153 = 1;
          while (v152 != a7)
          {
            v154 = v140[v152];
            v155 = a5[v152];
            if (v154 > v155)
            {
              goto LABEL_191;
            }

            v156 = v148;
            if (v155 < v143)
            {
LABEL_196:
              v150 = v153;
LABEL_197:
              v140[v150] = v143;
              *(v141 + 8 * v150) = v149;
              ++v209;
LABEL_198:
              a3 = (a3 + v212);
              if (++v139 == a2)
              {
LABEL_281:
                faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                qword_1ECB70E30 += v137;
                return v209;
              }

              goto LABEL_174;
            }

LABEL_194:
            v140[v153] = v155;
            *(v141 + 8 * v153) = *(v156 + 8 * v152);
            v150 = v151;
            v152 = 2 * v151;
            v151 = (2 * v151) | 1;
            v153 = v150;
            if (v152 > a7)
            {
              goto LABEL_197;
            }
          }

          v154 = v140[a7];
LABEL_191:
          v155 = v154;
          v156 = v141;
          v151 = v152;
          if (v154 < v143)
          {
            goto LABEL_196;
          }

          goto LABEL_194;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_254;
        }

        v58 = 0;
        v21 = 0;
        v59 = 0;
        v60 = *(a1 + 160);
        v62 = v60[2];
        v61 = v60[3];
        v64 = *v60;
        v63 = v60[1];
        v65 = a5 - 1;
        v66 = a6 - 8;
LABEL_69:
        if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v64))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v63)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v62))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v61)))))))) >= v18)
        {
          goto LABEL_91;
        }

        if (*(v16 + 16) != 8)
        {
          faiss::decode<faiss::PQDecoder8>();
        }

        v67 = *(v12 + 216);
        v68 = *(v16 + 8);
        if (v68)
        {
          v69 = 0;
          v70 = *(v12 + 56);
          do
          {
            a1 = a3->u8[v69];
            v67 = v67 + *(v70 + 4 * a1);
            ++v69;
            v70 += 4 * *(v16 + 40);
          }

          while (v68 != v69);
        }

        ++v21;
        if (*a5 <= v67)
        {
          goto LABEL_91;
        }

        if (v14)
        {
          v71 = *(v14 + 8 * v59);
        }

        else
        {
          v71 = v59 | (v13 << 32);
        }

        if (a7 < 2)
        {
          a1 = 1;
          goto LABEL_90;
        }

        v72 = 3;
        v73 = 2;
        v74 = 1;
        while (v73 != a7)
        {
          v75 = v65[v73];
          v76 = a5[v73];
          if (v75 > v76)
          {
            goto LABEL_84;
          }

          v77 = a6;
          if (v76 < v67)
          {
LABEL_89:
            a1 = v74;
LABEL_90:
            v65[a1] = v67;
            *(v66 + 8 * a1) = v71;
            v19 = ++v58;
LABEL_91:
            a3 += 4;
            if (++v59 == a2)
            {
              goto LABEL_255;
            }

            goto LABEL_69;
          }

LABEL_87:
          v65[v74] = v76;
          *(v66 + 8 * v74) = *(v77 + 8 * v73);
          a1 = v72;
          v73 = 2 * v72;
          v72 = (2 * v72) | 1;
          v74 = a1;
          if (v73 > a7)
          {
            goto LABEL_90;
          }
        }

        v75 = v65[a7];
LABEL_84:
        v76 = v75;
        v77 = a6 - 8;
        v72 = v73;
        if (v75 < v67)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_254;
      }

      v174 = 0;
      v21 = 0;
      v175 = 0;
      v176 = *(a1 + 160);
      v178 = *v176;
      v177 = v176[1];
      v179 = a5 - 1;
      v180 = a6 - 8;
LABEL_230:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v178))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v177))))))) >= v18)
      {
        goto LABEL_252;
      }

      if (*(v16 + 16) != 8)
      {
        faiss::decode<faiss::PQDecoder8>();
      }

      v181 = *(v12 + 216);
      v182 = *(v16 + 8);
      if (v182)
      {
        v183 = 0;
        v184 = *(v12 + 56);
        do
        {
          a1 = a3->u8[v183];
          v181 = v181 + *(v184 + 4 * a1);
          ++v183;
          v184 += 4 * *(v16 + 40);
        }

        while (v182 != v183);
      }

      ++v21;
      if (*a5 <= v181)
      {
        goto LABEL_252;
      }

      if (v14)
      {
        v185 = *(v14 + 8 * v175);
      }

      else
      {
        v185 = v175 | (v13 << 32);
      }

      if (a7 < 2)
      {
        a1 = 1;
        goto LABEL_251;
      }

      v186 = 3;
      v187 = 2;
      v188 = 1;
      while (v187 != a7)
      {
        v189 = v179[v187];
        v190 = a5[v187];
        if (v189 > v190)
        {
          goto LABEL_245;
        }

        v191 = a6;
        if (v190 < v181)
        {
LABEL_250:
          a1 = v188;
LABEL_251:
          v179[a1] = v181;
          *(v180 + 8 * a1) = v185;
          v19 = ++v174;
LABEL_252:
          a3 += 2;
          if (++v175 == a2)
          {
            goto LABEL_255;
          }

          goto LABEL_230;
        }

LABEL_248:
        v179[v188] = v190;
        *(v180 + 8 * v188) = *(v191 + 8 * v187);
        a1 = v186;
        v187 = 2 * v186;
        v186 = (2 * v186) | 1;
        v188 = a1;
        if (v187 > a7)
        {
          goto LABEL_251;
        }
      }

      v189 = v179[a7];
LABEL_245:
      v190 = v189;
      v191 = a6 - 8;
      v186 = v187;
      if (v189 < v181)
      {
        goto LABEL_250;
      }

      goto LABEL_248;
    }

    v98 = 0;
    if (!a2)
    {
      goto LABEL_226;
    }

    v115 = 0;
    v21 = 0;
    v116 = 0;
    v117 = *(a1 + 160);
    v118 = *v117;
    v119 = v117[1].i32[0];
    v120 = a5 - 1;
    v121 = a6 - 8;
LABEL_148:
    v122 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v118))))));
    v123 = vadd_s32(vdup_lane_s32(v122, 1), v122);
    v124 = v123.i32[0];
    v123.i32[0] = a3[1].i32[0] ^ v119;
    v125 = vcnt_s8(v123);
    v125.i16[0] = vaddlv_u8(v125);
    if (v124 + v125.i32[0] >= v18)
    {
      goto LABEL_170;
    }

    if (*(v16 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v126 = *(v12 + 216);
    v127 = *(v16 + 8);
    if (v127)
    {
      v128 = 0;
      v129 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v126 = v126 + *(v129 + 4 * a3->u8[v128++]);
        v129 += a1;
      }

      while (v127 != v128);
    }

    ++v21;
    if (*a5 <= v126)
    {
      goto LABEL_170;
    }

    if (v14)
    {
      v130 = *(v14 + 8 * v116);
    }

    else
    {
      v130 = v116 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v131 = 1;
      goto LABEL_169;
    }

    a1 = 3;
    v132 = 2;
    v133 = 1;
    while (v132 != a7)
    {
      v134 = v120[v132];
      v135 = a5[v132];
      if (v134 > v135)
      {
        goto LABEL_163;
      }

      v136 = a6;
      if (v135 < v126)
      {
LABEL_168:
        v131 = v133;
LABEL_169:
        v120[v131] = v126;
        *(v121 + 8 * v131) = v130;
        v98 = ++v115;
LABEL_170:
        a3 = (a3 + 20);
        if (++v116 == a2)
        {
          goto LABEL_227;
        }

        goto LABEL_148;
      }

LABEL_166:
      v120[v133] = v135;
      *(v121 + 8 * v133) = *(v136 + 8 * v132);
      v131 = a1;
      v132 = 2 * a1;
      a1 = (2 * a1) | 1;
      v133 = v131;
      if (v132 > a7)
      {
        goto LABEL_169;
      }
    }

    v134 = v120[a7];
LABEL_163:
    v135 = v134;
    v136 = a6 - 8;
    a1 = v132;
    if (v134 < v126)
    {
      goto LABEL_168;
    }

    goto LABEL_166;
  }

  if (v17 == 4)
  {
    v98 = 0;
    if (!a2)
    {
      goto LABEL_226;
    }

    v99 = 0;
    v21 = 0;
    v100 = 0;
    v101 = **(a1 + 160);
    v102 = a5 - 1;
    v103 = a6 - 8;
LABEL_122:
    a8.i32[0] = a3->i32[0] ^ v101;
    a8 = vcnt_s8(a8);
    a8.i16[0] = vaddlv_u8(a8);
    if (a8.i32[0] >= v18)
    {
      goto LABEL_144;
    }

    if (*(v16 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v104 = *(v12 + 216);
    v105 = *(v16 + 8);
    if (v105)
    {
      v106 = 0;
      v107 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v104 = v104 + *(v107 + 4 * a3->u8[v106++]);
        v107 += a1;
      }

      while (v105 != v106);
    }

    ++v21;
    if (*a5 <= v104)
    {
      goto LABEL_144;
    }

    if (v14)
    {
      v108 = *(v14 + 8 * v100);
    }

    else
    {
      v108 = v100 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v109 = 1;
      goto LABEL_143;
    }

    a1 = 3;
    v110 = 2;
    v111 = 1;
    while (v110 != a7)
    {
      v112 = v102[v110];
      v113 = a5[v110];
      if (v112 > v113)
      {
        goto LABEL_137;
      }

      v114 = a6;
      if (v113 < v104)
      {
LABEL_142:
        v109 = v111;
LABEL_143:
        v102[v109] = v104;
        *(v103 + 8 * v109) = v108;
        v98 = ++v99;
LABEL_144:
        a3 = (a3 + 4);
        if (++v100 == a2)
        {
          goto LABEL_227;
        }

        goto LABEL_122;
      }

LABEL_140:
      v102[v111] = v113;
      *(v103 + 8 * v111) = *(v114 + 8 * v110);
      v109 = a1;
      v110 = 2 * a1;
      a1 = (2 * a1) | 1;
      v111 = v109;
      if (v110 > a7)
      {
        goto LABEL_143;
      }
    }

    v112 = v102[a7];
LABEL_137:
    v113 = v112;
    v114 = a6 - 8;
    a1 = v110;
    if (v112 < v104)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (v17 == 8)
  {
    v98 = 0;
    if (a2)
    {
      v157 = 0;
      v21 = 0;
      v158 = 0;
      v159 = **(a1 + 160);
      v160 = a5 - 1;
      v161 = a6 - 8;
      while (1)
      {
        v162 = vcnt_s8((a3->i64[0] ^ v159));
        v162.i16[0] = vaddlv_u8(v162);
        if (v18 <= v162.i32[0])
        {
          goto LABEL_224;
        }

        if (*(v16 + 16) != 8)
        {
          faiss::decode<faiss::PQDecoder8>();
        }

        v163 = *(v12 + 216);
        v164 = *(v16 + 8);
        if (v164)
        {
          v165 = 0;
          v166 = *(v12 + 56);
          a1 = 4 * *(v16 + 40);
          do
          {
            v163 = v163 + *(v166 + 4 * a3->u8[v165++]);
            v166 += a1;
          }

          while (v164 != v165);
        }

        ++v21;
        if (*a5 <= v163)
        {
          goto LABEL_224;
        }

        if (v14)
        {
          v167 = *(v14 + 8 * v158);
        }

        else
        {
          v167 = v158 | (v13 << 32);
        }

        if (a7 < 2)
        {
          v168 = 1;
          goto LABEL_223;
        }

        a1 = 3;
        v169 = 2;
        v170 = 1;
        while (1)
        {
          if (v169 == a7)
          {
            v171 = v160[a7];
LABEL_217:
            v172 = v171;
            v173 = a6 - 8;
            a1 = v169;
            if (v171 < v163)
            {
              break;
            }

            goto LABEL_220;
          }

          v171 = v160[v169];
          v172 = a5[v169];
          if (v171 > v172)
          {
            goto LABEL_217;
          }

          v173 = a6;
          if (v172 < v163)
          {
            break;
          }

LABEL_220:
          v160[v170] = v172;
          *(v161 + 8 * v170) = *(v173 + 8 * v169);
          v168 = a1;
          v169 = 2 * a1;
          a1 = (2 * a1) | 1;
          v170 = v168;
          if (v169 > a7)
          {
            goto LABEL_223;
          }
        }

        v168 = v170;
LABEL_223:
        v160[v168] = v163;
        *(v161 + 8 * v168) = v167;
        v98 = ++v157;
LABEL_224:
        a3 = (a3 + 8);
        if (++v158 == a2)
        {
LABEL_227:
          v39 = v98;
          goto LABEL_256;
        }
      }
    }

LABEL_226:
    v21 = 0;
    goto LABEL_227;
  }

  if (v17 != 16)
  {
    goto LABEL_172;
  }

  v19 = 0;
  if (!a2)
  {
LABEL_254:
    v21 = 0;
    goto LABEL_255;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = **(a1 + 160);
  v24 = a5 - 1;
  v25 = a6 - 8;
  do
  {
    v26 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v23))))));
    if (vadd_s32(vdup_lane_s32(v26, 1), v26).i32[0] >= v18)
    {
      goto LABEL_34;
    }

    if (*(v16 + 16) != 8)
    {
      faiss::decode<faiss::PQDecoder8>();
    }

    v27 = *(v12 + 216);
    v28 = *(v16 + 8);
    if (v28)
    {
      v29 = 0;
      v30 = *(v12 + 56);
      do
      {
        a1 = a3->u8[v29];
        v27 = v27 + *(v30 + 4 * a1);
        ++v29;
        v30 += 4 * *(v16 + 40);
      }

      while (v28 != v29);
    }

    ++v21;
    if (*a5 <= v27)
    {
      goto LABEL_34;
    }

    if (v14)
    {
      v31 = *(v14 + 8 * v22);
    }

    else
    {
      v31 = v22 | (v13 << 32);
    }

    if (a7 < 2)
    {
      a1 = 1;
      goto LABEL_33;
    }

    v32 = 3;
    v33 = 2;
    v34 = 1;
    while (1)
    {
      if (v33 == a7)
      {
        v35 = v24[a7];
        goto LABEL_27;
      }

      v35 = v24[v33];
      v36 = a5[v33];
      if (v35 <= v36)
      {
        break;
      }

LABEL_27:
      v36 = v35;
      v37 = a6 - 8;
      v32 = v33;
      if (v35 < v27)
      {
        goto LABEL_32;
      }

LABEL_30:
      v24[v34] = v36;
      *(v25 + 8 * v34) = *(v37 + 8 * v33);
      a1 = v32;
      v33 = 2 * v32;
      v32 = (2 * v32) | 1;
      v34 = a1;
      if (v33 > a7)
      {
        goto LABEL_33;
      }
    }

    v37 = a6;
    if (v36 >= v27)
    {
      goto LABEL_30;
    }

LABEL_32:
    a1 = v34;
LABEL_33:
    v24[a1] = v27;
    *(v25 + 8 * a1) = v31;
    v19 = ++v20;
LABEL_34:
    ++a3;
    ++v22;
  }

  while (v22 != a2);
LABEL_255:
  v39 = v19;
LABEL_256:
  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
  qword_1ECB70E30 += v21;
  return v39;
}

void sub_1D9C50528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v77 = 0;
            v78 = *(a1 + 20);
            v79 = *v78;
            v80 = v78[1].i32[0];
            v81 = v12 << 32;
            v139 = *v78;
            do
            {
              v82 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v79))))));
              v83 = vadd_s32(vdup_lane_s32(v82, 1), v82);
              v84 = v83.i32[0];
              v83.i32[0] = a3[1].i32[0] ^ v80;
              v85 = vcnt_s8(v83);
              v85.i16[0] = vaddlv_u8(v85);
              if (v84 + v85.i32[0] < v16)
              {
                v86 = *(v11 + 4);
                if (*(v86 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v87 = *(v11 + 54);
                v88 = *(v86 + 8);
                if (v88)
                {
                  v89 = 0;
                  v90 = *(v11 + 7);
                  v91 = 4 * *(v86 + 40);
                  do
                  {
                    v87 = v87 + *(v90 + 4 * a3->u8[v89++]);
                    v90 += v91;
                  }

                  while (v88 != v89);
                }

                ++v17;
                if (v87 < v8)
                {
                  if (v13)
                  {
                    v92 = *(v13 + 8 * v77);
                  }

                  else
                  {
                    v92 = v77 | v81;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v87, v92);
                  v79 = v139;
                }
              }

              a3 = (a3 + 20);
              ++v77;
            }

            while (v77 != a2);
          }

          goto LABEL_142;
        case 32:
          v17 = 0;
          if (a2)
          {
            v114 = 0;
            v115 = *(a1 + 20);
            v117 = *v115;
            v116 = v115[1];
            v118 = v12 << 32;
            v136 = *v115;
            v140 = v116;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v117))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v116))))))) < v16)
              {
                v119 = *(v11 + 4);
                if (*(v119 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v120 = *(v11 + 54);
                v121 = *(v119 + 8);
                if (v121)
                {
                  v122 = 0;
                  v123 = *(v11 + 7);
                  v124 = 4 * *(v119 + 40);
                  do
                  {
                    v120 = v120 + *(v123 + 4 * a3->u8[v122++]);
                    v123 += v124;
                  }

                  while (v121 != v122);
                }

                ++v17;
                if (v120 < v8)
                {
                  if (v13)
                  {
                    v125 = *(v13 + 8 * v114);
                  }

                  else
                  {
                    v125 = v114 | v118;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v120, v125);
                  v117 = v136;
                  v116 = v140;
                }
              }

              a3 += 2;
              ++v114;
            }

            while (v114 != a2);
          }

          goto LABEL_142;
        case 64:
          v17 = 0;
          if (a2)
          {
            v39 = 0;
            v40 = *(a1 + 20);
            v42 = v40[2];
            v41 = v40[3];
            v44 = *v40;
            v43 = v40[1];
            v45 = v12 << 32;
            v135 = v42;
            v138 = v41;
            v133 = *v40;
            v134 = v43;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v44))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v43)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v42))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v41)))))))) < v16)
              {
                v46 = *(v11 + 4);
                if (*(v46 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v47 = *(v11 + 54);
                v48 = *(v46 + 8);
                if (v48)
                {
                  v49 = 0;
                  v50 = *(v11 + 7);
                  v51 = 4 * *(v46 + 40);
                  do
                  {
                    v47 = v47 + *(v50 + 4 * a3->u8[v49++]);
                    v50 += v51;
                  }

                  while (v48 != v49);
                }

                ++v17;
                if (v47 < v8)
                {
                  if (v13)
                  {
                    v52 = *(v13 + 8 * v39);
                  }

                  else
                  {
                    v52 = v39 | v45;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v47, v52);
                  v42 = v135;
                  v41 = v138;
                  v44 = v133;
                  v43 = v134;
                }
              }

              a3 += 4;
              ++v39;
            }

            while (v39 != a2);
          }

          goto LABEL_142;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v67 = 0;
            v68 = **(a1 + 20);
            v69 = v12 << 32;
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v68;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v70 = *(v11 + 4);
                if (*(v70 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v71 = *(v11 + 54);
                v72 = *(v70 + 8);
                if (v72)
                {
                  v73 = 0;
                  v74 = *(v11 + 7);
                  v75 = 4 * *(v70 + 40);
                  do
                  {
                    v71 = v71 + *(v74 + 4 * a3->u8[v73++]);
                    v74 += v75;
                  }

                  while (v72 != v73);
                }

                ++v17;
                if (v71 < v8)
                {
                  if (v13)
                  {
                    v76 = *(v13 + 8 * v67);
                  }

                  else
                  {
                    v76 = v67 | v69;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v71, v76);
                }
              }

              a3 = (a3 + 4);
              ++v67;
            }

            while (v67 != a2);
          }

          goto LABEL_142;
        case 8:
          v17 = 0;
          if (a2)
          {
            v103 = 0;
            v104 = **(a1 + 20);
            v105 = v12 << 32;
            do
            {
              v106 = vcnt_s8((a3->i64[0] ^ v104));
              v106.i16[0] = vaddlv_u8(v106);
              if (v16 > v106.i32[0])
              {
                v107 = *(v11 + 4);
                if (*(v107 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v108 = *(v11 + 54);
                v109 = *(v107 + 8);
                if (v109)
                {
                  v110 = 0;
                  v111 = *(v11 + 7);
                  v112 = 4 * *(v107 + 40);
                  do
                  {
                    v108 = v108 + *(v111 + 4 * a3->u8[v110++]);
                    v111 += v112;
                  }

                  while (v109 != v110);
                }

                ++v17;
                if (v108 < v8)
                {
                  if (v13)
                  {
                    v113 = *(v13 + 8 * v103);
                  }

                  else
                  {
                    v113 = v103 | v105;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v108, v113);
                }
              }

              a3 = (a3 + 8);
              ++v103;
            }

            while (v103 != a2);
          }

          goto LABEL_142;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v20 = v12 << 32;
            v137 = v19;
            do
            {
              v21 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v21, 1), v21).i32[0] < v16)
              {
                v22 = *(v11 + 4);
                if (*(v22 + 16) != 8)
                {
                  faiss::decode<faiss::PQDecoder8>();
                }

                v23 = *(v11 + 54);
                v24 = *(v22 + 8);
                if (v24)
                {
                  v25 = 0;
                  v26 = *(v11 + 7);
                  v27 = 4 * *(v22 + 40);
                  do
                  {
                    v23 = v23 + *(v26 + 4 * a3->u8[v25++]);
                    v26 += v27;
                  }

                  while (v24 != v25);
                }

                ++v17;
                if (v23 < v8)
                {
                  if (v13)
                  {
                    v28 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v28 = v18 | v20;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v28);
                  v19 = v137;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_142:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v141 = *(a1 + 20);
    v142 = v15 / 8;
    v143 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v93 = 0;
      v94 = v15;
      v95 = v12 << 32;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v141, a3);
        if (a1 < v16)
        {
          v96 = *(v11 + 4);
          if (*(v96 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v97 = *(v11 + 54);
          v98 = *(v96 + 8);
          if (v98)
          {
            v99 = 0;
            v100 = *(v11 + 7);
            v101 = 4 * *(v96 + 40);
            do
            {
              v97 = v97 + *(v100 + 4 * a3->u8[v99++]);
              v100 += v101;
            }

            while (v98 != v99);
          }

          ++v17;
          if (v97 < v8)
          {
            if (v13)
            {
              v102 = *(v13 + 8 * v93);
            }

            else
            {
              v102 = v93 | v95;
            }

            a1 = faiss::RangeQueryResult::add(this, v97, v102);
          }
        }

        a3 = (a3 + v94);
        ++v93;
      }

      while (v93 != a2);
    }

    goto LABEL_142;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v53 = 0;
        v54 = v12 << 32;
        do
        {
          v55 = *(v11 + 4);
          if (*(v55 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v56 = *(v11 + 54);
          v57 = *(v55 + 8);
          if (v57)
          {
            v58 = *(v11 + 8);
            v59 = *(v11 + 14);
            v60 = a3;
            do
            {
              v62 = v60->u8[0];
              v60 = (v60 + 1);
              v61 = v62;
              v63 = *v59++;
              v56 = v56 + (*(v63 + 4 * v61) + (*(v58 + 4 * v61) * -2.0));
              v58 += 4 * *(v55 + 40);
              --v57;
            }

            while (v57);
          }

          v64 = *(v55 + 32);
          if (v56 < v8)
          {
            if (v13)
            {
              v65 = *(v13 + 8 * v53);
            }

            else
            {
              v65 = v53 | v54;
            }

            faiss::RangeQueryResult::add(this, v56, v65);
          }

          a3 = (a3 + v64);
          ++v53;
        }

        while (v53 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v141, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v141, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoder8>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoder8]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v29 = 0;
        v30 = v12 << 32;
        do
        {
          v31 = *(v11 + 4);
          if (*(v31 + 16) != 8)
          {
            faiss::decode<faiss::PQDecoder8>();
          }

          v32 = *(v11 + 54);
          v33 = *(v31 + 8);
          if (v33)
          {
            v34 = *(v11 + 7);
            v35 = a3;
            do
            {
              v36 = v35->u8[0];
              v35 = (v35 + 1);
              v32 = v32 + *(v34 + 4 * v36);
              v34 += 4 * *(v31 + 40);
              --v33;
            }

            while (v33);
          }

          v37 = *(v31 + 32);
          if (v32 < v8)
          {
            if (v13)
            {
              v38 = *(v13 + 8 * v29);
            }

            else
            {
              v38 = v29 | v30;
            }

            faiss::RangeQueryResult::add(this, v32, v38);
          }

          a3 = (a3 + v37);
          ++v29;
        }

        while (v29 != a2);
      }
    }
  }

  else
  {
    if (*(a1 + 44) == 1)
    {
      v66 = (a1 + 72);
      (*(**(*(a1 + 1) + 40) + 104))(*(*(a1 + 1) + 40), *(a1 + 17), *(a1 + 9), v12);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v66 = (a1 + 136);
      if (!a2)
      {
        return;
      }
    }

    v126 = 0;
    v127 = *v66;
    v128 = v12 << 32;
    do
    {
      faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
      v129 = *(*(v11 + 4) + 32);
      v130 = faiss::fvec_L2sqr(*(v11 + 10), v127, *(v11 + 6));
      if (v130 < v8)
      {
        if (v13)
        {
          v131 = *(v13 + 8 * v126);
        }

        else
        {
          v131 = v126 | v128;
        }

        faiss::RangeQueryResult::add(this, v130, v131);
      }

      a3 = (a3 + v129);
      ++v126;
    }

    while (a2 != v126);
  }
}

void sub_1D9C50EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder8>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::distance_to_code(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  if (*(v2 + 16) != 16)
  {
    faiss::decode<faiss::PQDecoder16>();
  }

  result = *(a1 + 216);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = 4 * *(v2 + 40);
    do
    {
      v7 = *a2++;
      result = result + *(v5 + 4 * v7);
      v5 += v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::scan_codes(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v15 = *(a1 + 224);
  v208 = a6;
  v209 = v14;
  if (*(a1 + 52) >= 1)
  {
    if (v15 != 2)
    {
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 32);
    v18 = *(*(a1 + 8) + 416);
    if (v17 <= 19)
    {
      if (v17 != 4)
      {
        if (v17 != 8)
        {
          if (v17 == 16)
          {
            v19 = 0;
            if (a2)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = **(a1 + 160);
              v24 = a5 - 1;
              v25 = a6 - 8;
              while (1)
              {
                v26 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v23))))));
                if (vadd_s32(vdup_lane_s32(v26, 1), v26).i32[0] >= v18)
                {
                  goto LABEL_34;
                }

                if (*(v16 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v27 = *(v12 + 216);
                v28 = *(v16 + 8);
                if (v28)
                {
                  v29 = 0;
                  v30 = *(v12 + 56);
                  do
                  {
                    a1 = a3->u16[v29];
                    v27 = v27 + *(v30 + 4 * a1);
                    ++v29;
                    v30 += 4 * *(v16 + 40);
                  }

                  while (v28 != v29);
                }

                ++v21;
                if (*a5 >= v27)
                {
                  goto LABEL_34;
                }

                if (v14)
                {
                  v31 = *(v14 + 8 * v22);
                }

                else
                {
                  v31 = v22 | (v13 << 32);
                }

                if (a7 < 2)
                {
                  a1 = 1;
                  goto LABEL_33;
                }

                v32 = 3;
                v33 = 2;
                v34 = 1;
                while (1)
                {
                  if (v33 == a7)
                  {
                    v35 = v24[a7];
                    goto LABEL_27;
                  }

                  v35 = v24[v33];
                  v36 = a5[v33];
                  if (v35 >= v36)
                  {
                    break;
                  }

LABEL_27:
                  v36 = v35;
                  v37 = a6 - 8;
                  v32 = v33;
                  if (v35 > v27)
                  {
                    goto LABEL_32;
                  }

LABEL_30:
                  v24[v34] = v36;
                  *(v25 + 8 * v34) = *(v37 + 8 * v33);
                  a1 = v32;
                  v33 = 2 * v32;
                  v32 = (2 * v32) | 1;
                  v34 = a1;
                  if (v33 > a7)
                  {
                    goto LABEL_33;
                  }
                }

                v37 = a6;
                if (v36 <= v27)
                {
                  goto LABEL_30;
                }

LABEL_32:
                a1 = v34;
LABEL_33:
                v24[a1] = v27;
                *(v25 + 8 * a1) = v31;
                v19 = ++v20;
LABEL_34:
                ++a3;
                if (++v22 == a2)
                {
LABEL_276:
                  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                  qword_1ECB70E30 += v21;
                  return v19;
                }
              }
            }

LABEL_275:
            v21 = 0;
            goto LABEL_276;
          }

          goto LABEL_194;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_275;
        }

        v167 = 0;
        v21 = 0;
        v168 = 0;
        v169 = **(a1 + 160);
        v170 = a5 - 1;
        v171 = a6 - 8;
LABEL_224:
        v172 = vcnt_s8((a3->i64[0] ^ v169));
        v172.i16[0] = vaddlv_u8(v172);
        if (v18 <= v172.i32[0])
        {
          goto LABEL_246;
        }

        if (*(v16 + 16) != 16)
        {
          faiss::decode<faiss::PQDecoder16>();
        }

        v173 = *(v12 + 216);
        v174 = *(v16 + 8);
        if (v174)
        {
          v175 = 0;
          v176 = *(v12 + 56);
          a1 = 4 * *(v16 + 40);
          do
          {
            v173 = v173 + *(v176 + 4 * a3->u16[v175++]);
            v176 += a1;
          }

          while (v174 != v175);
        }

        ++v21;
        if (*a5 >= v173)
        {
          goto LABEL_246;
        }

        if (v14)
        {
          v177 = *(v14 + 8 * v168);
        }

        else
        {
          v177 = v168 | (v13 << 32);
        }

        if (a7 < 2)
        {
          v178 = 1;
          goto LABEL_245;
        }

        a1 = 3;
        v179 = 2;
        v180 = 1;
        while (v179 != a7)
        {
          v181 = v170[v179];
          v182 = a5[v179];
          if (v181 < v182)
          {
            goto LABEL_239;
          }

          v183 = a6;
          if (v182 > v173)
          {
LABEL_244:
            v178 = v180;
LABEL_245:
            v170[v178] = v173;
            *(v171 + 8 * v178) = v177;
            v19 = ++v167;
LABEL_246:
            a3 = (a3 + 8);
            if (++v168 == a2)
            {
              goto LABEL_276;
            }

            goto LABEL_224;
          }

LABEL_242:
          v170[v180] = v182;
          *(v171 + 8 * v180) = *(v183 + 8 * v179);
          v178 = a1;
          v179 = 2 * a1;
          a1 = (2 * a1) | 1;
          v180 = v178;
          if (v179 > a7)
          {
            goto LABEL_245;
          }
        }

        v181 = v170[a7];
LABEL_239:
        v182 = v181;
        v183 = a6 - 8;
        a1 = v179;
        if (v181 > v173)
        {
          goto LABEL_244;
        }

        goto LABEL_242;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_275;
      }

      v111 = 0;
      v21 = 0;
      v112 = 0;
      v113 = **(a1 + 160);
      v114 = a5 - 1;
      v115 = a6 - 8;
LABEL_144:
      a8.i32[0] = a3->i32[0] ^ v113;
      a8 = vcnt_s8(a8);
      a8.i16[0] = vaddlv_u8(a8);
      if (a8.i32[0] >= v18)
      {
        goto LABEL_166;
      }

      if (*(v16 + 16) != 16)
      {
        faiss::decode<faiss::PQDecoder16>();
      }

      v116 = *(v12 + 216);
      v117 = *(v16 + 8);
      if (v117)
      {
        v118 = 0;
        v119 = *(v12 + 56);
        a1 = 4 * *(v16 + 40);
        do
        {
          v116 = v116 + *(v119 + 4 * a3->u16[v118++]);
          v119 += a1;
        }

        while (v117 != v118);
      }

      ++v21;
      if (*a5 >= v116)
      {
        goto LABEL_166;
      }

      if (v14)
      {
        v120 = *(v14 + 8 * v112);
      }

      else
      {
        v120 = v112 | (v13 << 32);
      }

      if (a7 < 2)
      {
        v121 = 1;
        goto LABEL_165;
      }

      a1 = 3;
      v122 = 2;
      v123 = 1;
      while (v122 != a7)
      {
        v124 = v114[v122];
        v125 = a5[v122];
        if (v124 < v125)
        {
          goto LABEL_159;
        }

        v126 = a6;
        if (v125 > v116)
        {
LABEL_164:
          v121 = v123;
LABEL_165:
          v114[v121] = v116;
          *(v115 + 8 * v121) = v120;
          v19 = ++v111;
LABEL_166:
          a3 = (a3 + 4);
          if (++v112 == a2)
          {
            goto LABEL_276;
          }

          goto LABEL_144;
        }

LABEL_162:
        v114[v123] = v125;
        *(v115 + 8 * v123) = *(v126 + 8 * v122);
        v121 = a1;
        v122 = 2 * a1;
        a1 = (2 * a1) | 1;
        v123 = v121;
        if (v122 > a7)
        {
          goto LABEL_165;
        }
      }

      v124 = v114[a7];
LABEL_159:
      v125 = v124;
      v126 = a6 - 8;
      a1 = v122;
      if (v124 > v116)
      {
        goto LABEL_164;
      }

      goto LABEL_162;
    }

    if (v17 != 20)
    {
      if (v17 != 32)
      {
        if (v17 != 64)
        {
LABEL_194:
          v210 = *(a1 + 160);
          v211 = v17 / 8;
          v212 = v17 - (v16 & 0xFFFFFFF8);
          if (!a2)
          {
            v19 = 0;
            goto LABEL_275;
          }

          v207 = v18;
          v19 = 0;
          v21 = 0;
          v149 = 0;
          v204 = v13 << 32;
          v205 = v17;
          v150 = a5 - 1;
          v151 = a6 - 8;
LABEL_196:
          a1 = faiss::HammingComputerDefault::hamming(&v210, a3);
          if (a1 >= v207)
          {
            goto LABEL_220;
          }

          v152 = *(v12 + 32);
          if (*(v152 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v153 = *(v12 + 216);
          v154 = *(v152 + 8);
          if (v154)
          {
            v155 = 0;
            v156 = *(v12 + 56);
            v157 = 4 * *(v152 + 40);
            v158 = v208;
            do
            {
              v153 = v153 + *(v156 + 4 * a3->u16[v155++]);
              v156 += v157;
            }

            while (v154 != v155);
          }

          else
          {
            v158 = v208;
          }

          ++v21;
          if (*a5 >= v153)
          {
            goto LABEL_220;
          }

          if (v209)
          {
            v159 = *(v209 + 8 * v149);
          }

          else
          {
            v159 = v149 | v204;
          }

          if (a7 < 2)
          {
            v160 = 1;
            goto LABEL_219;
          }

          v161 = 3;
          v162 = 2;
          v163 = 1;
          while (v162 != a7)
          {
            v164 = v150[v162];
            v165 = a5[v162];
            if (v164 < v165)
            {
              goto LABEL_213;
            }

            v166 = v158;
            if (v165 > v153)
            {
LABEL_218:
              v160 = v163;
LABEL_219:
              v150[v160] = v153;
              *(v151 + 8 * v160) = v159;
              ++v19;
LABEL_220:
              a3 = (a3 + v205);
              if (++v149 == a2)
              {
                goto LABEL_276;
              }

              goto LABEL_196;
            }

LABEL_216:
            v150[v163] = v165;
            *(v151 + 8 * v163) = *(v166 + 8 * v162);
            v160 = v161;
            v162 = 2 * v161;
            v161 = (2 * v161) | 1;
            v163 = v160;
            if (v162 > a7)
            {
              goto LABEL_219;
            }
          }

          v164 = v150[a7];
LABEL_213:
          v165 = v164;
          v166 = v151;
          v161 = v162;
          if (v164 > v153)
          {
            goto LABEL_218;
          }

          goto LABEL_216;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_275;
        }

        v57 = 0;
        v21 = 0;
        v58 = 0;
        v59 = *(a1 + 160);
        v61 = v59[2];
        v60 = v59[3];
        v63 = *v59;
        v62 = v59[1];
        v64 = a5 - 1;
        v65 = a6 - 8;
LABEL_69:
        if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v63))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v62)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v61))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v60)))))))) >= v18)
        {
          goto LABEL_91;
        }

        if (*(v16 + 16) != 16)
        {
          faiss::decode<faiss::PQDecoder16>();
        }

        v66 = *(v12 + 216);
        v67 = *(v16 + 8);
        if (v67)
        {
          v68 = 0;
          v69 = *(v12 + 56);
          do
          {
            a1 = a3->u16[v68];
            v66 = v66 + *(v69 + 4 * a1);
            ++v68;
            v69 += 4 * *(v16 + 40);
          }

          while (v67 != v68);
        }

        ++v21;
        if (*a5 >= v66)
        {
          goto LABEL_91;
        }

        if (v14)
        {
          v70 = *(v14 + 8 * v58);
        }

        else
        {
          v70 = v58 | (v13 << 32);
        }

        if (a7 < 2)
        {
          a1 = 1;
          goto LABEL_90;
        }

        v71 = 3;
        v72 = 2;
        v73 = 1;
        while (v72 != a7)
        {
          v74 = v64[v72];
          v75 = a5[v72];
          if (v74 < v75)
          {
            goto LABEL_84;
          }

          v76 = a6;
          if (v75 > v66)
          {
LABEL_89:
            a1 = v73;
LABEL_90:
            v64[a1] = v66;
            *(v65 + 8 * a1) = v70;
            v19 = ++v57;
LABEL_91:
            a3 += 4;
            if (++v58 == a2)
            {
              goto LABEL_276;
            }

            goto LABEL_69;
          }

LABEL_87:
          v64[v73] = v75;
          *(v65 + 8 * v73) = *(v76 + 8 * v72);
          a1 = v71;
          v72 = 2 * v71;
          v71 = (2 * v71) | 1;
          v73 = a1;
          if (v72 > a7)
          {
            goto LABEL_90;
          }
        }

        v74 = v64[a7];
LABEL_84:
        v75 = v74;
        v76 = a6 - 8;
        v71 = v72;
        if (v74 > v66)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_275;
      }

      v184 = 0;
      v21 = 0;
      v185 = 0;
      v186 = *(a1 + 160);
      v188 = *v186;
      v187 = v186[1];
      v189 = a5 - 1;
      v190 = a6 - 8;
LABEL_250:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v188))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v187))))))) >= v18)
      {
        goto LABEL_272;
      }

      if (*(v16 + 16) != 16)
      {
        faiss::decode<faiss::PQDecoder16>();
      }

      v191 = *(v12 + 216);
      v192 = *(v16 + 8);
      if (v192)
      {
        v193 = 0;
        v194 = *(v12 + 56);
        do
        {
          a1 = a3->u16[v193];
          v191 = v191 + *(v194 + 4 * a1);
          ++v193;
          v194 += 4 * *(v16 + 40);
        }

        while (v192 != v193);
      }

      ++v21;
      if (*a5 >= v191)
      {
        goto LABEL_272;
      }

      if (v14)
      {
        v195 = *(v14 + 8 * v185);
      }

      else
      {
        v195 = v185 | (v13 << 32);
      }

      if (a7 < 2)
      {
        a1 = 1;
        goto LABEL_271;
      }

      v196 = 3;
      v197 = 2;
      v198 = 1;
      while (v197 != a7)
      {
        v199 = v189[v197];
        v200 = a5[v197];
        if (v199 < v200)
        {
          goto LABEL_265;
        }

        v201 = a6;
        if (v200 > v191)
        {
LABEL_270:
          a1 = v198;
LABEL_271:
          v189[a1] = v191;
          *(v190 + 8 * a1) = v195;
          v19 = ++v184;
LABEL_272:
          a3 += 2;
          if (++v185 == a2)
          {
            goto LABEL_276;
          }

          goto LABEL_250;
        }

LABEL_268:
        v189[v198] = v200;
        *(v190 + 8 * v198) = *(v201 + 8 * v197);
        a1 = v196;
        v197 = 2 * v196;
        v196 = (2 * v196) | 1;
        v198 = a1;
        if (v197 > a7)
        {
          goto LABEL_271;
        }
      }

      v199 = v189[a7];
LABEL_265:
      v200 = v199;
      v201 = a6 - 8;
      v196 = v197;
      if (v199 > v191)
      {
        goto LABEL_270;
      }

      goto LABEL_268;
    }

    v19 = 0;
    if (!a2)
    {
      goto LABEL_275;
    }

    v127 = 0;
    v21 = 0;
    v128 = 0;
    v129 = *(a1 + 160);
    v130 = *v129;
    v131 = v129[1].i32[0];
    v132 = a5 - 1;
    v133 = a6 - 8;
LABEL_170:
    v134 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v130))))));
    v135 = vadd_s32(vdup_lane_s32(v134, 1), v134);
    v136 = v135.i32[0];
    v135.i32[0] = a3[1].i32[0] ^ v131;
    v137 = vcnt_s8(v135);
    v137.i16[0] = vaddlv_u8(v137);
    if (v136 + v137.i32[0] >= v18)
    {
      goto LABEL_192;
    }

    if (*(v16 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v138 = *(v12 + 216);
    v139 = *(v16 + 8);
    if (v139)
    {
      v140 = 0;
      v141 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v138 = v138 + *(v141 + 4 * a3->u16[v140++]);
        v141 += a1;
      }

      while (v139 != v140);
    }

    ++v21;
    if (*a5 >= v138)
    {
      goto LABEL_192;
    }

    if (v14)
    {
      v142 = *(v14 + 8 * v128);
    }

    else
    {
      v142 = v128 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v143 = 1;
      goto LABEL_191;
    }

    a1 = 3;
    v144 = 2;
    v145 = 1;
    while (v144 != a7)
    {
      v146 = v132[v144];
      v147 = a5[v144];
      if (v146 < v147)
      {
        goto LABEL_185;
      }

      v148 = a6;
      if (v147 > v138)
      {
LABEL_190:
        v143 = v145;
LABEL_191:
        v132[v143] = v138;
        *(v133 + 8 * v143) = v142;
        v19 = ++v127;
LABEL_192:
        a3 = (a3 + 20);
        if (++v128 == a2)
        {
          goto LABEL_276;
        }

        goto LABEL_170;
      }

LABEL_188:
      v132[v145] = v147;
      *(v133 + 8 * v145) = *(v148 + 8 * v144);
      v143 = a1;
      v144 = 2 * a1;
      a1 = (2 * a1) | 1;
      v145 = v143;
      if (v144 > a7)
      {
        goto LABEL_191;
      }
    }

    v146 = v132[a7];
LABEL_185:
    v147 = v146;
    v148 = a6 - 8;
    a1 = v144;
    if (v146 > v138)
    {
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  if (!v15)
  {
    v96 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 8) + 40) + 80))(*(*(a1 + 8) + 40), v13, *(a1 + 72));
      v97 = faiss::fvec_inner_product(*(v12 + 72), *(v12 + 136), *(v12 + 24));
      a6 = v208;
      v96 = v97;
    }

    if (!a2)
    {
      return 0;
    }

    v19 = 0;
    v98 = 0;
    v206 = v13 << 32;
    v99 = a5 - 1;
    v100 = a6 - 8;
LABEL_122:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v101 = *(*(v12 + 32) + 32);
    v102 = v96 + faiss::fvec_inner_product(*(v12 + 80), *(v12 + 136), *(v12 + 24));
    if (*a5 >= v102)
    {
      goto LABEL_139;
    }

    if (v209)
    {
      v103 = *(v209 + 8 * v98);
    }

    else
    {
      v103 = v98 | v206;
    }

    if (a7 < 2)
    {
      v104 = 1;
      goto LABEL_138;
    }

    v105 = 3;
    v106 = 2;
    v107 = 1;
    while (v106 != a7)
    {
      v108 = v99[v106];
      v109 = a5[v106];
      if (v108 < v109)
      {
        goto LABEL_132;
      }

      v110 = v208;
      if (v109 > v102)
      {
LABEL_137:
        v104 = v107;
LABEL_138:
        v99[v104] = v102;
        *(v100 + 8 * v104) = v103;
        ++v19;
LABEL_139:
        a3 = (a3 + v101);
        if (++v98 == a2)
        {
          return v19;
        }

        goto LABEL_122;
      }

LABEL_135:
      v99[v107] = v109;
      *(v100 + 8 * v107) = *(v110 + 8 * v106);
      v104 = v105;
      v106 = 2 * v105;
      v105 = (2 * v105) | 1;
      v107 = v104;
      if (v106 > a7)
      {
        goto LABEL_138;
      }
    }

    v108 = v99[a7];
LABEL_132:
    v109 = v108;
    v110 = v100;
    v105 = v106;
    if (v108 > v102)
    {
      goto LABEL_137;
    }

    goto LABEL_135;
  }

  if (v15 == 1)
  {
    if (!a2)
    {
      return 0;
    }

    v77 = *(a1 + 32);
    if (*(v77 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v19 = 0;
    v78 = 0;
    v79 = 0;
    v80 = a5 - 1;
    v81 = *(v77 + 32);
    v82 = *(a1 + 64);
    v83 = a6 - 8;
    v84 = *(v77 + 8);
LABEL_96:
    v85 = *(v12 + 216);
    if (v84)
    {
      v86 = 0;
      v87 = v82;
      do
      {
        v85 = v85 + (*(*(*(v12 + 112) + 8 * v86) + 4 * a3->u16[v86]) + (*(v87 + 4 * a3->u16[v86]) * -2.0));
        ++v86;
        v87 += 4 * *(v77 + 40);
      }

      while (v84 != v86);
    }

    if (*a5 >= v85)
    {
      goto LABEL_116;
    }

    if (v209)
    {
      v88 = *(v209 + 8 * v79);
    }

    else
    {
      v88 = v79 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v89 = 1;
      goto LABEL_115;
    }

    v90 = 3;
    v91 = 2;
    v92 = 1;
    while (v91 != a7)
    {
      v93 = v80[v91];
      v94 = a5[v91];
      if (v93 < v94)
      {
        goto LABEL_109;
      }

      v95 = a6;
      if (v94 > v85)
      {
LABEL_114:
        v89 = v92;
LABEL_115:
        v80[v89] = v85;
        *(v83 + 8 * v89) = v88;
        v19 = ++v78;
LABEL_116:
        a3 = (a3 + v81);
        if (++v79 == a2)
        {
          return v19;
        }

        goto LABEL_96;
      }

LABEL_112:
      v80[v92] = v94;
      *(v83 + 8 * v92) = *(v95 + 8 * v91);
      v89 = v90;
      v91 = 2 * v90;
      v90 = (2 * v90) | 1;
      v92 = v89;
      if (v91 > a7)
      {
        goto LABEL_115;
      }
    }

    v93 = v80[a7];
LABEL_109:
    v94 = v93;
    v95 = a6 - 8;
    v90 = v91;
    if (v93 > v85)
    {
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  if (v15 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v210, "bad precomp mode");
    faiss::FaissException::FaissException(exception, &v210, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoder16>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoder16]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
  }

  if (a2)
  {
    v38 = *(a1 + 32);
    if (*(v38 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v19 = 0;
    v39 = 0;
    v40 = 0;
    v41 = a5 - 1;
    v42 = *(v38 + 32);
    v43 = *(a1 + 56);
    v44 = a6 - 8;
    v45 = *(v38 + 8);
LABEL_42:
    v46 = *(v12 + 216);
    if (v45)
    {
      v47 = 0;
      v48 = v43;
      do
      {
        v46 = v46 + *(v48 + 4 * a3->u16[v47++]);
        v48 += 4 * *(v38 + 40);
      }

      while (v45 != v47);
    }

    if (*a5 >= v46)
    {
      goto LABEL_62;
    }

    if (v209)
    {
      v49 = *(v209 + 8 * v40);
    }

    else
    {
      v49 = v40 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v50 = 1;
      goto LABEL_61;
    }

    v51 = 3;
    v52 = 2;
    v53 = 1;
    while (v52 != a7)
    {
      v54 = v41[v52];
      v55 = a5[v52];
      if (v54 < v55)
      {
        goto LABEL_55;
      }

      v56 = a6;
      if (v55 > v46)
      {
LABEL_60:
        v50 = v53;
LABEL_61:
        v41[v50] = v46;
        *(v44 + 8 * v50) = v49;
        v19 = ++v39;
LABEL_62:
        a3 = (a3 + v42);
        if (++v40 == a2)
        {
          return v19;
        }

        goto LABEL_42;
      }

LABEL_58:
      v41[v53] = v55;
      *(v44 + 8 * v53) = *(v56 + 8 * v52);
      v50 = v51;
      v52 = 2 * v51;
      v51 = (2 * v51) | 1;
      v53 = v50;
      if (v52 > a7)
      {
        goto LABEL_61;
      }
    }

    v54 = v41[a7];
LABEL_55:
    v55 = v54;
    v56 = a6 - 8;
    v51 = v52;
    if (v54 > v46)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  return 0;
}

void sub_1D9C520C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::scan_codes_range(faiss::BufferList *a1, uint64_t a2, int8x16_t *a3, uint64_t a4, faiss::RangeQueryResult *this, double a6)
{
  v8 = *&a6;
  v11 = a1;
  v12 = *(a1 + 18);
  if (*(a1 + 220))
  {
    v13 = 0;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a1 + 56);
  if (*(a1 + 13) >= 1)
  {
    if (v14 != 2)
    {
    }

    v15 = *(*(a1 + 4) + 32);
    v16 = *(*(a1 + 1) + 416);
    if (v15 > 19)
    {
      switch(v15)
      {
        case 20:
          v17 = 0;
          if (a2)
          {
            v82 = 0;
            v83 = *(a1 + 20);
            v84 = *v83;
            v85 = v83[1].i32[0];
            v86 = v12 << 32;
            v138 = *v83;
            do
            {
              v87 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v84))))));
              v88 = vadd_s32(vdup_lane_s32(v87, 1), v87);
              v89 = v88.i32[0];
              v88.i32[0] = a3[1].i32[0] ^ v85;
              v90 = vcnt_s8(v88);
              v90.i16[0] = vaddlv_u8(v90);
              if (v89 + v90.i32[0] < v16)
              {
                v91 = *(v11 + 4);
                if (*(v91 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v92 = *(v11 + 54);
                v93 = *(v91 + 8);
                if (v93)
                {
                  v94 = 0;
                  v95 = *(v11 + 7);
                  v96 = 4 * *(v91 + 40);
                  do
                  {
                    v92 = v92 + *(v95 + 4 * a3->u16[v94++]);
                    v95 += v96;
                  }

                  while (v93 != v94);
                }

                ++v17;
                if (v92 > v8)
                {
                  if (v13)
                  {
                    v97 = *(v13 + 8 * v82);
                  }

                  else
                  {
                    v97 = v82 | v86;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v92, v97);
                  v84 = v138;
                }
              }

              a3 = (a3 + 20);
              ++v82;
            }

            while (v82 != a2);
          }

          goto LABEL_150;
        case 32:
          v17 = 0;
          if (a2)
          {
            v119 = 0;
            v120 = *(a1 + 20);
            v122 = *v120;
            v121 = v120[1];
            v123 = v12 << 32;
            v135 = *v120;
            v139 = v121;
            do
            {
              if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v122))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v121))))))) < v16)
              {
                v124 = *(v11 + 4);
                if (*(v124 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v125 = *(v11 + 54);
                v126 = *(v124 + 8);
                if (v126)
                {
                  v127 = 0;
                  v128 = *(v11 + 7);
                  v129 = 4 * *(v124 + 40);
                  do
                  {
                    v125 = v125 + *(v128 + 4 * a3->u16[v127++]);
                    v128 += v129;
                  }

                  while (v126 != v127);
                }

                ++v17;
                if (v125 > v8)
                {
                  if (v13)
                  {
                    v130 = *(v13 + 8 * v119);
                  }

                  else
                  {
                    v130 = v119 | v123;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v125, v130);
                  v122 = v135;
                  v121 = v139;
                }
              }

              a3 += 2;
              ++v119;
            }

            while (v119 != a2);
          }

          goto LABEL_150;
        case 64:
          v17 = 0;
          if (a2)
          {
            v39 = 0;
            v40 = *(a1 + 20);
            v42 = v40[2];
            v41 = v40[3];
            v44 = *v40;
            v43 = v40[1];
            v45 = v12 << 32;
            v134 = v42;
            v137 = v41;
            v132 = *v40;
            v133 = v43;
            do
            {
              if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v44))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v43)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v42))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v41)))))))) < v16)
              {
                v46 = *(v11 + 4);
                if (*(v46 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v47 = *(v11 + 54);
                v48 = *(v46 + 8);
                if (v48)
                {
                  v49 = 0;
                  v50 = *(v11 + 7);
                  v51 = 4 * *(v46 + 40);
                  do
                  {
                    v47 = v47 + *(v50 + 4 * a3->u16[v49++]);
                    v50 += v51;
                  }

                  while (v48 != v49);
                }

                ++v17;
                if (v47 > v8)
                {
                  if (v13)
                  {
                    v52 = *(v13 + 8 * v39);
                  }

                  else
                  {
                    v52 = v39 | v45;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v47, v52);
                  v42 = v134;
                  v41 = v137;
                  v44 = v132;
                  v43 = v133;
                }
              }

              a3 += 4;
              ++v39;
            }

            while (v39 != a2);
          }

          goto LABEL_150;
      }
    }

    else
    {
      switch(v15)
      {
        case 4:
          v17 = 0;
          if (a2)
          {
            v72 = 0;
            v73 = **(a1 + 20);
            v74 = v12 << 32;
            do
            {
              LODWORD(a6) = a3->i32[0] ^ v73;
              a6 = COERCE_DOUBLE(vcnt_s8(*&a6));
              LOWORD(a6) = vaddlv_u8(*&a6);
              if (SLODWORD(a6) < v16)
              {
                v75 = *(v11 + 4);
                if (*(v75 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v76 = *(v11 + 54);
                v77 = *(v75 + 8);
                if (v77)
                {
                  v78 = 0;
                  v79 = *(v11 + 7);
                  v80 = 4 * *(v75 + 40);
                  do
                  {
                    v76 = v76 + *(v79 + 4 * a3->u16[v78++]);
                    v79 += v80;
                  }

                  while (v77 != v78);
                }

                ++v17;
                if (v76 > v8)
                {
                  if (v13)
                  {
                    v81 = *(v13 + 8 * v72);
                  }

                  else
                  {
                    v81 = v72 | v74;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v76, v81);
                }
              }

              a3 = (a3 + 4);
              ++v72;
            }

            while (v72 != a2);
          }

          goto LABEL_150;
        case 8:
          v17 = 0;
          if (a2)
          {
            v108 = 0;
            v109 = **(a1 + 20);
            v110 = v12 << 32;
            do
            {
              v111 = vcnt_s8((a3->i64[0] ^ v109));
              v111.i16[0] = vaddlv_u8(v111);
              if (v16 > v111.i32[0])
              {
                v112 = *(v11 + 4);
                if (*(v112 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v113 = *(v11 + 54);
                v114 = *(v112 + 8);
                if (v114)
                {
                  v115 = 0;
                  v116 = *(v11 + 7);
                  v117 = 4 * *(v112 + 40);
                  do
                  {
                    v113 = v113 + *(v116 + 4 * a3->u16[v115++]);
                    v116 += v117;
                  }

                  while (v114 != v115);
                }

                ++v17;
                if (v113 > v8)
                {
                  if (v13)
                  {
                    v118 = *(v13 + 8 * v108);
                  }

                  else
                  {
                    v118 = v108 | v110;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v113, v118);
                }
              }

              a3 = (a3 + 8);
              ++v108;
            }

            while (v108 != a2);
          }

          goto LABEL_150;
        case 16:
          v17 = 0;
          if (a2)
          {
            v18 = 0;
            v19 = **(a1 + 20);
            v20 = v12 << 32;
            v136 = v19;
            do
            {
              v21 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v19))))));
              if (vadd_s32(vdup_lane_s32(v21, 1), v21).i32[0] < v16)
              {
                v22 = *(v11 + 4);
                if (*(v22 + 16) != 16)
                {
                  faiss::decode<faiss::PQDecoder16>();
                }

                v23 = *(v11 + 54);
                v24 = *(v22 + 8);
                if (v24)
                {
                  v25 = 0;
                  v26 = *(v11 + 7);
                  v27 = 4 * *(v22 + 40);
                  do
                  {
                    v23 = v23 + *(v26 + 4 * a3->u16[v25++]);
                    v26 += v27;
                  }

                  while (v24 != v25);
                }

                ++v17;
                if (v23 > v8)
                {
                  if (v13)
                  {
                    v28 = *(v13 + 8 * v18);
                  }

                  else
                  {
                    v28 = v18 | v20;
                  }

                  a1 = faiss::RangeQueryResult::add(this, v23, v28);
                  v19 = v136;
                }
              }

              ++a3;
              ++v18;
            }

            while (v18 != a2);
          }

LABEL_150:
          faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
          qword_1ECB70E30 += v17;
          return;
      }
    }

    v140 = *(a1 + 20);
    v141 = v15 / 8;
    v142 = v15 - (v6 & 0xFFFFFFF8);
    v17 = 0;
    if (a2)
    {
      v98 = 0;
      v99 = v15;
      v100 = v12 << 32;
      do
      {
        a1 = faiss::HammingComputerDefault::hamming(&v140, a3);
        if (a1 < v16)
        {
          v101 = *(v11 + 4);
          if (*(v101 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v102 = *(v11 + 54);
          v103 = *(v101 + 8);
          if (v103)
          {
            v104 = 0;
            v105 = *(v11 + 7);
            v106 = 4 * *(v101 + 40);
            do
            {
              v102 = v102 + *(v105 + 4 * a3->u16[v104++]);
              v105 += v106;
            }

            while (v103 != v104);
          }

          ++v17;
          if (v102 > v8)
          {
            if (v13)
            {
              v107 = *(v13 + 8 * v98);
            }

            else
            {
              v107 = v98 | v100;
            }

            a1 = faiss::RangeQueryResult::add(this, v102, v107);
          }
        }

        a3 = (a3 + v99);
        ++v98;
      }

      while (v98 != a2);
    }

    goto LABEL_150;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      if (a2)
      {
        v53 = 0;
        v54 = v12 << 32;
        do
        {
          v55 = *(v11 + 4);
          if (*(v55 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v56 = *(v11 + 54);
          v57 = *(v55 + 8);
          if (v57)
          {
            v58 = *(v11 + 8);
            v59 = *(v11 + 14);
            v60 = a3;
            do
            {
              v62 = v60->u16[0];
              v60 = (v60 + 2);
              v61 = v62;
              v63 = *v59++;
              v56 = v56 + (*(v63 + 4 * v61) + (*(v58 + 4 * v61) * -2.0));
              v58 += 4 * *(v55 + 40);
              --v57;
            }

            while (v57);
          }

          v64 = *(v55 + 32);
          if (v56 > v8)
          {
            if (v13)
            {
              v65 = *(v13 + 8 * v53);
            }

            else
            {
              v65 = v53 | v54;
            }

            faiss::RangeQueryResult::add(this, v56, v65);
          }

          a3 = (a3 + v64);
          ++v53;
        }

        while (v53 != a2);
      }
    }

    else
    {
      if (v14 != 2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v140, "bad precomp mode");
        faiss::FaissException::FaissException(exception, &v140, "virtual void faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_INNER_PRODUCT, faiss::CMin<float, long long>, faiss::PQDecoder16>::scan_codes_range(size_t, const uint8_t *, const idx_t *, float, RangeQueryResult &) const [METRIC_TYPE = faiss::METRIC_INNER_PRODUCT, C = faiss::CMin<float, long long>, PQDecoder = faiss::PQDecoder16]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1126);
      }

      if (a2)
      {
        v29 = 0;
        v30 = v12 << 32;
        do
        {
          v31 = *(v11 + 4);
          if (*(v31 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v32 = *(v11 + 54);
          v33 = *(v31 + 8);
          if (v33)
          {
            v34 = *(v11 + 7);
            v35 = a3;
            do
            {
              v36 = v35->u16[0];
              v35 = (v35 + 2);
              v32 = v32 + *(v34 + 4 * v36);
              v34 += 4 * *(v31 + 40);
              --v33;
            }

            while (v33);
          }

          v37 = *(v31 + 32);
          if (v32 > v8)
          {
            if (v13)
            {
              v38 = *(v13 + 8 * v29);
            }

            else
            {
              v38 = v29 | v30;
            }

            faiss::RangeQueryResult::add(this, v32, v38);
          }

          a3 = (a3 + v37);
          ++v29;
        }

        while (v29 != a2);
      }
    }
  }

  else
  {
    v66 = 0.0;
    if (*(a1 + 44) == 1)
    {
      (*(**(*(a1 + 1) + 40) + 80))(*(*(a1 + 1) + 40), v12, *(a1 + 9));
      v66 = faiss::fvec_inner_product(*(v11 + 9), *(v11 + 17), *(v11 + 6));
    }

    if (a2)
    {
      v67 = 0;
      v68 = v12 << 32;
      do
      {
        faiss::ProductQuantizer::decode(*(v11 + 4), a3, *(v11 + 10));
        v69 = *(*(v11 + 4) + 32);
        v70 = v66 + faiss::fvec_inner_product(*(v11 + 10), *(v11 + 17), *(v11 + 6));
        if (v70 > v8)
        {
          if (v13)
          {
            v71 = *(v13 + 8 * v67);
          }

          else
          {
            v71 = v67 | v68;
          }

          faiss::RangeQueryResult::add(this, v70, v71);
        }

        a3 = (a3 + v69);
        ++v67;
      }

      while (a2 != v67);
    }
  }
}

void sub_1D9C52A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void *faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)0,faiss::CMin<float,long long>,faiss::PQDecoder16>::~IVFPQScanner(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1DA73F410);
}

void faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::set_list(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 224);
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  if (v4 == 1)
  {
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }
  }

  *(a1 + 216) = v5;
}

float faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::distance_to_code(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 224) != 2)
  {
  }

  v2 = *(a1 + 32);
  if (*(v2 + 16) != 16)
  {
    faiss::decode<faiss::PQDecoder16>();
  }

  result = *(a1 + 216);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = 4 * *(v2 + 40);
    do
    {
      v7 = *a2++;
      result = result + *(v5 + 4 * v7);
      v5 += v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t faiss::anonymous namespace::IVFPQScanner<(faiss::MetricType)1,faiss::CMax<float,long long>,faiss::PQDecoder16>::scan_codes(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, float *a5, uint64_t a6, unint64_t a7, int8x8_t a8)
{
  v12 = a1;
  v13 = *(a1 + 144);
  if (*(a1 + 220))
  {
    v14 = 0;
  }

  else
  {
    v14 = a4;
  }

  v15 = *(a1 + 224);
  v213 = a6;
  v214 = v14;
  if (*(a1 + 52) < 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(&v215, "bad precomp mode");
          faiss::FaissException::FaissException(exception, &v215, "virtual size_t faiss::(anonymous namespace)::IVFPQScanner<faiss::METRIC_L2, faiss::CMax<float, long long>, faiss::PQDecoder16>::scan_codes(size_t, const uint8_t *, const idx_t *, float *, idx_t *, size_t) const [METRIC_TYPE = faiss::METRIC_L2, C = faiss::CMax<float, long long>, PQDecoder = faiss::PQDecoder16]", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/IndexIVFPQ.cpp", 1099);
        }

        if (a2)
        {
          v38 = *(a1 + 32);
          if (*(v38 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = a5 - 1;
          v43 = *(v38 + 32);
          v44 = *(a1 + 56);
          v45 = a6 - 8;
          v46 = *(v38 + 8);
LABEL_42:
          v47 = *(v12 + 216);
          if (v46)
          {
            v48 = 0;
            v49 = v44;
            do
            {
              v47 = v47 + *(v49 + 4 * a3->u16[v48++]);
              v49 += 4 * *(v38 + 40);
            }

            while (v46 != v48);
          }

          if (*a5 <= v47)
          {
            goto LABEL_62;
          }

          if (v214)
          {
            v50 = *(v214 + 8 * v41);
          }

          else
          {
            v50 = v41 | (v13 << 32);
          }

          if (a7 < 2)
          {
            v51 = 1;
            goto LABEL_61;
          }

          v52 = 3;
          v53 = 2;
          v54 = 1;
          while (v53 != a7)
          {
            v55 = v42[v53];
            v56 = a5[v53];
            if (v55 > v56)
            {
              goto LABEL_55;
            }

            v57 = a6;
            if (v56 < v47)
            {
LABEL_60:
              v51 = v54;
LABEL_61:
              v42[v51] = v47;
              *(v45 + 8 * v51) = v50;
              v39 = ++v40;
LABEL_62:
              a3 = (a3 + v43);
              if (++v41 == a2)
              {
                return v39;
              }

              goto LABEL_42;
            }

LABEL_58:
            v42[v54] = v56;
            *(v45 + 8 * v54) = *(v57 + 8 * v53);
            v51 = v52;
            v53 = 2 * v52;
            v52 = (2 * v52) | 1;
            v54 = v51;
            if (v53 > a7)
            {
              goto LABEL_61;
            }
          }

          v55 = v42[a7];
LABEL_55:
          v56 = v55;
          v57 = a6 - 8;
          v52 = v53;
          if (v55 < v47)
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

        return 0;
      }

      if (!a2)
      {
        return 0;
      }

      v78 = *(a1 + 32);
      if (*(v78 + 16) != 16)
      {
        faiss::decode<faiss::PQDecoder16>();
      }

      v39 = 0;
      v79 = 0;
      v80 = 0;
      v81 = a5 - 1;
      v82 = *(v78 + 32);
      v83 = *(a1 + 64);
      v84 = a6 - 8;
      v85 = *(v78 + 8);
LABEL_96:
      v86 = *(v12 + 216);
      if (v85)
      {
        v87 = 0;
        v88 = v83;
        do
        {
          v86 = v86 + (*(*(*(v12 + 112) + 8 * v87) + 4 * a3->u16[v87]) + (*(v88 + 4 * a3->u16[v87]) * -2.0));
          ++v87;
          v88 += 4 * *(v78 + 40);
        }

        while (v85 != v87);
      }

      if (*a5 <= v86)
      {
        goto LABEL_116;
      }

      if (v214)
      {
        v89 = *(v214 + 8 * v80);
      }

      else
      {
        v89 = v80 | (v13 << 32);
      }

      if (a7 < 2)
      {
        v90 = 1;
        goto LABEL_115;
      }

      v91 = 3;
      v92 = 2;
      v93 = 1;
      while (v92 != a7)
      {
        v94 = v81[v92];
        v95 = a5[v92];
        if (v94 > v95)
        {
          goto LABEL_109;
        }

        v96 = a6;
        if (v95 < v86)
        {
LABEL_114:
          v90 = v93;
LABEL_115:
          v81[v90] = v86;
          *(v84 + 8 * v90) = v89;
          v39 = ++v79;
LABEL_116:
          a3 = (a3 + v82);
          if (++v80 == a2)
          {
            return v39;
          }

          goto LABEL_96;
        }

LABEL_112:
        v81[v93] = v95;
        *(v84 + 8 * v93) = *(v96 + 8 * v92);
        v90 = v91;
        v92 = 2 * v91;
        v91 = (2 * v91) | 1;
        v93 = v90;
        if (v92 > a7)
        {
          goto LABEL_115;
        }
      }

      v94 = v81[a7];
LABEL_109:
      v95 = v94;
      v96 = a6 - 8;
      v91 = v92;
      if (v94 < v86)
      {
        goto LABEL_114;
      }

      goto LABEL_112;
    }

    if (*(a1 + 44) == 1)
    {
      v97 = (a1 + 72);
      (*(**(*(a1 + 8) + 40) + 104))(*(*(a1 + 8) + 40), *(a1 + 136), *(a1 + 72), v13);
      a6 = v213;
    }

    else
    {
      v97 = (a1 + 136);
    }

    if (!a2)
    {
      return 0;
    }

    v39 = 0;
    v192 = 0;
    v193 = *v97;
    v210 = v13 << 32;
    v194 = a5 - 1;
    v195 = a6 - 8;
LABEL_260:
    faiss::ProductQuantizer::decode(*(v12 + 32), a3, *(v12 + 80));
    v196 = *(*(v12 + 32) + 32);
    v197 = faiss::fvec_L2sqr(*(v12 + 80), v193, *(v12 + 24));
    if (*a5 <= v197)
    {
      goto LABEL_277;
    }

    if (v214)
    {
      v198 = *(v214 + 8 * v192);
    }

    else
    {
      v198 = v192 | v210;
    }

    if (a7 < 2)
    {
      v199 = 1;
      goto LABEL_276;
    }

    v200 = 3;
    v201 = 2;
    v202 = 1;
    while (v201 != a7)
    {
      v203 = v194[v201];
      v204 = a5[v201];
      if (v203 > v204)
      {
        goto LABEL_270;
      }

      v205 = v213;
      if (v204 < v197)
      {
LABEL_275:
        v199 = v202;
LABEL_276:
        v194[v199] = v197;
        *(v195 + 8 * v199) = v198;
        ++v39;
LABEL_277:
        a3 = (a3 + v196);
        if (++v192 == a2)
        {
          return v39;
        }

        goto LABEL_260;
      }

LABEL_273:
      v194[v202] = v204;
      *(v195 + 8 * v202) = *(v205 + 8 * v201);
      v199 = v200;
      v201 = 2 * v200;
      v200 = (2 * v200) | 1;
      v202 = v199;
      if (v201 > a7)
      {
        goto LABEL_276;
      }
    }

    v203 = v194[a7];
LABEL_270:
    v204 = v203;
    v205 = v195;
    v200 = v201;
    if (v203 < v197)
    {
      goto LABEL_275;
    }

    goto LABEL_273;
  }

  if (v15 != 2)
  {
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  v18 = *(*(a1 + 8) + 416);
  if (v17 > 19)
  {
    if (v17 != 20)
    {
      if (v17 != 32)
      {
        if (v17 != 64)
        {
LABEL_172:
          v215 = *(a1 + 160);
          v216 = v17 / 8;
          v217 = v17 - (v16 & 0xFFFFFFF8);
          if (!a2)
          {
            v209 = 0;
            v137 = 0;
            goto LABEL_281;
          }

          v137 = 0;
          v138 = v13;
          v139 = 0;
          v209 = 0;
          v212 = v17;
          v208 = v138 << 32;
          v140 = a5 - 1;
          v141 = a6 - 8;
LABEL_174:
          a1 = faiss::HammingComputerDefault::hamming(&v215, a3);
          if (a1 >= v18)
          {
            goto LABEL_198;
          }

          v142 = *(v12 + 32);
          if (*(v142 + 16) != 16)
          {
            faiss::decode<faiss::PQDecoder16>();
          }

          v143 = *(v12 + 216);
          v144 = *(v142 + 8);
          if (v144)
          {
            v145 = 0;
            v146 = *(v12 + 56);
            v147 = 4 * *(v142 + 40);
            v148 = v213;
            do
            {
              v143 = v143 + *(v146 + 4 * a3->u16[v145++]);
              v146 += v147;
            }

            while (v144 != v145);
          }

          else
          {
            v148 = v213;
          }

          ++v137;
          if (*a5 <= v143)
          {
            goto LABEL_198;
          }

          if (v214)
          {
            v149 = *(v214 + 8 * v139);
          }

          else
          {
            v149 = v139 | v208;
          }

          if (a7 < 2)
          {
            v150 = 1;
            goto LABEL_197;
          }

          v151 = 3;
          v152 = 2;
          v153 = 1;
          while (v152 != a7)
          {
            v154 = v140[v152];
            v155 = a5[v152];
            if (v154 > v155)
            {
              goto LABEL_191;
            }

            v156 = v148;
            if (v155 < v143)
            {
LABEL_196:
              v150 = v153;
LABEL_197:
              v140[v150] = v143;
              *(v141 + 8 * v150) = v149;
              ++v209;
LABEL_198:
              a3 = (a3 + v212);
              if (++v139 == a2)
              {
LABEL_281:
                faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
                qword_1ECB70E30 += v137;
                return v209;
              }

              goto LABEL_174;
            }

LABEL_194:
            v140[v153] = v155;
            *(v141 + 8 * v153) = *(v156 + 8 * v152);
            v150 = v151;
            v152 = 2 * v151;
            v151 = (2 * v151) | 1;
            v153 = v150;
            if (v152 > a7)
            {
              goto LABEL_197;
            }
          }

          v154 = v140[a7];
LABEL_191:
          v155 = v154;
          v156 = v141;
          v151 = v152;
          if (v154 < v143)
          {
            goto LABEL_196;
          }

          goto LABEL_194;
        }

        v19 = 0;
        if (!a2)
        {
          goto LABEL_254;
        }

        v58 = 0;
        v21 = 0;
        v59 = 0;
        v60 = *(a1 + 160);
        v62 = v60[2];
        v61 = v60[3];
        v64 = *v60;
        v63 = v60[1];
        v65 = a5 - 1;
        v66 = a6 - 8;
LABEL_69:
        if (vaddvq_s32(vaddq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v64))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v63)))))), vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[2], v62))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[3], v61)))))))) >= v18)
        {
          goto LABEL_91;
        }

        if (*(v16 + 16) != 16)
        {
          faiss::decode<faiss::PQDecoder16>();
        }

        v67 = *(v12 + 216);
        v68 = *(v16 + 8);
        if (v68)
        {
          v69 = 0;
          v70 = *(v12 + 56);
          do
          {
            a1 = a3->u16[v69];
            v67 = v67 + *(v70 + 4 * a1);
            ++v69;
            v70 += 4 * *(v16 + 40);
          }

          while (v68 != v69);
        }

        ++v21;
        if (*a5 <= v67)
        {
          goto LABEL_91;
        }

        if (v14)
        {
          v71 = *(v14 + 8 * v59);
        }

        else
        {
          v71 = v59 | (v13 << 32);
        }

        if (a7 < 2)
        {
          a1 = 1;
          goto LABEL_90;
        }

        v72 = 3;
        v73 = 2;
        v74 = 1;
        while (v73 != a7)
        {
          v75 = v65[v73];
          v76 = a5[v73];
          if (v75 > v76)
          {
            goto LABEL_84;
          }

          v77 = a6;
          if (v76 < v67)
          {
LABEL_89:
            a1 = v74;
LABEL_90:
            v65[a1] = v67;
            *(v66 + 8 * a1) = v71;
            v19 = ++v58;
LABEL_91:
            a3 += 4;
            if (++v59 == a2)
            {
              goto LABEL_255;
            }

            goto LABEL_69;
          }

LABEL_87:
          v65[v74] = v76;
          *(v66 + 8 * v74) = *(v77 + 8 * v73);
          a1 = v72;
          v73 = 2 * v72;
          v72 = (2 * v72) | 1;
          v74 = a1;
          if (v73 > a7)
          {
            goto LABEL_90;
          }
        }

        v75 = v65[a7];
LABEL_84:
        v76 = v75;
        v77 = a6 - 8;
        v72 = v73;
        if (v75 < v67)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v19 = 0;
      if (!a2)
      {
        goto LABEL_254;
      }

      v174 = 0;
      v21 = 0;
      v175 = 0;
      v176 = *(a1 + 160);
      v178 = *v176;
      v177 = v176[1];
      v179 = a5 - 1;
      v180 = a6 - 8;
LABEL_230:
      if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v178))))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(a3[1], v177))))))) >= v18)
      {
        goto LABEL_252;
      }

      if (*(v16 + 16) != 16)
      {
        faiss::decode<faiss::PQDecoder16>();
      }

      v181 = *(v12 + 216);
      v182 = *(v16 + 8);
      if (v182)
      {
        v183 = 0;
        v184 = *(v12 + 56);
        do
        {
          a1 = a3->u16[v183];
          v181 = v181 + *(v184 + 4 * a1);
          ++v183;
          v184 += 4 * *(v16 + 40);
        }

        while (v182 != v183);
      }

      ++v21;
      if (*a5 <= v181)
      {
        goto LABEL_252;
      }

      if (v14)
      {
        v185 = *(v14 + 8 * v175);
      }

      else
      {
        v185 = v175 | (v13 << 32);
      }

      if (a7 < 2)
      {
        a1 = 1;
        goto LABEL_251;
      }

      v186 = 3;
      v187 = 2;
      v188 = 1;
      while (v187 != a7)
      {
        v189 = v179[v187];
        v190 = a5[v187];
        if (v189 > v190)
        {
          goto LABEL_245;
        }

        v191 = a6;
        if (v190 < v181)
        {
LABEL_250:
          a1 = v188;
LABEL_251:
          v179[a1] = v181;
          *(v180 + 8 * a1) = v185;
          v19 = ++v174;
LABEL_252:
          a3 += 2;
          if (++v175 == a2)
          {
            goto LABEL_255;
          }

          goto LABEL_230;
        }

LABEL_248:
        v179[v188] = v190;
        *(v180 + 8 * v188) = *(v191 + 8 * v187);
        a1 = v186;
        v187 = 2 * v186;
        v186 = (2 * v186) | 1;
        v188 = a1;
        if (v187 > a7)
        {
          goto LABEL_251;
        }
      }

      v189 = v179[a7];
LABEL_245:
      v190 = v189;
      v191 = a6 - 8;
      v186 = v187;
      if (v189 < v181)
      {
        goto LABEL_250;
      }

      goto LABEL_248;
    }

    v98 = 0;
    if (!a2)
    {
      goto LABEL_226;
    }

    v115 = 0;
    v21 = 0;
    v116 = 0;
    v117 = *(a1 + 160);
    v118 = *v117;
    v119 = v117[1].i32[0];
    v120 = a5 - 1;
    v121 = a6 - 8;
LABEL_148:
    v122 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v118))))));
    v123 = vadd_s32(vdup_lane_s32(v122, 1), v122);
    v124 = v123.i32[0];
    v123.i32[0] = a3[1].i32[0] ^ v119;
    v125 = vcnt_s8(v123);
    v125.i16[0] = vaddlv_u8(v125);
    if (v124 + v125.i32[0] >= v18)
    {
      goto LABEL_170;
    }

    if (*(v16 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v126 = *(v12 + 216);
    v127 = *(v16 + 8);
    if (v127)
    {
      v128 = 0;
      v129 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v126 = v126 + *(v129 + 4 * a3->u16[v128++]);
        v129 += a1;
      }

      while (v127 != v128);
    }

    ++v21;
    if (*a5 <= v126)
    {
      goto LABEL_170;
    }

    if (v14)
    {
      v130 = *(v14 + 8 * v116);
    }

    else
    {
      v130 = v116 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v131 = 1;
      goto LABEL_169;
    }

    a1 = 3;
    v132 = 2;
    v133 = 1;
    while (v132 != a7)
    {
      v134 = v120[v132];
      v135 = a5[v132];
      if (v134 > v135)
      {
        goto LABEL_163;
      }

      v136 = a6;
      if (v135 < v126)
      {
LABEL_168:
        v131 = v133;
LABEL_169:
        v120[v131] = v126;
        *(v121 + 8 * v131) = v130;
        v98 = ++v115;
LABEL_170:
        a3 = (a3 + 20);
        if (++v116 == a2)
        {
          goto LABEL_227;
        }

        goto LABEL_148;
      }

LABEL_166:
      v120[v133] = v135;
      *(v121 + 8 * v133) = *(v136 + 8 * v132);
      v131 = a1;
      v132 = 2 * a1;
      a1 = (2 * a1) | 1;
      v133 = v131;
      if (v132 > a7)
      {
        goto LABEL_169;
      }
    }

    v134 = v120[a7];
LABEL_163:
    v135 = v134;
    v136 = a6 - 8;
    a1 = v132;
    if (v134 < v126)
    {
      goto LABEL_168;
    }

    goto LABEL_166;
  }

  if (v17 == 4)
  {
    v98 = 0;
    if (!a2)
    {
      goto LABEL_226;
    }

    v99 = 0;
    v21 = 0;
    v100 = 0;
    v101 = **(a1 + 160);
    v102 = a5 - 1;
    v103 = a6 - 8;
LABEL_122:
    a8.i32[0] = a3->i32[0] ^ v101;
    a8 = vcnt_s8(a8);
    a8.i16[0] = vaddlv_u8(a8);
    if (a8.i32[0] >= v18)
    {
      goto LABEL_144;
    }

    if (*(v16 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v104 = *(v12 + 216);
    v105 = *(v16 + 8);
    if (v105)
    {
      v106 = 0;
      v107 = *(v12 + 56);
      a1 = 4 * *(v16 + 40);
      do
      {
        v104 = v104 + *(v107 + 4 * a3->u16[v106++]);
        v107 += a1;
      }

      while (v105 != v106);
    }

    ++v21;
    if (*a5 <= v104)
    {
      goto LABEL_144;
    }

    if (v14)
    {
      v108 = *(v14 + 8 * v100);
    }

    else
    {
      v108 = v100 | (v13 << 32);
    }

    if (a7 < 2)
    {
      v109 = 1;
      goto LABEL_143;
    }

    a1 = 3;
    v110 = 2;
    v111 = 1;
    while (v110 != a7)
    {
      v112 = v102[v110];
      v113 = a5[v110];
      if (v112 > v113)
      {
        goto LABEL_137;
      }

      v114 = a6;
      if (v113 < v104)
      {
LABEL_142:
        v109 = v111;
LABEL_143:
        v102[v109] = v104;
        *(v103 + 8 * v109) = v108;
        v98 = ++v99;
LABEL_144:
        a3 = (a3 + 4);
        if (++v100 == a2)
        {
          goto LABEL_227;
        }

        goto LABEL_122;
      }

LABEL_140:
      v102[v111] = v113;
      *(v103 + 8 * v111) = *(v114 + 8 * v110);
      v109 = a1;
      v110 = 2 * a1;
      a1 = (2 * a1) | 1;
      v111 = v109;
      if (v110 > a7)
      {
        goto LABEL_143;
      }
    }

    v112 = v102[a7];
LABEL_137:
    v113 = v112;
    v114 = a6 - 8;
    a1 = v110;
    if (v112 < v104)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (v17 == 8)
  {
    v98 = 0;
    if (a2)
    {
      v157 = 0;
      v21 = 0;
      v158 = 0;
      v159 = **(a1 + 160);
      v160 = a5 - 1;
      v161 = a6 - 8;
      while (1)
      {
        v162 = vcnt_s8((a3->i64[0] ^ v159));
        v162.i16[0] = vaddlv_u8(v162);
        if (v18 <= v162.i32[0])
        {
          goto LABEL_224;
        }

        if (*(v16 + 16) != 16)
        {
          faiss::decode<faiss::PQDecoder16>();
        }

        v163 = *(v12 + 216);
        v164 = *(v16 + 8);
        if (v164)
        {
          v165 = 0;
          v166 = *(v12 + 56);
          a1 = 4 * *(v16 + 40);
          do
          {
            v163 = v163 + *(v166 + 4 * a3->u16[v165++]);
            v166 += a1;
          }

          while (v164 != v165);
        }

        ++v21;
        if (*a5 <= v163)
        {
          goto LABEL_224;
        }

        if (v14)
        {
          v167 = *(v14 + 8 * v158);
        }

        else
        {
          v167 = v158 | (v13 << 32);
        }

        if (a7 < 2)
        {
          v168 = 1;
          goto LABEL_223;
        }

        a1 = 3;
        v169 = 2;
        v170 = 1;
        while (1)
        {
          if (v169 == a7)
          {
            v171 = v160[a7];
LABEL_217:
            v172 = v171;
            v173 = a6 - 8;
            a1 = v169;
            if (v171 < v163)
            {
              break;
            }

            goto LABEL_220;
          }

          v171 = v160[v169];
          v172 = a5[v169];
          if (v171 > v172)
          {
            goto LABEL_217;
          }

          v173 = a6;
          if (v172 < v163)
          {
            break;
          }

LABEL_220:
          v160[v170] = v172;
          *(v161 + 8 * v170) = *(v173 + 8 * v169);
          v168 = a1;
          v169 = 2 * a1;
          a1 = (2 * a1) | 1;
          v170 = v168;
          if (v169 > a7)
          {
            goto LABEL_223;
          }
        }

        v168 = v170;
LABEL_223:
        v160[v168] = v163;
        *(v161 + 8 * v168) = v167;
        v98 = ++v157;
LABEL_224:
        a3 = (a3 + 8);
        if (++v158 == a2)
        {
LABEL_227:
          v39 = v98;
          goto LABEL_256;
        }
      }
    }

LABEL_226:
    v21 = 0;
    goto LABEL_227;
  }

  if (v17 != 16)
  {
    goto LABEL_172;
  }

  v19 = 0;
  if (!a2)
  {
LABEL_254:
    v21 = 0;
    goto LABEL_255;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = **(a1 + 160);
  v24 = a5 - 1;
  v25 = a6 - 8;
  do
  {
    v26 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(veorq_s8(*a3, v23))))));
    if (vadd_s32(vdup_lane_s32(v26, 1), v26).i32[0] >= v18)
    {
      goto LABEL_34;
    }

    if (*(v16 + 16) != 16)
    {
      faiss::decode<faiss::PQDecoder16>();
    }

    v27 = *(v12 + 216);
    v28 = *(v16 + 8);
    if (v28)
    {
      v29 = 0;
      v30 = *(v12 + 56);
      do
      {
        a1 = a3->u16[v29];
        v27 = v27 + *(v30 + 4 * a1);
        ++v29;
        v30 += 4 * *(v16 + 40);
      }

      while (v28 != v29);
    }

    ++v21;
    if (*a5 <= v27)
    {
      goto LABEL_34;
    }

    if (v14)
    {
      v31 = *(v14 + 8 * v22);
    }

    else
    {
      v31 = v22 | (v13 << 32);
    }

    if (a7 < 2)
    {
      a1 = 1;
      goto LABEL_33;
    }

    v32 = 3;
    v33 = 2;
    v34 = 1;
    while (1)
    {
      if (v33 == a7)
      {
        v35 = v24[a7];
        goto LABEL_27;
      }

      v35 = v24[v33];
      v36 = a5[v33];
      if (v35 <= v36)
      {
        break;
      }

LABEL_27:
      v36 = v35;
      v37 = a6 - 8;
      v32 = v33;
      if (v35 < v27)
      {
        goto LABEL_32;
      }

LABEL_30:
      v24[v34] = v36;
      *(v25 + 8 * v34) = *(v37 + 8 * v33);
      a1 = v32;
      v33 = 2 * v32;
      v32 = (2 * v32) | 1;
      v34 = a1;
      if (v33 > a7)
      {
        goto LABEL_33;
      }
    }

    v37 = a6;
    if (v36 >= v27)
    {
      goto LABEL_30;
    }

LABEL_32:
    a1 = v34;
LABEL_33:
    v24[a1] = v27;
    *(v25 + 8 * a1) = v31;
    v19 = ++v20;
LABEL_34:
    ++a3;
    ++v22;
  }

  while (v22 != a2);
LABEL_255:
  v39 = v19;
LABEL_256:
  faiss::IndexIVFPQStats::get_indexIVFPQ_stats(a1);
  qword_1ECB70E30 += v21;
  return v39;
}