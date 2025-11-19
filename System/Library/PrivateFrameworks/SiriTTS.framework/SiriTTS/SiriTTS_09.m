void sub_1C30319CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (a58 < 0)
  {
    operator delete(__p);
  }

  a52 = &a48;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a52);
  std::pair<std::string,std::vector<MarkerRecord>>::~pair(&a17);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

std::string *PhoneConversion::get_string_phone(std::string *retstr, unsigned int a2, uint64_t *a3)
{
  v3 = *(a3 + 23);
  if (v3 < 0)
  {
    if (a3[1] != 5)
    {
      goto LABEL_10;
    }

    a3 = *a3;
  }

  else if (v3 != 5)
  {
    goto LABEL_10;
  }

  if (*a3 == 1429040741 && *(a3 + 4) == 83)
  {
    v5 = *(&PhoneConversion::sNashville2Sampa + a2);
    return std::string::basic_string[abi:ne200100]<0>(retstr, v5);
  }

LABEL_10:
  if (a2 == 35)
  {
    v5 = "sil";
    return std::string::basic_string[abi:ne200100]<0>(retstr, v5);
  }

  if (a2 - 32 > 0x5E)
  {
    return std::to_string(retstr, a2);
  }

  *(&retstr->__r_.__value_.__s + 23) = 1;
  LOWORD(retstr->__r_.__value_.__l.__data_) = a2;
  return retstr;
}

void MilWaveRNNInference::mulaw_decode(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = (*(a1 + 8) - *a1) >> 2;
  if (v15)
  {
    v2 = (MEMORY[0x1EEE9AC00])();
    v4 = (&v11 - ((v3 + 15) & 0x7FFFFFFF0));
    v13 = 998277249;
    *buf = 1090519040;
    v12 = -1082130432;
    v5 = MEMORY[0x1EEE9AC00](v2);
    v7 = (&v11 - v6);
    vvfabsf((&v11 - v6), *v5, &v15);
    MEMORY[0x1C692CA00](v7, 1, buf, v4, 1, v15);
    vvexp2f(v7, v4, &v15);
    MEMORY[0x1C692C9E0](v7, 1, &v12, v4, 1, v15);
    MEMORY[0x1C692CA00](v4, 1, &v13, v7, 1, v15);
    vvcopysignf(*a1, v7, *a1, &v15);
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v8 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v8, OS_LOG_TYPE_DEBUG, "Found empty audio data in mulaw decoding", buf, 2u);
    }

    Diagnostics::log(7, "Found empty audio data in mulaw decoding", v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void std::__shared_ptr_emplace<WaveNetFeature>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 80);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 56);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 32);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void NeuralRateChangeModule::process_data(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(*v4 + 8);
  v6 = *(*v4 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v5 == 1)
  {
    v7 = *(a1 + 272);
    *(v7 + 8) = *v7;
    *(v7 + 24) = 0x3F80000000000000;
    *(v7 + 56) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v7 + 44) = _D0;
  }

  v13 = *(v5 + 80);
  v14 = (v5 + 80);
  v15 = *(v5 + 88) - v13;
  if ((v15 >> 2) < 1)
  {
    goto LABEL_23;
  }

  v16 = 0;
  v17 = (v15 >> 2) & 0x7FFFFFFF;
  do
  {
    v18 = *v13;
    v19 = *v13;
    v20 = *v13 & 0x7FFFFFFF;
    v21 = (v20 - 1) < 0x7FFFFF;
    v22 = (v20 - 0x800000) >> 24 < 0x7F;
    if (*v13 >= 0)
    {
      v22 = 0;
    }

    if (v19 >= 0.0)
    {
      v21 = 0;
    }

    v23 = LODWORD(v19) & 0x7FFFFFFF;
    if (!v23)
    {
      v21 = 1;
    }

    v24 = v23 <= 2139095040;
    v25 = v23 == 2139095040 || v21;
    if (!v24)
    {
      v25 = 1;
    }

    if ((v25 | v22) == 1)
    {
      *v13 = 1.0;
      v18 = 1.0;
    }

    v16 |= v18 != 1.0;
    ++v13;
    --v17;
  }

  while (v17);
  if (v16)
  {
    v26 = *(a1 + 272);
  }

  else
  {
LABEL_23:
    v26 = *(a1 + 272);
    if (*(v26 + 40) == 1.0)
    {
      goto LABEL_97;
    }
  }

  v72 = v2;
  v73 = a1;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v83 = 257;
  v83[2] = 0;
  *&v83[8] = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v75 = 0;
  v76 = 0;
  __src = 0;
  v27 = *(v26 + 24);
  v28 = v27;
  v29 = *(v5 + 8);
  if (v27 >= (-1431655765 * ((*(v5 + 16) - v29) >> 3)))
  {
    v61 = 0;
    v60 = 0;
    v33 = *(v26 + 28);
  }

  else
  {
    do
    {
      v30 = *(v5 + 80);
      v31 = *(v5 + 88);
      v32 = 1.0;
      if (v30 != v31 && v28 < ((v31 - v30) >> 2))
      {
        v32 = *(v30 + 4 * v28);
      }

      v33 = 1.0;
      if (*(v26 + 60) == 1)
      {
        v34 = *(v26 + 36);
        if (v32 <= v34)
        {
          if (v32 >= *(v26 + 32))
          {
            v33 = 1.0;
          }

          else
          {
            v33 = v32;
          }

          if (v32 < *(v26 + 32))
          {
            v32 = 1.0;
          }
        }

        else
        {
          if (v34 >= (v32 / v34))
          {
            v33 = v32 / v34;
          }

          else
          {
            v33 = *(v26 + 36);
          }

          v32 = v32 / v33;
        }
      }

      std::vector<std::vector<float>>::push_back[abi:ne200100](&v80, (v29 + 24 * v28));
      v35 = v75;
      if (v75 >= v76)
      {
        v37 = __src;
        v38 = v75 - __src;
        v39 = (v75 - __src) >> 2;
        v40 = v39 + 1;
        if ((v39 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v41 = v76 - __src;
        if ((v76 - __src) >> 1 > v40)
        {
          v40 = v41 >> 1;
        }

        _CF = v41 >= 0x7FFFFFFFFFFFFFFCLL;
        v42 = 0x3FFFFFFFFFFFFFFFLL;
        if (!_CF)
        {
          v42 = v40;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v42);
        }

        *(4 * v39) = v32;
        v36 = (4 * v39 + 4);
        memcpy(0, v37, v38);
        v43 = __src;
        __src = 0;
        v75 = v36;
        v76 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v75 = v32;
        v36 = v35 + 4;
      }

      v75 = v36;
      v44 = *(v5 + 32);
      if (v44 != *(v5 + 40))
      {
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v77, (v44 + 24 * v28));
      }

      if (v33 != *(v26 + 44))
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v45 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(v26 + 40);
          *buf = 134218240;
          v88 = v33;
          v89 = 2048;
          v90 = v47;
          _os_log_impl(&dword_1C2F95000, v45, OS_LOG_TYPE_DEBUG, "NeuralRateChangeModule: Modify Mel-Spectrogram: local rate = %.2f, global rate: %.2f", buf, 0x16u);
        }

        Diagnostics::log(7, "NeuralRateChangeModule: Modify Mel-Spectrogram: local rate = %.2f, global rate: %.2f", v46, v33, *(v26 + 40));
      }

      if (v32 != *(v26 + 48))
      {
        v48 = (v27 * *(v26 + 52));
        v50 = *(v26 + 8);
        v49 = *(v26 + 16);
        if (v50 >= v49)
        {
          v52 = (v50 - *v26) >> 3;
          v53 = v52 + 1;
          if ((v52 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v54 = v49 - *v26;
          if (v54 >> 2 > v53)
          {
            v53 = v54 >> 2;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF8)
          {
            v55 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<RateMarker>>(v55);
          }

          v56 = 8 * v52;
          *v56 = v48;
          *(v56 + 4) = v32;
          v51 = 8 * v52 + 8;
          v57 = *(v26 + 8) - *v26;
          v58 = v56 - v57;
          memcpy((v56 - v57), *v26, v57);
          v59 = *v26;
          *v26 = v58;
          *(v26 + 8) = v51;
          *(v26 + 16) = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          *v50 = v48;
          *(v50 + 4) = v32;
          v51 = v50 + 8;
        }

        *(v26 + 8) = v51;
      }

      v27 = v27 + (v33 * *(v26 + 40));
      *(v26 + 44) = v33;
      *(v26 + 48) = v32;
      v28 = v27;
      v29 = *(v5 + 8);
    }

    while (v27 < (-1431655765 * ((*(v5 + 16) - v29) >> 3)));
    v60 = v80;
    v61 = v81;
    v14 = (v5 + 80);
  }

  std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v83[8], v60, v61, 0xAAAAAAAAAAAAAAABLL * (v61 - v60));
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v86[24], __src, v75, (v75 - __src) >> 2);
  std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v84 + 1, v77, v78, 0xAAAAAAAAAAAAAAABLL * (v78 - v77));
  *(v26 + 24) = v27 - (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 16) - *(v5 + 8)) >> 3));
  *(v26 + 28) = v33;
  v62 = *&v83[8];
  v63 = *&v83[16];
  v64 = 0xAAAAAAAAAAAAAAABLL * ((*&v83[16] - *&v83[8]) >> 3);
  *(v26 + 56) -= 1431655765 * ((*&v83[16] - *&v83[8]) >> 3);
  v65 = *(v5 + 80);
  if (v65 == *(v5 + 88))
  {
    v68 = *(v5 + 104);
  }

  else
  {
    v66 = *v65;
    v67 = *(v26 + 36);
    if (*v65 <= v67)
    {
      if (v66 >= *(v26 + 32) && v66 <= v67)
      {
        v66 = 1.0;
      }
    }

    else
    {
      v66 = v66 / v67;
      if (v67 < v66)
      {
        v66 = *(v26 + 36);
      }
    }

    v68 = v66 * *(v5 + 104);
  }

  *&v86[48] = (*(v26 + 40) * v68);
  if (v5 == v83)
  {
    *(v5 + 104) = *&v86[48];
  }

  else
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((v5 + 8), v62, v63, v64);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v14, *&v86[24], *&v86[32], (*&v86[32] - *&v86[24]) >> 2);
    *(v5 + 104) = *&v86[48];
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((v5 + 32), *(&v84 + 1), v85, 0xAAAAAAAAAAAAAAABLL * ((v85 - *(&v84 + 1)) >> 3));
  }

  if (__src)
  {
    v75 = __src;
    operator delete(__src);
  }

  __src = &v77;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  v77 = &v80;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v77);
  if (*&v86[24])
  {
    *&v86[32] = *&v86[24];
    operator delete(*&v86[24]);
  }

  v80 = v86;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80 = &v84 + 1;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80 = &v83[8];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v80);
  v2 = v72;
  a1 = v73;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_97:
  v70 = *v2;
  v71 = *(a1 + 272);
  memset(v83, 0, sizeof(v83));
  std::vector<RateMarker>::__init_with_size[abi:ne200100]<RateMarker*,RateMarker*>(v83, *v71, v71[1], (v71[1] - *v71) >> 3);
  operator new();
}

void sub_1C3032764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C3032A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<MarkerRecord>::__construct_one_at_end[abi:ne200100]<MarkerRecord const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v4->n128_u64[0] = *a2;
  v5 = &v4->n128_i8[8];
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v4[1].n128_u64[1] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  result = *(a2 + 32);
  v4[3].n128_u16[0] = *(a2 + 48);
  v4[2] = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

void **std::__split_buffer<std::vector<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void PromptPartitionModule::process_data(uint64_t a1, uint64_t *a2)
{
  v233 = *MEMORY[0x1E69E9840];
  v4 = *(*v2 + 8);
  v3 = *(*v2 + 16);
  v184 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v211 = 0;
    v212 = 0;
    v213 = 0;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v211 = 0;
    v212 = 0;
    v213 = 0;
  }

  v5 = v4[6];
  for (i = v4[7]; v5 != i; v5 += 18)
  {
    v7 = *v5;
    if (v7 < v5[1] + v7)
    {
      do
      {
        v8 = *v4;
        memset(buf, 0, 24);
        v9 = v8 + 216 * v7;
        v10 = *(v9 + 72);
        v11 = *(v9 + 80);
        v12 = (v9 + 72);
        if (v11 != v10)
        {
          v13 = 0;
          v14 = 0;
          do
          {
            if (*(v10 + v13) != 7)
            {
              std::vector<MarkerRecord>::push_back[abi:ne200100](buf, v10 + v13);
              v10 = *v12;
              v11 = v12[1];
            }

            ++v14;
            v13 += 56;
          }

          while (v14 < 0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 3));
        }

        if (v12 != buf)
        {
          std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(v12, buf[0], buf[1], 0x6DB6DB6DB6DB6DB7 * ((buf[1] - buf[0]) >> 3));
        }

        *&v218 = buf;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v218);
        ++v7;
      }

      while (v7 < v5[1] + *v5);
    }
  }

  v15 = v184;
  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
    atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = *(a1 + 272);
    v17 = *(a1 + 276);
    v209 = 0;
    v210 = 0;
    v208 = 0;
    *&v206 = v4;
    *(&v206 + 1) = v184;
    atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v16 = *(a1 + 272);
    v17 = *(a1 + 276);
    v209 = 0;
    v210 = 0;
    v208 = 0;
    v206 = v4;
  }

  v18 = *v4;
  v19 = v4[1] - *v4;
  if (v19)
  {
    v20 = 0;
    v21 = 0x84BDA12F684BDA13 * (v19 >> 3);
    if (v17 >= v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v17;
    }

    v15 = v184;
    while (1)
    {
      v23 = *(v18 + 216 * v20 + 72);
      v24 = *(v18 + 216 * v20 + 80) - v23;
      if (!v24)
      {
        goto LABEL_74;
      }

      v25 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3);
      v26 = v21 - 1;
      if (v20)
      {
        v27 = v20 == v26;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v29 = v18 + 216 * v20;
      if (v25 <= 1)
      {
        v25 = 1;
      }

      while (1)
      {
        if (*v23 != 7)
        {
          goto LABEL_41;
        }

        v30 = v23[1];
        if (!v28)
        {
          break;
        }

        if (v30 >= v22)
        {
          goto LABEL_43;
        }

        if (v20)
        {
          goto LABEL_38;
        }

LABEL_41:
        v23 += 14;
        if (!--v25)
        {
          goto LABEL_74;
        }
      }

      if (v30 < v16)
      {
        break;
      }

LABEL_43:
      v23[1] = v30 - v17;
LABEL_44:
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v31 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v20;
        _os_log_impl(&dword_1C2F95000, v31, OS_LOG_TYPE_INFO, "Split frontend feature due to PAUSE marker at phone idx: %zu", buf, 0xCu);
      }

      Diagnostics::log(6, "Split frontend feature due to PAUSE marker at phone idx: %zu", v32, v20);
      *&v204 = v4;
      *(&v204 + 1) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PromptPartitionModuleInternal::split_phone_features(buf, &v204, v20);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v33 = buf[0];
      if (buf[0])
      {
        std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v208, buf);
      }

      v34 = buf[3];
      v216 = *&buf[2];
      if (buf[3])
      {
        atomic_fetch_add_explicit((buf[3] + 8), 1uLL, memory_order_relaxed);
      }

      PromptPartitionModuleInternal::split_phone_features(&v218, &v216, 1);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v208, &v218);
      if (v33 && v218)
      {
        PromptPartitionModuleInternal::duplicate_tn_normal_marker((*(v33 + 8) - 216), *(*v218 + 72), *(*v218 + 80));
      }

      v4 = v219;
      v15 = v220;
      if (v220)
      {
        atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = *(&v206 + 1);
      *&v206 = v4;
      *(&v206 + 1) = v15;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (*(&v218 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v218 + 1));
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (buf[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
      }

      v20 = 0;
      v18 = *v4;
LABEL_74:
      ++v20;
      v36 = v4[1];
      v21 = 0x84BDA12F684BDA13 * ((v36 - v18) >> 3);
      if (v20 >= v21)
      {
        if (v36 != v18)
        {
          std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v208, &v206);
        }

        goto LABEL_77;
      }
    }

LABEL_38:
    if (v20 < v26 && (*(v29 - 192) & 1) != 0 && (*(v29 + 240) & 1) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_77:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
  }

  v206 = 0uLL;
  v207 = 0;
  v37 = v208;
  v191 = v209;
  if (v208 != v209)
  {
    do
    {
      v39 = *v37;
      v38 = *(v37 + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v219 = 0;
        v218 = 0uLL;
        *&v204 = v39;
        *(&v204 + 1) = v38;
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v219 = 0;
        v218 = 0uLL;
        v204 = v39;
      }

      v40 = v38;
      if (!v39)
      {
LABEL_181:
        v42 = v40;
        if (v40)
        {
          goto LABEL_175;
        }

        goto LABEL_176;
      }

      v193 = v37;
      v41 = 0;
      v40 = *(&v204 + 1);
      v200 = v204;
      v202 = 0;
      v42 = v38;
      v196 = v38;
LABEL_87:
      v43 = *v39;
      if (v39[1] == *v39)
      {
        *&v204 = v200;
        *(&v204 + 1) = v40;
        goto LABEL_174;
      }

      v194 = v40;
      v198 = v42;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      do
      {
        v48 = v43 + 216 * v47;
        v50 = *(v48 + 72);
        v49 = *(v48 + 80);
        while (1)
        {
          if (v50 == v49)
          {
            v65 = 0;
            goto LABEL_124;
          }

          if (*v50 != 11)
          {
            goto LABEL_122;
          }

          v51 = (v50 + 8);
          v52 = *(v50 + 31);
          if (*(v50 + 31) < 0)
          {
            v54 = *(v50 + 16);
            if (v54 == 5)
            {
              v53 = *v51;
              goto LABEL_98;
            }

LABEL_110:
            if (v54 != 6)
            {
              goto LABEL_122;
            }

            v51 = *v51;
            goto LABEL_112;
          }

          if (v52 != 6)
          {
            break;
          }

LABEL_112:
          v60 = *v51;
          v61 = *(v51 + 2);
          v64 = v60 == 1836216174 && v61 == 27745 && *(v50 + 40) != 0;
          if ((v64 & v41) == 1)
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v76 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf[0]) = 134217984;
              *(buf + 4) = v47 + v202;
              _os_log_impl(&dword_1C2F95000, v76, OS_LOG_TYPE_INFO, "Found tn=normal marker at phone idx: %zu", buf, 0xCu);
            }

            Diagnostics::log(6, "Found tn=normal marker at phone idx: %zu", v77, v47 + v202);
            if (v47)
            {
              v65 = v47 + 1 != 0x84BDA12F684BDA13 * ((v39[1] - *v39) >> 3);
            }

            else
            {
              v65 = 0;
            }

            v41 = 0;
            v46 = *(v50 + 32);
            v45 = v47;
            goto LABEL_124;
          }

LABEL_122:
          v50 += 56;
        }

        v53 = (v50 + 8);
        if (v52 != 5)
        {
          goto LABEL_122;
        }

LABEL_98:
        v55 = *v53;
        v56 = *(v53 + 4);
        v59 = v55 != 1818587251 || v56 != 108 || *(v50 + 40) == 0;
        if ((v59 | v41))
        {
          if ((v52 & 0x80) == 0)
          {
            goto LABEL_122;
          }

          v54 = *(v50 + 16);
          goto LABEL_110;
        }

        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v74 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf[0]) = 134217984;
          *(buf + 4) = v47 + v202;
          _os_log_impl(&dword_1C2F95000, v74, OS_LOG_TYPE_INFO, "Found tn=spell marker at phone idx: %zu", buf, 0xCu);
        }

        Diagnostics::log(6, "Found tn=spell marker at phone idx: %zu", v75, v47 + v202);
        v65 = v47 != 0;
        v41 = 1;
        v44 = v47;
LABEL_124:
        if (v44 >= v45)
        {
          goto LABEL_135;
        }

        v66 = *v39;
        v67 = v44;
        while (2)
        {
          v68 = v66 + 216 * v67;
          v69 = *(v68 + 72);
          v70 = *(v68 + 80);
          while (2)
          {
            if (v69 != v70)
            {
              if (*v69 == 3)
              {
                v71 = *(v69 + 32);
                v72 = v46 - v71;
                if (v46 < v71)
                {
                  v72 = 0;
                  goto LABEL_132;
                }

                if (*(v69 + 40) + v71 > v46)
                {
LABEL_132:
                  *(v69 + 40) = v72;
                }
              }

              v69 += 56;
              continue;
            }

            break;
          }

          if (++v67 != v45)
          {
            continue;
          }

          break;
        }

LABEL_135:
        if (v65)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v78 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf[0]) = 134217984;
            *(buf + 4) = v47 + v202;
            _os_log_impl(&dword_1C2F95000, v78, OS_LOG_TYPE_INFO, "Split frontend feature due to spelling at phone idx: %zu", buf, 0xCu);
          }

          Diagnostics::log(6, "Split frontend feature due to spelling at phone idx: %zu", v79, v47 + v202);
          *&v216 = v39;
          *(&v216 + 1) = v198;
          if (v198)
          {
            atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          PromptPartitionModuleInternal::split_phone_features(buf, &v216, v47);
          if (v198)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v198);
          }

          v80 = buf[0];
          if (buf[0] && buf[2])
          {
            PromptPartitionModuleInternal::duplicate_tn_normal_marker((*(buf[0] + 8) - 216), *(*buf[2] + 72), *(*buf[2] + 80));
          }

          std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v218, buf);
          v83 = v80;
          v82 = *v80;
          v81 = v83[1];
          v40 = buf[3];
          v200 = buf[2];
          if (buf[3])
          {
            atomic_fetch_add_explicit((buf[3] + 8), 1uLL, memory_order_relaxed);
          }

          if (v198)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v198);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          if (buf[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
          }

          v202 -= 0x7B425ED097B425EDLL * ((v81 - v82) >> 3);
          v42 = v40;
          v39 = v200;
          v38 = v196;
          if (!v200)
          {
            *&v204 = 0;
            *(&v204 + 1) = v40;
            v37 = v193;
            goto LABEL_181;
          }

          goto LABEL_87;
        }

        ++v47;
        v43 = *v39;
        v73 = v39[1];
      }

      while (v47 < 0x84BDA12F684BDA13 * ((v73 - *v39) >> 3));
      v42 = v198;
      v38 = v196;
      *&v204 = v200;
      *(&v204 + 1) = v194;
      if (v73 != v43)
      {
        std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v218, &v204);
      }

LABEL_174:
      v204 = 0uLL;
      v37 = v193;
      if (v42)
      {
LABEL_175:
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

LABEL_176:
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      std::vector<std::shared_ptr<FrontendFeature>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<FrontendFeature>*>,std::__wrap_iter<std::shared_ptr<FrontendFeature>*>>(&v206, *(&v206 + 1), v218, *(&v218 + 1), (*(&v218 + 1) - v218) >> 4);
      buf[0] = &v218;
      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
      v37 += 16;
    }

    while (v37 != v191);
    v185 = *(&v206 + 1);
    v84 = v206;
    if (v206 == *(&v206 + 1))
    {
      goto LABEL_369;
    }

LABEL_184:
    v85 = *v84;
    v86 = *(v84 + 8);
    v186 = v84;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v87 = *(a1 + 168);
    v88 = *(a1 + 176);
    if (v88)
    {
      atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v187 = v88;
    v205 = 0;
    v204 = 0uLL;
    *&v216 = v85;
    *(&v216 + 1) = v86;
    if (v86)
    {
      atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v87)
    {
      SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(buf, v87);
      if (buf[0])
      {
        v89 = *(buf[0] + 84);
        v195 = v89 == 1;
        v192 = v89 == 3;
      }

      else
      {
        v195 = 0;
        v192 = 0;
      }

      if (buf[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
      }
    }

    else
    {
      v192 = 0;
      v195 = 0;
    }

    v91 = *v85;
    v90 = v85[1];
    v92 = v86;
    v93 = v90 - *v85;
    if (v90 == *v85)
    {
      goto LABEL_359;
    }

    v92 = v86;
    v197 = v86;
LABEL_199:
    v189 = v90;
    v190 = v92;
    v94 = 0;
    v95 = 0x84BDA12F684BDA13 * (v93 >> 3);
    if (v95 <= 1)
    {
      v95 = 1;
    }

    v199 = v95;
    v201 = v85;
    while (1)
    {
      v96 = v91 + 216 * v94;
      v97 = *(v96 + 72);
      v203 = v96;
      v98 = *(v96 + 80) - v97;
      if (v98)
      {
        break;
      }

LABEL_236:
      if (++v94 == v199)
      {
        if (v189 != v91)
        {
          v86 = v197;
          std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v204, &v216);
          v92 = v190;
          goto LABEL_359;
        }

        v86 = v197;
        v92 = v190;
        if (!v190)
        {
LABEL_361:
          if (v187)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v187);
          }

          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }

          std::vector<std::shared_ptr<FrontendFeature>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<FrontendFeature>*>,std::__wrap_iter<std::shared_ptr<FrontendFeature>*>>(&v211, v212, v204, *(&v204 + 1), (*(&v204 + 1) - v204) >> 4);
          buf[0] = &v204;
          std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
          v84 = v186 + 16;
          if (v186 + 16 == v185)
          {
            goto LABEL_369;
          }

          goto LABEL_184;
        }

LABEL_360:
        std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        goto LABEL_361;
      }
    }

    v99 = 0;
    v100 = 0x6DB6DB6DB6DB6DB7 * (v98 >> 3);
    if (v100 <= 1)
    {
      v101 = 1;
    }

    else
    {
      v101 = v100;
    }

    while (1)
    {
      v102 = v97 + 56 * v99;
      if (*v102 == 9)
      {
        v103 = (v102 + 8);
        v104 = *(v102 + 31);
        if ((v104 & 0x8000000000000000) != 0)
        {
          v106 = *(v102 + 16);
          if (!v106)
          {
            goto LABEL_235;
          }

          if (v106 != 6)
          {
            goto LABEL_218;
          }

          v105 = *v103;
        }

        else
        {
          if (!*(v102 + 31))
          {
            goto LABEL_235;
          }

          v105 = (v102 + 8);
          if (*(v102 + 31) != 6)
          {
            goto LABEL_218;
          }
        }

        v107 = *v105;
        v108 = *(v105 + 2);
        if (v107 != 1297044048 || v108 != 21584)
        {
LABEL_218:
          if (v195)
          {
            v111 = v201[6];
            v110 = v201[7];
            if (v111 != v110)
            {
              v112 = *(v102 + 16);
              if ((v104 & 0x80000000) == 0)
              {
                v113 = v104;
              }

              else
              {
                v113 = v112;
              }

              do
              {
                v114 = *(v111 + 39);
                v115 = v114;
                if ((v114 & 0x80u) != 0)
                {
                  v114 = *(v111 + 24);
                }

                if (v114 == v113)
                {
                  v116 = v115 >= 0 ? (v111 + 16) : *(v111 + 16);
                  v117 = *v103;
                  v118 = (v104 & 0x80000000) == 0 ? v103 : *v103;
                  if (!memcmp(v116, v118, v113))
                  {
                    goto LABEL_235;
                  }
                }

                v111 += 72;
              }

              while (v111 != v110);
            }
          }

          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v119 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf[0]) = 134217984;
            *(buf + 4) = v94;
            _os_log_impl(&dword_1C2F95000, v119, OS_LOG_TYPE_INFO, "Split frontend feature due to AUDIO marker at phone idx: %zu", buf, 0xCu);
          }

          Diagnostics::log(6, "Split frontend feature due to AUDIO marker at phone idx: %zu", v120, v94);
          if (v94 && (v121 = *v201, (*(*v201 + 216 * v94 - 192) & 1) != 0))
          {
            for (j = v201[6]; j != v201[7]; j += 18)
            {
              v123 = *j;
              if (v94 == v123)
              {
                *j = v123 - 1;
                break;
              }
            }

            v132 = -1;
          }

          else
          {
            memset(buf, 0, 24);
            *&v124 = 0x8000000080000000;
            *(&v124 + 1) = 0x8000000080000000;
            *(&buf[3] + 4) = v124;
            *(&buf[5] + 4) = v124;
            *(&buf[7] + 4) = 0x8000000080000000;
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            __p = 0u;
            v227 = 0;
            v228 = v124;
            v229 = v124;
            v230 = v124;
            v231 = v124;
            v232 = 0x7FFFFFFF;
            LOBYTE(buf[3]) = 1;
            MEMORY[0x1C692A640](buf, "sil");
            std::vector<PhoneFeature>::insert(v201, *v201 + 216 * v94, buf);
            v125 = *v201;
            v126 = v201[6];
            v127 = v201[7];
            while (v126 != v127)
            {
              v128 = *v126;
              if (v94 < v128)
              {
                *v126 = v128 + 1;
              }

              v126 += 18;
            }

            v129 = v201[3];
            v130 = v201[4];
            while (v129 != v130)
            {
              v131 = *v129;
              if (v94 <= v131)
              {
                *v129 = v131 + 1;
              }

              v129 += 34;
            }

            if (SHIBYTE(v227) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v225) < 0)
            {
              operator delete(*(&v224 + 1));
            }

            *&v218 = &v223;
            std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v218);
            if (SHIBYTE(buf[2]) < 0)
            {
              operator delete(buf[0]);
            }

            v132 = 0;
            v203 = v125 + 216 * v94 + 216;
            v121 = *v201;
          }

          v133 = v94 + v132;
          v134 = (v121 + 216 * (v94 + v132));
          v135 = v134 + 9;
          if (v192)
          {
            v218 = 0uLL;
            v219 = 0;
            v136 = *(v203 + 72);
            v137 = *(v203 + 80);
            memset(buf, 0, 24);
            std::vector<MarkerRecord>::__init_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(buf, v136, v137, 0x6DB6DB6DB6DB6DB7 * ((v137 - v136) >> 3));
            buf[3] = &v218;
            v139 = v134[9];
            for (k = v134[10]; v139 != k; v139 += 14)
            {
              v140 = *v139;
              if (*v139 == 4)
              {
                v141 = buf[0];
                if (buf[0] != buf[1])
                {
                  while (*v141 != 4)
                  {
                    v141 += 14;
                    if (v141 == buf[1])
                    {
                      goto LABEL_275;
                    }
                  }
                }

                if (v141 != buf[1])
                {
                  continue;
                }

LABEL_275:
                std::vector<MarkerRecord>::push_back[abi:ne200100](buf[3], v139);
                v140 = *v139;
              }

              if (v140 == 5)
              {
                v142 = buf[0];
                if (buf[0] != buf[1])
                {
                  while (*v142 != 5)
                  {
                    v142 += 14;
                    if (v142 == buf[1])
                    {
                      goto LABEL_282;
                    }
                  }
                }

                if (v142 != buf[1])
                {
                  continue;
                }

LABEL_282:
                std::vector<MarkerRecord>::push_back[abi:ne200100](buf[3], v139);
                v140 = *v139;
              }

              if (v140 == 6)
              {
                v143 = buf[0];
                if (buf[0] != buf[1])
                {
                  while (*v143 != 6)
                  {
                    v143 += 14;
                    if (v143 == buf[1])
                    {
                      goto LABEL_289;
                    }
                  }
                }

                if (v143 == buf[1])
                {
LABEL_289:
                  std::vector<MarkerRecord>::push_back[abi:ne200100](buf[3], v139);
                }
              }
            }

            v145 = *(v203 + 72);
            v144 = *(v203 + 80);
            if (v145 == v144)
            {
              v147 = v203;
            }

            else
            {
              do
              {
                if (*v145 <= 9u && ((1 << *v145) & 0x270) != 0)
                {
                  std::vector<MarkerRecord>::push_back[abi:ne200100](v135, v145);
                }

                v145 += 14;
              }

              while (v145 != v144);
              v147 = v203;
              v144 = *(v203 + 80);
            }

            std::vector<MarkerRecord>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MarkerRecord*>,std::__wrap_iter<MarkerRecord*>>((v203 + 72), v144, v218, *(&v218 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v218 + 1) - v218) >> 3));
            v217 = buf;
            std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v217);
            buf[0] = &v218;
            std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](buf);
            v157 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MarkerRecord *,MarkerRecord *,MarkerRecord *>(*(v147 + 72) + 56 * v99 + 56, *(v147 + 80), *(v147 + 72) + 56 * v99);
            for (m = *(v147 + 80); m != v157; m -= 56)
            {
              if (*(m - 25) < 0)
              {
                operator delete(*(m - 48));
              }
            }
          }

          else
          {
            v147 = v203;
            v148 = *(v203 + 72) + 56 * v99;
            v150 = v134[10];
            v149 = v134[11];
            if (v150 >= v149)
            {
              v151 = v134[9];
              v152 = v150 - v151;
              v153 = 0x6DB6DB6DB6DB6DB7 * ((v150 - v151) >> 3);
              v154 = v153 + 1;
              if ((v153 + 1) > 0x492492492492492)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v155 = 0x6DB6DB6DB6DB6DB7 * ((v149 - v151) >> 3);
              if (2 * v155 > v154)
              {
                v154 = 2 * v155;
              }

              if (v155 >= 0x249249249249249)
              {
                v156 = 0x492492492492492;
              }

              else
              {
                v156 = v154;
              }

              v221 = v135;
              if (v156)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(v156);
              }

              v159 = 8 * ((v150 - v151) >> 3);
              *&v218 = 0;
              *(&v218 + 1) = v159;
              v219 = v159;
              v220 = 0;
              if (!v153)
              {
                if (v152 < 1)
                {
                  if (v150 == v151)
                  {
                    v160 = 1;
                  }

                  else
                  {
                    v160 = 0xDB6DB6DB6DB6DB6ELL * ((v150 - v151) >> 3);
                  }

                  buf[4] = v221;
                  std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(v160);
                }

                v159 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MarkerRecord *,MarkerRecord *,MarkerRecord *>(8 * ((v150 - v151) >> 3), v159, v159 - 56 * ((0x6DB6DB6DB6DB6DB7 * (v152 >> 3) + 1) >> 1));
                *(&v218 + 1) -= 56 * ((0x6DB6DB6DB6DB6DB7 * (v152 >> 3) + 1) >> 1);
                v219 = v159;
              }

              *v159 = *v148;
              v161 = (v159 + 8);
              if (*(v148 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(v161, *(v148 + 8), *(v148 + 16));
              }

              else
              {
                v162 = *(v148 + 8);
                *(v159 + 24) = *(v148 + 24);
                *&v161->__r_.__value_.__l.__data_ = v162;
              }

              v163 = *(v148 + 32);
              *(v159 + 48) = *(v148 + 48);
              *(v159 + 32) = v163;
              v219 += 7;
              std::vector<MarkerRecord>::__swap_out_circular_buffer(v135, &v218, v150);
              std::__split_buffer<MarkerRecord>::~__split_buffer(&v218);
              v147 = v203;
            }

            else
            {
              std::vector<MarkerRecord>::__construct_one_at_end[abi:ne200100]<MarkerRecord const&>((v134 + 9), *(v203 + 72) + 56 * v99);
            }

            v157 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MarkerRecord *,MarkerRecord *,MarkerRecord *>(*(v147 + 72) + 56 * v99 + 56, *(v147 + 80), *(v147 + 72) + 56 * v99);
            for (n = *(v147 + 80); n != v157; n -= 56)
            {
              if (*(n - 25) < 0)
              {
                operator delete(*(n - 48));
              }
            }
          }

          *(v147 + 80) = v157;
          v165 = *(&v216 + 1);
          v215 = v216;
          v86 = v197;
          if (*(&v216 + 1))
          {
            atomic_fetch_add_explicit((*(&v216 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          PromptPartitionModuleInternal::split_phone_features(buf, &v215, v133);
          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          v166 = buf[0];
          if (buf[0])
          {
            std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v204, buf);
          }

          v167 = buf[3];
          v214[0] = buf[2];
          v214[1] = buf[3];
          if (buf[3])
          {
            atomic_fetch_add_explicit((buf[3] + 8), 1uLL, memory_order_relaxed);
          }

          PromptPartitionModuleInternal::split_phone_features(&v218, v214, 1);
          if (v167)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v167);
          }

          std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](&v204, &v218);
          if (v166 && v218)
          {
            PromptPartitionModuleInternal::duplicate_tn_normal_marker((*(v166 + 8) - 216), *(*v218 + 72), *(*v218 + 80));
          }

          v85 = v219;
          v92 = v220;
          if (v220)
          {
            atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v216 = v85;
          *(&v216 + 1) = v92;
          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          if (v92)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v92);
          }

          if (*(&v218 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v218 + 1));
          }

          if (v167)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v167);
          }

          if (buf[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
          }

          v91 = *v85;
          v90 = v85[1];
          v93 = v90 - *v85;
          if (v90 == *v85)
          {
LABEL_359:
            if (!v92)
            {
              goto LABEL_361;
            }

            goto LABEL_360;
          }

          goto LABEL_199;
        }
      }

LABEL_235:
      if (++v99 == v101)
      {
        goto LABEL_236;
      }
    }
  }

LABEL_369:
  v168 = *(a1 + 168);
  if (v168)
  {
    SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(buf, v168);
    if (buf[0])
    {
      v169 = *(buf[0] + 84);
      if (buf[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
      }

      if (v169 == 1)
      {
        v218 = 0uLL;
        v219 = 0;
        v170 = v211;
        v171 = v212;
        if (v211 != v212)
        {
          while (1)
          {
            v172 = **v170;
            v173 = *(v172 + 24);
            if (*(*v170 + 8) - v172 == 216)
            {
              break;
            }

            if ((*(v172 + 24) & 1) == 0)
            {
              goto LABEL_394;
            }

LABEL_395:
            v170 += 16;
            if (v170 == v171)
            {
              goto LABEL_396;
            }
          }

          if (*(v172 + 24))
          {
            v204 = 0uLL;
            v205 = 0;
            v174 = **v170;
            v175 = *(v174 + 72);
            v176 = *(v174 + 80);
            if (v175 != v176)
            {
              v177 = (v175 + 8);
              do
              {
                v179 = v177 - 8;
                v178 = *(v177 - 1);
                buf[0] = v178;
                if (*(v177 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&buf[1], *v177, *(v177 + 1));
                  LODWORD(v178) = buf[0];
                }

                else
                {
                  v180 = *v177;
                  buf[3] = *(v177 + 2);
                  *&buf[1] = v180;
                }

                v181 = *(v177 + 24);
                LOWORD(buf[6]) = *(v177 + 20);
                *&buf[4] = v181;
                if (v178 <= 9 && ((1 << v178) & 0x282) != 0)
                {
                  v182 = &v204;
                }

                else
                {
                  v182 = &v218;
                }

                std::vector<MarkerRecord>::push_back[abi:ne200100](v182, buf);
                if (SHIBYTE(buf[3]) < 0)
                {
                  operator delete(buf[1]);
                }

                v177 = (v177 + 56);
              }

              while (v179 + 56 != v176);
              v174 = **v170;
            }

            if ((v174 + 72) != &v204)
            {
              std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>((v174 + 72), v204, *(&v204 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v204 + 1) - v204) >> 3));
            }

            buf[0] = &v204;
            std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](buf);
            goto LABEL_395;
          }

LABEL_394:
          std::vector<MarkerRecord>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MarkerRecord*>,std::__wrap_iter<MarkerRecord*>>((v172 + 72), *(v172 + 80), v218, *(&v218 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v218 + 1) - v218) >> 3));
          goto LABEL_395;
        }

LABEL_396:
        buf[0] = &v218;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](buf);
      }
    }

    else if (buf[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
    }
  }

  if (v211 != v212)
  {
    operator new();
  }

  buf[0] = &v206;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
  buf[0] = &v208;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
  buf[0] = &v211;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
  }

  v183 = *MEMORY[0x1E69E9840];
}

void sub_1C30344F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  a55 = &a37;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a55);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    a37 = &a40;
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a37);
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  else
  {
    a37 = &a40;
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](&a37);
  }

  _Unwind_Resume(a1);
}

size_t *std::vector<std::shared_ptr<FrontendFeature>>::push_back[abi:ne200100](size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<Module>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::__split_buffer<std::shared_ptr<Module>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<FrontendFeature>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<FrontendFeature>*>,std::__wrap_iter<std::shared_ptr<FrontendFeature>*>>(void *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v15 = v10 - a2;
      v16 = (v10 - a2) >> 4;
      if (v16 >= a5)
      {
        std::vector<std::shared_ptr<FrontendFeature>>::__move_range(a1, a2, a1[1], &a2[16 * a5]);
        v17 = &v6[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<FrontendFeature>>,std::shared_ptr<FrontendFeature>*,std::shared_ptr<FrontendFeature>*,std::shared_ptr<FrontendFeature>*>(a1, (a3 + v15), a4, a1[1]);
        if (v16 < 1)
        {
          return;
        }

        std::vector<std::shared_ptr<FrontendFeature>>::__move_range(a1, a2, v10, &a2[16 * a5]);
        v17 = (v6 + v15);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<FrontendFeature> *,std::shared_ptr<FrontendFeature> *,std::shared_ptr<FrontendFeature> *>(v6, v17, a2);
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v30 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(v14);
      }

      v18 = 16 * ((a2 - v11) >> 4);
      v29 = 0;
      v19 = (v18 + 16 * a5);
      v20 = v18;
      do
      {
        v21 = v6[1];
        *v20 = *v6;
        *(v20 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v20 += 16;
        v6 += 2;
      }

      while (v20 != v19);
      memcpy(v19, a2, a1[1] - a2);
      v22 = *a1;
      v23 = &v19[a1[1] - a2];
      a1[1] = a2;
      v24 = a2 - v22;
      v25 = (v18 - (a2 - v22));
      memcpy(v25, v22, v24);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v23;
      v27 = a1[2];
      a1[2] = v29;
      v28[2] = v26;
      v29 = v27;
      v28[0] = v26;
      v28[1] = v26;
      std::__split_buffer<std::shared_ptr<Module>>::~__split_buffer(v28);
    }
  }
}

void SharedObjectPool::get_if<FrontendEnvironment>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    v5 = *(*v4 + 16);
    *a1 = *(*v4 + 8);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void SharedObjectPool::get<GeneratedPromptDB>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    SharedObjectPool::get<VoiceConfig>(&v9, a2);
    SharedObjectPool::get_if<FrontendEnvironment>(&v8, a2);
    v4 = v8;
    if (v8)
    {
      if (*(v8 + 135) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *(v8 + 112), *(v8 + 120));
      }

      else
      {
        v10 = *(v8 + 112);
      }

      v5 = *(v4 + 136);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v10, "");
    }

    operator new();
  }

  v7 = *(*v6 + 16);
  *a1 = *(*v6 + 8);
  a1[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void sub_1C3034E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::recursive_mutex::unlock((v20 + 56));
  _Unwind_Resume(a1);
}

uint64_t GeneratedPromptDB::has_spell_prompts(GeneratedPromptDB *this)
{
  v2 = *(this + 2);
  if (v2 && ((*(*v2 + 64))(v2) & 1) != 0)
  {
    return 1;
  }

  result = *(this + 3);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

BOOL GeneratedPromptDBImpl::has_spell_prompts(GeneratedPromptDBImpl *this)
{
  if (!*(this + 6))
  {
    return 1;
  }

  sqlite3_reset(*(this + 10));
  sqlite3_clear_bindings(*(this + 10));
  v2 = sqlite3_step(*(this + 10));
  if (v2 == 100)
  {
    return sqlite3_column_int(*(this + 10), 0) > 20;
  }

  GeneratedPromptDBImpl::report_error(this, v2, "execute spell count query");
  return 0;
}

uint64_t GeneratedPromptDBImpl::find_prompt_by_text(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  sqlite3_reset(*(a1 + 56));
  sqlite3_clear_bindings(*(a1 + 56));
  v6 = *(a2 + 23);
  v7 = v6 >= 0 ? a2 : *a2;
  v8 = v6 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v9 = sqlite3_bind_text(*(a1 + 56), 1, v7, v8, 0);
  v10 = v9;
  GeneratedPromptDBImpl::report_error(a1, v9, "bind argument");
  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v15 = __p.__r_.__value_.__r.__words[1];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&__p, 42);
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v15 = __p.__r_.__value_.__r.__words[1];
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v14 >= 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  v19 = sqlite3_bind_text(*(a1 + 56), 2, p_p, v18, 0);
  v20 = v19;
  GeneratedPromptDBImpl::report_error(a1, v19, "bind argument");
  if (v20)
  {
    v11 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v21 = 0;
  v11 = 0xFFFFFFFFLL;
  while (1)
  {
    v22 = sqlite3_step(*(a1 + 56));
    if (v22 != 100)
    {
      break;
    }

    if (!v21)
    {
      v21 = 1;
      goto LABEL_36;
    }

    ++v21;
    v23 = *(a1 + 88);
    v24 = v23 / 0xADC8;
    v25 = 48271 * (v23 % 0xADC8);
    v24 *= 3399;
    v26 = v25 >= v24;
    v27 = v25 - v24;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x7FFFFFFF;
    }

    v29 = v28 + v27;
    *(a1 + 88) = v29;
    if (!(v29 % v21))
    {
LABEL_36:
      v11 = sqlite3_column_int(*(a1 + 56), 0);
    }
  }

  if (v22 != 101)
  {
    GeneratedPromptDBImpl::report_error(a1, v22, "execute prompt query");
  }

LABEL_39:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_1C30352D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GeneratedPromptDBImpl::report_error(sqlite3 **this, uint64_t a2, const char *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v6 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = sqlite3_errmsg(this[6]);
      *buf = 136315394;
      v13 = a3;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1C2F95000, v6, OS_LOG_TYPE_ERROR, "GeneratedPromptDB: Failed to %s: %s", buf, 0x16u);
    }

    v8 = sqlite3_errmsg(this[6]);
    Diagnostics::log(3, "GeneratedPromptDB: Failed to %s: %s", v9, a3, v8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return a2;
}

void NeuralAdapterModule::setup_features(uint64_t a1, uint64_t *a2)
{
  std::vector<std::string>::clear[abi:ne200100]((a1 + 856));
  std::vector<std::string>::clear[abi:ne200100]((a1 + 880));
  std::vector<std::string>::clear[abi:ne200100]((a1 + 904));
  std::vector<TacotronPhoneFeature>::__base_destruct_at_end[abi:ne200100](a1 + 928, *(a1 + 928));
  if (*(a1 + 975) < 0)
  {
    **(a1 + 952) = 0;
    *(a1 + 960) = 0;
  }

  else
  {
    *(a1 + 952) = 0;
    *(a1 + 975) = 0;
  }

  std::vector<MarkerRecord>::clear[abi:ne200100]((a1 + 976));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 840) = v5;
  v6 = *(a1 + 848);
  *(a1 + 848) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 1000) = 0;
  *(a1 + 1016) = *(a1 + 1008);
}

void NeuralAdapterModule::process_markers(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = (a1 + 328);
    do
    {
      v7 = *v4;
      if (*v4 > 4)
      {
        if (v7 == 5)
        {
          *(a1 + 296) = v4[1] / 100.0;
        }

        else if (v7 == 10)
        {
          NeuralAdapterModule::process_bookmark(a1, v4);
        }
      }

      else if (v7 == 1)
      {
        *(a1 + 1000) = 1;
        v8 = *(a1 + 720);
        *(a1 + 296) = *(v8 + 4);
        *(a1 + 300) = *(v8 + 24);
        MEMORY[0x1C692A640](a1 + 304, "narrator");
        v9 = *(a1 + 720);
        *v6 = *(v9 + 28);
        *(a1 + 344) = *(v9 + 44);
        if (*(a1 + 839) < 0)
        {
          **(a1 + 816) = 0;
          *(a1 + 824) = 0;
        }

        else
        {
          *(a1 + 816) = 0;
          *(a1 + 839) = 0;
        }
      }

      else if (v7 == 4)
      {
        *(a1 + 300) = v4[1] / 100.0;
      }

      v4 += 14;
    }

    while (v4 != a3);
  }
}

void std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<MarkerRecord>::__vdeallocate(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MarkerRecord>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        v14 = *(v6 + 48);
        *(v8 + 32) = *(v6 + 32);
        *(v8 + 48) = v14;
        v8 += 56;
        v6 += 56;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 25) < 0)
      {
        operator delete(*(v11 - 48));
      }

      v11 -= 56;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        v13 = *(v6 + 48);
        *(v8 + 32) = *(v6 + 32);
        *(v8 + 48) = v13;
        v6 += 56;
        v8 += 56;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*,MarkerRecord*,MarkerRecord*>(a1, v12, a3, v11);
  }
}

void TacotronPhoneFeature::TacotronPhoneFeature(std::string *this, __int128 *a2, __int128 *a3, int a4, int a5, std::string::value_type a6, std::string::value_type a7, std::string::value_type a8, float a9, float a10)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v19 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v19;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v20 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v20;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  HIDWORD(this[2].__r_.__value_.__r.__words[0]) = a5;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 0;
  this[2].__r_.__value_.__s.__data_[12] = a8;
  this[2].__r_.__value_.__s.__data_[13] = a6;
  this[2].__r_.__value_.__s.__data_[14] = a7;
  *&this[2].__r_.__value_.__r.__words[2] = a9;
  *(&this[2].__r_.__value_.__r.__words[2] + 1) = a10;
  this[3].__r_.__value_.__r.__words[0] = 0x80000000000000;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
}

void sub_1C3035898(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 64);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = v9;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      std::allocator_traits<std::allocator<TacotronPhoneFeature>>::destroy[abi:ne200100]<TacotronPhoneFeature,0>(v5);
      v5 += 104;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<TacotronPhoneFeature>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 104;
    std::allocator_traits<std::allocator<TacotronPhoneFeature>>::destroy[abi:ne200100]<TacotronPhoneFeature,0>(v3 - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<MarkerRecord>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MarkerRecord*>,std::__wrap_iter<MarkerRecord*>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) >= a5)
    {
      v15 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 56 * a5;
        std::vector<MarkerRecord>::__move_range(result, a2, result[1], a2 + 56 * a5);
        v19 = v18 + v6;
        do
        {
          *v7 = *v6;
          result = std::string::operator=((v7 + 8), (v6 + 8));
          v20 = *(v6 + 48);
          *(v7 + 32) = *(v6 + 32);
          *(v7 + 48) = v20;
          v6 += 56;
          v7 += 56;
        }

        while (v6 != v19);
      }

      else
      {
        v16 = v15 + a3;
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*,MarkerRecord*,MarkerRecord*>(result, v15 + a3, a4, result[1]);
        v8[1] = result;
        if (v15 >= 1)
        {
          std::vector<MarkerRecord>::__move_range(v8, v7, v10, v7 + 56 * a5);
          do
          {
            *v7 = *v6;
            result = std::string::operator=((v7 + 8), (v6 + 8));
            v17 = *(v6 + 48);
            *(v7 + 32) = *(v6 + 32);
            *(v7 + 48) = v17;
            v6 += 56;
            v7 += 56;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *result) >> 3);
      if (v12 > 0x492492492492492)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v12;
      }

      v33 = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(v14);
      }

      v21 = 0;
      v22 = 8 * ((a2 - v11) >> 3);
      v30[0] = 0;
      v30[1] = v22;
      v31 = v22;
      v32 = 0;
      v23 = 56 * a5;
      v24 = v22 + 56 * a5;
      do
      {
        v25 = v6 + v21;
        *(v22 + v21) = *(v6 + v21);
        v26 = (v22 + v21 + 8);
        if (*(v6 + v21 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v26, *(v25 + 8), *(v25 + 16));
        }

        else
        {
          v27 = *(v25 + 8);
          *(v22 + v21 + 24) = *(v25 + 24);
          *&v26->__r_.__value_.__l.__data_ = v27;
        }

        v28 = v22 + v21;
        v29 = *(v25 + 32);
        *(v28 + 48) = *(v25 + 48);
        *(v28 + 32) = v29;
        v21 += 56;
      }

      while (v23 != v21);
      v31 = v24;
      std::vector<MarkerRecord>::__swap_out_circular_buffer(v8, v30, v7);
      return std::__split_buffer<MarkerRecord>::~__split_buffer(v30);
    }
  }

  return result;
}

uint64_t std::vector<MarkerRecord>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void std::allocator_traits<std::allocator<TacotronPhoneFeature>>::destroy[abi:ne200100]<TacotronPhoneFeature,0>(uint64_t a1)
{
  v3 = (a1 + 80);
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void NeuralAdapterModule::find_last_char(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v3 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v17 = v5;
  v18 = v6 | (v6 << 32);
  if (!v6)
  {
    return;
  }

  v9 = v6 - 1;
  LODWORD(v18) = v6 - 1;
  if (v5[v9] <= -65)
  {
    LODWORD(v9) = utf8_back1SafeBody(v5, 0, v9);
    LODWORD(v18) = v9;
  }

  v10 = UTFString::codepoint_iterator<std::string>::operator*(&v17);
  UTFString::push_back_codepoint<std::string>(a1, v10);
  if (!v9 || a3 == 0)
  {
    return;
  }

  memset(&__p, 0, sizeof(__p));
  v12 = v9 - 1;
  LODWORD(v18) = v9 - 1;
  if (v5[v12] <= -65)
  {
    LODWORD(v18) = utf8_back1SafeBody(v5, 0, v12);
  }

  v13 = UTFString::codepoint_iterator<std::string>::operator*(&v17);
  UTFString::push_back_codepoint<std::string>(&__p, v13);
  v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 1)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
LABEL_21:
      if (p_p->__r_.__value_.__s.__data_[0] == 32)
      {
        goto LABEL_24;
      }
    }
  }

  else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
  {
    p_p = &__p;
    goto LABEL_21;
  }

  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
LABEL_24:
    if ((v14 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_25:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C3035F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void UTFString::push_back_codepoint<std::string>(std::string *this, unsigned int a2)
{
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (a2 >= 0x80)
  {
    if (a2 >= 0x800)
    {
      if (a2 >> 11 >= 0x1B)
      {
        if (a2 - 1114112 >= 0xFFEFE000)
        {
          v9 = 3;
          if (a2 >= 0x10000)
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 3;
      }

      std::string::resize(this, v9 + size, 0);
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = this;
      }

      else
      {
        v10 = this->__r_.__value_.__r.__words[0];
      }

      if (a2 >= 0x10000)
      {
        v10->__r_.__value_.__s.__data_[size] = (a2 >> 18) | 0xF0;
        v11 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = this;
        }

        else
        {
          v10 = this->__r_.__value_.__r.__words[0];
        }

        v12 = size + 2;
        v13 = (size << 32) + 0x100000000;
      }

      else
      {
        v11 = (a2 >> 12) | 0xFFFFFFE0;
        v12 = size + 1;
        v13 = size << 32;
      }

      v10->__r_.__value_.__s.__data_[v13 >> 32] = v11;
      v7 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = this;
      }

      else
      {
        v8 = this->__r_.__value_.__r.__words[0];
      }

      v6 = v12 << 32;
    }

    else
    {
      v6 = size << 32;
      std::string::resize(this, ((size << 32) + 0x200000000) >> 32, 0);
      v7 = (a2 >> 6) | 0xFFFFFFC0;
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = this;
      }

      else
      {
        v8 = this->__r_.__value_.__r.__words[0];
      }
    }

    v8->__r_.__value_.__s.__data_[v6 >> 32] = v7;
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = this;
    }

    else
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v14->__r_.__value_.__s.__data_[(v6 >> 32) + 1] = a2 & 0x3F | 0x80;
  }

  else
  {
    std::string::resize(this, size + 1, 0);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__r_.__value_.__r.__words[0];
    }

    v5->__r_.__value_.__s.__data_[size] = a2;
  }
}

uint64_t NeuralAdapterModule::save_break(NeuralAdapterModule *this, uint64_t a2, int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(this + 126);
  for (i = *(this + 127); i != v6; *(this + 127) = i)
  {
    v8 = *(i - 8);
    if (v8 != 35)
    {
      if (v8 == 44)
      {
        if (a2 == 35)
        {
          break;
        }
      }

      else if (v8 != 46 || a2 != 46)
      {
        break;
      }
    }

    i -= 32;
  }

  v9 = *(this + 975);
  if (v9 < 0)
  {
    v9 = *(this + 120);
  }

  v10 = a3 - a4;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 108) - *(this + 107)) >> 3);
  v12 = v9 - 1;
  v13 = *(this + 128);
  if (i >= v13)
  {
    v15 = i - v6;
    v16 = (i - v6) >> 5;
    v17 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v18 = v13 - v6;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (!(v19 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = 32 * v16;
    *v20 = v10;
    *(v20 + 8) = v11;
    *(v20 + 16) = v12;
    *(v20 + 24) = a2;
    v14 = 32 * v16 + 32;
    memcpy(0, v6, v15);
    *(this + 126) = 0;
    *(this + 127) = v14;
    *(this + 128) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *i = v10;
    *(i + 1) = v11;
    *(i + 2) = v12;
    i[24] = a2;
    v14 = (i + 32);
  }

  *(this + 127) = v14;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v21 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
  {
    v23 = *(this + 127);
    v25 = *(v23 - 32);
    v24 = *(v23 - 24);
    *buf = 67109632;
    v29 = a2;
    v30 = 2048;
    v31 = v25 + 1;
    v32 = 2048;
    v33 = v24;
    _os_log_impl(&dword_1C2F95000, v21, OS_LOG_TYPE_INFO, "Potential break [%c] %zu words %zu phones", buf, 0x1Cu);
  }

  result = Diagnostics::log(6, "Potential break [%c] %zu words %zu phones", v22, a2, *(*(this + 127) - 32) + 1, *(*(this + 127) - 24));
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void NeuralAdapterModule::dump_features(NeuralAdapterModule *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v2 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
  {
    Censor::global_plaintext(&__p, this + 952);
    v3 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_1C2F95000, v2, OS_LOG_TYPE_INFO, "Neural Phonemes: %s ", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  Censor::global_plaintext(&__p, this + 952);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Diagnostics::log(6, "Neural Phonemes: %s ", v4, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1C3038314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  *(v23 - 160) = v23 - 128;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v23 - 160));
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void UTFString::join<std::string,int>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  std::accumulate[abi:ne200100]<std::__wrap_iter<int const*>,std::string,std::string UTFString::join<std::string,int>(std::vector<int> const&,std::string const&)::{lambda(std::string,int)#1}>(a1, a2, a3, v8, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1C3038960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1C3038B9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void UTFString::join<std::string,std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&__p[32], 0, 7);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
  }

  if (a2 == a3)
  {
    v7 = 0;
    size = 0;
    LOBYTE(v9) = 0;
  }

  else
  {
    v7 = 0;
    size = 0;
    v9 = 0;
    do
    {
      if ((v9 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v17, v7, size);
        v10 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        size = v17.__r_.__value_.__l.__size_;
      }

      else
      {
        v17.__r_.__value_.__r.__words[0] = v7;
        v17.__r_.__value_.__l.__size_ = size;
        LODWORD(v17.__r_.__value_.__r.__words[2]) = *&__p[32];
        *(&v17.__r_.__value_.__r.__words[2] + 3) = *&__p[35];
        *(&v17.__r_.__value_.__s + 23) = v9;
        v10 = v9;
      }

      if ((v10 & 0x80u) != 0)
      {
        v10 = size;
      }

      if (v10)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17.__r_.__value_.__l.__data_, __p, &v19);
        v11 = *(a2 + 23);
        if (v11 >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = *a2;
        }

        if (v11 >= 0)
        {
          v13 = *(a2 + 23);
        }

        else
        {
          v13 = *(a2 + 8);
        }

        v14 = std::string::append(&v19, v12, v13);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v18.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v18.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      else if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
      }

      else
      {
        v18 = *a2;
      }

      if (v9 < 0)
      {
        operator delete(v7);
      }

      size = v18.__r_.__value_.__l.__size_;
      v7 = v18.__r_.__value_.__r.__words[0];
      *&__p[32] = v18.__r_.__value_.__r.__words[2];
      *&__p[35] = *(&v18.__r_.__value_.__r.__words[2] + 3);
      v9 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      *(&v18.__r_.__value_.__s + 23) = 0;
      v18.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      a2 += 24;
    }

    while (a2 != a3);
  }

  *a1 = v7;
  *(a1 + 8) = size;
  *(a1 + 16) = *&__p[32];
  *(a1 + 19) = *&__p[35];
  *(a1 + 23) = v9;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_1C3038E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<FastSpeechDecoderFeature>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void FastSpeech2DecoderBaseInference::get_outputs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "graph_decoder_output_mel_name");
  (*(*v6 + 32))(&v19, v6, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v8 = *(*a2 + 80);
  v9 = *(v7 + 84);
  v10 = *(a1 + 8);
  InferenceEngine::DataTensor::get_shape(v19, 0, &v14);
  v11 = v8 - v9;
  if (v8 - v9 + v10 >= *(v14 + 2))
  {
    v12 = *(v14 + 2);
  }

  else
  {
    v12 = v8 - v9 + v10;
  }

  v15 = v14;
  operator delete(v14);
  InferenceEngine::DataTensor::get_3d_array<float>(v19, v13);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v14, *v13[0], v13[0][1], 0xAAAAAAAAAAAAAAABLL * ((v13[0][1] - *v13[0]) >> 3));
  v21 = v13;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v21);
  std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>((*a3 + 8), v14 + 3 * v11, v14 + 3 * v12, 0xAAAAAAAAAAAAAAABLL * ((24 * v12 - 24 * v11) >> 3));
  std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((*a3 + 32), *(*a3 + 8), *(*a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(*a3 + 16) - *(*a3 + 8)) >> 3));
  v13[0] = &v14;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v13);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1C30391AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  a9 = &a12;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void sub_1C30391FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C30391F4);
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

uint64_t std::__function::__func<FastSpeech2DecoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<FastSpeech2DecoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<WaveNetFeature>)>::operator()(uint64_t a1, char ****a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (*(v4 + 160) == 1)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder inference cancelled.", buf, 2u);
    }

    Diagnostics::log(5, "Parallel AM decoder inference cancelled.", v6);
  }

  else if ((*(**(a1 + 16) + 2) & 1) == 0)
  {
    v11 = ((std::chrono::steady_clock::now().__d_.__rep_ - **(a1 + 24)) / 1000000) / 1000.0;
    v12 = (0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1])) / v11 / (1000.0 / *(v4 + 272));
    v33 = v4;
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v13 = v12;
    v14 = Diagnostics_GetLogObject(void)::__profile_log_default;
    v32 = v2;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = **(a1 + 32) == 0;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1]);
      *buf = 67110144;
      *&buf[4] = v16;
      *v41 = 2048;
      *&v41[2] = v17;
      *&v41[10] = 2048;
      *&v41[12] = v11;
      v42 = 2048;
      v43 = v17 / v11;
      v18 = v13;
      v44 = 2048;
      v45 = v13;
      _os_log_impl(&dword_1C2F95000, v14, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder inference first = %d, total frames = %lu, Run Time : %.3f s, %.3f frames/s, rtf: %.3f", buf, 0x30u);
    }

    else
    {
      v18 = v13;
    }

    Diagnostics::log(5, "Parallel AM decoder inference first = %d, total frames = %lu, Run Time : %.3f s, %.3f frames/s, rtf: %.3f", v15, **(a1 + 32) == 0, 0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1]), *&v11, (0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1])) / v11, *&v18);
    v19 = *(v4 + 288);
    if (NeuralTTSUtils::check_thermal_limit(2))
    {
      if (*(v4 + 296) >= v13)
      {
        v21 = -1431655765 * ((v3[2] - v3[1]) >> 3);
      }

      else
      {
        v20 = *(v4 + 292);
      }
    }

    v22 = **(a1 + 40);
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    for (i = *(v22 + 32); i != v24; i += 3)
    {
      *buf = 0;
      *v41 = 0;
      *&v41[8] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(buf, *i, i[1], (i[1] - *i) >> 2);
      v38 = 0;
      v39 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&__p, *buf, *v41, (*v41 - *buf) >> 2);
      std::vector<std::vector<float>>::push_back[abi:ne200100]((v3 + 7), &__p);
      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      if (*buf)
      {
        *v41 = *buf;
        operator delete(*buf);
      }
    }

    if (*(v33 + 313) == 1)
    {
      v26 = *(v33 + 384);
      v36[0] = v3;
      v36[1] = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(a1 + 16);
      v28 = v27[1];
      v35[0] = *v27;
      v35[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      **(a1 + 48) = TacotronAlignment::trim_silences(v26, v36, v35, *(v33 + 304));
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    if (v3[7] != v3[8])
    {
      TacotronAlignment::append_alignments(*(v33 + 384), v3 + 7);
      v29 = *(v33 + 384);
      v30 = **(a1 + 16);
      v38 = 0;
      v39 = 0;
      __p = 0;
      std::vector<TacotronPhoneFeature>::__init_with_size[abi:ne200100]<TacotronPhoneFeature*,TacotronPhoneFeature*>(&__p, *(v30 + 8), *(v30 + 16), 0x4EC4EC4EC4EC4EC5 * ((*(v30 + 16) - *(v30 + 8)) >> 3));
      TacotronAlignment::generate_speech_rate(buf, v29, &__p, 0xAAAAAAAAAAAAAAABLL * (v3[2] - v3[1]), -1431655765 * (v3[2] - v3[1]), (*(**(a1 + 16) + 40) - *(**(a1 + 16) + 32)) >> 2);
      p_p = &__p;
      std::vector<TacotronPhoneFeature>::__destroy_vector::operator()[abi:ne200100](&p_p);
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>((v3 + 10), v3[11], *buf, *v41, (*v41 - *buf) >> 2);
      if (*buf)
      {
        *v41 = *buf;
        operator delete(*buf);
      }
    }

    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(buf, *(v33 + 168));
    v31 = *buf;
    if (*buf)
    {
      Observable::emit(*buf, "tts.feature.neural.mel", v3 + 1);
      Observable::emit(v31, "tts.feature.neural.alignment", v3 + 7);
    }

    if (v3[2] != v3[1])
    {
      operator new();
    }

    v2 = v32;
    **(a1 + 32) = **(a1 + 32);
    (*(a1 + 24))->__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (*v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*v41);
    }

    v8 = 0;
    if (v32)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = 1;
  if (v2)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1C3039C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3039DAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TacotronAlignment::trim_silences(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = *(*a2 + 8);
  if (*(*a2 + 16) == v4)
  {
    v20 = 0;
    goto LABEL_91;
  }

  __p = 0;
  v60 = 0;
  v61 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v4, v4[1], (v4[1] - *v4) >> 2);
  __C = 0.0;
  vDSP_rmsqv(__p, 1, &__C, (v60 - __p) >> 2);
  if (__C < *(a1 + 28))
  {
    if (*(a1 + 125))
    {
      v9 = 0;
      if (!a4)
      {
LABEL_6:
        v11 = v9;
        std::vector<std::vector<float>>::erase((*a2 + 8), *(*a2 + 8), *(*a2 + 8) + 24 * v9);
        std::vector<std::vector<float>>::erase((*a2 + 32), *(*a2 + 32), *(*a2 + 32) + 24 * v9);
        v12 = *a2;
        if (*(*a2 + 56) != *(*a2 + 64) && v9 >= 1)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v14 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 1.5047e-36;
            v63 = v9;
            _os_log_impl(&dword_1C2F95000, v14, OS_LOG_TYPE_DEBUG, "TacotronAlignment Removed '%d' frames of silence at the beginning of utterance", buf, 8u);
          }

          Diagnostics::log(7, "TacotronAlignment Removed '%d' frames of silence at the beginning of utterance", v15, v9);
          v12 = *a2;
          v16 = *(*a2 + 56);
          v17 = *(*a2 + 64);
          if (v17 - v16 == 24)
          {
            v18 = *v16;
            v19 = v16[1];
            if (*v16 != v19)
            {
              do
              {
                *v18 = *v18 - v9;
                ++v18;
              }

              while (v18 != v19);
            }
          }

          else if (v16 != v17)
          {
            do
            {
              v24 = *v16;
              v23 = v16[1];
              v25 = &(*v16)[v11];
              v26 = v23 - v25;
              if (v23 != v25)
              {
                memmove(*v16, v25, v23 - v25);
              }

              v16[1] = (v24 + v26);
              v16 += 3;
            }

            while (v16 != v17);
            v12 = *a2;
          }
        }

        v27 = *(v12 + 16);
        if (v27 == *(v12 + 8))
        {
          v28 = 0;
        }

        else
        {
          v28 = 0;
          while (1)
          {
            *buf = 0.0;
            v29 = *(v27 - 24);
            v30 = *(v27 - 16);
            v27 -= 24;
            vDSP_rmsqv(v29, 1, buf, (v30 - v29) >> 2);
            if ((*buf / __C) >= *(a1 + 32))
            {
              break;
            }

            ++v28;
            v12 = *a2;
            if (v27 == *(*a2 + 8))
            {
              goto LABEL_40;
            }
          }

          if (v28 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v28;
          }

          v28 = v31 - 1;
          v12 = *a2;
        }

LABEL_40:
        v32 = v28 + *(a1 + 24) / -10 + 4;
        v33 = v32 & ~(v32 >> 31);
        *(a1 + 164) = v28 - v33;
        v20 = v33 + v11;
        std::vector<std::vector<float>>::erase((v12 + 8), -24 * v33 + *(v12 + 16), *(v12 + 16));
        std::vector<std::vector<float>>::erase((*a2 + 32), -24 * v33 + *(*a2 + 40), *(*a2 + 40));
        if (*(*a2 + 56) != *(*a2 + 64) && v32 >= 1)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v35 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 1.5047e-36;
            v63 = v33;
            _os_log_impl(&dword_1C2F95000, v35, OS_LOG_TYPE_DEBUG, "TacotronAlignment Removed '%d' frames of silence at the end of utterance", buf, 8u);
          }

          Diagnostics::log(7, "TacotronAlignment Removed '%d' frames of silence at the end of utterance", v36, v32 & ~(v32 >> 31));
          if ((0x4EC4EC4EC4EC4EC5 * ((*(*a3 + 16) - *(*a3 + 8)) >> 3)) < 2)
          {
            v40 = 0;
          }

          else
          {
            v37 = *(*a3 + 16);
            v38 = *(v37 - 185);
            if (v38 < 0)
            {
              v39 = *(v37 - 208);
              v38 = *(v37 - 200);
            }

            else
            {
              v39 = (v37 - 208);
            }

            if (v38 >= 1)
            {
              v41 = &v39[v38];
              v42 = v39;
              do
              {
                v43 = memchr(v42, 35, v38);
                if (!v43)
                {
                  break;
                }

                if (*v43 == 35)
                {
                  if (v43 != v41 && v43 - v39 != -1)
                  {
                    v40 = 1;
                    goto LABEL_67;
                  }

                  break;
                }

                v42 = v43 + 1;
                v38 = v41 - v42;
              }

              while (v41 - v42 >= 1);
            }

            v40 = 0;
LABEL_67:
            v44 = *(v37 - 81);
            if (v44 < 0)
            {
              v45 = *(v37 - 104);
              v44 = *(v37 - 96);
            }

            else
            {
              v45 = (v37 - 104);
            }

            if (v44 >= 1)
            {
              v46 = &v45[v44];
              v47 = v45;
              do
              {
                v48 = memchr(v47, 46, v44);
                if (!v48)
                {
                  break;
                }

                if (*v48 == 46)
                {
                  if (v48 != v46 && v48 - v45 != -1)
                  {
                    ++v40;
                  }

                  break;
                }

                v47 = v48 + 1;
                v44 = v46 - v47;
              }

              while (v46 - v47 >= 1);
            }
          }

          v50 = *(*a2 + 56);
          v49 = *(*a2 + 64);
          if (v49 - v50 != 24 && v50 != v49)
          {
            v52 = 4 * v40;
            v53 = 4 * (v33 + v40);
            do
            {
              if (v52 != v53)
              {
                v54 = *(v50 + 8);
                v55 = v54 - v53;
                if (v52)
                {
                  memmove((v54 - v53), (v54 - v52), v52);
                }

                *(v50 + 8) = v55 + v52;
              }

              v50 += 24;
            }

            while (v50 != v49);
          }
        }

        goto LABEL_89;
      }
    }

    else
    {
      v21 = *(*a2 + 8);
      v22 = *(*a2 + 16);
      if (v21 == v22)
      {
        v9 = 0;
      }

      else
      {
        LODWORD(v9) = 0;
        while (1)
        {
          *buf = 0.0;
          vDSP_rmsqv(*v21, 1, buf, (*(v21 + 8) - *v21) >> 2);
          if ((*buf / __C) >= *(a1 + 32))
          {
            break;
          }

          v9 = (v9 + 1);
          v21 += 24;
          if (v21 == v22)
          {
            goto LABEL_54;
          }
        }

        v9 = (v9 - *(a1 + 36)) & ~((v9 - *(a1 + 36)) >> 31);
      }

LABEL_54:
      *(a1 + 125) = 1;
      if (!a4)
      {
        goto LABEL_6;
      }
    }

    v10 = v9 + *(a1 + 164) + *(a1 + 24) / -10 + 4;
    v9 = v10 & ~(v10 >> 31);
    goto LABEL_6;
  }

  v20 = 0;
LABEL_89:
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

LABEL_91:
  v56 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1C303A3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a3;
      v8 = *a1 + a2;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        if (v10)
        {
          v9[1] = v10;
          operator delete(v10);
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
        }

        v11 = (v7 + v6);
        *v9 = *(v7 + v6);
        v9[2] = *(v7 + v6 + 16);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v7 += 24;
        v8 += 24;
      }

      while (v7 + v6 != v5);
      v12 = v8 + v6;
      v5 = a1[1];
    }

    if (v5 != v12)
    {
      v13 = v5;
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v5 - 16) = v14;
          operator delete(v14);
        }

        v5 = v13;
      }

      while (v13 != v12);
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t FastSpeechUtils::has_whisper(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
LABEL_2:
    for (i = *(a1 + 80); ; i += 56)
    {
      if (i == *(a1 + 88))
      {
        a1 += 104;
        if (a1 != a2)
        {
          goto LABEL_2;
        }

        return 0;
      }

      if (*i == 8)
      {
        v3 = (i + 8);
        v4 = *(i + 31);
        if (v4 < 0)
        {
          if (*(i + 16) != 7)
          {
            continue;
          }

          v3 = *v3;
        }

        else if (v4 != 7)
        {
          continue;
        }

        v5 = *v3;
        v6 = *(v3 + 3);
        if (v5 == 1936287863 && v6 == 1919250547)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<WaveNetFeature>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Mil2BnnsWaveRNNSubscaleInference::reset(Mil2BnnsWaveRNNSubscaleInference *this)
{
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v2 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1C2F95000, v2, OS_LOG_TYPE_INFO, "Mil2BnnsWaveRNNFusedSubscaleInference reset.", v12, 2u);
  }

  Diagnostics::log(6, "Mil2BnnsWaveRNNFusedSubscaleInference reset.", v3);
  v4 = *(this + 36);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = *(v5 + 120); i; i = *i)
  {
    bzero(*i[5], i[5][1]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *(this + 36);
  v9 = *v8;
  v10 = v8[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (j = *(v9 + 120); j; j = *j)
  {
    bzero(*j[5], j[5][1]);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
}

void std::__shared_ptr_emplace<FastSpeechDecoderFeature>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 56);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 32);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void Agglomerate::ItemHolder<std::shared_ptr<FastSpeechDecoderFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42EF708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

float non_variance_term_negative_log_likelihood_asm(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = a5 - 24;
  if (v7 >= 0)
  {
    v8 = *a2;
    a2 += 6;
    v9 = v8;
    v10 = a2[-5];
    v11 = *a1;
    a1 += 6;
    v12 = v11;
    v13 = *a3;
    a3 += 6;
    v14 = vrecpeq_f32(v9);
    v15 = vrecpeq_f32(v10);
    v16 = a2[-4];
    v17 = a2[-3];
    v18 = a2[-2];
    v19 = a2[-1];
    v20 = a1[-2];
    v21 = a1[-1];
    v22 = a3[-2];
    v23 = a3[-1];
    v24 = vsubq_f32(v13, v12);
    v25 = vsubq_f32(a3[-5], a1[-5]);
    v26 = *a4;
    a4 += 6;
    v27 = vrecpeq_f32(v16);
    v28 = vrecpeq_f32(v17);
    v29 = vmulq_f32(v14, vrecpsq_f32(v9, v14));
    v30 = vmulq_f32(v15, vrecpsq_f32(v10, v15));
    v31 = vrecpsq_f32(v16, v27);
    v32 = vrecpsq_f32(v17, v28);
    v33 = vrecpsq_f32(v9, v29);
    v34 = vrecpsq_f32(v10, v30);
    v35 = vsubq_f32(a3[-4], a1[-4]);
    v36 = vsubq_f32(a3[-3], a1[-3]);
    v37 = a4[-4];
    v38 = a4[-3];
    v39 = vmulq_f32(vmulq_f32(v24, v24), v26);
    v40 = vmulq_f32(vmulq_f32(v25, v25), a4[-5]);
    for (v7 -= 24; v7 >= 0; v7 -= 24)
    {
      v41 = *a2;
      a2 += 6;
      v42 = v41;
      v43 = a2[-5];
      v44 = vrecpeq_f32(v18);
      v45 = vrecpeq_f32(v19);
      v46 = *a1;
      a1 += 6;
      v47 = v46;
      v48 = vmulq_f32(v27, v31);
      v49 = vmulq_f32(v28, v32);
      v50 = vsubq_f32(v22, v20);
      v51 = vsubq_f32(v23, v21);
      v52 = a4[-2];
      v53 = a4[-1];
      v54 = vrecpsq_f32(v16, v48);
      v55 = vrecpsq_f32(v17, v49);
      v16 = a2[-4];
      v17 = a2[-3];
      v56 = vmlaq_f32(v5, v39, vmulq_f32(v29, v33));
      v57 = vmlaq_f32(v6, v40, vmulq_f32(v30, v34));
      v58 = *a3;
      a3 += 6;
      v59 = vrecpeq_f32(v42);
      v60 = vrecpeq_f32(v43);
      v61 = vmulq_f32(v44, vrecpsq_f32(v18, v44));
      v62 = vmulq_f32(v45, vrecpsq_f32(v19, v45));
      v63 = vsubq_f32(v58, v47);
      v64 = vsubq_f32(a3[-5], a1[-5]);
      v65 = *a4;
      a4 += 6;
      v66 = vrecpsq_f32(v18, v61);
      v67 = vrecpsq_f32(v19, v62);
      v18 = a2[-2];
      v19 = a2[-1];
      v68 = vmlaq_f32(v56, vmulq_f32(vmulq_f32(v35, v35), v37), vmulq_f32(v48, v54));
      v69 = vmlaq_f32(v57, vmulq_f32(vmulq_f32(v36, v36), v38), vmulq_f32(v49, v55));
      v70 = vmulq_f32(vmulq_f32(v50, v50), v52);
      v71 = vmulq_f32(vmulq_f32(v51, v51), v53);
      v20 = a1[-2];
      v21 = a1[-1];
      v27 = vrecpeq_f32(v16);
      v28 = vrecpeq_f32(v17);
      v29 = vmulq_f32(v59, vrecpsq_f32(v42, v59));
      v30 = vmulq_f32(v60, vrecpsq_f32(v43, v60));
      v35 = vsubq_f32(a3[-4], a1[-4]);
      v36 = vsubq_f32(a3[-3], a1[-3]);
      v37 = a4[-4];
      v38 = a4[-3];
      v31 = vrecpsq_f32(v16, v27);
      v32 = vrecpsq_f32(v17, v28);
      v33 = vrecpsq_f32(v42, v29);
      v34 = vrecpsq_f32(v43, v30);
      v5 = vmlaq_f32(v68, v70, vmulq_f32(v61, v66));
      v6 = vmlaq_f32(v69, v71, vmulq_f32(v62, v67));
      v22 = a3[-2];
      v23 = a3[-1];
      v39 = vmulq_f32(vmulq_f32(v63, v63), v65);
      v40 = vmulq_f32(vmulq_f32(v64, v64), a4[-5]);
    }

    v72 = vrecpeq_f32(v18);
    v73 = vrecpeq_f32(v19);
    v74 = vmulq_f32(v27, v31);
    v75 = vmulq_f32(v28, v32);
    v76 = vsubq_f32(v22, v20);
    v77 = vsubq_f32(v23, v21);
    v78 = vmulq_f32(v72, vrecpsq_f32(v18, v72));
    v79 = vmulq_f32(v73, vrecpsq_f32(v19, v73));
    v5 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v5, v39, vmulq_f32(v29, v33)), vmulq_f32(vmulq_f32(v35, v35), v37), vmulq_f32(v74, vrecpsq_f32(v16, v74))), vmulq_f32(vmulq_f32(v76, v76), a4[-2]), vmulq_f32(v78, vrecpsq_f32(v18, v78)));
    v6 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v6, v40, vmulq_f32(v30, v34)), vmulq_f32(vmulq_f32(v36, v36), v38), vmulq_f32(v75, vrecpsq_f32(v17, v75))), vmulq_f32(vmulq_f32(v77, v77), a4[-1]), vmulq_f32(v79, vrecpsq_f32(v19, v79)));
  }

  for (i = v7 + 16; i >= 0; i -= 8)
  {
    v81 = *a2;
    a2 += 2;
    v82 = v81;
    v83 = a2[-1];
    v84 = *a1;
    a1 += 2;
    v85 = v84;
    v86 = *a3;
    a3 += 2;
    v87 = vrecpeq_f32(v82);
    v88 = vrecpeq_f32(v83);
    v89 = vsubq_f32(v86, v85);
    v90 = vsubq_f32(a3[-1], a1[-1]);
    v91 = *a4;
    a4 += 2;
    v92 = vmulq_f32(v87, vrecpsq_f32(v82, v87));
    v93 = vmulq_f32(v88, vrecpsq_f32(v83, v88));
    v5 = vmlaq_f32(v5, vmulq_f32(vmulq_f32(v89, v89), v91), vmulq_f32(v92, vrecpsq_f32(v82, v92)));
    v6 = vmlaq_f32(v6, vmulq_f32(vmulq_f32(v90, v90), a4[-1]), vmulq_f32(v93, vrecpsq_f32(v83, v93)));
  }

  v94 = vaddq_f32(v5, v6);
  v95 = i + 4;
  if (v95 >= 0)
  {
    v96 = *a4++;
    v97 = v96;
    v98 = *a2++;
    v99 = v98;
    v100 = *a1++;
    v101 = v100;
    v102 = *a3++;
    v95 -= 4;
    v103 = vsubq_f32(v102, v101);
    v94 = vmlaq_f32(v94, vmulq_f32(v103, v103), vdivq_f32(v97, v99));
  }

  v104 = vpaddq_f32(v94, v94).u64[0];
  v105 = v95 + 2;
  if (v105 >= 0)
  {
    v106 = *a4->f32;
    a4 = (a4 + 8);
    v107 = v106;
    v108 = *a2->f32;
    a2 = (a2 + 8);
    v109 = v108;
    v110 = *a1->f32;
    a1 = (a1 + 8);
    v111 = v110;
    v112 = *a3->f32;
    a3 = (a3 + 8);
    v105 -= 2;
    v113 = vsub_f32(v112, v111);
    v104 = vmla_f32(v104, vmul_f32(v113, v113), vdiv_f32(v107, v109));
  }

  result = vaddv_f32(v104);
  if (v105 + 1 >= 0)
  {
    return vmlas_n_f32(result, (a3->f32[0] - a1->f32[0]) * (a3->f32[0] - a1->f32[0]), a4->f32[0] / a2->f32[0]);
  }

  return result;
}

void *kaldi::WriteBasicType<BOOL>(void *a1, char a2, int a3)
{
  if (a3)
  {
    v5 = "T";
  }

  else
  {
    v5 = "F";
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, 1);
  if ((a2 & 1) == 0)
  {
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "WriteBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 37);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "Write failure in WriteBasicType<BOOL>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

uint64_t kaldi::ReadBasicType<BOOL>(void *a1, char a2, char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  v4 = std::istream::peek();
  v13 = v4;
  if (v4 == 84)
  {
    v5 = 1;
  }

  else
  {
    if (v4 != 70)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 52);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Read failure in ReadBasicType<BOOL>, file position is ", 54);
      std::istream::tellg();
      v9 = MEMORY[0x1C692A9A0](v8, v14);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", next char is ", 15);
      kaldi::CharToString(&v13, &__p);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &__p);
      std::string::~string(&__p);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    v5 = 0;
  }

  *a3 = v5;
  v6 = *MEMORY[0x1E69E9840];

  return std::istream::get();
}

void sub_1C303E078(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::ws[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  MEMORY[0x1C692A830](&v12, a1, 1);
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v11);
  v3 = a1 + 5;
  while (1)
  {
    v4 = *(v3 + *(*a1 - 24));
    v5 = v4[3];
    if (v5 == v4[4])
    {
      break;
    }

    LOBYTE(v6) = *v5;
LABEL_6:
    if ((v6 & 0x80) != 0 || (*(&v2[1].~facet + (v6 & 0x7F)) & 0x4000) == 0)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = *(v3 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 == v7[4])
    {
      (*(*v7 + 80))(v7);
    }

    else
    {
      v7[3] = v8 + 1;
    }
  }

  v6 = (*(*v4 + 72))(v4);
  if (v6 != -1)
  {
    goto LABEL_6;
  }

  v9 = 2;
LABEL_12:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1C303E208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C303E1C4);
  }

  __cxa_rethrow();
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void *kaldi::WriteBasicType<float>(uint64_t a1, int a2)
{
  if (a2)
  {
    std::ostream::put();
    return std::ostream::write();
  }

  else
  {
    v3 = std::ostream::operator<<();

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  }
}

uint64_t kaldi::ReadBasicType<float>(void *a1, int a2, float *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v15 = 0.0;
    v5 = std::istream::peek();
    if (v5 == 8)
    {
      result = kaldi::ReadBasicType<double>(a1, 1, &v15);
      v7 = v15;
      *a3 = v7;
    }

    else
    {
      if (v5 != 4)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 92);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ReadBasicType: expected float, saw ", 35);
        v11 = std::istream::peek();
        v12 = MEMORY[0x1C692A960](v10, v11);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", at file position ", 19);
        std::istream::tellg();
        MEMORY[0x1C692A9A0](v13, v16);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
      }

      std::istream::get();
      result = std::istream::read();
    }
  }

  else
  {
    result = MEMORY[0x1C692A870](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 98);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v9, v16);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C303E52C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::ReadBasicType<double>(void *a1, int a2, double *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = 0.0;
    v5 = std::istream::peek();
    if (v5 == 4)
    {
      result = kaldi::ReadBasicType<float>(a1, 1, &v14);
      *a3 = v14;
    }

    else
    {
      if (v5 != 8)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 115);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "ReadBasicType: expected float, saw ", 35);
        v10 = std::istream::peek();
        v11 = MEMORY[0x1C692A960](v9, v10);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", at file position ", 19);
        std::istream::tellg();
        MEMORY[0x1C692A9A0](v12, v15);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
      }

      std::istream::get();
      result = std::istream::read();
    }
  }

  else
  {
    result = MEMORY[0x1C692A860](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 121);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v8, v15);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C303E718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1C692A830](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1C303E888(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1C303E848);
  }

  __cxa_rethrow();
}

uint64_t kaldi::CheckToken(kaldi *this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  if (!*this)
  {
    kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 0xA0, "*token != '\\0'", a5);
  }

  v6 = this + 1;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    if (v5 < 0)
    {
      result = __maskrune(v5, 0x4000uLL);
      if (result)
      {
LABEL_9:
        kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 0xA2, "!::isspace(*token)", a5);
      }
    }

    else
    {
      result = *(v7 + 4 * v5 + 60) & 0x4000;
      if (result)
      {
        goto LABEL_9;
      }
    }

    v9 = *v6++;
    v5 = v9;
  }

  while (v9);
  return result;
}

void *kaldi::WriteToken(void *a1, const char *a2, kaldi *this, uint64_t a4, const char *a5)
{
  if (!this)
  {
    kaldi::KaldiAssertFailure_("WriteToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 0xAA, "token != NULL", a5);
  }

  kaldi::CheckToken(this, a2, this, a4, a5);
  v7 = strlen(this);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, this, v7);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteToken.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t kaldi::Peek(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  return std::istream::peek();
}

void *kaldi::WriteToken(void *a1, uint64_t a2, char *a3, uint64_t a4, const char *a5)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return kaldi::WriteToken(a1, 0, a3, a4, a5);
}

uint64_t kaldi::ReadToken(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 0xBA, "str != NULL", a5);
  }

  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 190);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "ReadToken, failed to read token at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v11, v17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v7 = std::istream::peek();
  if (v7 <= 0x7F)
  {
    v8 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x4000;
  }

  else
  {
    v8 = __maskrune(v7, 0x4000uLL);
  }

  if (!v8)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 193);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "ReadToken, expected space after token, saw instead ", 51);
    v16[0] = std::istream::peek();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v16, 1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v14, v17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v9 = *MEMORY[0x1E69E9840];

  return std::istream::get();
}

void sub_1C303ED00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1C692A830](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1C303EF50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x1C303EF10);
  }

  __cxa_rethrow();
}

uint64_t kaldi::PeekToken(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  if (std::istream::peek() == 60)
  {
    std::istream::get();
    v2 = std::istream::peek();
    v3 = std::istream::unget();
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6, "PeekToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 210);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Error ungetting '<' in PeekToken", 32);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return v2;
  }

  else
  {

    return std::istream::peek();
  }
}

void kaldi::ExpectToken(uint64_t *a1, char a2, kaldi *a3)
{
  v27[34] = *MEMORY[0x1E69E9840];
  std::istream::tellg();
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 0xD9, "token != NULL", v9);
  }

  v10 = v27[16];
  kaldi::CheckToken(a3, v6, v7, v8, v9);
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  __s1 = 0;
  v25 = 0;
  v26 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__s1);
  std::istream::get();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 224);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Failed to read token [started at file position ", 47);
    v14 = MEMORY[0x1C692A980](v13, v10);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "], expected ", 12);
    v16 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a3, v16);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  if (SHIBYTE(v26) < 0)
  {
    v11 = __s1;
    if (strcmp(__s1, a3))
    {
      goto LABEL_13;
    }

    operator delete(v11);
  }

  else if (strcmp(&__s1, a3))
  {
LABEL_13:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/io-funcs.cc", 227);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Expected token ", 16);
    v18 = strlen(a3);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a3, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", got instead ", 16);
    if (v26 >= 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1;
    }

    if (v26 >= 0)
    {
      v22 = HIBYTE(v26);
    }

    else
    {
      v22 = v25;
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, p_s1, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ".", 2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1C303F36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t kaldi::quasar::UserDefaultsBoolCached(uint64_t *a1)
{
  {
    v3 = a1;
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    if (*(v3 + 23) >= 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = *v3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    v7 = [v4 BOOLForKey:v6];

    kaldi::quasar::UserDefaultsBoolCached(std::string const&)::b = v7;
  }

  return kaldi::quasar::UserDefaultsBoolCached(std::string const&)::b;
}

void kaldi::KaldiLogMessage::~KaldiLogMessage(std::locale *this)
{
  v2 = kaldi::KaldiLogMessage::g_logger[0];
  std::stringbuf::str();
  locale = this[33].__locale_;
  v2(&__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v4 = MEMORY[0x1E69E54E8];
  v5 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v5 - 24)) = v4[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&this[14]);
}

uint64_t kaldi::StandardErrorLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "%s\n", v1);
}

uint64_t kaldi::StandardErrorVLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "%s\n", v1);
}

void kaldi::KaldiGetStackTrace(std::string *a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  memset(v11, 0, sizeof(v11));
  v3 = backtrace(v11, 50);
  v4 = backtrace_symbols(v11, v3);
  v5 = v4;
  v6 = v3;
  if (v3 >= 0x33)
  {
    for (i = 0; i != 25; ++i)
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v5[i]);
      std::string::append(a1, "\n");
    }

    std::string::append(a1, ".\n.\n.\n");
    v9 = v3 - 25;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v5[v9]);
      std::string::append(a1, "\n");
      ++v9;
    }

    while (v9 < v3);
  }

  else if (v3)
  {
    v7 = v4;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, *v7);
      std::string::append(a1, "\n");
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v5);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1C303F844(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(std::string *a1, char *__s)
{
  v4 = strchr(__s, 40);
  if (v4 && (v5 = v4, (v6 = strchr(v4, 43)) != 0))
  {
    v7 = v5 + 1;
    v8 = v6 - (v5 + 1);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    status = 0;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v6 != v7)
    {
      memmove(&__p, v7, v8);
    }

    *(&__p + v8) = 0;
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = __cxa_demangle(p_p, 0, 0, &status);
    if (v10)
    {
      std::string::append(a1, v10);
      free(v10);
    }

    else
    {
      std::string::append(a1, __s);
    }

    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    std::string::append(a1, __s);
  }
}

void sub_1C303F9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1C303FB40(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

kaldi::KaldiWarnMessage *kaldi::KaldiWarnMessage::KaldiWarnMessage(kaldi::KaldiWarnMessage *this, const char *a2, char *a3, uint64_t a4)
{
  v9 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v9[33] = v4;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "WARNING (", 9);
  if (kaldi::g_program_name)
  {
    v11 = kaldi::g_program_name;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = strlen(a2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a2, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "():", 3);
  v17 = strrchr(a3, 47);
  if (v17)
  {
    do
    {
      v18 = v17;
      if (v17 <= a3)
      {
        break;
      }

      --v17;
    }

    while (*(v18 - 1) != 47);
  }

  else
  {
    v18 = a3;
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v24 = 58;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v24, 1);
  v22 = MEMORY[0x1C692A960](v21, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") ", 2);
  return this;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](a1 + 112);
  return a1;
}

void kaldi::KaldiWarnMessage::~KaldiWarnMessage(std::locale *this)
{
  v2 = kaldi::KaldiWarnMessage::g_logger[0];
  std::stringbuf::str();
  locale = this[33].__locale_;
  v2(&v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (getenv("QSR_CRASH_ON_WARN"))
  {
    if (std::uncaught_exception())
    {
      abort();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    v7 = std::string::append(&v16, "\n\n[stack trace: ]\n");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    kaldi::KaldiGetStackTrace(&v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v17, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v18, "\n");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v20 = v13->__r_.__value_.__r.__words[2];
    v19 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1C692A570](exception, &v19);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = MEMORY[0x1E69E54E8];
  v5 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v5 - 24)) = v4[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1C692AD30](&this[14]);
}

void sub_1C3040040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      std::ostringstream::~ostringstream(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

kaldi::KaldiLogMessage *kaldi::KaldiLogMessage::KaldiLogMessage(kaldi::KaldiLogMessage *this, const char *a2, char *a3, uint64_t a4)
{
  v9 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v9[33] = v4;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG (", 5);
  if (kaldi::g_program_name)
  {
    v11 = kaldi::g_program_name;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = strlen(a2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a2, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "():", 3);
  v17 = strrchr(a3, 47);
  if (v17)
  {
    do
    {
      v18 = v17;
      if (v17 <= a3)
      {
        break;
      }

      --v17;
    }

    while (*(v18 - 1) != 47);
  }

  else
  {
    v18 = a3;
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v24 = 58;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v24, 1);
  v22 = MEMORY[0x1C692A960](v21, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") ", 2);
  return this;
}

kaldi::KaldiVlogMessage *kaldi::KaldiVlogMessage::KaldiVlogMessage(kaldi::KaldiVlogMessage *this, const char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  *(v11 + 66) = a5;
  v11[34] = v5;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "VLOG[", 5);
  v13 = MEMORY[0x1C692A960](v12, a5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] (", 3);
  if (kaldi::g_program_name)
  {
    v15 = kaldi::g_program_name;
  }

  else
  {
    v15 = "";
  }

  v16 = strlen(v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = strlen(a2);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, a2, v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "():", 3);
  v21 = strrchr(a3, 47);
  if (v21)
  {
    do
    {
      v22 = v21;
      if (v21 <= a3)
      {
        break;
      }

      --v21;
    }

    while (*(v22 - 1) != 47);
  }

  else
  {
    v22 = a3;
  }

  v23 = strlen(v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  v28 = 58;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v28, 1);
  v26 = MEMORY[0x1C692A960](v25, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ") ", 2);
  return this;
}

kaldi::KaldiErrorMessage *kaldi::KaldiErrorMessage::KaldiErrorMessage(kaldi::KaldiErrorMessage *this, const char *a2, char *a3, uint64_t a4)
{
  v9 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v9[33] = v4;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ERROR (", 7);
  if (kaldi::g_program_name)
  {
    v11 = kaldi::g_program_name;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = strlen(a2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a2, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "():", 3);
  v17 = strrchr(a3, 47);
  if (v17)
  {
    do
    {
      v18 = v17;
      if (v17 <= a3)
      {
        break;
      }

      --v17;
    }

    while (*(v18 - 1) != 47);
  }

  else
  {
    v18 = a3;
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v24 = 58;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v24, 1);
  v22 = MEMORY[0x1C692A960](v21, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") ", 2);
  return this;
}

void kaldi::KaldiErrorMessage::~KaldiErrorMessage(kaldi::KaldiErrorMessage *this)
{
  v2 = kaldi::KaldiErrorMessage::g_logger[0];
  std::stringbuf::str();
  v3 = *(this + 33);
  v2(&v17);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (std::uncaught_exception())
  {
    abort();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  v5 = std::string::append(&v14, "\n\n[stack trace: ]\n");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  kaldi::KaldiGetStackTrace(&v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v13;
  }

  else
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v15, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v16, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18 = v11->__r_.__value_.__r.__words[2];
  v17 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x1C692A570](exception, &v17);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(this);
}

void sub_1C30406A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      v38 = MEMORY[0x1E69E54E8];
      v39 = *MEMORY[0x1E69E54E8];
      *v33 = *MEMORY[0x1E69E54E8];
      *(v33 + *(v39 - 24)) = *(v38 + 24);
      *(v33 + 8) = MEMORY[0x1E69E5548] + 16;
      if (*(v33 + 95) < 0)
      {
        operator delete(*(v33 + 72));
      }

      *(v33 + 8) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale((v33 + 16));
      std::ostream::~ostream();
      MEMORY[0x1C692AD30](v33 + 112);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::Rand(unsigned int *a1)
{
  if (a1)
  {

    return rand_r(a1);
  }

  else
  {
    if (pthread_mutex_lock(&kaldi::_RandMutex))
    {
      kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/kaldi-math.cc", 0x62, "rs == 0", v2);
    }

    if ((kaldi::_SrandCalled & 1) == 0)
    {
      kaldi::_RandSeed = 1;
      srand(1u);
      kaldi::_SrandCalled = 1;
    }

    v3 = rand_r(&kaldi::_RandSeed);
    if (pthread_mutex_unlock(&kaldi::_RandMutex))
    {
      kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/kaldi-math.cc", 0x6C, "rs == 0", v4);
    }

    return v3;
  }
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C3040AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t kaldi::CharToString@<X0>(kaldi *this@<X0>, _BYTE *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if ((v5 & 0x80000000) != 0)
  {
    v6 = __maskrune(v5, 0x40000uLL);
  }

  else
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000;
  }

  v7 = *this;
  if (v6)
  {
    snprintf(__str, 0x14uLL, "'%c'");
  }

  else
  {
    snprintf(__str, 0x14uLL, "[character %d]");
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v9] = 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t kaldi::UniformRandomNumber::SetRandomSeeds(kaldi::UniformRandomNumber *this, int a2)
{
  v5 = *(this + 3);
  result = this + 24;
  v4 = v5;
  *(result + 8) = v5;
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = v6 - v4;
    v8 = v7 >> 1;
    if ((v7 >> 1) <= 1)
    {
      v8 = 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result, v9);
  }

  *v4 = a2;
  *(this + 4) = v4 + 1;
  *this = 1;
  return result;
}

float kaldi::UniformRandomNumber::RandUniform(kaldi::UniformRandomNumber *this, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this <= a2)
  {
    kaldi::KaldiAssertFailure_("RandUniform", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/random-number.cc", 0xAA, "sequence_id < num_sequences_", a5);
  }

  return vcvts_n_f32_s32(rand_r((*(this + 3) + 4 * a2)), 0x1FuLL);
}

kaldi::GaussRandomNumber *kaldi::GaussRandomNumber::GaussRandomNumber(kaldi::GaussRandomNumber *this, const kaldi::UniformRandomNumber *a2)
{
  v4 = *a2;
  *this = a2;
  *(this + 1) = v4;
  v5 = (this + 16);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 2, v4);
  std::vector<short>::vector[abi:ne200100](this + 5, *a2);
  *(this + 16) = 2;
  if (*(this + 1))
  {
    v6 = 0;
    v7 = 0;
    v8 = 2;
    do
    {
      std::vector<float>::resize((*v5 + v6), v8);
      v8 = *(this + 16);
      *(*(this + 5) + 2 * v7++) = v8;
      v6 += 24;
    }

    while (*(this + 1) > v7);
  }

  return this;
}

void sub_1C3040DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::GaussRandomNumber::Rand(kaldi::GaussRandomNumber *this, unsigned int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a2 & 0x80000000) != 0 || *(this + 1) <= a2)
  {
    kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/base/random-number.cc", 0xC5, "sequence_id >= 0 && sequence_id < num_sequences_", a5);
  }

  v6 = a2;
  v7 = *(this + 5);
  v8 = *(v7 + 2 * a2);
  if (*(this + 16) <= v8)
  {
    __asm
    {
      FMOV            V1.2D, #2.0
      FMOV            V0.2D, #-1.0
    }

    v20 = _Q0;
    v21 = _Q1;
    do
    {
      v22 = kaldi::UniformRandomNumber::RandUniform(*this, v6, a3, a4, a5);
      v17 = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(kaldi::UniformRandomNumber::RandUniform(*this, v6, a3, a4, a5)), LODWORD(v22)))));
      v18 = COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0]);
    }

    while (v18 >= 1.0);
    v23 = v17;
    v19 = logf(v18) * -2.0 / v18;
    **(*(this + 2) + 24 * v6) = vmul_n_f32(v23, sqrtf(v19));
    *(*(this + 5) + 2 * v6) = 1;
  }

  else
  {
    v9 = *(this + 2);
    *(v7 + 2 * a2) = v8 + 1;
    v10 = *(*(v9 + 24 * a2) + 4 * v8);
  }
}

uint64_t kaldi::CuSubMatrix<float>::~CuSubMatrix(uint64_t a1)
{
  *a1 = &unk_1F42BFE90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(a1);
}

uint64_t kaldi::WriteBasicType<int>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1C692A960](a1, a3);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t kaldi::ReadBasicType<int>(void *a1, int a2, uint64_t a3)
{
  v17[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = std::istream::get();
    if (v4 == -1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 72);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    v5 = v4;
    if (v4 << 24 != 0x4000000)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 76);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ReadBasicType: did not get expected integer type, ", 50);
      v13 = MEMORY[0x1C692A960](v12, v5);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " vs. ", 5);
      v15 = MEMORY[0x1C692A960](v14, 4);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    result = std::istream::read();
  }

  else
  {
    result = MEMORY[0x1C692A880](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadBasicType", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 92);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v9 = MEMORY[0x1C692A9A0](v8, v17[50]);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", next char is ", 15);
    v11 = std::istream::peek();
    MEMORY[0x1C692A960](v10, v11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C30412D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::CuSubMatrix<float>::Read()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Read", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 1043);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuSubMatrix<float>::~CuSubMatrix(uint64_t a1)
{
  *a1 = &unk_1F42BFE90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 48 * a2;
      v11 = 48 * a2;
      v12 = *(result + 8);
      do
      {
        *(v4 + 24) = 0uLL;
        *(v4 + 8) = 0uLL;
        *v4 = &unk_1F42BFED8;
        *(v4 + 40) = 0;
        v4 += 48;
        v12 += 48;
        v11 -= 48;
      }

      while (v11);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v24 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(result, v9);
    }

    v13 = 48 * v6;
    v21 = 0;
    v22 = 48 * v6;
    *(&v23 + 1) = 0;
    v14 = 48 * a2;
    v15 = 48 * v6;
    v16 = 48 * v6;
    do
    {
      *(v16 + 24) = 0uLL;
      *(v16 + 8) = 0uLL;
      *v16 = &unk_1F42BFED8;
      *(v16 + 40) = 0;
      v16 += 48;
      v15 += 48;
      v14 -= 48;
    }

    while (v14);
    *&v23 = v13 + 48 * a2;
    v17 = *(result + 8);
    v18 = v13 + *result - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(result, *result, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = *(v3 + 16);
    *(v3 + 8) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v21);
  }

  return result;
}

void sub_1C304155C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v8, 111);
      v8 += 6;
      v7 += 48;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 6;
        result = (*(v12 + 16))(v6);
        v10 += 6;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_1C3041620(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v4 = *v3;
    v3 -= 6;
    result = (*(v4 + 16))(v1);
    v2 -= 48;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

uint64_t kaldi::cu::RegularizeL1<float>(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 20) != *(a2 + 20) || *(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("RegularizeL1", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-math.cc", 0x30, "SameDim(*weight, *grad)", a7);
  }

  result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
  if (result >= 1)
  {
    v13 = 0;
    v14 = -a4;
    do
    {
      if (kaldi::MatrixBase<float>::NumCols(a1 + 8) >= 1)
      {
        v15 = 0;
        do
        {
          v16 = *(a1 + 8) + 4 * v13 * *(a1 + 24);
          v17 = *(v16 + 4 * v15);
          if (v17 != 0.0)
          {
            v18 = *(a2 + 8) + 4 * v13 * *(a2 + 24);
            if (v17 >= 0.0)
            {
              v19 = a3;
            }

            else
            {
              v19 = -a3;
            }

            if (v17 > 0.0 == (v17 + (v14 * *(v18 + 4 * v15))) > v19)
            {
              *(v16 + 4 * v15) = v17 - v19;
            }

            else
            {
              *(v16 + 4 * v15) = 0;
              *(v18 + 4 * v15) = 0;
            }
          }

          ++v15;
        }

        while (v15 < kaldi::MatrixBase<float>::NumCols(a1 + 8));
      }

      ++v13;
      result = kaldi::MatrixBase<float>::NumRows(a1 + 8);
    }

    while (v13 < result);
  }

  return result;
}

uint64_t kaldi::cu::Splice<float>(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *a2;
  if (v5 * *(a1 + 16) != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("Splice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-math.cc", 0x7E, "src.NumCols() * frame_offsets.Dim() == tgt->NumCols()", a5);
  }

  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("Splice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-math.cc", 0x7F, "src.NumRows() == tgt->NumRows()", a5);
  }

  v8 = *(a2 + 1);
  result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
  if (result >= 1)
  {
    v10 = 0;
    do
    {
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v12 = (*(v8 + 4 * i) + v10) & ~((*(v8 + 4 * i) + v10) >> 31);
          if (v12 >= kaldi::MatrixBase<float>::NumRows(a1 + 8))
          {
            v12 = kaldi::MatrixBase<float>::NumRows(a1 + 8) - 1;
          }

          if (*(a3 + 20) <= v10)
          {
            kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xBE, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
          }

          v14 = *(a3 + 8);
          v15 = *(a3 + 24);
          v16 = kaldi::MatrixBase<float>::NumCols(a1 + 8);
          if (*(a1 + 20) <= v12)
          {
            kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
          }

          v18 = (v14 + 4 * v15 * v10 + 4 * v16 * i);
          v19 = (*(a1 + 8) + 4 * *(a1 + 24) * v12);
          v20 = kaldi::MatrixBase<float>::NumCols(a1 + 8);
          memcpy(v18, v19, 4 * v20);
        }
      }

      ++v10;
      result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
    }

    while (v10 < result);
  }

  return result;
}

uint64_t kaldi::cu::Copy<float>(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *a2;
  if (v5 != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("Copy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-math.cc", 0x9E, "copy_from_indices.Dim() == tgt->NumCols()", a5);
  }

  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("Copy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-math.cc", 0x9F, "src.NumRows() == tgt->NumRows()", a5);
  }

  v8 = *(a2 + 1);
  result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
  if (result >= 1)
  {
    v10 = 0;
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = *(a1 + 8) + 4 * *(a1 + 24) * v10;
        v13 = *(a3 + 8) + 4 * *(a3 + 24) * v10;
        do
        {
          *(v13 + 4 * v11) = *(v12 + 4 * *(v8 + 4 * v11));
          ++v11;
        }

        while (v5 != v11);
      }

      ++v10;
      result = kaldi::MatrixBase<float>::NumRows(a3 + 8);
    }

    while (v10 < result);
  }

  return result;
}

uint64_t kaldi::CuMatrix<float>::CuMatrix<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *a1 = &unk_1F42BFED8;
  *(a1 + 40) = 0;
  if (a3 == 111)
  {
    v7 = kaldi::MatrixBase<float>::NumRows(a2);
    v8 = kaldi::MatrixBase<float>::NumCols(a2);
  }

  else
  {
    v7 = kaldi::MatrixBase<float>::NumCols(a2);
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
  }

  kaldi::CuMatrix<float>::Resize(a1, v7, v8, 1u, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2, a3, v9, v10);
  return a1;
}

void *kaldi::VectorBase<float>::CopyRowsFromMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 20) * *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x79F, "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  v6 = a2 + 8;

  return kaldi::VectorBase<float>::CopyRowsFromMat(a1, v6);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *(a2 + 20), *(a2 + 16));
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2 + 8);
  return a1;
}

{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, v4, v5);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v6, a2);
  return a1;
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, uint64_t a2)
{
  v4 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *(a2 + 20), *(a2 + 16));
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v4, a2 + 8);
  return a1;
}

{
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  v6 = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, v4, v5);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(v6, a2);
  return a1;
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1C692AE10](v2, 0x1000C4077774924);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1C692AE10](v3, 0x1000C4052888210);
  }

  return a1;
}

void kaldi::QuantizedMatrixBase<signed char>::AddMat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 2341);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::QuantizedMatrixBase<short>::AddMat()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 2341);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuMatrix<float>::Transpose(uint64_t a1)
{
  if (*(a1 + 20))
  {
    kaldi::CuMatrix<float>::CuMatrix(&v7, a1, 112);
    v2 = *(a1 + 8);
    *(a1 + 8) = v8;
    v3 = v9;
    v9 = *(a1 + 16);
    *(a1 + 16) = v3;
    v4 = v10;
    v10 = *(a1 + 32);
    *(a1 + 32) = v4;
    v5 = v11;
    v6 = *(a1 + 40);
    v11 = v6;
    *(a1 + 40) = v5;
    v7 = &unk_1F42BFED8;
    v8 = v2;
    if (v2)
    {
      if ((v6 & 1) == 0)
      {
        free(v2);
      }
    }
  }
}

uint64_t kaldi::CuMatrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::Matrix<float>::Matrix(&v12, *(a1 + 20), *(a1 + 16), 1, (*(a1 + 24) == *(a1 + 16)));
  kaldi::Matrix<float>::Read(&v12, a2, a3, 0, a4);
  v8 = *(a1 + 8);
  if (v8 && (*(a1 + 40) & 1) == 0)
  {
    free(v8);
  }

  *(a1 + 8) = v12;
  v9 = v13;
  v12 = 0;
  v13 = 0uLL;
  *(a1 + 16) = v9;
  v10 = v14;
  v14 = *(a1 + 40);
  *(a1 + 40) = v10;
  return kaldi::Matrix<float>::~Matrix(&v12);
}

void sub_1C30420A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F42BFED8;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  JUMPOUT(0x1C692AE10);
}

void *kaldi::CuArray<int>::CopyToVec(int *a1, std::vector<int> *this)
{
  begin = this->__begin_;
  v5 = (this->__end_ - this->__begin_) >> 2;
  v6 = *a1;
  if (v6 != v5)
  {
    std::vector<float>::resize(this, v6);
    begin = this->__begin_;
    LODWORD(v5) = *a1;
  }

  v7 = *(a1 + 1);

  return memcpy(begin, v7, 4 * v5);
}

unint64_t kaldi::CuMatrixBase<float>::CopyIndexedItems(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int a5)
{
  v7 = *a3;
  if (v7 != *a4)
  {
    kaldi::KaldiAssertFailure_("CopyIndexedItems", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x7E3, "row_index.Dim() == col_index.Dim()", v7);
  }

  v8 = *(a3 + 1);
  v9 = *(a4 + 8);
  v10 = a1 + 8;
  v11 = (a2 + 8);

  return kaldi::MatrixBase<float>::CopyIndexedItems(v10, v11, v8, v9, v7, a5);
}

uint64_t kaldi::CuMatrixBase<float>::CopySelectedRows(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a2 + 20);
  if (*(a1 + 20) < v5)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x80A, "num_rows_ >= src.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x80B, "num_cols_ == src.NumCols()", a5);
  }

  if (*(a3 + 16) != v5)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x80C, "selection.Dim() == src.NumRows()", a5);
  }

  v6 = a1 + 8;
  v7 = (a2 + 8);
  v8 = a3 + 8;

  return kaldi::MatrixBase<float>::CopySelectedRows(v6, v7, v8, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::SetStride(uint64_t result, signed int a2)
{
  v2 = *(result + 24);
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      v13 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "SetStride", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 501);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "New stride (", 12);
      v4 = MEMORY[0x1C692A960](v3, a2);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") must not be smaller than", 26);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " the current stride (", 21);
      v7 = MEMORY[0x1C692A960](v6, *(v13 + 24));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
      goto LABEL_8;
    }

    if (a2 % v2)
    {
      v14 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "SetStride", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 506);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "New stride (", 12);
      v9 = MEMORY[0x1C692A960](v8, a2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") must be a multiple of ", 24);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "current stride (", 16);
      v12 = MEMORY[0x1C692A960](v11, *(v14 + 24));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, ").");
LABEL_8:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    *(result + 20) = (*(result + 20) - 1) / (a2 / v2) + 1;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t kaldi::CuMatrixBase<float>::Sigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a2 + 20) || *(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x4CC, "SameDim(*this, src)", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;

  return kaldi::MatrixBase<float>::Sigmoid(v7, v8, a3, a4, a5);
}

void kaldi::CuMatrixBase<float>::GroupPnorm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (*(a2 + 16) % *(a1 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("GroupPnorm", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x519, "src.NumCols() == this->NumCols() * group_size && this->NumRows() == src.NumRows()", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;

  kaldi::MatrixBase<float>::GroupPnorm(v7, v8, a6, a3, a4, a5);
}

void kaldi::CuMatrixBase<float>::GroupPnormDeriv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v6 = *(a3 + 16);
  if (v6 <= 0)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x2F2, "src2.NumCols() > 0", a5);
  }

  if (*(a1 + 16) % v6)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x2F4, "this->NumCols() == src2.NumCols() * group_size", a5);
  }

  v7 = a1 + 8;
  v8 = (a2 + 8);
  v9 = (a3 + 8);

  kaldi::MatrixBase<float>::GroupPnormDeriv(v7, v8, v9, a6, a4, a5);
}

void kaldi::CuMatrixBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a2 + 20) || *(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x59E, "SameDim(*this, src)", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;

  kaldi::MatrixBase<float>::Tanh(v7, v8, a3, a4, a5);
}

uint64_t *kaldi::CuMatrixBase<float>::DiffSigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 20);
  v8 = v6 == *(a2 + 20) && v7 == *(a2 + 16);
  if (!v8 || (v6 == *(a3 + 20) ? (v9 = v7 == *(a3 + 16)) : (v9 = 0), !v9))
  {
    kaldi::KaldiAssertFailure_("DiffSigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x576, "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  v10 = (a1 + 8);
  v11 = (a2 + 8);
  v12 = (a3 + 8);

  return kaldi::MatrixBase<float>::DiffSigmoid(v10, v11, v12, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::DiffRelu(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 16);
  v5 = *(result + 20);
  if (v5 != *(a2 + 20) || v6 != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("DiffRelu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x585, "SameDim(*this, value)", a5);
  }

  if (v5 != *(a3 + 20) || v6 != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("DiffRelu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x586, "SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *(a3 + 8);
    v11 = *(a2 + 8);
    v12 = *(result + 8);
    v13 = 4 * *(result + 24);
    v14 = 4 * *(a3 + 24);
    v15 = 4 * *(a2 + 24);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = 0;
          if (*(v11 + result) > 0.0)
          {
            v16 = *(v10 + result);
          }

          *(v12 + result) = v16;
          result += 4;
        }

        while (4 * v6 != result);
      }

      ++v9;
      v12 += v13;
      v10 += v14;
      v11 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

uint64_t *kaldi::CuMatrixBase<float>::MaxoutForward(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) % *(a1 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("MaxoutForward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA42, "input.NumCols() % this->NumCols() == 0 && this->NumRows() == input.NumRows()", a5);
  }

  v6 = (a1 + 8);
  v7 = a2 + 8;

  return kaldi::MatrixBase<float>::MaxoutForward(v6, v7, a3, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::MaxoutDerivative(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if (v5 % *(a3 + 16) || (v6 = *(a1 + 20), v6 != *(a3 + 20)))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA51, "this->NumCols() % output.NumCols() == 0 && this->NumRows() == output.NumRows()", a5);
  }

  if (v5 != *(a2 + 16) || v6 != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA52, "this->NumCols() == input.NumCols() && this->NumRows() == input.NumRows()", a5);
  }

  v7 = a1 + 8;
  v8 = (a2 + 8);
  v9 = (a3 + 8);

  return kaldi::MatrixBase<float>::MaxoutDerivative(v7, v8, v9, a4, a5);
}

void kaldi::CuMatrixBase<float>::ApplyMaxNorm(uint64_t a1, int a2)
{
  kaldi::CuMatrix<float>::CuMatrix(&v27, a1, 111);
  kaldi::MatrixBase<float>::MulElements(&v28, a1 + 8, v4, v5, v6);
  if (a2)
  {
    v9 = *(a1 + 20);
    v25 = 0;
    v26 = 0;
    v23 = &unk_1F42BFF70;
    v24 = 0;
    kaldi::CuVector<float>::Resize(&v23, v9, 0, v7, v8);
    v26 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddColSumMat(&v23, &v27, v10, v11, v12);
    kaldi::CuVectorBase<float>::ApplyPow(&v23, 0.5);
    kaldi::CuVectorBase<float>::Scale(&v23);
    kaldi::CuVectorBase<float>::ApplyFloor(&v23, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v23);
    kaldi::MatrixBase<float>::MulRowsVec(a1 + 8, &v24, v13, v14, v15);
  }

  else
  {
    v16 = *(a1 + 16);
    v25 = 0;
    v26 = 0;
    v23 = &unk_1F42BFF70;
    v24 = 0;
    kaldi::CuVector<float>::Resize(&v23, v16, 0, v7, v8);
    v26 = *(a1 + 32);
    kaldi::CuVectorBase<float>::AddRowSumMat(&v23, &v27, v17, v18, v19);
    kaldi::CuVectorBase<float>::ApplyPow(&v23, 0.5);
    kaldi::CuVectorBase<float>::Scale(&v23);
    kaldi::CuVectorBase<float>::ApplyFloor(&v23, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(&v23);
    kaldi::MatrixBase<float>::MulColsVec(a1 + 8, &v24, v20, v21, v22);
  }

  kaldi::CuVector<float>::~CuVector(&v23);
  v27 = &unk_1F42BFED8;
  if (v28)
  {
    if ((v29 & 1) == 0)
    {
      free(v28);
    }
  }
}

void sub_1C3042A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CuMatrixBase<float>::MulRowsGroupMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) <= 0)
  {
    kaldi::KaldiAssertFailure_("MulRowsGroupMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x2E3, "src.NumCols() > 0", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::MatrixBase<float>::MulRowsGroupMat(v6, v7, a3, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::AddVecVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, double a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 20))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x401, "vecA.Dim() == num_rows_", a5);
  }

  if (*(a3 + 16) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x402, "vecB.Dim() == num_cols_", a5);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  return kaldi::MatrixBase<float>::AddVecVec<float>((a1 + 8), (a2 + 8), (a3 + 8), a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::AddMatMatMasked(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6 = *(a2 + 20);
  if (v6 != *(a6 + 20))
  {
    kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x386, "A.num_rows_ == M.num_rows_", a5);
  }

  if (a3 == 112 && a5 == 112)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 904);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "matrix A and B can not be transposed at the same time, not implemented yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v7 = *(a1 + 20);
  if (a3 == 112)
  {
    if (v7 != *(a2 + 16) || *(a1 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x38A, "num_rows_ == A.num_cols_ && num_cols_ == B.num_cols_", a5);
    }

    if (v6 != *(a4 + 20))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x38B, "A.num_rows_ == B.num_rows_", a5);
    }

    if (v7 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x38C, "A.num_cols_ > M.num_cols_", a5);
    }
  }

  else if (a5 == 112)
  {
    if (v7 != v6 || (v8 = *(a1 + 16), v8 != *(a4 + 20)))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x38E, "num_rows_ == A.num_rows_ && num_cols_ == B.num_rows_", a5);
    }

    if (*(a2 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x38F, "A.num_cols_ == B.num_cols_", a5);
    }

    if (v8 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x390, "B.num_rows_ > M.num_cols_", a5);
    }
  }

  else
  {
    if (v7 != v6 || *(a1 + 16) != *(a4 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x392, "num_rows_ == A.num_rows_ && num_cols_ == B.num_cols_", a5);
    }

    v9 = *(a2 + 16);
    if (v9 != *(a4 + 20))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x393, "A.num_cols_ == B.num_rows_", a5);
    }

    if (v9 <= *(a6 + 16))
    {
      kaldi::KaldiAssertFailure_("AddMatMatMasked", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x394, "A.num_cols_ > M.num_cols_", a5);
    }
  }

  v10 = a1 + 8;
  v11 = (a2 + 8);
  v12 = (a4 + 8);

  return kaldi::MatrixBase<float>::AddMatMat(v10, v11, a3, v12, a5);
}

float kaldi::CuMatrixBase<float>::Sum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v14[1] = 0;
  v14[2] = 0;
  v14[0] = &unk_1F42BFF70;
  v14[3] = v7;
  kaldi::CuVector<float>::Resize(v14, v6, 0, a4, a5);
  kaldi::CuVectorBase<float>::AddRowSumMat(v14, a1, v8, v9, v10);
  v11 = kaldi::CuVectorBase<float>::Sum(v14);
  v12 = *&v11;
  kaldi::CuVector<float>::~CuVector(v14);
  return v12;
}

void kaldi::CuMatrixBase<float>::SetRandn(uint64_t a1)
{
  if (*(a1 + 20))
  {
    kaldi::MatrixBase<float>::SetRandn(a1 + 8);
  }
}

uint64_t kaldi::CuMatrixBase<float>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::Matrix<float>::Matrix(v11, *(a1 + 20), *(a1 + 16), 1, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(v11, a1 + 8, 111, v8, v9);
  kaldi::MatrixBase<float>::Write(v11, a2, a3, a4);
  return kaldi::Matrix<float>::~Matrix(v11);
}

void sub_1C3043018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::CuMatrixBase<float>::EqualElementColMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("EqualElementColMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA11, "vec.Dim() == NumCols()", a5);
  }

  if (!a3)
  {
    kaldi::KaldiAssertFailure_("EqualElementColMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA12, "mask != NULL", a5);
  }

  kaldi::CuMatrix<float>::Resize(a3, *(a1 + 20), v6, 0, 0);
  v9 = *(a1 + 20);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 16);
    v12 = *(a2 + 8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *(a3 + 8) + 4 * *(a3 + 24) * v10;
        v15 = *(a1 + 8) + 4 * *(a1 + 24) * v10;
        do
        {
          if (*(v15 + 4 * v13) == *(v12 + 4 * v13))
          {
            v16 = 1.0;
          }

          else
          {
            v16 = 0.0;
          }

          *(v14 + 4 * v13++) = v16;
        }

        while (v11 != v13);
      }

      ++v10;
    }

    while (v10 != v9);
  }
}

void kaldi::CuMatrixBase<float>::EqualElementMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 20);
  if (v6 != *(a1 + 20) || (v9 = *(a2 + 16), v9 != *(a1 + 16)))
  {
    kaldi::KaldiAssertFailure_("EqualElementMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA2A, "mat.NumRows() == NumRows() && mat.NumCols() == NumCols()", a5);
  }

  if (!a3)
  {
    kaldi::KaldiAssertFailure_("EqualElementMask", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA2B, "mask != NULL", a5);
  }

  kaldi::CuMatrix<float>::Resize(a3, v6, v9, 0, 0);
  v10 = *(a1 + 20);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 16);
    v14 = *(a2 + 8);
    v15 = 4 * *(a2 + 24);
    do
    {
      if (v13 >= 1)
      {
        v16 = 0;
        v17 = *(a3 + 8) + v11 * *(a3 + 24);
        v18 = *(a1 + 8) + v11 * *(a1 + 24);
        do
        {
          if (*(v18 + 4 * v16) == *(v14 + 4 * v16))
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }

          *(v17 + 4 * v16++) = v19;
        }

        while (v13 != v16);
      }

      ++v12;
      v11 += 4;
      v14 += v15;
    }

    while (v12 != v10);
  }
}

uint64_t kaldi::CuMatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x324, "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16) * *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x325, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  v5 = a1 + 8;
  v6 = a2 + 8;
  v7 = a3 + 8;

  return kaldi::MatrixBase<float>::ConcatenateVec(v5, v6, v7, a4, a5);
}

uint64_t kaldi::CuMatrixBase<float>::SummarizeVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x34C, "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x34D, "num_cols_ == vec_table.NumCols()", a5);
  }

  v5 = a1 + 8;
  v6 = (a2 + 8);
  v7 = (a3 + 8);

  return kaldi::MatrixBase<float>::SummarizeVec(v5, v6, v7, a4, a5);
}

void kaldi::CuMatrixBase<float>::DataUnowned()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "DataUnowned", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 219);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void std::vector<double>::resize(void *a1, unint64_t a2)
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
    std::vector<double>::__append(a1, a2 - v2);
  }
}

uint64_t kaldi::Quant3Levels<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (a6 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("Quant3Levels", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA73, "value > 0.0", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;

  return kaldi::Quant3Levels<float>(v7, v8, a6, a3, a4, a5);
}

uint64_t kaldi::ZeroSmallValues<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  if (a6 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("ZeroSmallValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0xA83, "threshold > 0.0", a5);
  }

  v7 = a1 + 8;
  v8 = a2 + 8;

  return kaldi::ZeroSmallValues<float>(v7, v8, a6, a3, a4, a5);
}

void *kaldi::SubVector<float>::SubVector(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a2 + 12) <= a3)
  {
    kaldi::KaldiAssertFailure_("RowData", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0xC4, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  *a1 = *a2 + 4 * (*(a2 + 16) * a3);
  *(a1 + 2) = kaldi::MatrixBase<float>::NumCols(a2);
  return a1;
}

void kaldi::CuSubVector<float>::Read()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Read", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 529);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function is not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::CuSubVector<float>::~CuSubVector(uint64_t result)
{
  *result = &unk_1F42BFF30;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void kaldi::CuSubVector<float>::~CuSubVector(uint64_t a1)
{
  *a1 = &unk_1F42BFF30;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  JUMPOUT(0x1C692AE10);
}

uint64_t kaldi::Matrix<float>::Matrix<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  if (a3 == 111)
  {
    v10 = *(a2 + 20);
  }

  else
  {
    v10 = *(a2 + 16);
  }

  if (a3 == 111)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  kaldi::Matrix<float>::Init(a1, v10, v11, 0, a5);
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2 + 8, a3, v12, v13);
  return a1;
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void kaldi::CuRandom::RandGauss<float>(int *a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if ((a1[1] & 1) == 0)
    {
      v6 = *a1;
      a1[2] = *a1;
      v7 = 1;
      for (i = 3; i != 626; ++i)
      {
        v9 = 1812433253 * (v6 ^ (v6 >> 30));
        v6 = v9 + v7;
        a1[i] = i + v9 - 2;
        ++v7;
      }

      *(a1 + 313) = 0;
      *(a1 + 4) = 1;
      v4 = *(a2 + 16);
    }

    v10 = *(a2 + 8);
    v11 = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v12 = 0;
    if (v4 >= 1)
    {
      do
      {
        *v10++ = std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v11, (a1 + 2), &v11);
        --v4;
      }

      while (v4);
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11, "RandGauss", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-rand.cc", 75);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "cannot write data to zero size vector", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v11);
  }
}

void kaldi::CuRand<float>::BinarizeProbs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3 >= 1)
  {
    v6 = 0;
    LODWORD(v7) = *(a3 + 16);
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          v9 = (kaldi::Rand(0) + 1.0) / 2147483650.0;
          if (*(*(a2 + 8) + 4 * v6 * *(a2 + 24) + 4 * v8) <= v9)
          {
            v10 = 0.0;
          }

          else
          {
            v10 = 1.0;
          }

          *(*(a3 + 8) + 4 * v6 * *(a3 + 24) + 4 * v8++) = v10;
          v7 = *(a3 + 16);
        }

        while (v8 < v7);
        v3 = *(a3 + 20);
      }

      ++v6;
    }

    while (v6 < v3);
  }
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

float std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    do
    {
      do
      {
        v7 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v8 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v9 = (v8 * v8) + (v7 * v7);
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrtf((logf((v8 * v8) + (v7 * v7)) * -2.0) / v9);
    *(a1 + 8) = v8 * v10;
    *(a1 + 12) = 1;
    v5 = v7 * v10;
  }

  return *a3 + (v5 * a3[1]);
}

uint64_t kaldi::VecVec<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x26, "a.Dim() == b.Dim()", a5);
  }

  v6 = (a1 + 8);
  v7 = (a2 + 8);

  return kaldi::VecVec<float>(v6, v7, a3, a4, a5);
}

float kaldi::VecVec<float,signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x45, "a.Dim() == b.Dim()", a5);
  }

  v6 = a1 + 8;

  return kaldi::VecVec<signed char>(v6, a2, a3, a4, a5);
}

float kaldi::VecVec<float,short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x45, "a.Dim() == b.Dim()", a5);
  }

  v6 = a1 + 8;

  return kaldi::VecVec<short>(v6, a2, a3, a4, a5);
}

_DWORD *kaldi::CuVectorBase<float>::CopyFromVec<float>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 8);
  if (v6 != result[4])
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x308, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    v7 = (result + 2);

    return kaldi::VectorBase<float>::CopyFromVec(v7, a2, a3, a4, a5);
  }

  return result;
}

_DWORD *kaldi::CuVectorBase<float>::CopyToVec<float>(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result[4];
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x321, "dim_ == dst->Dim()", a5);
  }

  if (v6)
  {

    return kaldi::VectorBase<float>::CopyFromVec(a2, (result + 2), a3, a4, a5);
  }

  return result;
}

uint64_t kaldi::CuVectorBase<float>::AddVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, double a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x464, "vec.Dim() == Dim()", a5);
  }

  if (a7 != 1.0)
  {
    kaldi::VectorBase<float>::Scale((a1 + 8));
  }

  return kaldi::VectorBase<float>::AddVec<float>((a1 + 8), (a2 + 8), a3, a4, a5);
}

float kaldi::CuVectorBase<float>::ReverseCopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("ReverseCopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x3AE, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    v7 = a1 + 8;
    v8 = a2 + 8;

    return kaldi::VectorBase<float>::ReverseCopyFromVec(v7, v8, a3, a4, a5);
  }

  return result;
}

void *kaldi::CuVectorBase<float>::CopyRowsFromMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 20) * *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x88, "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  v6 = (a1 + 8);
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::CopyRowsFromMat(v6, v7);
}

void kaldi::CuVectorBase<float>::SetZero(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 8))
    {
      kaldi::VectorBase<float>::SetZero(a1 + 8);
    }
  }
}

void kaldi::CuVectorBase<float>::AddRowSumMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddRowSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x483, "mat.NumCols() == Dim()", a5);
  }

  v7 = *(a2 + 20);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, v7, 1, a4, a5);
  v8.i32[0] = 1.0;
  kaldi::VectorBase<float>::Set(v10, v8);
  kaldi::VectorBase<float>::AddMatVec((a1 + 8), (a2 + 8), 112, v10, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_1C3043F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::AddColSumMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 20) != *(a1 + 16))
  {
    kaldi::KaldiAssertFailure_("AddColSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x492, "mat.NumRows() == Dim()", a5);
  }

  v7 = *(a2 + 16);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, v7, 1, a4, a5);
  v8.i32[0] = 1.0;
  kaldi::VectorBase<float>::Set(v10, v8);
  kaldi::VectorBase<float>::AddMatVec((a1 + 8), (a2 + 8), 111, v10, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_1C3044068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::ApplyMaxNorm(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  kaldi::CuVector<float>::CuVector(&v11, a1, a4, a5, a6);
  kaldi::CuVectorBase<float>::MulElements(&v11, a1, v8, v9, v10);
  if (sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(kaldi::VectorBase<float>::Sum(&v12)))) > a2)
  {
    kaldi::VectorBase<float>::Scale((a1 + 8));
  }

  v11 = &unk_1F42BFF70;
  if (v12)
  {
    free(v12);
  }
}

void sub_1C304414C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::CuVectorBase<float>::SetRandn(uint64_t result)
{
  if (*(result + 16))
  {
    v4 = 0u;
    v5 = 0u;
    memset(v1, 0, sizeof(v1));
    v2 = 0;
    v3 = &unk_1F42BFED8;
    v6 = 0;
    v7 = 0;
    kaldi::CuRand<float>::RandGaussian(v1, result);
    return kaldi::CuRand<float>::~CuRand(v1);
  }

  return result;
}

void kaldi::CuVectorBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x1B0, "this->Dim() == src.Dim()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  kaldi::VectorBase<float>::Tanh(v6, v7, a3, a4, a5);
}

uint64_t kaldi::CuVectorBase<float>::Sigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x1A2, "this->Dim() == src.Dim()", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::Sigmoid(v6, v7, a3, a4, a5);
}

float kaldi::CuVectorBase<float>::CopyColFromMat(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) <= a3)
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x56, "col < mat.NumCols()", a5);
  }

  if (*(a1 + 16) != *(a2 + 20))
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x57, "dim_ == mat.NumRows()", a5);
  }

  v5 = (a1 + 8);
  v6 = a2 + 8;

  return kaldi::VectorBase<float>::CopyColFromMat<float>(v5, v6, a3);
}

uint64_t kaldi::CuVectorBase<float>::AddMatVec(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a3 == 112)
  {
    if (*(a2 + 20) != *(a4 + 16))
    {
      goto LABEL_12;
    }

    v5 = *(a2 + 16);
  }

  else
  {
    if (a3 != 111 || *(a2 + 16) != *(a4 + 16))
    {
LABEL_12:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x1E6, "(trans == kNoTrans && M.NumCols() == v.dim_ && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.dim_ && M.NumCols() == dim_)", a5);
    }

    v5 = *(a2 + 20);
  }

  if (v5 != *(a1 + 16))
  {
    goto LABEL_12;
  }

  if (a4 == a1)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x1E7, "&v != this", a5);
  }

  v6 = (a1 + 8);
  v7 = (a2 + 8);
  v8 = (a4 + 8);

  return kaldi::VectorBase<float>::AddMatVec(v6, v7, a3, v8, a5);
}

uint64_t kaldi::CuVectorBase<float>::AddVecVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16) || v5 != *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x228, "(dim_ == v.dim_ && dim_ == r.dim_)", a5);
  }

  if (a1 == a2 || a1 == a3)
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x229, "this != &v && this != &r", a5);
  }

  v7 = (a1 + 8);
  v8 = a2 + 8;
  v9 = (a3 + 8);

  return kaldi::VectorBase<float>::AddVecVec(v7, v8, v9, a4, a5);
}

float kaldi::CuVectorBase<float>::DivElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x2D5, "dim_ == v.dim_", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::DivElements(v6, v7, a3, a4, a5);
}

void kaldi::CuVectorBase<float>::Write(_DWORD *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  v8 = a1[4];
  memset(v12, 0, sizeof(v12));
  kaldi::Vector<float>::Resize(v12, v8, 1, a4, a5);
  kaldi::CuVectorBase<float>::CopyToVec<float>(a1, v12, v9, v10, v11);
  kaldi::VectorBase<float>::Write(v12, a2, a3);
  kaldi::Vector<float>::Destroy(v12);
}

void sub_1C30445A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVector<float>::~CuVector(void *a1)
{
  *a1 = &unk_1F42BFF70;
  v2 = a1 + 1;
  v1 = a1[1];
  if (v1)
  {
    free(v1);
  }

  *v2 = 0;
  v2[1] = 0;

  JUMPOUT(0x1C692AE10);
}

uint64_t kaldi::CuVector<float>::operator=(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 24))
  {
    *(a1 + 24) = *(a2 + 24);
  }

  kaldi::CuVector<float>::Resize(a1, *(a2 + 16), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v7, v8, v9);
  return a1;
}

double kaldi::CuVector<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kaldi::Vector<float>::Read(&v9, a2, a3, 0, a5);
  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  *(a1 + 8) = v9;
  v7 = v10;
  v9 = 0;
  v10 = 0;
  *(a1 + 16) = v7;
  kaldi::Vector<float>::Destroy(&v9);
  return result;
}

void sub_1C3044754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::AddMatVec<signed char>()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 508);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuVectorBase<float>::AddMatVec<short>()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 508);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuVectorBase<float>::AddMatVec<signed char>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == 112)
  {
    if (*(a2 + 20) != *(a4 + 8))
    {
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
  }

  else
  {
    if (a3 != 111 || *(a2 + 16) != *(a4 + 8))
    {
LABEL_11:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x207, "(trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.Dim() && M.NumCols() == dim_)", a5);
    }

    v8 = *(a2 + 20);
  }

  if (v8 != *(a1 + 16))
  {
    goto LABEL_11;
  }

  v9 = a1 + 8;
  v10 = a2 + 8;

  kaldi::VectorBase<float>::AddMatVec<signed char>(v9, v10, a3, a4, a5, a6, a7);
}

void kaldi::CuVectorBase<float>::AddMatVec<short>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == 112)
  {
    if (*(a2 + 20) != *(a4 + 8))
    {
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
  }

  else
  {
    if (a3 != 111 || *(a2 + 16) != *(a4 + 8))
    {
LABEL_11:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x207, "(trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.Dim() && M.NumCols() == dim_)", a5);
    }

    v8 = *(a2 + 20);
  }

  if (v8 != *(a1 + 16))
  {
    goto LABEL_11;
  }

  v9 = a1 + 8;
  v10 = a2 + 8;

  kaldi::VectorBase<float>::AddMatVec<short>(v9, v10, a3, a4, a5, a6, a7);
}

void *kaldi::CuSubVector<float>::CuSubVector(void *result, uint64_t a2, int a3, int a4, const char *a5)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *result = &unk_1F42BFF30;
  if ((a4 + a3) > *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 0x1E0, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  result[1] = *(a2 + 8) + 4 * a3;
  *(result + 4) = a4;
  result[3] = *(a2 + 24);
  return result;
}

uint64_t kaldi::CuWorkspace::GetMatrix<float>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a3 * a2;
  if (a1[8] < (4 * v7))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "GetMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 57);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Failed to create a ", 19);
    v11 = MEMORY[0x1C692A960](v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " by ", 4);
    v13 = MEMORY[0x1C692A960](v12, a3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " matrix with only ", 18);
    v15 = MEMORY[0x1C692A9A0](v14, a1[8]);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::CuWorkspace::GetVector<float>(a1, v7, a4, v17);
  return kaldi::CuSubMatrix<float>::CuSubMatrix(a5, v17, a2);
}

void *kaldi::CuWorkspace::GetVector<float>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = 4 * a2;
  if (v6 > a1[8])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "GetVector", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 67);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Failed to create a vector of ", 29);
    v11 = MEMORY[0x1C692A960](v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " elements with only ", 20);
    v13 = MEMORY[0x1C692A9A0](v12, a1[8]);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v7 = a1[1];
  a4[2] = 0;
  a4[3] = 0;
  *a4 = &unk_1F42BFF30;
  a4[1] = v7;
  *(a4 + 4) = a2;
  if (a3 == 3 || !a3)
  {
    kaldi::CuVectorBase<float>::SetZero(a4);
  }

  result = std::deque<char *>::push_back(a1 + 2, a1 + 1);
  a1[1] += v6;
  a1[8] -= v6;
  return result;
}

void sub_1C3044BD0(_Unwind_Exception *a1)
{
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  _Unwind_Resume(a1);
}

void kaldi::CuWorkspace::Destroy(kaldi::CuWorkspace *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9);
  if (v6)
  {
    v7 = v6[7] - 1;
    v8 = *(*(v6[3] + (((v7 + v6[6]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + v6[6]) & 0x1FF));
    if (v8 != *this)
    {
      kaldi::KaldiAssertFailure_("Destroy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 0x1A, "parent_->used_mem_.top() == base_ptr_", a5);
    }

    v9 = v6[1] - v8 + v6[8];
    v6[1] = *this;
    v6[7] = v7;
    v6[8] = v9;
    std::deque<char *>::__maybe_remove_back_spare[abi:ne200100](v6 + 2, 1);
  }

  else
  {
    v10 = *this;
    if (*this)
    {
      free(v10);
    }
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

void kaldi::CuWorkspace::GetChildWorkspace(kaldi::CuWorkspace *this, uint64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v2 = *(this + 8);
  }

  if (v2 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "GetChildWorkspace", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 117);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "mem_size_bytes >= 0");
  }

  else
  {
    if (v2 <= *(this + 8))
    {
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "GetChildWorkspace", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 119);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Can't create a child workspace of ", 34);
    v5 = MEMORY[0x1C692A9A0](v4, v2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ". Only have ", 12);
    v7 = MEMORY[0x1C692A9A0](v6, *(this + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " bytes");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

void *std::deque<char *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<char *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<char *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<char **>::emplace_back<char **&>(a1, &v10);
}

void sub_1C304502C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<char **>::emplace_back<char **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char **>::emplace_front<char **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<char **>::emplace_back<char **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char **>::emplace_front<char **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t kaldi::CompressedMatrix::CopyFromMat<float>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1C692ADF0]();
    }

    *a1 = 0;
  }

  result = kaldi::MatrixBase<float>::NumRows(a2);
  if (result)
  {
    kaldi::MatrixBase<float>::Min(a2, v5, v6, v7, v8);
    v10 = v9;
    kaldi::MatrixBase<float>::Max(a2, v11, v12, v13, v14);
    v17 = fabsf(v10);
    if (v16 == v10)
    {
      v16 = v17 + 1.0 + v10;
    }

    v18 = v16 - v10;
    if (v17 != INFINITY && (LODWORD(v18) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v23 = kaldi::MatrixBase<float>::NumRows(a2);
      v24 = kaldi::MatrixBase<float>::NumCols(a2);
      kaldi::CompressedMatrix::AllocateData(((v23 + 8) * v24 + 16), v19, v20, v21, v22);
    }

    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x46, "KALDI_ISFINITE(global_header.min_value) && KALDI_ISFINITE(global_header.range)", v15);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::Destroy(kaldi::CompressedMatrix *this)
{
  result = *this;
  if (result)
  {
    if (*(this + 8) == 1)
    {
      *(this + 8) = 0;
    }

    else
    {
      result = MEMORY[0x1C692ADF0]();
    }

    *this = 0;
  }

  return result;
}

void kaldi::CompressedMatrix::AllocateData(kaldi::CompressedMatrix *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this > 0)
  {

    operator new[]();
  }

  kaldi::KaldiAssertFailure_("AllocateData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0xF6, "num_bytes > 0", a5);
}

void kaldi::CompressedMatrix::CompressColumn<float>(float *a1, float *a2, int a3, int a4, _WORD *a5, _BYTE *a6)
{
  v10 = a2;
  kaldi::CompressedMatrix::ComputeColHeader<float>(a1, a2, a3, a4, a5);
  if (a4 >= 1)
  {
    v14 = *a1;
    *&v15 = a1[1];
    v16 = 0x3EF000100010000ALL;
    v17 = *&v15 * 0.0000152590219;
    LOWORD(v15) = *a5;
    v18 = v14 + v17 * v15;
    LOWORD(v16) = a5[1];
    v19 = v14 + v17 * v16;
    LOWORD(v12) = a5[2];
    *&v12 = v14 + v17 * v12;
    LOWORD(v13) = a5[3];
    *&v14 = v14 + v17 * v13;
    v20 = *&v14 - *&v12;
    v21 = a4;
    do
    {
      v22 = *v10;
      if (*v10 >= v19)
      {
        v25 = (((v22 - *&v12) / v20) * 63.0) + 0.5;
        v24 = v25 & ~(v25 >> 31);
        if (v24 >= 63)
        {
          LOBYTE(v24) = 63;
        }

        LOBYTE(v24) = v24 | 0xC0;
        v26 = (((v22 - v19) / (*&v12 - v19)) * 128.0) + 0.5;
        v27 = v26 & ~(v26 >> 31);
        if (v27 >= 128)
        {
          LOBYTE(v27) = 0x80;
        }

        v28 = v27 + 64;
        if (v22 < *&v12)
        {
          LOBYTE(v24) = v28;
        }
      }

      else
      {
        v23 = (((v22 - v18) / (v19 - v18)) * 64.0) + 0.5;
        v24 = v23 & ~(v23 >> 31);
        if (v24 >= 64)
        {
          LOBYTE(v24) = 64;
        }
      }

      *a6++ = v24;
      v10 += a3;
      --v21;
    }

    while (v21);
  }
}

uint64_t kaldi::CompressedMatrix::CopyToMat<float>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    if (kaldi::MatrixBase<float>::NumRows(a2) != v4)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1A1, "mat->NumRows() == num_rows", v6);
    }

    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (result != v5)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1A2, "mat->NumCols() == num_cols", v8);
    }

    if (v5 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = (v3 + 16);
      v15 = v3 + 16 + 8 * v5;
      do
      {
        if (v4 >= 1)
        {
          v16 = 0;
          v17 = *(v3 + 4) * 0.0000152590219;
          LOWORD(v9) = v14[3];
          v18 = *v3;
          v19 = v18 + v17 * *&v9;
          LOWORD(v10) = v14[2];
          v10 = v18 + v17 * *&v10;
          *&v10 = v10;
          LOWORD(v11) = v14[1];
          *&v20 = v18 + v17 * *&v11;
          v21 = *&v20;
          LOWORD(v20) = *v14;
          v22 = v18 + v17 * v20;
          v23 = *&v10;
          v24 = v19 - *&v10;
          v9 = v21;
          *&v10 = *&v10 - v21;
          v11 = v22;
          v25 = v21 - v22;
          v26 = (*a2 + v12);
          v27 = 4 * *(a2 + 16);
          do
          {
            result = *(v15 + v16);
            v28 = result - 64;
            if (result > 0x40)
            {
              v30 = result >= 0xC0;
              result = (result - 192);
              if (result != 0 && v30)
              {
                v29 = v23 + (v24 * result) * 0.0158730159;
              }

              else
              {
                v29 = v9 + (*&v10 * v28) * 0.0078125;
              }
            }

            else
            {
              v29 = v11 + (v25 * result) * 0.015625;
            }

            v31 = v29;
            *v26 = v31;
            ++v16;
            v26 = (v26 + v27);
          }

          while (v4 != v16);
          v15 += v16;
        }

        ++v13;
        v14 += 4;
        v12 += 4;
      }

      while (v13 != v5);
    }
  }

  else
  {
    if (kaldi::MatrixBase<float>::NumRows(a2))
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x19A, "mat->NumRows() == 0", v32);
    }

    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (result)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x19B, "mat->NumCols() == 0", v33);
    }
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CopyToMat<double>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    if (kaldi::MatrixBase<float>::NumRows(a2) != v4)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1A1, "mat->NumRows() == num_rows", v6);
    }

    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (result != v5)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1A2, "mat->NumCols() == num_cols", v8);
    }

    if (v5 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = (v3 + 16);
      v13 = v3 + 16 + 8 * v5;
      v14 = *v3;
      v15 = *(v3 + 4) * 0.0000152590219;
      do
      {
        if (v4 >= 1)
        {
          v16 = 0;
          LOWORD(v9) = v12[3];
          *&v17 = v14 + v15 * *&v9;
          v18 = *&v17;
          LOWORD(v17) = v12[2];
          *&v19 = v14 + v15 * v17;
          v20 = *&v19;
          LOWORD(v19) = v12[1];
          *&v21 = v14 + v15 * v19;
          v22 = *&v21;
          LOWORD(v21) = *v12;
          v23 = v14 + v15 * v21;
          v9 = v20;
          v24 = v18 - v20;
          v25 = v22;
          v26 = v20 - v22;
          v27 = v23;
          v28 = v22 - v23;
          v29 = (*a2 + v10);
          v30 = 8 * *(a2 + 16);
          do
          {
            result = *(v13 + v16);
            v31 = result - 64;
            if (result > 0x40)
            {
              v33 = result >= 0xC0;
              result = (result - 192);
              if (result != 0 && v33)
              {
                v32 = v9 + (v24 * result) * 0.0158730159;
              }

              else
              {
                v32 = v25 + (v26 * v31) * 0.0078125;
              }
            }

            else
            {
              v32 = v27 + (v28 * result) * 0.015625;
            }

            v34 = v32;
            *v29 = v34;
            ++v16;
            v29 = (v29 + v30);
          }

          while (v4 != v16);
          v13 += v16;
        }

        ++v11;
        v12 += 4;
        v10 += 8;
      }

      while (v11 != v5);
    }
  }

  else
  {
    if (kaldi::MatrixBase<float>::NumRows(a2))
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x19A, "mat->NumRows() == 0", v35);
    }

    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (result)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x19B, "mat->NumCols() == 0", v36);
    }
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CopyRowsFromVec<float>(uint64_t *a1, char **a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Matrix(v8, v5, v6, 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v8, a2);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v8);
  return kaldi::Matrix<float>::~Matrix(v8);
}

void sub_1C3045D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::CopyColToVec<float>(uint64_t *a1, unsigned int a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, const char *a10)
{
  v10 = *a1;
  if (*a1)
  {
    v11 = *(v10 + 12);
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= a2)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1E4, "col < this->NumCols()", a10);
  }

  if ((a2 & 0x80000000) != 0)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1E5, "col >= 0", a10);
  }

  if (v10)
  {
    v12 = *(v10 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (*(a3 + 2) != v12)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1E6, "v->Dim() == this->NumRows()", a10);
  }

  v13 = *(v10 + 8);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = (v10 + 16 + 8 * a2);
    LOWORD(a5) = v15[3];
    LOWORD(a6) = v15[2];
    LOWORD(a7) = v15[1];
    LOWORD(a8) = *v15;
    v16 = *(v10 + 4) * 0.0000152590219;
    v17 = *v10;
    v18 = v17 + v16 * *&a5;
    v19 = v17 + v16 * *&a6;
    v20 = v17 + v16 * *&a7;
    *&v17 = v17 + v16 * *&a8;
    v21 = v10 + 16 + 8 * *(v10 + 12) + v13 * a2;
    a4 = v19;
    *&a5 = v18 - v19;
    v22 = v20;
    v23 = v19 - v20;
    v24 = *&v17;
    v25 = v20 - *&v17;
    v26 = *a3;
    do
    {
      v27 = *(v21 + v14);
      v28 = v27 - 64;
      if (v27 > 0x40)
      {
        v30 = v27 >= 0xC0;
        v31 = v27 - 192;
        if (v31 != 0 && v30)
        {
          v29 = a4 + (*&a5 * v31) * 0.0158730159;
        }

        else
        {
          v29 = v22 + (v23 * v28) * 0.0078125;
        }
      }

      else
      {
        v29 = v24 + (v25 * v27) * 0.015625;
      }

      v32 = v29;
      *(v26 + 4 * v14++) = v32;
    }

    while (v13 != v14);
  }

  return *&a4;
}