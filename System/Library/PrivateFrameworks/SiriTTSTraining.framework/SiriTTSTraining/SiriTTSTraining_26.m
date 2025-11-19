int64_t find_vad(uint64_t a1, double a2)
{
  hanning_window((a2 * 0.05), __p);
  std::vector<double>::vector[abi:ne200100](__C, (*(a1 + 8) - *a1) >> 3);
  vDSP_vmulD(*a1, 1, *a1, 1, __C[0], 1, (*(a1 + 8) - *a1) >> 3);
  convolve_same(__C, __p, &v18);
  v17 = 0.0;
  vDSP_maxvD(v18, 1, &v17, (v19 - v18) >> 3);
  v4 = (a2 * 0.05);
  v5 = v17 / 3162.27766;
  v6 = v19 - v18;
  if (v19 != v18)
  {
    v7 = 0;
    if (((v19 - v18) >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v19 - v18) >> 3;
    }

    v9 = v18;
    while (*v9 <= v5)
    {
      ++v7;
      ++v9;
      if (!--v8)
      {
        v6 = 0;
        goto LABEL_11;
      }
    }

    v10 = v7 >= v4;
    v6 = v7 - v4;
    if (!v10)
    {
      v6 = 0;
    }
  }

LABEL_11:
  v11 = (a2 * 0.2);
  if ((*(a1 + 8) - *a1) >> 3 < v11)
  {
    v11 = (*(a1 + 8) - *a1) >> 3;
  }

  v12 = v6 - (a2 * 0.2);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v19 - v18) >> 3;
  while (v14)
  {
    v15 = v18[--v14];
    if (v15 > v5)
    {
      goto LABEL_21;
    }
  }

  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_21:
  v19 = v18;
  operator delete(v18);
LABEL_22:
  if (__C[0])
  {
    __C[1] = __C[0];
    operator delete(__C[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1E5F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void assess_audio_quality(char *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  std::operator+<char>();
  std::string::push_back(&v14, 39);
  v15 = v14;
  reader = PCMFile::create_reader(a1);
  v7 = reader;
  if (reader && (*(reader + 2) & 0x80000000) == 0)
  {
    v8 = *(reader + 6);
    v9 = *(reader + 6);
    std::vector<float>::vector[abi:ne200100](&v14, v9);
    PCMFile::Reader::read_samples(v7, v9, v14.__r_.__value_.__l.__data_, 4, 1, 1.0);
    v12 = *a2;
    v13 = *(a2 + 2);
    *&v12 = v8;
    v16[0] = v9;
    v16[1] = v14.__r_.__value_.__r.__words[0];
    memset(__p, 0, sizeof(__p));
    std::vector<std::tuple<unsigned long,float const*>>::__init_with_size[abi:ne200100]<std::tuple<unsigned long,float const*> const*,std::tuple<unsigned long,float const*> const*>(__p, v16, &v17, 1uLL);
    assess_audio_quality(__p, &v12);
  }

  *&v14.__r_.__value_.__r.__words[1] = 0uLL;
  v14.__r_.__value_.__r.__words[0] = &v14.__r_.__value_.__l.__size_;
  v10 = *(a2 + 2);
  log_audio_quality(&v15, &v14, 1, 1, a3);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v14, v14.__r_.__value_.__l.__size_);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1E6180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a12, a13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  (*(*v29 + 8))(v29);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void *log_audio_quality@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  if (a4)
  {
    v9 = *(a2 + 16);
    LogObject = Diagnostics_GetLogObject();
    v11 = LogObject;
    if (v9)
    {
      v12 = os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO);
      if (a3)
      {
        if (v12)
        {
          if (*(a1 + 23) < 0)
          {
            a1 = *a1;
          }

          v25 = 0;
          v13 = *std::map<AudioQualityMetric,double>::at(a2, &v25);
          v24 = 4;
          v14 = *std::map<AudioQualityMetric,double>::at(a2, &v24);
          v23 = 1;
          v15 = *std::map<AudioQualityMetric,double>::at(a2, &v23);
          v22 = 5;
          v16 = *std::map<AudioQualityMetric,double>::at(a2, &v22);
          *buf = 136316418;
          v27 = a1;
          v28 = 2080;
          v29 = "normalized";
          v30 = 2048;
          v31 = v13;
          v32 = 2048;
          v33 = v14;
          v34 = 2048;
          v35 = v15;
          v36 = 2048;
          v37 = v16;
LABEL_14:
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s %s audio quality SPL %.1f:%.1f SNR %.1f:%.1f", buf, 0x3Eu);
        }
      }

      else if (v12)
      {
        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        v25 = 2;
        v17 = *std::map<AudioQualityMetric,double>::at(a2, &v25);
        v24 = 6;
        v18 = *std::map<AudioQualityMetric,double>::at(a2, &v24);
        v23 = 3;
        v19 = *std::map<AudioQualityMetric,double>::at(a2, &v23);
        v22 = 7;
        v20 = *std::map<AudioQualityMetric,double>::at(a2, &v22);
        *buf = 136316418;
        v27 = a1;
        v28 = 2080;
        v29 = "unnormalized";
        v30 = 2048;
        v31 = v17;
        v32 = 2048;
        v33 = v18;
        v34 = 2048;
        v35 = v19;
        v36 = 2048;
        v37 = v20;
        goto LABEL_14;
      }
    }

    else if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      log_audio_quality(a1, v11);
    }
  }

  return std::map<AudioQualityMetric,double>::map[abi:ne200100](a5, a2);
}

void sub_1E6908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, void *a34)
{
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a30, a31);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a33, a34);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(v34 - 112, *(v34 - 104));
  _Unwind_Resume(a1);
}

void sub_1E6BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  _Unwind_Resume(exception_object);
}

void assess_audio_quality_oneway(uint64_t *a1, uint64_t a2, int a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  v5 = *(a2 + 8);
  __C = 0uLL;
  v19 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(v14, *(v6 + 8), (*(v6 + 8) + 4 * *v6), &__C);
      v6 += 16;
    }

    while (v6 != v7);
    v9 = *(&__C + 1);
    v8 = __C;
  }

  normalize_recording_volume((v9 - v8) >> 2, v8, a2, v14);
  if (__C)
  {
    *(&__C + 1) = __C;
    operator delete(__C);
  }

  __C = *v14;
  v19 = v15;
  std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, v14[0], v14[1], (v14[1] - v14[0]) >> 2);
  if (__C)
  {
    *(&__C + 1) = __C;
    operator delete(__C);
  }

  v10 = __p[0];
  if (a3)
  {
    v19 = 0;
    __C = 0uLL;
    std::vector<double>::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<double *>>,std::reverse_iterator<std::__wrap_iter<double *>>>(&__C, __p[1], __p[1], __p[0], __p[0], (__p[1] - __p[0]) >> 3);
    v11 = __C;
    v12 = __p[0];
    v13 = v17;
    *__p = __C;
    v17 = v19;
    *&__C = v12;
    v19 = v13;
    if (v12)
    {
      *(&__C + 1) = v12;
      operator delete(v12);
      v10 = __p[0];
    }

    else
    {
      v10 = v11;
    }
  }

  isolate_voice(*a2, (__p[1] - v10) >> 3, v10);
}

void sub_1E708C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIdNS_9allocatorIdEEEES6_EEC2B8ne200100IJLm0ELm1EEJS6_S6_EJEJEJRS6_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_1E71C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<AudioQualityMetric,double>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<AudioQualityMetric,double>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<AudioQualityMetric,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<AudioQualityMetric,double>,std::__tree_node<std::__value_type<AudioQualityMetric,double>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<AudioQualityMetric,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<AudioQualityMetric,double>,std::__tree_node<std::__value_type<AudioQualityMetric,double>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_hint_unique_key_args<AudioQualityMetric,std::pair<AudioQualityMetric const,double> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_hint_unique_key_args<AudioQualityMetric,std::pair<AudioQualityMetric const,double> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__find_equal<AudioQualityMetric>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__find_equal<AudioQualityMetric>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

double *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>,std::__wrap_iter<double *>>(double *a1, double *a2, double *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v8 = a2;
    v10 = v5 >> 3;
    v11 = __OFSUB__(v5 >> 3, 2);
    v12 = (v5 >> 3) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[v13];
      v15 = v13 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, a4, v10, v14--);
        --v15;
      }

      while (v15);
    }

    v4 = v8;
    if (v8 != a3)
    {
      v16 = v8;
      do
      {
        v17 = *v16;
        if (*v16 < *a1)
        {
          *v16 = *a1;
          *a1 = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, a4, v10, a1);
        }

        ++v16;
      }

      while (v16 != a3);
      v4 = a3;
    }

    if (v10 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v21 = v20;
          v20 += v18 + 1;
          v22 = 2 * v18;
          v18 = (2 * v18) | 1;
          v23 = v22 + 2;
          if (v23 < v10 && *v20 < v20[1])
          {
            ++v20;
            v18 = v23;
          }

          *v21 = *v20;
        }

        while (v18 <= ((v10 - 2) >> 1));
        if (v20 == --v8)
        {
          *v20 = v19;
        }

        else
        {
          *v20 = *v8;
          *v8 = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, (v20 + 1), a4, v20 + 1 - a1);
        }
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) | 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v6 = (a2 - 8);
    v8 = v7;
    v9 = *v5;
    if (*v5 < v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
      }

      while (*v5 < v8);
      *v6 = v8;
    }
  }

  return result;
}

void std::vector<std::tuple<unsigned long,float const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long,float const*>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long,float const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__function::__func<isolate_voice(double,unsigned long,double const*)::$_0,std::allocator<isolate_voice(double,unsigned long,double const*)::$_0>,unsigned long ()(unsigned long,float *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_2846C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<isolate_voice(double,unsigned long,double const*)::$_0,std::allocator<isolate_voice(double,unsigned long,double const*)::$_0>,unsigned long ()(unsigned long,float *)>::operator()(uint64_t a1, unint64_t *a2, float **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 8) - **(a1 + 24);
  if (v6 >= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *(a1 + 8) - **(a1 + 24);
  }

  v8 = *v5;
  v9 = &(*v5)[v7];
  if (v7)
  {
    v10 = 8 * v7;
    v11 = *a3;
    do
    {
      v12 = *v8++;
      v13 = v12;
      *v11++ = v13;
      v10 -= 8;
    }

    while (v10);
  }

  *v5 = v9;
  **(a1 + 24) += v7;
  v14 = v3 - v6;
  if (v3 > v6 && v14 >= 1)
  {
    bzero(&v4[v6], 4 * v14);
  }

  return v3;
}

uint64_t std::__function::__func<isolate_voice(double,unsigned long,double const*)::$_0,std::allocator<isolate_voice(double,unsigned long,double const*)::$_0>,unsigned long ()(unsigned long,float *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

double *std::vector<double>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(double **a1, float *a2, float *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= v11 - result)
  {
    while (v5 != a3)
    {
      v16 = *v5++;
      *result++ = v16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + ((v11 - result) >> 1));
    if (v11 != result)
    {
      do
      {
        v13 = *v5++;
        *result++ = v13;
      }

      while (v5 != v12);
    }

    v14 = v11;
    if (v12 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v12++;
        *v11++ = v15;
        ++v14;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<double *>>,std::reverse_iterator<std::__wrap_iter<double *>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a6);
  }

  return result;
}

void sub_1E7C90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<AudioQualityMetric,double>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_hint_unique_key_args<AudioQualityMetric,std::pair<AudioQualityMetric const,double> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void lfilter()
{
  __assert_rtn("lfilter", "AssessQuality.cc", 106, "A.size() == B.size()");
}

{
  __assert_rtn("lfilter", "AssessQuality.cc", 107, "A.size() > 1");
}

void log_audio_quality(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s unable to determine audio quality", &v3, 0xCu);
}

uint64_t TrainingUtils::read_metadata_from_file@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Read metadata from %s", buf, 0xCu);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::ifstream::basic_ifstream(buf, a1);
  if (!v20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    StringFormatter::StringFormatter(&__p, "Can't open file from %s", v13);
    std::logic_error::logic_error(exception, &__p);
  }

  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v6 = std::locale::use_facet(&v14, &std::ctype<char>::id);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v14);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v18 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::string&>(&__p, v17, 1, &v14);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v17);
    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 16))
    {
      v10 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(a2, &v14);
    }

    else
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(*(a2 + 8), &v14);
      v10 = v9 + 16;
    }

    *(a2 + 8) = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v14);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v15, LOBYTE(v14.__locale_));
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_1E8168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a22);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::string&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a4);
  v8 = *(a1 + 23);
  v9 = *a1;
  v10 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v14, a2);
  if ((v8 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = v9;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>(v11, v11 + v12, v14, a3, v15);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(v15, 1, a4);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(&v16);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v15);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v14);
}

void sub_1E8308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(v14 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](&a9);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v13);
  _Unwind_Resume(a1);
}

uint64_t TrainingUtils::read_json_from_file@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Read json from %s", buf, 0xCu);
  }

  std::ifstream::basic_ifstream(buf, a1);
  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    StringFormatter::StringFormatter(&v9, "Can't open file from %s", v8);
    std::logic_error::logic_error(exception, &v9);
  }

  v11 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(buf, v10, 1, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v10);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_1E8588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void TrainingUtils::write_json_to_file(void (__cdecl **a1)(std::ofstream *__hidden this))
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v3;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Write json to %s", buf, 0xCu);
  }

  std::ofstream::basic_ofstream(buf, a1);
  if (buf[16])
  {
    nlohmann::operator<<(buf);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v5 = a1;
  v6 = exception;
  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  StringFormatter::StringFormatter(&v7, "Can't open file from %s", v5);
  std::logic_error::logic_error(v6, &v7);
}

void sub_1E8824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ofstream::~ofstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void nlohmann::operator<<(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  v2 = *(v1 + 3);
  *(v1 + 3) = 0;
  operator new();
}

void sub_1E8A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t TrainingUtils::write_metadata_to_file(uint64_t a1, void *a2)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Write metadata to %s", buf, 0xCu);
  }

  std::ofstream::basic_ofstream(buf, a1);
  if (!v12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = a1;
    v9 = exception;
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    StringFormatter::StringFormatter(&v10, "Can't open file from %s", v8);
    std::logic_error::logic_error(v9, &v10);
  }

  if (*a2 != a2[1])
  {
    nlohmann::operator<<(buf);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1E8CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ofstream::~ofstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void TrainingUtils::accumulate_espresso_buffer_data(const float **a1, float **a2, float a3)
{
  v4 = 1;
  for (i = 2; i != 6; ++i)
  {
    v4 *= a1[i];
  }

  cblas_saxpy(v4, a3, *a1, 1, *a2, 1);
}

void TrainingUtils::scale_espresso_buffer_data(float **a1, float a2)
{
  v2 = 1;
  for (i = 2; i != 6; ++i)
  {
    v2 *= a1[i];
  }

  cblas_sscal(v2, a2, *a1, 1);
}

void *TrainingUtils::slice_espresso_buffer_data<float>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    TrainingUtils::slice_espresso_buffer_data<float>();
  }

  if (!a2)
  {
    TrainingUtils::slice_espresso_buffer_data<float>();
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  v15 = *(a1 + 16);
  v14 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v15;
  *(a2 + 96) = v13;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v14;
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 128) = v17;
  *(a2 + 144) = v18;
  *(a2 + 112) = v16;
  *(a2 + 80) = a6 - a5;
  *(a2 + 88) = a4 - a3;
  *(a2 + 16) = a6 - a5;
  *(a2 + 24) = a4 - a3;
  v19 = 1;
  for (i = 16; i != 48; i += 8)
  {
    v19 *= *(a2 + i);
  }

  *(a2 + 136) = v19;
  *(a2 + 144) = v19;
  *(a2 + 152) = v19;
  result = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  *a2 = result;
  if (a4 > a3)
  {
    v22 = 0;
    v23 = a3 - a4;
    do
    {
      result = memcpy((*a2 + 4 * *(a2 + 80) * v22), (*a1 + 4 * *(a1 + 80) * (a3 + v22) + 4 * a5), 4 * *(a2 + 80));
      ++v22;
    }

    while (v23 + v22);
  }

  return result;
}

void *_ZN13TrainingUtils26slice_espresso_buffer_dataIDF16_EEvP17espresso_buffer_tS2_mmmm(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    TrainingUtils::slice_espresso_buffer_data<float>();
  }

  if (!a2)
  {
    TrainingUtils::slice_espresso_buffer_data<float>();
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  v15 = *(a1 + 16);
  v14 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v15;
  *(a2 + 96) = v13;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v14;
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 128) = v17;
  *(a2 + 144) = v18;
  *(a2 + 112) = v16;
  *(a2 + 80) = a6 - a5;
  *(a2 + 88) = a4 - a3;
  *(a2 + 16) = a6 - a5;
  *(a2 + 24) = a4 - a3;
  v19 = 1;
  for (i = 16; i != 48; i += 8)
  {
    v19 *= *(a2 + i);
  }

  *(a2 + 136) = v19;
  *(a2 + 144) = v19;
  *(a2 + 152) = v19;
  result = malloc_type_malloc(2 * v19, 0x1000040BDFB0063uLL);
  *a2 = result;
  if (a4 > a3)
  {
    v22 = 0;
    v23 = a3 - a4;
    do
    {
      result = memcpy((*a2 + 2 * *(a2 + 80) * v22), (*a1 + 2 * *(a1 + 80) * (a3 + v22) + 2 * a5), 2 * *(a2 + 80));
      ++v22;
    }

    while (v23 + v22);
  }

  return result;
}

float SignalUtils::mulaw_encode(SignalUtils *this, float a2, float a3)
{
  v3 = 0.0;
  if (a2 > 0.0)
  {
    v3 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -1.0;
  }

  v5 = a3 + -1.0;
  v6 = log1pf(fabsf(a2) * (a3 + -1.0));
  return v4 * (v6 / log1pf(v5));
}

void SignalUtils::preemphasize(uint64_t *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = *(v3 + 4 * v6) + (v7 * -0.86);
      v9 = a2[2];
      if (v5 >= v9)
      {
        v10 = *a2;
        v11 = v5 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v15);
        }

        *(4 * v12) = v8;
        v5 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5++ = v8;
      }

      a2[1] = v5;
      v3 = *a1;
      v7 = *(*a1 + 4 * v6++);
    }

    while (v6 < (a1[1] - *a1) >> 2);
  }
}

void sub_1E9194(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SignalUtils::quantization(SignalUtils *this, float a2)
{
  if (fabsf(a2) > 1.0)
  {
    SignalUtils::quantization();
  }

  return ((a2 + 1.0) * 0.5 * (this - 1) + 0.5);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v9, a3);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(a5, &v8, v9, a4);
  return std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v9);
}

void sub_1E92A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parse(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](v34, a1);
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_sax_dom_callback_parser(&v35, a3, v34, *(a1 + 176));
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v34);
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v35);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    if (a2)
    {
      v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
        v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        boost::filesystem::path::path(v25, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xFu, v25, __p);
        nlohmann::detail::parse_error::create(101, &v29, __p, &v31);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v35, v7, &v33, &v31);
        v31.__vftable = off_283360;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v40 == 1)
    {
      v23[0] = 9;
      v8 = v23;
      v24 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v9 = *a3;
      *a3 = v23[0];
      v23[0] = v9;
      v10 = *(a3 + 8);
      *(a3 + 8) = v24;
      v24 = v10;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      v11 = v23[0];
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_sax_dom_callback_parser(&v35);
        return;
      }

      v21[0] = 0;
      v8 = v21;
      v22 = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v17 = *a3;
      *a3 = v21[0];
      v21[0] = v17;
      v18 = *(a3 + 8);
      *(a3 + 8) = v22;
      v22 = v18;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
      v11 = v21[0];
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v8 + 1, v11);
    goto LABEL_27;
  }

  v12 = *(a1 + 176);
  v35 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v39 = v12;
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, &v35);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  if (a2)
  {
    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v13;
    if (v13 != 15)
    {
      v14 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v33);
      v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      boost::filesystem::path::path(v25, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xFu, v25, __p);
      nlohmann::detail::parse_error::create(101, &v29, __p, &v31);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(&v35, v14, &v33, &v31);
      v31.__vftable = off_283360;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v38 == 1)
  {
    v19[0] = 9;
    v20 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    v15 = *a3;
    *a3 = v19[0];
    v19[0] = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = v20;
    v20 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }
}

void sub_1E96BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  nlohmann::detail::exception::~exception(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::parser(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:ne200100](a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_decimal_point();
  *(a1 + 176) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  return a1;
}

void sub_1E9844(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(v1 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(uint64_t a1)
{
  if (!*(a1 + 24) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_bom(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 < 58)
        {
          goto LABEL_13;
        }

        if (v2 > 109)
        {
          if (v2 > 122)
          {
            if (v2 == 123)
            {
              return 9;
            }

            if (v2 == 125)
            {
              return 11;
            }

            goto LABEL_47;
          }

          if (v2 == 110)
          {
            v9 = 1819047278;
            v5 = &v9;
            v6 = a1;
            v7 = 4;
            v8 = 3;
          }

          else
          {
            if (v2 != 116)
            {
              goto LABEL_47;
            }

            v11 = 1702195828;
            v5 = &v11;
            v6 = a1;
            v7 = 4;
            v8 = 1;
          }
        }

        else
        {
          if (v2 <= 92)
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }

LABEL_47:
            v4 = "invalid literal";
            goto LABEL_22;
          }

          if (v2 == 93)
          {
            return 10;
          }

          if (v2 != 102)
          {
            goto LABEL_47;
          }

          qmemcpy(v10, "false", 5);
          v5 = v10;
          v6 = a1;
          v7 = 5;
          v8 = 2;
        }

        return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(v6, v5, v7, v8);
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_47;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_47;
    }
  }

  switch(v2)
  {
    case '""':

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(a1);
    case ',':
      return 13;
    case '-':
LABEL_13:

      return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1);
    default:
      goto LABEL_47;
  }
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_bom(unsigned __int8 **a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_literal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*a2 != *(a1 + 16))
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_literal();
  }

  if (a3 >= 2)
  {
    v6 = a3 - 1;
    v7 = a2 + 1;
    while (1)
    {
      v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      v9 = *v7++;
      if (v9 != v8)
      {
        break;
      }

      if (!--v6)
      {
        return a4;
      }
    }

    *(a1 + 96) = "invalid literal";
    return 14;
  }

  return a4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::reset(a1);
  if (*(a1 + 16) != 34)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string();
  }

  while (2)
  {
    v2 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) + 1;
    result = 4;
    v4 = "invalid string: missing closing quote";
    switch(v2)
    {
      case 0:
        goto LABEL_83;
      case 1:
        v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_83;
      case 2:
        v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_83;
      case 3:
        v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_83;
      case 4:
        v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_83;
      case 5:
        v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_83;
      case 6:
        v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_83;
      case 7:
        v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_83;
      case 8:
        v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_83;
      case 9:
        v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_83;
      case 10:
        v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_83;
      case 11:
        v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
        goto LABEL_83;
      case 12:
        v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_83;
      case 13:
        v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_83;
      case 14:
        v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_83;
      case 15:
        v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_83;
      case 16:
        v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_83;
      case 17:
        v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_83;
      case 18:
        v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_83;
      case 19:
        v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_83;
      case 20:
        v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_83;
      case 21:
        v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_83;
      case 22:
        v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_83;
      case 23:
        v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_83;
      case 24:
        v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_83;
      case 25:
        v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_83;
      case 26:
        v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_83;
      case 27:
        v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_83;
      case 28:
        v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_83;
      case 29:
        v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_83;
      case 30:
        v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_83;
      case 31:
        v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_83;
      case 32:
        v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_83;
      case 33:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
        v8 = *(a1 + 16);
        goto LABEL_7;
      case 35:
        return result;
      case 93:
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
        v4 = "invalid string: forbidden character after backslash";
        if (v10 <= 113)
        {
          if (v10 > 97)
          {
            switch(v10)
            {
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'n':
                LOBYTE(v8) = 10;
                break;
              default:
                goto LABEL_83;
            }
          }

          else
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_83;
            }
          }

          goto LABEL_7;
        }

        if (v10 != 117)
        {
          if (v10 == 114)
          {
            LOBYTE(v8) = 13;
          }

          else
          {
            if (v10 != 116)
            {
              goto LABEL_83;
            }

            LOBYTE(v8) = 9;
          }

          goto LABEL_7;
        }

        codepoint = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
        if (codepoint == -1)
        {
          goto LABEL_86;
        }

        v8 = codepoint;
        if ((codepoint & 0xFFFFFC00) != 0xD800)
        {
          if ((codepoint & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_83;
          }

          if (codepoint >= 0x110000)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string();
          }

          if (codepoint > 0x7F)
          {
            if (codepoint > 0x7FF)
            {
              if (HIWORD(codepoint))
              {
                goto LABEL_25;
              }

              std::string::push_back((a1 + 72), (codepoint >> 12) | 0xE0);
              std::string::push_back((a1 + 72), (v8 >> 6) & 0x3F | 0x80);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }

            else
            {
              std::string::push_back((a1 + 72), (codepoint >> 6) | 0xC0);
              LOBYTE(v8) = v8 & 0x3F | 0x80;
            }
          }

LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 92 || nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) != 117)
        {
LABEL_87:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_83;
        }

        v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(a1);
        if (v12 != -1)
        {
          if (v12 >> 10 != 55)
          {
            goto LABEL_87;
          }

          v8 = v12 + (v8 << 10) - 56613888;
LABEL_25:
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(v8, (a1 + 72));
          LOBYTE(v8) = v13;
          goto LABEL_7;
        }

LABEL_86:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_83:
        *(a1 + 96) = v4;
        return 14;
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        *&v13 = 0xBF00000080;
        v5 = a1;
        v6 = 2;
        goto LABEL_14;
      case 225:
        v7 = xmmword_220810;
        goto LABEL_5;
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 239:
      case 240:
        v7 = xmmword_220800;
        goto LABEL_5;
      case 238:
        v7 = xmmword_2207F0;
LABEL_5:
        v13 = v7;
        v5 = a1;
        v6 = 4;
        goto LABEL_14;
      case 241:
        v14 = 0xBF00000080;
        v9 = &xmmword_221990;
        goto LABEL_13;
      case 242:
      case 243:
      case 244:
        v14 = 0xBF00000080;
        v9 = &xmmword_2219A8;
        goto LABEL_13;
      case 245:
        v14 = 0xBF00000080;
        v9 = &xmmword_2219C0;
LABEL_13:
        v13 = *v9;
        v5 = a1;
        v6 = 6;
LABEL_14:
        if ((nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(v5, &v13, v6) & 1) == 0)
        {
          return 14;
        }

        continue;
      default:
        v4 = "invalid string: ill-formed UTF-8 byte";
        goto LABEL_83;
    }
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) < 9)
  {
    v4 = (a1 + 72);
    v5 = 5;
LABEL_3:
    std::string::push_back(v4, v2);
    v6 = (a1 + 72);
    while (1)
    {
      v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
      if ((v7 - 48) >= 0xA)
      {
        break;
      }

      std::string::push_back((a1 + 72), *v3);
    }

    if (v7 != 46)
    {
      if (v7 != 69 && v7 != 101)
      {
LABEL_9:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
        __endptr = 0;
        *__error() = 0;
        v8 = (a1 + 72);
        v9 = *(a1 + 95);
        v10 = (a1 + 72);
        if (v5 == 5)
        {
          if (v9 < 0)
          {
            v10 = *v8;
          }

          v11 = strtoull(v10, &__endptr, 10);
          v12 = *(a1 + 95);
          if (v12 < 0)
          {
            v8 = *(a1 + 72);
            v12 = *(a1 + 80);
          }

          if (__endptr != v8 + v12)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 5;
            v14 = 112;
LABEL_30:
            *(a1 + v14) = v11;
            return result;
          }
        }

        else
        {
          if (v9 < 0)
          {
            v10 = *v8;
          }

          v11 = strtoll(v10, &__endptr, 10);
          v15 = *(a1 + 95);
          if (v15 < 0)
          {
            v8 = *(a1 + 72);
            v15 = *(a1 + 80);
          }

          if (__endptr != v8 + v15)
          {
            nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
          }

          if (!*__error())
          {
            result = 6;
            v14 = 104;
            goto LABEL_30;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 72), 48);
    v5 = 5;
  }

  else
  {
    if (v2 != 45)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
    }

    v4 = (a1 + 72);
    std::string::push_back((a1 + 72), 45);
    v19 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if ((v19 - 49) < 9)
    {
      v2 = *v3;
      v5 = 6;
      goto LABEL_3;
    }

    if (v19 != 48)
    {
      v22 = "invalid number; expected digit after '-'";
      goto LABEL_52;
    }

    std::string::push_back((a1 + 72), *v3);
    v5 = 6;
  }

  v20 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  if (v20 == 101 || v20 == 69)
  {
    v6 = (a1 + 72);
LABEL_48:
    std::string::push_back(v6, *(a1 + 16));
    v23 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
    if ((v23 - 48) < 0xA)
    {
      v24 = (a1 + 72);
    }

    else
    {
      if (v23 != 45 && v23 != 43)
      {
        v22 = "invalid number; expected '+', '-', or digit after exponent";
        goto LABEL_52;
      }

      v24 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 >= 0xA)
      {
        v22 = "invalid number; expected digit after exponent sign";
        goto LABEL_52;
      }
    }

    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1, (a1 + 16), v24);
    goto LABEL_55;
  }

  if (v20 != 46)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 72);
LABEL_40:
  std::string::push_back(v6, *(a1 + 128));
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) - 48 > 9)
  {
    v22 = "invalid number; expected digit after '.'";
LABEL_52:
    *(a1 + 96) = v22;
    return 14;
  }

  v6 = (a1 + 72);
  do
  {
    std::string::push_back((a1 + 72), *(a1 + 16));
    v21 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1);
  }

  while ((v21 - 48) < 0xA);
  if (v21 == 101 || v21 == 69)
  {
    goto LABEL_48;
  }

LABEL_55:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::unget(a1);
  __endptr = 0;
  *__error() = 0;
LABEL_23:
  v16 = (a1 + 72);
  v17 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v17 = *v16;
  }

  *(a1 + 120) = strtod(v17, &__endptr);
  v18 = *(a1 + 95);
  if (v18 < 0)
  {
    v16 = *(a1 + 72);
    v18 = *(a1 + 80);
  }

  if (__endptr != v16 + v18)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number();
  }

  return 7;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint(uint64_t a1)
{
  if (*(a1 + 16) != 117)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_codepoint();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint();
  return v2;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(std::string *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 6 || ((1 << a3) & 0x54) == 0)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range();
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(a2, a3, a1);
  return v4;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v32.__vftable = 0;
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2, &v32, 0);
        }

        else if (v4 == 4)
        {
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2);
        }

        else
        {
          v32.__vftable = *(a1 + 152);
          nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v32, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v32.__vftable) = 1;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v32.__vftable) = 0;
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v32, 0);
        goto LABEL_28;
      }

      goto LABEL_53;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v32.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v32, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v28);
          v24 = std::string::insert(&v28, 0, "number overflow parsing '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&__p, "'");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v31 = v26->__r_.__value_.__r.__words[2];
          *v30 = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v30, &v32);
          v13 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v34, &v32);
          nlohmann::detail::exception::~exception(&v32);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30[0]);
          }

          goto LABEL_55;
        }

        v32.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v32, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_array(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_61;
    }

    v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2);
      goto LABEL_24;
    }

    LOBYTE(v32.__vftable) = 1;
    std::vector<BOOL>::push_back(&v35, &v32);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      boost::filesystem::path::path(&v28, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v15, &v34, &v32);
LABEL_54:
      v13 = v16;
      v32.__vftable = off_283360;
      std::runtime_error::~runtime_error(&v33);
      std::exception::~exception(&v32);
      goto LABEL_55;
    }

LABEL_53:
    v17 = *(a1 + 64);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
    *v30 = *(a1 + 64);
    v31 = *(a1 + 80);
    boost::filesystem::path::path(&v28, "value");
    nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0x10u, &v28, &__p);
    nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
    v16 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v17, &v34, &v32);
    goto LABEL_54;
  }

  if ((nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::start_object(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
    }

    goto LABEL_64;
  }

  v6 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_61:
    v13 = 0;
    goto LABEL_48;
  }

LABEL_28:
  v8 = v36;
  if (!v36)
  {
LABEL_47:
    v13 = 1;
    goto LABEL_48;
  }

  while (2)
  {
    if ((*&v35[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
        *v30 = *(a1 + 64);
        v31 = *(a1 + 80);
        boost::filesystem::path::path(&v28, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xAu, &v28, &__p);
        nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
        v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v18, &v34, &v32);
        goto LABEL_65;
      }

      if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array(a2))
      {
        goto LABEL_61;
      }

      v10 = v36;
      if (!v36)
      {
        v20 = 383;
        goto LABEL_67;
      }

LABEL_39:
      v8 = v10 - 1;
      v36 = v8;
      if (!v8)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v21 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
      *v30 = *(a1 + 64);
      v31 = *(a1 + 80);
      boost::filesystem::path::path(&v28, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xBu, &v28, &__p);
      nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
      v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v21, &v34, &v32);
      goto LABEL_65;
    }

    if (!nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object(a2))
    {
      goto LABEL_61;
    }

    v10 = v36;
    if (!v36)
    {
      v20 = 439;
LABEL_67:
      __assert_rtn("sax_parse_internal", "parser.hpp", v20, "not states.empty()");
    }

    goto LABEL_39;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::key();
  }

LABEL_64:
  v22 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
  *v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  boost::filesystem::path::path(&v28, "object key");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 4u, &v28, &__p);
  nlohmann::detail::parse_error::create(101, v30, &__p, &v32);
  v19 = nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v34, &v32);
LABEL_65:
  v13 = v19;
  nlohmann::detail::exception::~exception(&v32);
LABEL_55:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v35)
  {
    operator delete(v35);
  }

  return v13;
}

void sub_1EB068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  nlohmann::detail::exception::~exception(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::sax_parse_internal<nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, void *a2)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v38.__vftable = *(a1 + 144);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<long long &>(a2, &v38);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v29 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v34);
          v30 = std::string::insert(&v34, 0, "number overflow parsing '");
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          v32 = std::string::append(&__p, "'");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v37 = v32->__r_.__value_.__r.__words[2];
          *v36 = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, v36, &v38);
          v18 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v29, &v40, &v38);
          nlohmann::detail::exception::~exception(&v38);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          goto LABEL_51;
        }

        v38.__vftable = *(a1 + 160);
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<double &>(a2, &v38);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v40.__r_.__value_.__s.__data_[0] = 2;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<kaldi::EventMap *>::push_back[abi:ne200100]((a2 + 1), &v38);
        v10 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          a2[2] -= 8;
          goto LABEL_26;
        }

        LOBYTE(v38.__vftable) = 1;
        std::vector<BOOL>::push_back(&v41, &v38);
        break;
      case 9:
        v40.__r_.__value_.__s.__data_[0] = 1;
        v38.__vftable = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>(a2, &v40);
        std::vector<kaldi::EventMap *>::push_back[abi:ne200100]((a2 + 1), &v38);
        v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_59:
          v27 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
          *v36 = *(a1 + 64);
          v37 = *(a1 + 80);
          boost::filesystem::path::path(&v34, "object key");
          nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 4u, &v34, &__p);
          nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
          v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v27, &v40, &v38);
          goto LABEL_63;
        }

        v7 = *(*(a2[2] - 8) + 8);
        v38.__vftable = v4;
        a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v4->~runtime_error) + 56;
        v8 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_62;
        }

        LOBYTE(v38.__vftable) = 0;
        std::vector<BOOL>::push_back(&v41, &v38);
        v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
LABEL_41:
        *(a1 + 32) = v9;
        break;
      case 14:
        v20 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v20, &v40, &v38);
LABEL_50:
        v18 = v21;
        v38.__vftable = off_283360;
        std::runtime_error::~runtime_error(&v39);
        std::exception::~exception(&v38);
        goto LABEL_51;
      default:
LABEL_49:
        v22 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0x10u, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v21 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v22, &v40, &v38);
        goto LABEL_50;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v38.__vftable = 0;
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<decltype(nullptr)>(a2);
    }

    else
    {
      if (v5 == 4)
      {
        nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<std::string&>(a2);
      }

      v38.__vftable = *(a1 + 152);
      nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<unsigned long long &>(a2, &v38);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v38.__vftable) = 1;
    nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_49;
  }

  LOBYTE(v38.__vftable) = 0;
  nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<BOOL &>(a2, &v38);
LABEL_26:
  v11 = v42;
  if (!v42)
  {
LABEL_43:
    v18 = 1;
    goto LABEL_44;
  }

  while (1)
  {
    if ((*&v41[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_40;
      }

      if (v12 != 10)
      {
        v23 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
        *v36 = *(a1 + 64);
        v37 = *(a1 + 80);
        boost::filesystem::path::path(&v34, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xAu, &v34, &__p);
        nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
        v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v23, &v40, &v38);
        goto LABEL_63;
      }

      a2[2] -= 8;
      v13 = v42;
      if (!v42)
      {
        v25 = 383;
        goto LABEL_61;
      }

      goto LABEL_35;
    }

    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    *(a1 + 32) = v14;
    if (v14 == 13)
    {
      break;
    }

    if (v14 != 11)
    {
      v26 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
      *v36 = *(a1 + 64);
      v37 = *(a1 + 80);
      boost::filesystem::path::path(&v34, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xBu, &v34, &__p);
      nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
      v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v26, &v40, &v38);
      goto LABEL_63;
    }

    a2[2] -= 8;
    v13 = v42;
    if (!v42)
    {
      v25 = 439;
LABEL_61:
      __assert_rtn("sax_parse_internal", "parser.hpp", v25, "not states.empty()");
    }

LABEL_35:
    v11 = v13 - 1;
    v42 = v11;
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v15;
  if (v15 != 4)
  {
    goto LABEL_59;
  }

  v16 = *(*(a2[2] - 8) + 8);
  v38.__vftable = v4;
  a2[4] = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, &v4->~runtime_error) + 56;
  v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
  *(a1 + 32) = v17;
  if (v17 == 12)
  {
LABEL_40:
    v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(a1 + 40);
    goto LABEL_41;
  }

LABEL_62:
  v28 = *(a1 + 64);
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v40);
  *v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  boost::filesystem::path::path(&v34, "object separator");
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xCu, &v34, &__p);
  nlohmann::detail::parse_error::create(101, v36, &__p, &v38);
  v24 = nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::parse_error(a2, v28, &v40, &v38);
LABEL_63:
  v18 = v24;
  nlohmann::detail::exception::~exception(&v38);
LABEL_51:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

LABEL_44:
  if (v41)
  {
    operator delete(v41);
  }

  return v18;
}

void sub_1EBA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  nlohmann::detail::exception::~exception(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_1ECDF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v46 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v3 >> 63;
  v47[0] = 0;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    result = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(&v46, v47, v15);
    if (result == 1)
    {
      v17 = *(v7 + 158);
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          v45 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v38, v9);
          v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v39, ": 0x");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          if (v45 >= 0)
          {
            v32 = __str;
          }

          else
          {
            v32 = *__str;
          }

          if (v45 >= 0)
          {
            v33 = v45;
          }

          else
          {
            v33 = v44;
          }

          v34 = std::string::append(&v40, v32, v33);
          v35 = *&v34->__r_.__value_.__l.__data_;
          v42 = v34->__r_.__value_.__r.__words[2];
          v41 = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(316, &v41, exception);
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
      }

      v18 = v10 != 0;
      if (v17 == 1)
      {
        v19 = v13 + v11;
        if (a3)
        {
          *v19 = 1717990748;
          *(v19 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v19 = -16401;
          *(v19 + 2) = -67;
        }

        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v13, v11);
          v11 = 0;
        }
      }

      v10 = 0;
      v9 -= v18;
      v46 = 0;
LABEL_52:
      v8 = v11;
      goto LABEL_53;
    }

    if (!result)
    {
      if (v47[0] <= 11)
      {
        switch(v47[0])
        {
          case 8u:
            v16 = 25180;
            goto LABEL_48;
          case 9u:
            v16 = 29788;
            goto LABEL_48;
          case 0xAu:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v47[0] > 33)
      {
        if (v47[0] == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v47[0] == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v47[0] == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v47[0] == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
LABEL_49:
          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
            v10 = 0;
            v8 = 0;
            goto LABEL_53;
          }

          v10 = 0;
          goto LABEL_52;
        }
      }

      if (v47[0] > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v47[0] < 0x20 || v21)
      {
        if (HIWORD(v47[0]))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v47[0] >> 10) - 10304), v47[0] & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v47[0]);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *(v13 + v8++) = *(v20 + v9);
    }

    ++v10;
LABEL_53:
    ++v9;
    v23 = *(a2 + 23);
    v12 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v46)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v13, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        else
        {
          v36 = *a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(316, &v41, v37);
      default:
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
    }

    return v25();
  }

  else if (v8)
  {
    v25 = *(**v7 + 8);
    return v25();
  }

  return result;
}

void sub_1ED3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 97) < 0)
      {
        operator delete(*(v41 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[(a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(unsigned char)::digits_to_99[a2];
  return (*(**a1 + 8))();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
    }

    v4 = &v3[v8];
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (a2 >= 0xA)
    {
      v6 = 4;
      v7 = a2;
      while (1)
      {
        if (v7 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_15;
        }

        if (v7 <= 0x3E7)
        {
          break;
        }

        if (v7 >> 4 < 0x271)
        {
          goto LABEL_15;
        }

        v8 = v7 >> 5;
        v7 /= 0x2710uLL;
        v6 += 4;
        if (v8 <= 0xC34)
        {
          v6 -= 3;
          goto LABEL_15;
        }
      }

      --v6;
LABEL_15:
      if (v6 >= 0x3F)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
      }

      v3 = a1 + v6 + 16;
      if (a2 < 0x64)
      {
        v9 = a2;
      }

      else
      {
        do
        {
          v9 = v2 / 0x64;
          *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v2 % 0x64)];
          v3 -= 2;
          v10 = v2 >> 4;
          v2 /= 0x64uLL;
        }

        while (v10 > 0x270);
      }

      if (v9 >= 0xA)
      {
        *(v3 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v9];
LABEL_24:
        v11 = (**a1)[1];

        return v11();
      }

      LOBYTE(v2) = v9;
    }

    else
    {
      v3 = a1 + 17;
    }

    *(v3 - 1) = v2 | 0x30;
    goto LABEL_24;
  }

  v4 = ***a1;

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v5];
  *a1 = v6;
  return v6;
}

uint64_t nlohmann::detail::to_chars<double>(_BYTE *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = (a1 + 1);
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    *(v3 + 2) = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      nlohmann::detail::to_chars<double>();
    }

    v6 = 0;
    nlohmann::detail::dtoa_impl::grisu2<double>(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 <= 0x15)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 == 22)
    {
      nlohmann::detail::to_chars<double>();
    }

    return nlohmann::detail::dtoa_impl::format_buffer(v3, HIDWORD(v6), v6, -4, 15);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2<double>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  if (a4 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  nlohmann::detail::dtoa_impl::compute_boundaries<double>(v9, a4);
  return nlohmann::detail::dtoa_impl::grisu2(a1, a2, a3, v9[2], v9[3], v9[0], v9[1], v7, v9[4], v9[5]);
}

uint64_t nlohmann::detail::dtoa_impl::format_buffer(nlohmann::detail::dtoa_impl *this, char *a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  if (a5 <= 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v5 = this;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(this + a2, 48, a3);
    *(v5 + v7) = 12334;
    return v5 + v7 + 2;
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(this + v10 + 2, this, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return v5 + v10 + v6 + 2;
    }

    if (a2 != 1)
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(v5 + 1) = 46;
      v5 = (v5 + v6);
    }

    *(v5 + 1) = 101;
    if (v7 <= -999)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1001)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    *(v5 + 2) = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        *(v5 + 3) = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        *(v5 + 4) = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      *(v5 + 3) = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      *(v5 + 3) = 48;
    }

    v14 = 3;
LABEL_29:
    result = v5 + v14 + 2;
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v9 = this + v7;
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return v5 + v6 + 1;
}

uint64_t nlohmann::detail::dtoa_impl::compute_boundaries<double>@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  if (a2 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  v3 = 4294966221;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = 4294966222;
    v8 = -1075;
LABEL_9:
    v9 = v5 - 1;
    goto LABEL_10;
  }

  v7 = (*&a2 >> 52) - 1075;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v3 = (*&a2 >> 52) - 1076;
  v8 = (*&a2 >> 52) - 1076;
  if (!(*&a2 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_9;
  }

  v8 = (*&a2 >> 52) - 1077;
  v4 = 0x10000000000000;
  v9 = 0x3FFFFFFFFFFFFFLL;
LABEL_10:
  v18 = v9;
  v19 = v8;
  v10 = nlohmann::detail::dtoa_impl::diyfp::normalize(v6, v3);
  v12 = v11;
  v13 = nlohmann::detail::dtoa_impl::diyfp::normalize_to(&v18, v11);
  v15 = v14;
  result = nlohmann::detail::dtoa_impl::diyfp::normalize(v4, v7);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, nlohmann::detail::dtoa_impl *a10)
{
  v31[0] = a4;
  v31[1] = a5;
  v30[0] = a6;
  v30[1] = a7;
  v29[0] = a9;
  v29[1] = a10;
  if (a10 != a5)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  if (a10 != a7)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  cached_power_for_binary_exponent = nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(a10);
  v15 = v14;
  v27 = cached_power_for_binary_exponent;
  v28 = v16;
  v17 = nlohmann::detail::dtoa_impl::diyfp::mul(v30, &v27);
  v19 = v18;
  v20 = nlohmann::detail::dtoa_impl::diyfp::mul(v31, &v27);
  v22 = v21;
  v23 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, &v27);
  *a3 = -v15;
  return nlohmann::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, v20 + 1, v22, v17, v19, v25, v23 - 1, v24);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::normalize_to(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(nlohmann::detail::dtoa_impl *this)
{
  if (this <= -1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (this >= 1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v1 = 78913 * (-61 - this) / 0x40000;
  if (this < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v3 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v2);
  v4 = v3[1] + this;
  if (v4 <= -125)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (v4 >= -95)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  return *v3;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::mul(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_digit_gen(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  if (a10 >= -31)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v13 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v47);
  v14 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::sub(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a3 > a4)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a4 < a5)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (!a6)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        nlohmann::detail::dtoa_impl::grisu2_round();
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_0_8(unsigned int a1, std::string *this)
{

  std::string::push_back(this, (a1 >> 18) | 0xF0);
}

void OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, std::string *a3)
{
  v4 = a3->__r_.__value_.__s.__data_[16];

  std::string::push_back(a3 + 3, v4);
}

void OUTLINED_FUNCTION_4_0()
{

  std::string::push_back(v0, (v1 >> 12) & 0x3F | 0x80);
}

void OUTLINED_FUNCTION_5_0(int a1, std::string::value_type *a2, std::string *this)
{
  v4 = *a2;

  std::string::push_back(this, v4);
}

void TrainingUtils::slice_espresso_buffer_data<float>()
{
  __assert_rtn("slice_espresso_buffer_data", "TrainingUtils.cc", 105, "dst != nullptr");
}

{
  __assert_rtn("slice_espresso_buffer_data", "TrainingUtils.cc", 104, "src != nullptr");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(unsigned int a1, std::string *a2)
{
  OUTLINED_FUNCTION_0_8(a1, a2);
  OUTLINED_FUNCTION_4_0();
  std::string::push_back(v3, v5 & 0xC0 | (v4 >> 6) & 0x3F);
  *v2 = v4 & 0x3F | 0x80;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(int a1, std::string::value_type *a2, std::string *a3)
{
  OUTLINED_FUNCTION_5_0(a1, a2, a3);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(v4);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(v4 + 3, *v3);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(v4);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get_codepoint()
{
  OUTLINED_FUNCTION_2_0();
  v8 = xmmword_220820;
  do
  {
    v5 = *(&v8 + v4);
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(v2);
    v6 = *v1;
    if ((*v1 - 48) > 9 && (v6 - 65) > 5 && (v6 - 97) > 5)
    {
      v3 = -1;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_0();
  }

  while (!v7);
  if (v3 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_8:
  *v0 = v3;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::next_byte_in_range(uint64_t a1, uint64_t a2, std::string *a3)
{
  OUTLINED_FUNCTION_1_2(a1, a2, a3);
  v7 = &v5[v6];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(v4);
    v8 = *(v4 + 16);
    if (*v5 > v8 || v8 > v5[1])
    {
      break;
    }

    std::string::push_back((v4 + 72), v8);
    v5 += 2;
    if (v5 == v7)
    {
      v9 = 1;
      goto LABEL_6;
    }
  }

  v9 = 0;
  *(v4 + 96) = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *v3 = v9;
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 363, "false");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
}

{
  __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1064, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 889, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 980, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 979, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 186, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 185, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "to_chars.hpp", 827, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
}

void TrainingEngineV2::TrainingEngineV2(uint64_t a1, uint64_t a2, int a3, std::string *__str, std::string::size_type a5)
{
  *(a1 + 96) = 0u;
  v8 = (a1 + 96);
  *(a1 + 120) = 0x3F7AE1483F666666;
  *(a1 + 112) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 128) = 814313567;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1065353216;
  v9 = (a1 + 424);
  v10 = (a1 + 448);
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 1;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0x3E800000000;
  *(a1 + 688) = 500;
  *(a1 + 692) = 0;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *a1 = 0;
  v25 = a1 + 136;
  std::string::operator=((a1 + 136), __str);
  std::string::operator=((a1 + 160), a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 8));
  }

  else
  {
    v32 = *a2;
  }

  boost::filesystem::path::path(__p, "training_config.json");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v32;
  }

  boost::filesystem::path::append_v3(&v31, __p);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::operator=((a1 + 696), a5);
  std::ifstream::basic_ifstream(__p, &v31);
  v35 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(__p, v34, 1, v30);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v34);
  boost::filesystem::path::path(&__stra, "model_init_config_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v30, &__stra.__r_.__value_.__l.__data_, &v29);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "model_grad_config_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v30, &__stra.__r_.__value_.__l.__data_, &v28);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__stra, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    __stra = v32;
  }

  boost::filesystem::path::append_v3(&__stra, &v27);
  std::string::operator=(&v29, &__stra);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v28;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__stra, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    __stra = v32;
  }

  boost::filesystem::path::append_v3(&__stra, &v27);
  std::string::operator=(&v28, &__stra);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v27, "model_checkpoint_config_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v30, &v27.__r_.__value_.__l.__data_, &__stra);
  if (*(a1 + 447) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *&__stra.__r_.__value_.__l.__data_;
  *(a1 + 440) = *(&__stra.__r_.__value_.__l + 2);
  *(&__stra.__r_.__value_.__s + 23) = 0;
  __stra.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 447) < 0)
  {
    v11 = *(a1 + 432);
    if (!v11)
    {
      goto LABEL_57;
    }

    std::string::__init_copy_ctor_external(&v27, *v9, v11);
  }

  else
  {
    if (!*(a1 + 447))
    {
      goto LABEL_57;
    }

    *&v27.__r_.__value_.__l.__data_ = *v9;
    v27.__r_.__value_.__r.__words[2] = *(a1 + 440);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__stra, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    __stra = v32;
  }

  boost::filesystem::path::append_v3(&__stra, &v27);
  std::string::operator=((a1 + 424), &__stra);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  InferenceModel::get_saved_model_checkpoint_config_path(a1 + 160, v25, &__stra);
  if (*(a1 + 471) < 0)
  {
    operator delete(*v10);
  }

  *v10 = *&__stra.__r_.__value_.__l.__data_;
  *(a1 + 464) = *(&__stra.__r_.__value_.__l + 2);
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v13 = (a1 + 424);
    if (*(a1 + 447) < 0)
    {
      v13 = *v9;
    }

    v14 = (a1 + 448);
    if (*(a1 + 471) < 0)
    {
      v14 = *v10;
    }

    LODWORD(__stra.__r_.__value_.__l.__data_) = 136315394;
    *(__stra.__r_.__value_.__r.__words + 4) = v13;
    WORD2(__stra.__r_.__value_.__r.__words[1]) = 2080;
    *(&__stra.__r_.__value_.__r.__words[1] + 6) = v14;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Checkpointing is enabled. checkpoint_model_config_file=%s, saved_checkpoint_model_config_file=%s", &__stra, 0x16u);
  }

LABEL_57:
  v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v30, "model_parameter_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<std::string>,std::vector<std::string>,0>(v15, &__stra);
  std::vector<std::string>::__vdeallocate((a1 + 184));
  *(a1 + 184) = __stra;
  memset(&__stra, 0, sizeof(__stra));
  v27.__r_.__value_.__r.__words[0] = &__stra;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(v30, "model_parameter_to_grad_names");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::unordered_map<std::string,std::string>,std::unordered_map<std::string,std::string>,0>(v16, &__stra);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(a1 + 208, &__stra);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&__stra);
  boost::filesystem::path::path(&v27, "model_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("fastspeech2", v30, &v27.__r_.__value_.__l.__data_, &__stra);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v8);
  }

  *v8 = __stra;
  *(&__stra.__r_.__value_.__s + 23) = 0;
  __stra.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "learning_rate");
  v27.__r_.__value_.__r.__words[0] = 0x3FB999999999999ALL;
  v17 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  *(a1 + 40) = v17;
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "learning_rate_decay");
  v27.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  v18 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<double,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  *(a1 + 44) = v18;
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "learning_rate_decay_steps");
  LODWORD(v27.__r_.__value_.__l.__data_) = 10000;
  *(a1 + 48) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "num_iter");
  LODWORD(v27.__r_.__value_.__l.__data_) = 100;
  *(a1 + 56) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "batch_size");
  LODWORD(v27.__r_.__value_.__l.__data_) = 1;
  *(a1 + 84) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "checkpoint_steps");
  LODWORD(v27.__r_.__value_.__l.__data_) = 100;
  *(a1 + 64) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "additional_early_stopping_epoch");
  LODWORD(v27.__r_.__value_.__l.__data_) = 10;
  *(a1 + 72) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "disable_min_ma_loss_checkpoint");
  v27.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 80) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "num_of_grad_accum");
  LODWORD(v27.__r_.__value_.__l.__data_) = 1;
  *(a1 + 88) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, &v27);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "min_step_loss_check");
  *(a1 + 688) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v30, &__stra.__r_.__value_.__l.__data_, (a1 + 688));
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__stra, "disable_inference_model_saving");
  *(a1 + 692) = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v30, &__stra.__r_.__value_.__l.__data_, (a1 + 692));
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  if ((*(a1 + 471) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 456))
    {
      goto LABEL_91;
    }
  }

  else if (!*(a1 + 471))
  {
    goto LABEL_91;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__stra, (a1 + 448));
  std::__fs::filesystem::__status(&__stra, 0);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }

  if (v26 && v26 != 255)
  {
    v22 = Diagnostics_GetLogObject();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    v21 = (a1 + 448);
    if (v23)
    {
      if (*(a5 + 23) >= 0)
      {
        v24 = a5;
      }

      else
      {
        v24 = *a5;
      }

      LODWORD(__stra.__r_.__value_.__l.__data_) = 136315138;
      *(__stra.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "TaskId: %s, Init from checkpoint model.", &__stra, 0xCu);
      v21 = (a1 + 448);
    }

LABEL_97:
    std::string::operator=(&v27, v21);
    std::allocate_shared[abi:ne200100]<InferenceEngine::Mil2BnnsMilInferenceModel,std::allocator<InferenceEngine::Mil2BnnsMilInferenceModel>,std::string &,0>();
  }

LABEL_91:
  v19 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    if (*(a5 + 23) >= 0)
    {
      v20 = a5;
    }

    else
    {
      v20 = *a5;
    }

    LODWORD(__stra.__r_.__value_.__l.__data_) = 136315138;
    *(__stra.__r_.__value_.__r.__words + 4) = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "TaskId: %s, Init from init model.", &__stra, 0xCu);
  }

  v21 = &v29;
  goto LABEL_97;
}

void sub_1F07BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, void **a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a76 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a44);
  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a67);
  std::ios::~ios();
  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (*(a27 + 719) < 0)
  {
    operator delete(*a22);
  }

  v77 = *(a27 + 640);
  if (v77)
  {
    *(a27 + 648) = v77;
    operator delete(v77);
  }

  v78 = *(a27 + 616);
  if (v78)
  {
    *(a27 + 624) = v78;
    operator delete(v78);
  }

  v79 = *(a27 + 592);
  if (v79)
  {
    *(a27 + 600) = v79;
    operator delete(v79);
  }

  v80 = *(a27 + 568);
  if (v80)
  {
    *(a27 + 576) = v80;
    operator delete(v80);
  }

  v81 = *(a27 + 544);
  if (v81)
  {
    *(a27 + 552) = v81;
    operator delete(v81);
  }

  v82 = *a14;
  if (*a14)
  {
    *(a27 + 528) = v82;
    operator delete(v82);
  }

  if (*(a27 + 471) < 0)
  {
    operator delete(*a12);
  }

  if (*(a27 + 447) < 0)
  {
    operator delete(*a13);
  }

  v83 = *(a27 + 416);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(a27 + 368);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(a25);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(a27 + 288);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(a26);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a27 + 208);
  STACK[0x228] = a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  if (*(a27 + 183) < 0)
  {
    operator delete(*(a27 + 160));
  }

  if (*(a27 + 159) < 0)
  {
    operator delete(*a17);
  }

  if (*(a27 + 119) < 0)
  {
    operator delete(*a23);
  }

  v84 = *(a27 + 32);
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

  v85 = *(a27 + 16);
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  _Unwind_Resume(a1);
}

void *InferenceEngine::DataTensor::get_1d_array<int>@<X0>(InferenceEngine::DataTensor *this@<X0>, void **a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    {
      InferenceEngine::DataTensor::get_1d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

  {
    InferenceEngine::DataTensor::get_1d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  size = InferenceEngine::DataTensor::get_size(this);
  std::vector<int>::vector[abi:ne200100](a2, size);
  v11 = *a2;

  return memcpy(v11, v9, 4 * size);
}

void TrainingEngineV2::setup_optimizer(TrainingEngineV2 *this)
{
  v2 = *(this + 32);
  *(this + 118) = 0;
  *(this + 476) = *(this + 15);
  *(this + 121) = 0;
  *(this + 122) = v2;
  *(this + 492) = 1065353216;
  *(this + 500) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  TrainingEngineV2::populate_descs_from_bufs(this, this + 65, this + 31);
  TrainingEngine::populate_desc_ptrs(v3, this + 65, this + 68);
  TrainingEngineV2::populate_descs_from_bufs(this, this + 77, this + 36);
  TrainingEngineV2::populate_descs_from_bufs(this, this + 77, this + 41);

  TrainingEngine::populate_desc_ptrs(v4, this + 77, this + 80);
}

void TrainingEngineV2::~TrainingEngineV2(TrainingEngineV2 *this)
{
  (*(**(this + 3) + 8))(*(this + 3));
  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  v2 = *(this + 80);
  if (v2)
  {
    *(this + 81) = v2;
    operator delete(v2);
  }

  v3 = *(this + 77);
  if (v3)
  {
    *(this + 78) = v3;
    operator delete(v3);
  }

  v4 = *(this + 74);
  if (v4)
  {
    *(this + 75) = v4;
    operator delete(v4);
  }

  v5 = *(this + 71);
  if (v5)
  {
    *(this + 72) = v5;
    operator delete(v5);
  }

  v6 = *(this + 68);
  if (v6)
  {
    *(this + 69) = v6;
    operator delete(v6);
  }

  v7 = *(this + 65);
  if (v7)
  {
    *(this + 66) = v7;
    operator delete(v7);
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v8 = *(this + 52);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 368);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 328);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 288);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 208);
  v11 = (this + 184);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v9 = *(this + 4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void TrainingEngineV2::populate_descs_from_bufs(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = a2[1] - *a2;
  std::vector<BNNSNDArrayDescriptor>::resize(a2, a3[3] + 0x2E8BA2E8BA2E8BA3 * (v6 >> 4));
  v7 = *(a1 + 184);
  if (*(a1 + 192) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *a2;
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v7 + v8));
      v13 = v11[5];
      v12 = v11[6];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v10 + v6;
      *(v14 + 144) = 0u;
      *(v14 + 160) = 0u;
      *(v14 + 112) = 0u;
      *(v14 + 128) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 0u;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *v14 = 0u;
      *(v14 + 4) = 0x10000;
      size = InferenceEngine::DataTensor::get_size(v13);
      v16 = v10 + v6;
      *(v16 + 8) = size;
      *(v16 + 136) = *(v13 + 11);
      *(v16 + 144) = 65568;
      *(v16 + 164) = 1065353216;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      ++v9;
      v7 = *(a1 + 184);
      v8 += 24;
      v6 += 176;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - v7) >> 3));
  }
}

void sub_1F1254(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TrainingEngineV2::train(uint64_t a1, uint64_t a2)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v4 = (a1 + 696);
    if (*(a1 + 719) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Init training setup.", buf, 0xCu);
  }

  v91.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = (a1 + 696);
    if (*(a1 + 719) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "TaskId: %s, Training start.", buf, 0xCu);
  }

  (***(a1 + 8))(*(a1 + 8));
  v7 = *(a1 + 664);
  v8 = std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v120, a2);
  v9 = *(a1 + 56);
  v10 = v7;
  *buf = 16;
  buf[4] = v7;
  buf[5] = BYTE1(v7);
  buf[6] = BYTE2(v7);
  buf[7] = BYTE3(v7);
  *&buf[8] = v9;
  std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(v8, *buf, v9);
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v120);
  if ((*(a1 + 692) & 1) == 0)
  {
    TrainingEngineV2::save_to_inference_model(a1);
  }

  if (v7 > *(a1 + 56))
  {
    goto LABEL_149;
  }

  OptimizerAlgFields = (a1 + 472);
  v95 = a1 + 96;
  v92 = (a1 + 696);
  while (1)
  {
    *v97 = v10;
    if (*a1 == 1)
    {
      break;
    }

    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      v11 = *(a1 + 119);
      v12 = (a1 + 96);
      if (v11 != 7)
      {
        if (v11 == 11 && *v95 == 0x6565707374736166 && *(a1 + 99) == 0x3268636565707374)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      goto LABEL_31;
    }

    v14 = *(a1 + 104);
    if (v14 == 7)
    {
      v12 = *v95;
LABEL_31:
      v16 = *v12;
      v17 = *(v12 + 3);
      if (v16 == 1702257015 && v17 == 1852732005)
      {
        v19 = *(a1 + 40);
        v20 = pow(*(a1 + 44), (v10 / *(a1 + 48))) * v19;
LABEL_40:
        v26 = v20;
        *OptimizerAlgFields = v26;
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (v14 == 11 && **v95 == 0x6565707374736166 && *(*v95 + 3) == 0x3268636565707374)
    {
LABEL_37:
      v21 = *(a1 + 44);
      v22 = *(a1 + 40);
      v23 = pow(4000.0, v21) * v22;
      v24 = pow(4000.0, -(v21 + 1.0)) * v10;
      v25 = pow(v10, -v21);
      if (v25 >= v24)
      {
        v25 = v24;
      }

      v20 = v23 * v25;
      goto LABEL_40;
    }

LABEL_41:
    *(a1 + 484) = v10;
    v93.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v27 = *(a1 + 88);
    if (v27 < 1)
    {
      v29 = 0.0;
    }

    else
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        (*(**(a1 + 8) + 24))(v108);
        v31 = *(a1 + 184);
        v30 = *(a1 + 192);
        while (v31 != v30)
        {
          v32 = *(a1 + 24);
          v101[0] = v31;
          v33 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 248), v31);
          v34 = v33[6];
          v106 = v33[5];
          v107 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v32 + 16))(v32, &v106);
          if (v107)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v107);
          }

          v31 += 3;
        }

        v35 = v108[0];
        v36 = v108[1];
        while (v35 != v36)
        {
          v37 = *(a1 + 24);
          v38 = v35[1];
          v104 = *v35;
          v105 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v37 + 16))(v37, &v104);
          if (v105)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v105);
          }

          v35 += 2;
        }

        (*(**(a1 + 24) + 48))(*(a1 + 24));
        v39 = *(a1 + 24);
        (*(**(a1 + 8) + 8))(buf);
        (*(*v39 + 32))(&v102, v39, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        (*(**(a1 + 8) + 16))(v101);
        memset(v100, 0, sizeof(v100));
        v41 = v101[0];
        v40 = v101[1];
        while (v41 != v40)
        {
          (*(**(a1 + 24) + 32))(buf);
          std::vector<std::shared_ptr<WaveRNNDataFeeder::OneBatchReader>>::push_back[abi:ne200100](v100, buf);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v41 += 24;
        }

        (*(**(a1 + 8) + 32))(*(a1 + 8), v28, v100);
        InferenceEngine::DataTensor::get_1d_array<float>(v102, buf);
        v42 = **buf;
        *&buf[8] = *buf;
        operator delete(*buf);
        memset(buf, 0, sizeof(buf));
        *v111 = 1065353216;
        v44 = *(a1 + 184);
        v43 = *(a1 + 192);
        while (v44 != v43)
        {
          memset(&v99, 0, sizeof(v99));
          if (*(a1 + 232))
          {
            v98.__r_.__value_.__r.__words[0] = v44;
            v45 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 208), v44);
            std::string::operator=(&v99, (v45 + 5));
          }

          else
          {
            if (*(v44 + 23) >= 0)
            {
              v46 = *(v44 + 23);
            }

            else
            {
              v46 = *(v44 + 8);
            }

            std::string::basic_string[abi:ne200100](&v98, v46 + 5);
            if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &v98;
            }

            else
            {
              v47 = v98.__r_.__value_.__r.__words[0];
            }

            if (v46)
            {
              if (*(v44 + 23) >= 0)
              {
                v48 = v44;
              }

              else
              {
                v48 = *v44;
              }

              memmove(v47, v48, v46);
            }

            strcpy(v47 + v46, "_grad");
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v99.__r_.__value_.__l.__data_);
            }

            v99 = v98;
          }

          (*(**(a1 + 24) + 40))(&v98);
          v108[4] = v44;
          if (v28)
          {
            v49 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(buf, v44);
          }

          else
          {
            v49 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 368), v44);
          }

          v50 = v49;
          v51 = *&v98.__r_.__value_.__l.__data_;
          if (v98.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v98.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          v52 = v49[6];
          *(v50 + 5) = v51;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          if (v98.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v98.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          v44 += 24;
        }

        v53 = *(a1 + 88);
        if (v28 || v53 <= 1)
        {
          if (v28)
          {
            v55 = 1.0 / v53;
            TrainingEngineV2::accumulate_weights(a1, buf, (a1 + 368), v55);
          }
        }

        else
        {
          v54 = 1.0 / v53;
          TrainingEngineV2::scale_weights(a1, (a1 + 368), v54);
        }

        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(buf);
        *buf = v100;
        std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__destroy_vector::operator()[abi:ne200100](buf);
        *buf = v101;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
        if (v103)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v103);
        }

        v29 = v29 + v42;
        *buf = v108;
        std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__destroy_vector::operator()[abi:ne200100](buf);
        v28 = (v28 + 1);
        v27 = *(a1 + 88);
      }

      while (v28 < v27);
    }

    TrainingEngineV2::populate_descs_from_bufs(a1, (a1 + 568), (a1 + 368));
    TrainingEngine::populate_desc_ptrs(v56, (a1 + 568), (a1 + 592));
    if (BNNSOptimizerStep(BNNSOptimizerFunctionAdam, OptimizerAlgFields, 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 528) - *(a1 + 520)) >> 4), *(a1 + 544), *(a1 + 592), *(a1 + 640), 0))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "optimizer step failed");
    }

    v59 = v29 / v27;
    *(a1 + 600) = *(a1 + 592);
    *(a1 + 576) = *(a1 + 568);
    v60 = *v97;
    v61 = v97[0] - *(a1 + 664);
    if (*(a1 + 684) >= v61 + 1)
    {
      v62 = v61 + 1;
    }

    else
    {
      v62 = *(a1 + 684);
    }

    v63 = *(a1 + 472);
    *(a1 + 672) = (v59 / v62) + ((*(a1 + 672) * (v62 + -1.0)) / v62);
    if (!(*v97 % 0x64uLL))
    {
      v64 = Diagnostics_GetLogObject();
      v60 = *v97;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = a1 + 696;
        if (*(a1 + 719) < 0)
        {
          v65 = *v92;
        }

        v66 = a1 + 96;
        if (*(a1 + 119) < 0)
        {
          v66 = *v95;
        }

        v67 = *(a1 + 56);
        v68 = *(a1 + 672);
        v69.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        *buf = 136316930;
        *&buf[4] = v65;
        *&buf[12] = 2080;
        *&buf[14] = v66;
        *&buf[22] = 2048;
        v60 = *v97;
        *&buf[24] = *v97;
        *v111 = 2048;
        *&v111[2] = v67;
        v112 = 2048;
        v113 = v68;
        v114 = 2048;
        v115 = v59;
        v116 = 2048;
        v117 = v63;
        v118 = 2048;
        v119 = ((v69.__d_.__rep_ - v93.__d_.__rep_) / 1000000) / 1000.0;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "TaskId: %s, model_type=%s, training_step=%ld / %ld, ma_loss=%f, training_loss=%f, lr=%f, time=%.3f s/step", buf, 0x52u);
      }
    }

    v70 = v60 - *(a1 + 664);
    v71 = *(a1 + 688);
    if (v70 == v71)
    {
      *(a1 + 676) = *(a1 + 672);
      *(a1 + 680) = v60;
    }

    v72 = *(a1 + 64);
    if (v70 >= v71 && !(v60 % v72))
    {
      if (*(a1 + 80) == 1)
      {
        if ((*(a1 + 692) & 1) == 0)
        {
          TrainingEngineV2::save_to_inference_model(a1);
        }
      }

      else
      {
        if (*(a1 + 672) <= *(a1 + 676))
        {
          *(a1 + 680) = v60;
          v73 = Diagnostics_GetLogObject();
          v60 = *v97;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = a1 + 696;
            if (*(a1 + 719) < 0)
            {
              v74 = *v92;
            }

            v75 = *(a1 + 672);
            v76 = *(a1 + 676);
            *buf = 136315906;
            *&buf[4] = v74;
            *&buf[12] = 2048;
            *&buf[14] = *v97;
            *&buf[22] = 2048;
            *&buf[24] = v75;
            *v111 = 2048;
            *&v111[2] = v76;
            _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "TaskId: %s, min_ma_loss detected, training_step=%ld, ma_loss=%f, min_ma_loss=%f", buf, 0x2Au);
          }

          *(a1 + 676) = *(a1 + 672);
          if ((*(a1 + 692) & 1) == 0)
          {
            TrainingEngineV2::save_to_inference_model(a1);
          }
        }

        v72 = *(a1 + 64);
        if ((v60 - *(a1 + 680)) / v72 >= *(a1 + 72))
        {
          v83 = Diagnostics_GetLogObject();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            v10 = *v97;
            if (*(a1 + 719) < 0)
            {
              v84 = *v92;
            }

            else
            {
              v84 = a1 + 696;
            }

            v88 = *(a1 + 672);
            v89 = *(a1 + 676);
            *buf = 136315906;
            *&buf[4] = v84;
            *&buf[12] = 2048;
            *&buf[14] = *v97;
            *&buf[22] = 2048;
            *&buf[24] = v88;
            *v111 = 2048;
            *&v111[2] = v89;
            v80 = "TaskId: %s, Exceed additional epoch due to early stopping, training_step=%ld, ma_loss=%f, min_ma_loss=%f";
            v81 = v83;
            v82 = 42;
LABEL_144:
            _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, v80, buf, v82);
            goto LABEL_149;
          }

          goto LABEL_148;
        }
      }
    }

    if (!(v60 % v72) || v60 == *(a1 + 56))
    {
      TrainingEngineV2::save_checkpoint(a1, v60, v57, v58);
      v60 = *v97;
    }

    if (*(a2 + 24) && (!(*v97 % 0x64uLL) || v60 == *(a1 + 56)))
    {
      std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__value_func[abi:ne200100](v109, a2);
      v77 = *(a1 + 56);
      v60 = *v97;
      *buf = 16;
      buf[4] = v97[0];
      buf[5] = BYTE1(v97[0]);
      buf[6] = BYTE2(v97[0]);
      buf[7] = HIBYTE(v97[0]);
      *&buf[8] = v77;
      std::function<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(v109, *buf, v77);
      std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v109);
    }

    v10 = v60 + 1;
    if (v10 > *(a1 + 56))
    {
      goto LABEL_149;
    }
  }

  v78 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 719) < 0)
    {
      v79 = *v92;
    }

    else
    {
      v79 = a1 + 696;
    }

    *buf = 136315138;
    *&buf[4] = v79;
    v80 = "TaskId: %s, Training stopped.";
    v81 = v78;
    v82 = 12;
    goto LABEL_144;
  }

LABEL_148:
  v10 = *v97;
LABEL_149:
  v85.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v86 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
  {
    v87 = (a1 + 696);
    if (*(a1 + 719) < 0)
    {
      v87 = *v87;
    }

    *buf = 136315650;
    *&buf[4] = v87;
    *&buf[12] = 2048;
    *&buf[14] = ((v85.__d_.__rep_ - v91.__d_.__rep_) / 1000000) / 1000.0;
    *&buf[22] = 2048;
    *&buf[24] = *&buf[14] / v10;
    _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, "TaskId: %s, Training end. total_time=%.3f s, %.3f s/step", buf, 0x20u);
  }
}

void TrainingEngineV2::save_to_inference_model(TrainingEngineV2 *this)
{
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 696);
    if (*(this + 719) < 0)
    {
      v3 = *v3;
    }

    v4 = (this + 136);
    if (*(this + 159) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = v4;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "TaskId: %s, Saving training model to inference model, output_path=%s", buf, 0x16u);
  }

  std::allocate_shared[abi:ne200100]<InferenceModule,std::allocator<InferenceModule>,std::string &,std::string &,0>();
}

void sub_1F2784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(&a22);
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(&a28);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  _Unwind_Resume(a1);
}

void TrainingEngineV2::scale_weights(uint64_t a1, void *a2, float a3)
{
  v3 = *(a1 + 184);
  for (i = *(a1 + 192); v3 != i; v3 += 3)
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v3);
    data_size = InferenceEngine::DataTensor::get_data_size(v7[5]);
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v3);
    cblas_sscal(data_size, a3, *(v9[5] + 11), 1);
  }
}

void TrainingEngineV2::accumulate_weights(uint64_t a1, void *a2, void *a3, float a4)
{
  v4 = *(a1 + 184);
  for (i = *(a1 + 192); v4 != i; v4 += 3)
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v4);
    size = InferenceEngine::DataTensor::get_size(v9[5]);
    v11 = *(std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v4)[5] + 11);
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v4);
    cblas_saxpy(size, a4, v11, 1, *(v12[5] + 11), 1);
  }
}

uint64_t TrainingEngineV2::save_checkpoint(uint64_t this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  if ((*(this + 447) & 0x8000000000000000) != 0)
  {
    if (!*(this + 432))
    {
      return this;
    }
  }

  else if (!*(this + 447))
  {
    return this;
  }

  if (*(this + 471) < 0)
  {
    if (*(this + 456))
    {
      std::string::__init_copy_ctor_external(&v36, *(this + 448), *(this + 456));
LABEL_10:
      boost::filesystem::path::parent_path(&v36, a2, a3, a4, &v35);
      if (SBYTE7(v37) < 0)
      {
        operator delete(v36);
      }

      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v36, &v35);
      std::__fs::filesystem::__remove_all(&v36, 0);
      if (SBYTE7(v37) < 0)
      {
        operator delete(v36);
      }

      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v36, &v35);
      std::__fs::filesystem::__create_directory(&v36, 0);
      if (SBYTE7(v37) < 0)
      {
        operator delete(v36);
      }

      memset(v33, 0, sizeof(v33));
      v34 = 1065353216;
      for (i = *(v4 + 264); i; i = *i)
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        __p = i + 2;
        v6 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33, i + 2);
        v7 = v44;
        *(v6 + 19) = v43;
        *(v6 + 21) = v7;
        *(v6 + 23) = v45;
        v8 = v46;
        v9 = v40;
        *(v6 + 11) = v39;
        *(v6 + 13) = v9;
        v10 = v42;
        *(v6 + 15) = v41;
        *(v6 + 17) = v10;
        v11 = v37;
        *(v6 + 5) = v36;
        v6[25] = v8;
        *(v6 + 7) = v11;
        *(v6 + 9) = v38;
        v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v33, i + 2);
        if (!v12)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v13 = i[5];
        v14 = *(v13 + 11);
        InferenceEngine::DataTensor::get_shape(v13, 1, &v36);
        InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>((v12 + 5), v14, &v36, 65568);
        if (v36)
        {
          *(&v36 + 1) = v36;
          operator delete(v36);
        }
      }

      for (j = *(v4 + 304); j; j = *j)
      {
        if (*(j + 39) >= 0)
        {
          v16 = *(j + 39);
        }

        else
        {
          v16 = j[3];
        }

        std::string::basic_string[abi:ne200100](&v36, v16 + 5);
        if ((SBYTE7(v37) & 0x80u) == 0)
        {
          v17 = &v36;
        }

        else
        {
          v17 = v36;
        }

        if (v16)
        {
          if (*(j + 39) >= 0)
          {
            v18 = (j + 2);
          }

          else
          {
            v18 = j[2];
          }

          memmove(v17, v18, v16);
        }

        strcpy(v17 + v16, "_mean");
        __p = &v36;
        v19 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33, &v36);
        v19[25] = 0;
        *(v19 + 23) = 0u;
        *(v19 + 21) = 0u;
        *(v19 + 19) = 0u;
        *(v19 + 17) = 0u;
        *(v19 + 15) = 0u;
        *(v19 + 13) = 0u;
        *(v19 + 11) = 0u;
        *(v19 + 9) = 0u;
        *(v19 + 7) = 0u;
        *(v19 + 5) = 0u;
        v20 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v33, &v36);
        if (!v20)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v21 = j[5];
        v22 = *(v21 + 11);
        InferenceEngine::DataTensor::get_shape(v21, 1, &__p);
        InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>((v20 + 5), v22, &__p, 65568);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (SBYTE7(v37) < 0)
        {
          operator delete(v36);
        }
      }

      for (k = *(v4 + 344); k; k = *k)
      {
        if (*(k + 39) >= 0)
        {
          v24 = *(k + 39);
        }

        else
        {
          v24 = k[3];
        }

        std::string::basic_string[abi:ne200100](&v36, v24 + 9);
        if ((SBYTE7(v37) & 0x80u) == 0)
        {
          v25 = &v36;
        }

        else
        {
          v25 = v36;
        }

        if (v24)
        {
          if (*(k + 39) >= 0)
          {
            v26 = (k + 2);
          }

          else
          {
            v26 = k[2];
          }

          memmove(v25, v26, v24);
        }

        strcpy(v25 + v24, "_variance");
        __p = &v36;
        v27 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33, &v36);
        v27[25] = 0;
        *(v27 + 23) = 0u;
        *(v27 + 21) = 0u;
        *(v27 + 19) = 0u;
        *(v27 + 17) = 0u;
        *(v27 + 15) = 0u;
        *(v27 + 13) = 0u;
        *(v27 + 11) = 0u;
        *(v27 + 9) = 0u;
        *(v27 + 7) = 0u;
        *(v27 + 5) = 0u;
        v28 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(v33, &v36);
        if (!v28)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v29 = k[5];
        v30 = *(v29 + 11);
        InferenceEngine::DataTensor::get_shape(v29, 1, &__p);
        InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>((v28 + 5), v30, &__p, 65568);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (SBYTE7(v37) < 0)
        {
          operator delete(v36);
        }
      }

      InferenceEngine::DataTensor::get_name(*(v4 + 408), &v36);
      std::vector<int>::vector[abi:ne200100](&__p, 1uLL);
      InferenceEngine::DataTensor::build_from_1d_array<int>(&v36, &__p);
    }
  }

  else if (*(this + 471))
  {
    v36 = *(this + 448);
    *&v37 = *(this + 464);
    goto LABEL_10;
  }

  return this;
}

void sub_1F344C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a41)
  {
    operator delete(a41);
  }

  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::~__hash_table(&a44);
  if (a54 < 0)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void *boost::filesystem::path::parent_path@<X0>(boost::filesystem::path *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = this;
  if (*(this + 23) < 0)
  {
    v6 = *this;
  }

  parent_path_size = boost::filesystem::path::find_parent_path_size(this, a2, a3, a4);

  return std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a5, v6, &parent_path_size[v6], parent_path_size);
}

uint64_t InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*a3 == a3[1])
  {
    result = espresso_buffer_set_rank();
  }

  else
  {
    result = espresso_buffer_pack_tensor_shape();
  }

  *a1 = a2;
  *(a1 + 160) = a4;
  return result;
}

void InferenceEngine::DataTensor::build_from_1d_array<int>(uint64_t a1, void *a2)
{
  __p = ((a2[1] - *a2) >> 2);
  memset(v2, 0, sizeof(v2));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v2, &__p, &v4, 1uLL);
  InferenceEngine::DataUtils::get_type_string<int>(&__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1F3888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MilInferenceModel::get_model_config_value_by_key<std::string>(char *a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  InferenceEngine::Utils::read_json_from_file(a1, v6);
  v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v6, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v5, a3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6[0]);
}

void InferenceEngine::EspressoUtils::save_mil_weights(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __p = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v6 = a4[2];
  if (v6)
  {
    v30 = a3;
    do
    {
      v8 = v6 + 2;
      v9 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::find<std::string>(a4, v6 + 2);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v10 = v9 + 5;
      v11 = v35;
      if (v35 >= v36)
      {
        v13 = (v35 - __p) >> 3;
        if ((v13 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v14 = (v36 - __p) >> 2;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v36 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(&__p, v15);
        }

        v16 = (8 * v13);
        *v16 = v10;
        v12 = 8 * v13 + 8;
        v17 = v16 - (v35 - __p);
        memcpy(v17, __p, v35 - __p);
        v18 = __p;
        __p = v17;
        v35 = v12;
        v36 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v35 = v10;
        v12 = (v11 + 8);
      }

      v35 = v12;
      if (*(v6 + 39) < 0)
      {
        v8 = *v8;
      }

      v19 = v32;
      if (v32 >= v33)
      {
        v21 = (v32 - v31) >> 3;
        if ((v21 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v22 = (v33 - v31) >> 2;
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        if (v33 - v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&v31, v23);
        }

        v24 = (8 * v21);
        *v24 = v8;
        v20 = 8 * v21 + 8;
        v25 = v24 - (v32 - v31);
        memcpy(v25, v31, v32 - v31);
        v26 = v31;
        v31 = v25;
        v32 = v20;
        v33 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v32 = v8;
        v20 = (v19 + 8);
      }

      v32 = v20;
      v6 = *v6;
    }

    while (v6);
    a3 = v30;
  }

  if (*(a1 + 23) < 0)
  {
    v27 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    v28 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v29 = *a3;
  }

  espresso_set_mil_const_values();
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_1F3B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<InferenceEngine::MilIO>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<InferenceEngine::MilIO>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1F3F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<InferenceEngine::MilIO>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__shared_ptr_emplace<WaveRNNDataFeederV2>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,WaveRNNDataFeederV2::Config &,std::allocator<WaveRNNDataFeederV2>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2847F0;
  WaveRNNDataFeederV2::WaveRNNDataFeederV2(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<WaveRNNDataFeederV2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2847F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<WaveRNNDataFeederV2>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = off_2848E8;
  v3 = (a1 + 264);
  std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 240);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  *(a1 + 24) = &off_2848B0;
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = (a1 + 72);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

boost::filesystem::path *InferenceEngine::DataUtils::get_type_string<int>@<X0>(boost::filesystem::path *a1@<X8>)
{
  {
    v2 = "fp32";
  }

  else
  {
    {
      InferenceEngine::DataUtils::get_type_string<float>();
    }

    v2 = "int32";
  }

  return boost::filesystem::path::path(a1, v2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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
    operator new();
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

void *std::__shared_ptr_emplace<InferenceEngine::MilIO>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,char const(&)[5],std::vector<unsigned long>,std::allocator<InferenceEngine::MilIO>,0>(void *a1, int a2, int a3, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_284840;
  std::allocator<InferenceEngine::MilIO>::construct[abi:ne200100]<InferenceEngine::MilIO,std::string,std::string,char const(&)[5],std::vector<unsigned long>>(&v6, (a1 + 3), a2, a3, __s);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::MilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::allocator<InferenceEngine::MilIO>::construct[abi:ne200100]<InferenceEngine::MilIO,std::string,std::string,char const(&)[5],std::vector<unsigned long>>(int a1, uint64_t a2, int a3, int a4, char *__s)
{
  boost::filesystem::path::path(&__p, __s);
  InferenceEngine::MilIO::MilIO(a2);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1F47F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WaveRNNModelIONames::WaveRNNModelIONames(WaveRNNModelIONames *this)
{
  *this = &off_284890;
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  v2 = (this + 56);
  *(this + 104) = 0u;
  v3 = (this + 104);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  std::string::assign((this + 8), "input_state");
  std::string::assign((this + 32), "input");
  std::string::assign(v2, "input_coarse_groundtruth");
  std::string::assign((this + 80), "input_fine_groundtruth");
  std::string::assign(v3, "Identity_1");
  std::string::assign((this + 128), "Identity");
}

void sub_1F48F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void WaveRNNModelIONames::get_loss_name(WaveRNNModelIONames *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 127) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 13), *(this + 14));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 104);
    a2->__r_.__value_.__r.__words[2] = *(this + 15);
  }
}

void WaveRNNModelIONames::get_output_names(WaveRNNModelIONames *this@<X0>, void *a2@<X8>)
{
  if (*(this + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 16), *(this + 17));
  }

  else
  {
    __p = *(this + 128);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &__p, &v4, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t BatchWaveRNNTrainDataV2::BatchWaveRNNTrainDataV2(uint64_t a1, uint64_t *a2)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 72;
    do
    {
      std::vector<std::vector<float>>::push_back[abi:ne200100](v3, (v5 + v8 - 72));
      std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](a1 + 128, (*a2 + v8 - 48));
      std::vector<std::vector<int>>::push_back[abi:ne200100](v4, (*a2 + v8 - 24));
      std::vector<std::vector<int>>::push_back[abi:ne200100](a1 + 176, (*a2 + v8));
      ++v7;
      v5 = *a2;
      v8 += 104;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3) > v7);
  }

  return a1;
}

void sub_1F4B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  WaveRNNTrainData::~WaveRNNTrainData(v2);
  _Unwind_Resume(a1);
}

uint64_t DataFeederV2::DataFeederV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &off_2848B0;
  v7 = *a4;
  *(a1 + 16) = *(a4 + 8);
  *(a1 + 8) = v7;
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), a4[2], a4[3]);
  }

  else
  {
    v8 = *(a4 + 1);
    *(a1 + 40) = a4[4];
    *(a1 + 24) = v8;
  }

  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  v9 = (a1 + 96);
  *(a1 + 112) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }
  }

  else
  {
    v13 = *a2;
  }

  *(a1 + 72) = v13;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a3, *(a3 + 8));
  }

  else
  {
    v13 = *a3;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *&v13.__r_.__value_.__l.__data_;
  *(a1 + 112) = *(&v13.__r_.__value_.__l + 2);
  boost::filesystem::path::path(__p, "metadata_mel.json");
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v13 = *(a1 + 72);
  }

  boost::filesystem::path::append_v3(&v13, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::Utils::read_metadata_from_file(&v13, __p);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(a1 + 48);
  *(a1 + 48) = *__p;
  *(a1 + 64) = v12;
  __p[1] = 0;
  v12 = 0;
  __p[0] = 0;
  v14 = __p;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  *(a1 + 120) = 2020;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1F4DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v21 + 136);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(v21 + 119) < 0)
  {
    operator delete(*v23);
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(v22[3]);
  }

  a16 = v22;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t WaveRNNDataFeederV2::OneBatchReader::OneBatchReader(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  *(a1 + 8) = *(a5 + 8);
  *a1 = v10;
  if (*(a5 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a5[2], a5[3]);
  }

  else
  {
    v11 = *(a5 + 1);
    *(a1 + 32) = a5[4];
    *(a1 + 16) = v11;
  }

  v12 = *(a5 + 5);
  v13 = *(a5 + 7);
  *(a1 + 88) = 0;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1 + 88, *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 128) = 0u;
  *(a1 + 112) = a4;
  *(a1 + 120) = a2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  v14 = *(a1 + 48) / *(a1 + 56);
  if (*(a1 + 44) % v14)
  {
    v16 = "params_.step_shift_length%(params_.samples_per_frame/params_.samples_per_step) == 0";
    v17 = 65;
    goto LABEL_9;
  }

  if (*(a1 + 40) % v14)
  {
    v16 = "params_.step_sequence_length%(params_.samples_per_frame/params_.samples_per_step) == 0";
    v17 = 66;
LABEL_9:
    __assert_rtn("OneBatchReader", "DataFeederV2.cpp", v17, v16);
  }

  return a1;
}

void sub_1F4FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

void WaveRNNDataFeederV2::OneBatchReader::read_data(uint64_t a1, unsigned __int8 *a2)
{
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "utterance_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>(v4, &v64);
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_DEBUG))
  {
    WaveRNNDataFeederV2::OneBatchReader::read_data(&v64, LogObject);
  }

  boost::filesystem::path::path(&v63, "mel_dim");
  LODWORD(v62.__r_.__value_.__l.__data_) = 80;
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(a2, &v63.__r_.__value_.__l.__data_, &v62);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v7 = *(a1 + 120);
  boost::filesystem::path::path(&v61, "mel");
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v62.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&v62.__r_.__value_.__l.__data_ = v8;
  }

  boost::filesystem::path::append_v3(&v62, &v61);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  v10 = &v59;
  std::string::basic_string[abi:ne200100](&v59, size + 4);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v59.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v64;
    }

    else
    {
      v11 = v64.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, size);
  }

  strcpy(v10 + size, ".mel");
  __p = v59;
  memset(&v59, 0, sizeof(v59));
  boost::filesystem::path::append_v3(&v62, &__p);
  v63 = v62;
  memset(&v62, 0, sizeof(v62));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  InferenceEngine::DataUtils::read_vector_from_file<float>(&v63, &v62);
  InferenceEngine::VectorOps::reshape_1d_to_2d<float>(&v62, v6, &v61);
  std::vector<std::vector<int>>::__vdeallocate((a1 + 128));
  *(a1 + 128) = v61;
  memset(&v61, 0, sizeof(v61));
  __p.__r_.__value_.__r.__words[0] = &v61;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v12 = *(a1 + 120);
  boost::filesystem::path::path(&v59, "silence_trimmed");
  if (*(v12 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
  }

  else
  {
    v13 = *v12;
    __p.__r_.__value_.__r.__words[2] = *(v12 + 2);
    *&__p.__r_.__value_.__l.__data_ = v13;
  }

  boost::filesystem::path::append_v3(&__p, &v59);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v64.__r_.__value_.__l.__size_;
  }

  v15 = v55;
  std::string::basic_string[abi:ne200100](v55, v14 + 4);
  if (v56 < 0)
  {
    v15 = v55[0];
  }

  if (v14)
  {
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v64;
    }

    else
    {
      v16 = v64.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, ".wav");
  *v57 = *v55;
  v58 = v56;
  v55[1] = 0;
  v56 = 0;
  v55[0] = 0;
  boost::filesystem::path::append_v3(&__p, v57);
  v61 = __p;
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  reader = PCMFile::create_reader(&v61);
  v18 = reader;
  if (!reader)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v54 = &v61;
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v54 = v61.__r_.__value_.__r.__words[0];
    }

    StringFormatter::StringFormatter(&__p, "Can't read wavfile from %s", v54);
    std::logic_error::logic_error(exception, &__p);
  }

  v19 = *(reader + 6);
  std::vector<short>::vector[abi:ne200100](&__p, v19);
  PCMFile::Reader::read_samples(v18, v19, __p.__r_.__value_.__l.__data_, 2, 0, 1.0);
  memset(&v59, 0, sizeof(v59));
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(&v59, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 1);
  v21 = (a1 + 152);
  v20 = *(a1 + 152);
  if (v20)
  {
    *(a1 + 160) = v20;
    operator delete(v20);
    *v21 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  v22 = v59.__r_.__value_.__r.__words[0];
  *(a1 + 152) = v59;
  v23 = *(a1 + 64) / 2;
  v24 = (*(a1 + 64) + (*(a1 + 64) >> 31)) >> 1;
  memset(&v59, 0, sizeof(v59));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v59, v22, v22 + 4 * v23, v24);
  if (v59.__r_.__value_.__r.__words[0] != v59.__r_.__value_.__l.__size_)
  {
    v25 = (v59.__r_.__value_.__l.__size_ - 4);
    if (v59.__r_.__value_.__l.__size_ - 4 > v59.__r_.__value_.__r.__words[0])
    {
      v26 = v59.__r_.__value_.__r.__words[0] + 4;
      do
      {
        v27 = *(v26 - 4);
        *(v26 - 4) = *v25;
        *v25-- = v27;
        v28 = v26 >= v25;
        v26 += 4;
      }

      while (!v28);
    }
  }

  v29 = *(a1 + 160);
  v30 = *(a1 + 64) / 2;
  v31 = (*(a1 + 64) + (*(a1 + 64) >> 31)) >> 1;
  v57[1] = 0;
  v58 = 0;
  v57[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v57, v29 - 4 * v30, v29, v31);
  if (v57[0] != v57[1])
  {
    v32 = v57[1] - 4;
    if (v57[1] - 4 > v57[0])
    {
      v33 = v57[0] + 4;
      do
      {
        v34 = *(v33 - 1);
        *(v33 - 1) = *v32;
        *v32 = v34;
        v32 -= 4;
        v28 = v33 >= v32;
        v33 += 4;
      }

      while (!v28);
    }
  }

  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1 + 152, *v21, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_, (v59.__r_.__value_.__l.__size_ - v59.__r_.__value_.__r.__words[0]) >> 2);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a1 + 152, *(a1 + 160), v57[0], v57[1], (v57[1] - v57[0]) >> 2);
  v35 = *(a1 + 152);
  v36 = *(a1 + 160);
  v37 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 3) * *(a1 + 48);
  if (v37 < v36 - v35)
  {
    std::vector<int>::resize((a1 + 152), v37);
    v35 = *(a1 + 152);
    v36 = *(a1 + 160);
  }

  if (v35 != v36)
  {
    v38 = v35;
    do
    {
      *v38 = *v38 / *(a1 + 60);
      ++v38;
    }

    while (v38 != v36);
    do
    {
      if (*v35 <= 1.0)
      {
        v39 = *v35;
      }

      else
      {
        v39 = 1.0;
      }

      if (*v35 >= -1.0)
      {
        v40 = v39;
      }

      else
      {
        v40 = -1.0;
      }

      *v35++ = v40;
    }

    while (v35 != v36);
  }

  SignalUtils::preemphasize((a1 + 152), v55);
  v41 = *v21;
  if (*v21)
  {
    *(a1 + 160) = v41;
    operator delete(v41);
    *v21 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  v42 = *v55;
  *(a1 + 152) = *v55;
  *(a1 + 168) = v56;
  v44 = *(&v42 + 1);
  v43 = v42;
  if (v42 != *(&v42 + 1))
  {
    v45 = v42;
    do
    {
      if (*v45 <= 1.0)
      {
        v46 = *v45;
      }

      else
      {
        v46 = 1.0;
      }

      if (*v45 >= -1.0)
      {
        v47 = v46;
      }

      else
      {
        v47 = -1.0;
      }

      *v45++ = v47;
    }

    while (v45 != *(&v42 + 1));
    do
    {
      *v43 = SignalUtils::mulaw_encode(v41, *v43, *(a1 + 68));
      ++v43;
    }

    while (v43 != v44);
    v42 = *v21;
  }

  v49 = *(&v42 + 1);
  v48 = v42;
  if (v42 != *(&v42 + 1))
  {
    do
    {
      *v48 = SignalUtils::quantization(*(a1 + 68), *v48);
      ++v48;
    }

    while (v48 != v49);
    v42 = *v21;
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 176), v42, *(&v42 + 1), (*(&v42 + 1) - v42) >> 2);
  v50 = *(a1 + 176);
  v51 = *(a1 + 184);
  if (v50 != v51)
  {
    do
    {
      *v50 = SignalUtils::dequantization(*v50, *(a1 + 68));
      v50 += 4;
    }

    while (v50 != v51);
    v50 = *(a1 + 176);
    v51 = *(a1 + 184);
  }

  *(a1 + 184) = v51 - 4;
  LODWORD(v55[0]) = 0;
  std::vector<float>::insert((a1 + 176), v50, v55);
  v52 = (*(a1 + 160) - *(a1 + 152)) >> 2;
  *(a1 + 76) = 0;
  *(a1 + 80) = v52;
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (v59.__r_.__value_.__r.__words[0])
  {
    v59.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*v18 + 8))(v18);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v62.__r_.__value_.__r.__words[0])
  {
    v62.__r_.__value_.__l.__size_ = v62.__r_.__value_.__r.__words[0];
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }
}

void sub_1F57C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  v46 = *(v44 - 144);
  if (v46)
  {
    *(v44 - 136) = v46;
    operator delete(v46);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (*(v44 - 57) < 0)
  {
    operator delete(*(v44 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataUtils::read_vector_from_file<float>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  std::ifstream::basic_ifstream(v6, a1);
  std::istream::tellg();
  if ((v5 & 3) != 0)
  {
    __assert_rtn("read_vector_from_file", "DataTensor.hpp", 217, "filesize%sizeof(T) == 0");
  }

  std::vector<float>::vector[abi:ne200100](a2, v5 >> 2);
  std::istream::seekg();
  v3 = *a2;
  std::istream::read();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v6 + *(v6[0] - 3)), *(&v6[4] + *(v6[0] - 3)) | 4);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void WaveRNNDataFeederV2::OneBatchReader::fetch_data(WaveRNNDataFeederV2::OneBatchReader *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(this + 10);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(this + 19) + *(this + 14) * i;
      v7 = *(this + 19);
      v8 = *(v7 + 4 * (v6 + 1));
      LODWORD(__p) = *(v7 + 4 * v6);
      std::vector<int>::push_back[abi:ne200100]((a2 + 48), &__p);
      LODWORD(__p) = v8;
      std::vector<int>::push_back[abi:ne200100]((a2 + 72), &__p);
      v9 = (*(this + 16) + 24 * (v6 / *(this + 12)));
      v16 = 0;
      v17 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v9, v9[1], (v9[1] - *v9) >> 2);
      std::vector<float>::push_back[abi:ne200100](&__p, (*(this + 22) + 4 * v6));
      std::vector<float>::push_back[abi:ne200100](&__p, (*(this + 22) + 4 * (v6 + 1)));
      std::vector<std::vector<float>>::push_back[abi:ne200100](a2 + 24, &__p);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      v4 = *(this + 10);
    }
  }

  v10 = *(this + 19);
  if (!v10)
  {
    *(a2 + 96) = 1;
  }

  v11 = *(this + 14);
  v12 = v10 + v11 * *(this + 11);
  *(this + 19) = v12;
  if (v12 + v11 * v4 >= *(this + 20))
  {
    v13 = *(this + 18) + 1;
    *(this + 18) = v13;
    v14 = *(this + 11);
    if (v13 >= (*(this + 12) - v14) >> 4)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
    }

    else
    {
      v14 += 16 * v13;
    }

    WaveRNNDataFeederV2::OneBatchReader::read_data(this, v14);
  }
}

void WaveRNNDataFeederV2::WaveRNNDataFeederV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DataFeederV2::DataFeederV2(a1, a2, a3, a4);
  *v6 = off_2848E8;
  v7 = *(a4 + 8);
  *(v6 + 144) = *a4;
  *(v6 + 152) = v7;
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 160), *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v8 = *(a4 + 16);
    *(v6 + 176) = *(a4 + 32);
    *(v6 + 160) = v8;
  }

  v9 = *(a4 + 40);
  v10 = *(a4 + 56);
  *(a1 + 216) = 0u;
  *(a1 + 184) = v9;
  *(a1 + 200) = v10;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  _ZNSt3__115allocate_sharedB8ne200100I19WaveRNNModelIONamesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void DataFeederV2::~DataFeederV2(DataFeederV2 *this)
{
  *this = &off_2848B0;
  v2 = *(this + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v3 = (this + 48);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void WaveRNNDataFeederV2::reset(WaveRNNDataFeederV2 *this)
{
  v2 = *(this + 30);
  for (i = *(this + 31); v2 != i; v2 += 2)
  {
    v4 = *v2;
    v5 = v2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    WaveRNNDataFeederV2::OneBatchReader::read_data(v4, *(v4 + 88));
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  std::vector<float>::vector[abi:ne200100](&__p, *(this + 49) * *(this + 36));
  v7 = *(this + 27);
  v6 = *(this + 28);
  while (v7 != v6)
  {
    if (v7 != &__p)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v7, __p, v9, (v9 - __p) >> 2);
    }

    v7 += 3;
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_1F61A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WaveRNNDataFeederV2::getData(WaveRNNDataFeederV2 *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  InferenceEngine::VectorOps::reshape_1d_to_2d<float>((*(this + 27) + 24 * a3), *(this + 49), v24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  LODWORD(v8) = *(this + 36);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      WaveRNNDataFeederV2::OneBatchReader::fetch_data(*(*(this + 30) + 16 * (v10 + v8 * a3)), &v13);
      if ((v24[0] + v9) != &v13)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v13, *(v24[0] + v9), *(v24[0] + v9 + 8), (*(v24[0] + v9 + 8) - *(v24[0] + v9)) >> 2);
      }

      if (v20 == 1 && v14 - v13 >= 1)
      {
        bzero(v13, v14 - v13);
      }

      v11 = v22;
      if (v22 >= v23)
      {
        v12 = std::vector<WaveRNNTrainDataV2>::__emplace_back_slow_path<WaveRNNTrainDataV2 const&>(&v21, &v13);
      }

      else
      {
        WaveRNNTrainData::WaveRNNTrainData(v22, &v13);
        v12 = (v11 + 104);
      }

      v22 = v12;
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      v25 = &v15;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v25);
      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      ++v10;
      v8 = *(this + 36);
      v9 += 24;
    }

    while (v10 < v8);
  }

  WaveRNNDataFeederV2::convert_to_tensor_data(this, a2, &v21, a4);
}

void sub_1F637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a9 = &a22;
  std::vector<WaveRNNTrainDataV2>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v22 - 112);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void WaveRNNDataFeederV2::convert_to_tensor_data(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 128);
  if (v8)
  {
    v9 = **v8;
    if (v10)
    {
      v11 = *(a1 + 136);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BatchWaveRNNTrainDataV2::BatchWaveRNNTrainDataV2(v19, a3);
  v12 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *v12;
    __str.__r_.__value_.__r.__words[2] = *(a1 + 176);
  }

  if (*(a1 + 152) == 1)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::resize(&__str, size + 100, 0);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 183) < 0)
    {
      v12 = *v12;
    }

    v15 = sprintf(p_str, v12, a2);
    std::string::basic_string(&v17, &__str, 0, v15, &__p);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v17;
  }

  InferenceEngine::DataTensor::build_from_2d_array<float>(v10 + 8, &v20);
}

void sub_1F6944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  BatchWaveRNNTrainData::~BatchWaveRNNTrainData(&a34);
  std::vector<std::shared_ptr<InferenceEngine::DataTensor>>::__destroy_vector::operator()[abi:ne200100](&a34);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

void WaveRNNDataFeederV2::save_output(void *a1, int a2, InferenceEngine::DataTensor ***a3)
{
  v6 = a1[16];
  if (v6)
  {
    v7 = **v6;
    if (v8)
    {
      v9 = a1[17];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11 = *a3;
  v10 = a3[1];
  if (v11 == v10)
  {
LABEL_26:
    v19 = 0;
    v20 = 0;
    goto LABEL_28;
  }

  while (1)
  {
    InferenceEngine::DataTensor::get_name(*v11, &__p);
    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v14 = *(v8 + 151);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = v8[17];
    }

    if (size != v14)
    {
      v18 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_24;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v15 >= 0)
    {
      v17 = v8 + 16;
    }

    else
    {
      v17 = v8[16];
    }

    v18 = memcmp(p_p, v17, size) == 0;
    if (v12 < 0)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v18)
    {
      break;
    }

    v11 += 2;
    if (v11 == v10)
    {
      goto LABEL_26;
    }
  }

  InferenceEngine::DataTensor::get_1d_array<float>(*v11, &__p.__r_.__value_.__l.__data_);
  v20 = __p.__r_.__value_.__l.__size_;
  v19 = __p.__r_.__value_.__r.__words[0];
LABEL_28:
  v21 = (a1[27] + 24 * a2);
  v22 = v21[1] - *v21;
  if (v22 != v20 - v19)
  {
    __assert_rtn("save_output", "DataFeederV2.cpp", 230, "batch_next_state_[grad_accu_step_idx].size() == next_state.size()");
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v21, v19, v20, v22 >> 2);
  if (v19)
  {
    operator delete(v19);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1F6C8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *InferenceEngine::DataTensor::override_data<float>(uint64_t a1, const void **a2)
{
  v4 = (a1 + 32);
  v5 = *(a1 + 55);
  if (v5 < 0)
  {
    if (*(a1 + 40) != 4)
    {
      goto LABEL_14;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
LABEL_14:
    InferenceEngine::DataTensor::override_data<float>();
  }

  if (*v4 != 842231910)
  {
    goto LABEL_14;
  }

  {
    InferenceEngine::DataTensor::override_data<float>();
  }

  v6 = a2[1] - *a2;
  if (InferenceEngine::DataTensor::get_size(a1) != v6 >> 2)
  {
    InferenceEngine::DataTensor::override_data<float>();
  }

  v7 = *a2;
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);

  return memcpy(v8, v7, v9);
}

void InferenceEngine::DataTensor::build_from_2d_array<int>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  __p[1] = ((v2[1] - *v2) >> 2);
  memset(v3, 0, sizeof(v3));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v3, __p, &v5, 2uLL);
  InferenceEngine::DataUtils::get_type_string<int>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1F6E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *InferenceEngine::DataTensor::override_data<int>(uint64_t a1, const void **a2)
{
  v4 = (a1 + 32);
  v5 = *(a1 + 55);
  if (v5 < 0)
  {
    if (*(a1 + 40) != 4)
    {
      goto LABEL_14;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
LABEL_14:
    InferenceEngine::DataTensor::override_data<float>();
  }

  if (*v4 != 842231910)
  {
    goto LABEL_14;
  }

  {
    InferenceEngine::DataTensor::override_data<float>();
  }

  v6 = a2[1] - *a2;
  if (InferenceEngine::DataTensor::get_size(a1) != v6 >> 2)
  {
    InferenceEngine::DataTensor::override_data<float>();
  }

  v7 = *a2;
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);

  return memcpy(v8, v7, v9);
}

void *_ZNSt3__120__shared_ptr_emplaceI19WaveRNNModelIONamesNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_284970;
  WaveRNNModelIONames::WaveRNNModelIONames((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<WaveRNNModelIONames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<WaveRNNModelIONames>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &off_284890;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void *std::__shared_ptr_emplace<WaveRNNDataFeederV2::OneBatchReader>::__shared_ptr_emplace[abi:ne200100]<boost::filesystem::path &,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> &,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u> &,WaveRNNDataFeederV2::Config &,std::allocator<WaveRNNDataFeederV2::OneBatchReader>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2849C0;
  WaveRNNDataFeederV2::OneBatchReader::OneBatchReader((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<WaveRNNDataFeederV2::OneBatchReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2849C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<WaveRNNDataFeederV2::OneBatchReader>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 152);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 112);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void std::vector<WaveRNNTrainDataV2>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<WaveRNNTrainDataV2>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<WaveRNNTrainDataV2>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<WaveRNNTrainData>>::destroy[abi:ne200100]<WaveRNNTrainData,0>(a1, i))
  {
    i -= 104;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<WaveRNNTrainDataV2>::__emplace_back_slow_path<WaveRNNTrainDataV2 const&>(uint64_t *a1, const WaveRNNTrainData *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<WaveRNNTrainDataV2>>(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  WaveRNNTrainData::WaveRNNTrainData((104 * v2), a2);
  v15 = (104 * v2 + 104);
  v7 = a1[1];
  v8 = 104 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WaveRNNTrainDataV2>,WaveRNNTrainDataV2*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<WaveRNNTrainDataV2>::~__split_buffer(&v13);
  return v12;
}

void sub_1F7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<WaveRNNTrainDataV2>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<WaveRNNTrainDataV2>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<WaveRNNTrainDataV2>,WaveRNNTrainDataV2*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 96) = *(v7 + 96);
      v7 += 104;
      a4 += 104;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<WaveRNNTrainData>>::destroy[abi:ne200100]<WaveRNNTrainData,0>(a1, v5);
      v5 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<WaveRNNTrainDataV2>,WaveRNNTrainDataV2*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<WaveRNNTrainDataV2>,WaveRNNTrainDataV2*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<WaveRNNTrainData>,WaveRNNTrainData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<WaveRNNTrainDataV2>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<WaveRNNTrainDataV2>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<WaveRNNTrainDataV2>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<WaveRNNTrainData>>::destroy[abi:ne200100]<WaveRNNTrainData,0>(v5, v4 - 104);
  }
}

void *InferenceEngine::VectorOps::flatten_2d_to_1d<int>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*a1 + 8) - **a1;
  result = std::vector<int>::vector[abi:ne200100](a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) * (v4 >> 2));
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      result = memcpy((*a2 + v7), *(v6 + v8), v4);
      ++v9;
      v6 = *a1;
      v8 += 24;
      v7 += 4 * (v4 >> 2);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v9);
  }

  return result;
}

void WaveRNNDataFeederV2::OneBatchReader::read_data(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Processing %s", &v3, 0xCu);
}

void InferenceEngine::DataTensor::override_data<float>()
{
  __assert_rtn("override_data", "DataTensor.hpp", 376, "0");
}

{
  __assert_rtn("override_data", "DataTensor.hpp", 374, "typeid(T) == typeid(float)");
}

{
  __assert_rtn("override_data", "DataTensor.hpp", 378, "data_1d_array.size() == get_size()");
}

uint64_t render_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v7 = *(a1 + 112);
  if (v7)
  {
    v8 = *(a6 + 12) >> 2;
    if (v8 >= a5)
    {
      v9 = a5;
    }

    else
    {
      v9 = v8;
    }

    LODWORD(v7) = 4 * std::function<unsigned long ()(unsigned long,float *)>::operator()(a1 + 88, v9, *(a6 + 16));
  }

  *(a6 + 12) = v7;
  return 0;
}

void EffectAudioUnitImpl::EffectAudioUnitImpl(EffectAudioUnitImpl *this, double a2, OSType a3, OSType a4, OSType a5)
{
  *this = &off_284A10;
  *(this + 14) = 0;
  inDesc.componentType = a3;
  inDesc.componentSubType = a4;
  *&inDesc.componentFlags = 0;
  inDesc.componentManufacturer = a5;
  if (registerInternalComponents(void)::once != -1)
  {
    EffectAudioUnitImpl::EffectAudioUnitImpl();
  }

  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to find AudioComponent!");
    goto LABEL_15;
  }

  if (AudioComponentInstanceNew(Next, this + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to instantiate AudioUnit!");
LABEL_15:
  }

  ioDataSize = 40;
  if (AudioUnitGetProperty(*(this + 1), 8u, 1u, 0, outData, &ioDataSize))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Failed to get stream format!");
    goto LABEL_19;
  }

  v19 = 1;
  *outData = a2;
  if (AudioUnitSetProperty(*(this + 1), 8u, 1u, 0, outData, 0x28u))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Failed to set input stream format!");
    goto LABEL_19;
  }

  if (AudioUnitSetProperty(*(this + 1), 8u, 2u, 0, outData, 0x28u))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Failed to set output stream format!");
LABEL_19:
  }

  inData = 0x2000;
  if (AudioUnitSetProperty(*(this + 1), 0xEu, 0, 0, &inData, 4u))
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Failed to set kAudioUnitProperty_MaximumFramesPerSlice");
    goto LABEL_22;
  }

  if (AudioUnitInitialize(*(this + 1)))
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Failed to initialize AudioUnit!");
LABEL_22:
  }

  v15[0] = render_callback;
  v15[1] = this;
  if (AudioUnitSetProperty(*(this + 1), 0x17u, 1u, 0, v15, 0x10u))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Failed to set render callback");
  }

  v14 = 0.0;
  v13 = 8;
  if (AudioUnitGetProperty(*(this + 1), 0xCu, 0, 0, &v14, &v13))
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Failed to get kAudioUnitProperty_Latency");
  }

  *(this + 4) = (v14 * a2);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 20) = 1;
}

void sub_1F7DC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__function::__value_func<unsigned long ()(unsigned long,float *)>::~__value_func[abi:ne200100](v1 + 88);
  _Unwind_Resume(a1);
}

void EffectAudioUnitImpl::~EffectAudioUnitImpl(AudioComponentInstance *this)
{
  *this = &off_284A10;
  AudioComponentInstanceDispose(this[1]);
  std::__function::__value_func<unsigned long ()(unsigned long,float *)>::~__value_func[abi:ne200100]((this + 11));
}

{
  EffectAudioUnitImpl::~EffectAudioUnitImpl(this);

  operator delete();
}

uint64_t EffectAudioUnitImpl::render(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  std::function<unsigned long ()(unsigned long,float *)>::operator=((a1 + 88), a4);
  *(&ioData.mNumberBuffers + 1) = 0;
  ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  ioData.mBuffers[0].mDataByteSize = 4 * a2;
  ioData.mBuffers[0].mData = a3;
  v7 = *(a1 + 24);
  for (LODWORD(v8) = *(a1 + 16); ; LODWORD(v8) = *(a1 + 16))
  {
    v9 = *&v8;
    if (v7 >= v9)
    {
      break;
    }

    if ((v9 - v7) >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = (v9 - v7);
    }

    if (AudioUnitRender(*(a1 + 8), 0, (a1 + 24), 0, v10, &ioData))
    {
      goto LABEL_10;
    }

    ioData.mBuffers[0].mDataByteSize = 4 * a2;
    v8 = *(a1 + 24);
    v7 = v8 + v10;
    *(a1 + 24) = v7;
  }

  if (AudioUnitRender(*(a1 + 8), 0, (a1 + 24), 0, a2, &ioData))
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to render");
  }

  *(a1 + 24) = *(a1 + 24) + a2;
  return std::__function::__value_func<unsigned long ()(unsigned long,float *)>::operator=[abi:ne200100](a1 + 88);
}

void *std::function<unsigned long ()(unsigned long,float *)>::operator=(void *a1, uint64_t a2)
{
  std::__function::__value_func<unsigned long ()(unsigned long,float *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<unsigned long ()(unsigned long,float *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<unsigned long ()(unsigned long,float *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::function<unsigned long ()(unsigned long,float *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void ___ZL26registerInternalComponentsv_block_invoke(id a1)
{
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (v1)
  {
    v2 = dlsym(v1, "RegisterAudioUnits_Internal");
    if (v2)
    {

      v2();
      return;
    }

    v3 = __stderrp;
    v4 = "Unable to link RegisterAudioUnits_Internal from AudioDSP";
    v5 = 56;
  }

  else
  {
    v3 = __stderrp;
    v4 = "Can't open AudioDSP for component registration!";
    v5 = 47;
  }

  fwrite(v4, v5, 1uLL, v3);
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long,float *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<unsigned long ()(unsigned long,float *)>::swap[abi:ne200100](void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1F8470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<unsigned long ()(unsigned long,float *)>::operator=[abi:ne200100](uint64_t a1)
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

std::string::size_type Checkpointable::Checkpointable(std::string::size_type a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 32));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  boost::filesystem::path::path(__p, "checkpointable.json");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v11;
  }

  boost::filesystem::path::append_v3(&v12, __p);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  *(&v12.__r_.__value_.__s + 23) = 0;
  v12.__r_.__value_.__s.__data_[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  Checkpointable::has_checkpoint_sync(a1);
  LogObject = Diagnostics_GetLogObject();
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v6 = a1;
    if (*(a1 + 23) < 0)
    {
      v6 = *a1;
    }

    v7 = *(a1 + 24);
    LODWORD(v12.__r_.__value_.__l.__data_) = 136315394;
    *(v12.__r_.__value_.__r.__words + 4) = v6;
    WORD2(v12.__r_.__value_.__r.__words[1]) = 1024;
    *(&v12.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Checkpoint path: %s, has_checkpoint: %d", &v12, 0x12u);
  }

  Checkpointable::load_checkpoint(a1);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1F86C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v29);
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

uint64_t Checkpointable::has_checkpoint_sync(std::string *this)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, this);
  std::__fs::filesystem::__status(&__p, 0);
  if (v6)
  {
    v2 = v6 == 255;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  this[1].__r_.__value_.__s.__data_[0] = v3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v3 = this[1].__r_.__value_.__s.__data_[0];
  }

  return v3 & 1;
}

void sub_1F87B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Checkpointable::load_checkpoint(Checkpointable *this)
{
  if (*(this + 24) == 1)
  {
    TrainingUtils::read_json_from_file(this, v14);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
    v3 = *(this + 32);
    v2 = this + 32;
    *v2 = v14[0];
    v14[0] = v3;
    v4 = *(v2 + 1);
    *(v2 + 1) = v15;
    v15 = v4;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v14);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v15, v14[0]);
    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      boost::filesystem::path::path(v11, "stage_key");
      v6 = &v13;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v2, v11, &v13);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v13.__r_.__value_.__r.__words[0];
      }

      boost::filesystem::path::path(__p, "step_key");
      v8 = 0;
      v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v2, __p, &v8);
      *buf = 136315394;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Checkpoint: %s : %d", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }
  }
}

void sub_1F896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void Checkpointable::write_checkpoint()
{
  v1[0] = 0;
  v2 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string const&,std::string,0>(v0);
}

void sub_1F8BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t Checkpointable::should_skip_stage(std::string *a1, const void **a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] != 1)
  {
    return 0;
  }

  v3 = &a1[1].__r_.__value_.__s.__data_[8];
  if (!a1[1].__r_.__value_.__s.__data_[8])
  {
    return 0;
  }

  boost::filesystem::path::path(v19, "stage_key");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v3, v19, &__p);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    v11 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v5 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v11 = memcmp(v9, p_p, v6) == 0;
  if (v8 < 0)
  {
LABEL_18:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:
  if (v20 < 0)
  {
    operator delete(v19[0]);
    if (v11)
    {
      goto LABEL_21;
    }
  }

  else if (v11)
  {
LABEL_21:
    boost::filesystem::path::path(&__p, "step_key");
    LODWORD(v19[0]) = 0;
    v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v3, &__p.__r_.__value_.__l.__data_, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 == -1)
    {
      Checkpointable::remove_checkpoint(a1);
    }

    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Checkpoint hit: %s", &__p, 0xCu);
    }

    return 0;
  }

  v17 = Diagnostics_GetLogObject();
  v15 = 1;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v18;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Checkpoint skip: %s", &__p, 0xCu);
  }

  return v15;
}

void sub_1F8E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Checkpointable::remove_checkpoint(std::string *this)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      v3 = this;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = this->__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v3;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Removing checkpoint: %s", &__p, 0xCu);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, this);
    std::__fs::filesystem::__remove_all(&__p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4 = Diagnostics_GetLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Checkpoint removed", &__p, 2u);
    }
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
}

void sub_1F8F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Checkpointable::get_checkpoint_stage_step(std::string *a1, const void **a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] != 1)
  {
    return 0;
  }

  v3 = &a1[1].__r_.__value_.__s.__data_[8];
  if (!a1[1].__r_.__value_.__s.__data_[8])
  {
    return 0;
  }

  boost::filesystem::path::path(v18, "stage_key");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v3, v18, &__p);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    v11 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v5 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v11 = memcmp(v9, p_p, v6) == 0;
  if (v8 < 0)
  {
LABEL_18:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (!v11)
  {
LABEL_29:
    LogObject = Diagnostics_GetLogObject();
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Checkpoint not found: %s", &__p, 0xCu);
    }

    return 0;
  }

LABEL_21:
  boost::filesystem::path::path(&__p, "step_key");
  LODWORD(v18[0]) = 0;
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<int,0>(v3, &__p.__r_.__value_.__l.__data_, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Checkpointable::remove_checkpoint(a1);
  v13 = Diagnostics_GetLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v14;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Checkpoint hit: %s : %d", &__p, 0x12u);
  }

  return v12;
}

void sub_1F91D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::SoundStormIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v34, a2);
  InferenceEngine::BaseIOProcessor::BaseIOProcessor(a1, v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v34);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v35, v34[0]);
  *a1 = off_284A80;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v32, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
  v4 = *(a1 + 24);
  *(a1 + 24) = v32[0];
  v32[0] = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = v33;
  v33 = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 24));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v32);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v33, v32[0]);
  v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "inference_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v6, &v30);
  v7 = v30;
  if (v30 == v31)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v7++;
      v8 += v9;
    }

    while (v7 != v31);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a2, "loop");
  LODWORD(__src) = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v10, &__src);
  if (v8 == __src)
  {
    LODWORD(__p[0]) = 0;
    v28 = 0;
    v29 = 0;
    __src = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__src, __p, __p + 4, 1uLL);
    v11 = v30;
    if (v31 - v30 == 4)
    {
      v12 = v28;
    }

    else
    {
      v13 = 0;
      v12 = v28;
      do
      {
        v14 = __src;
        v15 = v11[v13] + *(__src + v13);
        if (v12 >= v29)
        {
          v16 = v12 - __src;
          v17 = (v12 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v19 = v29 - __src;
          if ((v29 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v18);
          }

          v20 = (v12 - __src) >> 2;
          v21 = (4 * v17);
          v22 = (4 * v17 - 4 * v20);
          *v21 = v15;
          v12 = v21 + 1;
          memcpy(v22, v14, v16);
          v23 = __src;
          __src = v22;
          v28 = v12;
          v29 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12++ = v15;
        }

        v28 = v12;
        ++v13;
        v11 = v30;
      }

      while (((v31 - v30) >> 2) - 1 > v13);
    }

    v26 = 0;
    v25 = 2;
    __p[0] = __src;
    v35[1] = v12;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>();
  }

  __assert_rtn("SoundStormIOProcessor", "SoundStormIOProcessor.cpp", 22, "std::reduce(inference_schedule.begin(), inference_schedule.end()) == model_parameters[loop].get<int>()");
}

void sub_1F96D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v27);
  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(v26);
  _Unwind_Resume(a1);
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>,0>(a1, a2);
}

void sub_1F97C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::~SoundStormIOProcessor(InferenceEngine::SoundStormIOProcessor *this)
{
  *this = off_284A80;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 24);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 4, *(this + 24));

  InferenceEngine::BaseIOProcessor::~BaseIOProcessor(this);
}

void InferenceEngine::SoundStormIOProcessor::build_vq_target(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, InferenceEngine::DataTensor **a4@<X8>)
{
  boost::filesystem::path::path(v20, "pred_semantic");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v20);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p.__r_.__value_.__l.__data_);
  v9 = *(__p.__r_.__value_.__r.__words[0] + 8);
  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  if (!a3)
  {
    v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "num_vqs");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, &v18);
    v14 = v18;
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v15, &v18);
    v19 = v18;
    std::vector<float>::vector[abi:ne200100](v20, v14);
    std::vector<std::vector<float>>::vector[abi:ne200100](&__p, v9);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    boost::filesystem::path::path(v20, "vq_tokens");
    InferenceEngine::DataTensor::build_from_2d_array<float>(v20, &__p);
  }

  boost::filesystem::path::path(&__p, "vq_tokens");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p.__r_.__value_.__l.__data_);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v12;
  a4[1] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  InferenceEngine::DataTensor::get_name(v12, &__p);
  v20[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_);
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = v16[6];
  v16[5] = v12;
  v16[6] = v11;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1F9A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = &a19;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::SoundStormIOProcessor::build_q_token_mask(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  boost::filesystem::path::path(&v20, "pred_semantic");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
  v9 = *(__p + 1);
  v22 = __p;
  operator delete(__p);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
  if (v22 == __p)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (*(__p + v11) == a3)
      {
        std::vector<float>::vector[abi:ne200100](v19, v9);
        std::vector<std::vector<float>>::vector[abi:ne200100](&v20, 1uLL);
        if (v19[0])
        {
          v19[1] = v19[0];
          operator delete(v19[0]);
        }

        boost::filesystem::path::path(v19, "q_token_mask");
        InferenceEngine::DataTensor::build_from_2d_array<float>(v19, &v20);
      }

      ++v11;
    }

    while (v11 < (v22 - __p) >> 2);
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  boost::filesystem::path::path(&v20, "q_token_mask");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v12[5];
  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v15 = *a4;
  InferenceEngine::DataTensor::get_name(*a4, &v20);
  v19[0] = &v20;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v20.__r_.__value_.__l.__data_);
  v17 = *(a4 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = v16[6];
  v16[5] = v15;
  v16[6] = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_1F9DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_layer_q(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v4, &v14);
  v5 = (v15 - v14) >> 2;
  if (v5 >= 2)
  {
    v6 = (v14 + 4);
    v7 = -v5;
    v8 = -1;
    do
    {
      if (*(v6 - 1) <= a2 && *v6 > a2)
      {
        boost::filesystem::path::path(v13, "layer_q");
        v9 = -v8 + -1.0;
        v11 = 0;
        v12 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, &v9, &__p, 1uLL);
        InferenceEngine::DataTensor::build_from_1d_array<float>(v13, &__p);
      }

      --v8;
      ++v6;
    }

    while (v7 != v8);
  }

  boost::filesystem::path::path(v13, "layer_q");
  v9 = ((v15 - v14) >> 2) + -1.0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, &v9, &__p, 1uLL);
  InferenceEngine::DataTensor::build_from_1d_array<float>(v13, &__p);
}

void sub_1FA0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  v25 = *(v21 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_k_tensor(uint64_t a1, void *a2, int a3)
{
  boost::filesystem::path::path(&v27, "layer_q");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v27);
  if (v6)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(v6[5], &__p);
    v7 = *__p;
    v31 = __p;
    operator delete(__p);
    if (v29 < 0)
    {
      operator delete(v27);
    }

    boost::filesystem::path::path(&v27, "pred_data");
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v27);
    if (v8)
    {
      InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
      v9 = *(__p + 1);
      v31 = __p;
      operator delete(__p);
      if (v29 < 0)
      {
        operator delete(v27);
      }

      v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
      boost::filesystem::path::path(&v27, "q_token_mask");
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v27);
      if (v11)
      {
        v12 = v7;
        v14 = v11[5];
        v13 = v11[6];
        if (v13)
        {
          atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
        }

        if (v29 < 0)
        {
          operator delete(v27);
        }

        v15 = *(__p + v12);
        v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "inference_schedule");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v16, &v27);
        v17 = a3 - v15;
        v18 = v27;
        v19 = (v17 + 1.0) / *(v27 + v12);
        v20 = cos(v19 * 3.14159265 * 0.5);
        v28 = v18;
        operator delete(v18);
        InferenceEngine::DataTensor::accumulate_sum(v14);
        v22 = v21;
        InferenceEngine::DataTensor::get_shape(v14, 0, &v27);
        v23 = *v27;
        v28 = v27;
        operator delete(v27);
        boost::filesystem::path::path(&v27, "k_tensor");
        v24 = v20;
        v25 = (v9 - v22 / v23 - (v9 * v24));
        memset(v26, 0, sizeof(v26));
        std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v26, &v25, v26, 1uLL);
        InferenceEngine::DataTensor::build_from_1d_array<float>(&v27, v26);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FA4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v20 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_pred_data(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(&v24, "pred_semantic");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    boost::filesystem::path::path(&v24, "vq_tokens");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      boost::filesystem::path::path(&v24, "q_token_mask");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
      if (v9)
      {
        v11 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_shape(v5, 0, &v24);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        InferenceEngine::DataTensor::unsqueeze(v5, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v5, &v21);
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v24, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
        v18 = &v21;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v18);
        InferenceEngine::DataTensor::get_3d_array<float>(v8, &v18);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v21, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 3));
        v17[0] = &v18;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](v17);
        InferenceEngine::DataTensor::squeeze(v5, 2);
        InferenceEngine::DataTensor::unsqueeze(v11, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v11, v17);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v18, *v17[0], v17[0][1], 0xAAAAAAAAAAAAAAABLL * ((v17[0][1] - *v17[0]) >> 3));
        __p[0] = v17;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](__p);
        InferenceEngine::DataTensor::squeeze(v11, 2);
        memset(v15, 0, sizeof(v15));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v15, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v15, v14, 1, v16);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v16, v13, 1, v17);
        __p[0] = v13;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v16;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v14;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v15;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        boost::filesystem::path::path(__p, "pred_data");
        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v17);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FA9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v34 + 8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  __p = &a28;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a28 = &a31;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = v35 - 144;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v35 - 144) = v35 - 120;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_1FAB58()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1FAB38);
}

void sub_1FAB70()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1FAB44);
}

void sub_1FAB88()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x1FAB50);
}

char ***InferenceEngine::VectorOps::concatenate_vectors_2d<float>@<X0>(char ***result@<X0>, uint64_t **a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = result;
  if (a3 == 1)
  {
    v10 = *result;
    v11 = result[1];
    if (v11 - *result != a2[1] - *a2)
    {
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v11 != v10)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        std::vector<std::vector<float>>::push_back[abi:ne200100](a4, &v10[v12]);
        result = std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(*a4 + v12 * 8, *(*a4 + v12 * 8 + 8), (*a2)[v12], (*a2)[v12 + 1], ((*a2)[v12 + 1] - (*a2)[v12]) >> 2);
        ++v13;
        v10 = *v5;
        v12 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5) > v13);
    }
  }

  else
  {
    if (a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      InferenceEngine::StringFormatter::StringFormatter(&v15, "dimension can only be 0 or 1 for concatenate_vectors_2d");
      std::logic_error::logic_error(exception, &v15);
    }

    v7 = *result;
    v8 = *a2;
    if ((*result)[1] - **result != (*a2)[1] - **a2)
    {
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (a4 == result)
    {
      v9 = 0;
    }

    else
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a4, v7, result[1], 0xAAAAAAAAAAAAAAABLL * (result[1] - v7));
      v9 = a4[1];
      v8 = *a2;
    }

    return std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(a4, v9, v8, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v8) >> 3));
  }

  return result;
}

void sub_1FAD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void InferenceEngine::SoundStormIOProcessor::build_pred_lens(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(v6, "pred_data");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v6);
  if (v3)
  {
    InferenceEngine::DataTensor::get_shape(v3[5], 0, __p);
    v4 = *(__p[0] + 1);
    __p[1] = __p[0];
    operator delete(__p[0]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    boost::filesystem::path::path(__p, "pred_lens");
    v5 = v4;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v6, &v5, v6, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v6);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FAF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_prompt_data(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(&v16, "prompt_semantic");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v16);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    boost::filesystem::path::path(&v16, "prompt_vq");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v16);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }

      InferenceEngine::DataTensor::unsqueeze(v5, 2);
      InferenceEngine::DataTensor::get_3d_array<float>(v5, &v13);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v16, *v13, v13[1], 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3));
      v12[0] = &v13;
      std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](v12);
      InferenceEngine::DataTensor::get_3d_array<float>(v8, v12);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v13, *v12[0], v12[0][1], 0xAAAAAAAAAAAAAAABLL * ((v12[0][1] - *v12[0]) >> 3));
      __p[0] = v12;
      std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](__p);
      InferenceEngine::DataTensor::squeeze(v5, 2);
      memset(v11, 0, sizeof(v11));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v11, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
      memset(v10, 0, sizeof(v10));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v11, v10, 1, v12);
      __p[0] = v10;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v11;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
      boost::filesystem::path::path(__p, "prompt_data");
      InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v12);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FB278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  __p = &a21;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = v27 - 88;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1FB340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a9 = &a18;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  JUMPOUT(0x1FB310);
}

void sub_1FB360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  a18 = &a21;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  JUMPOUT(0x1FB320);
}

void sub_1FB38C()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1FB32CLL);
}

void sub_1FB3A4()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x1FB338);
}

void InferenceEngine::SoundStormIOProcessor::build_prompt_lens(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(v6, "prompt_data");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v6);
  if (v3)
  {
    InferenceEngine::DataTensor::get_shape(v3[5], 0, __p);
    v4 = *(__p[0] + 1);
    __p[1] = __p[0];
    operator delete(__p[0]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    boost::filesystem::path::path(__p, "prompt_lens");
    v5 = v4;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v6, &v5, v6, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v6);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FB520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::update_vq_target(uint64_t a1, void *a2, void *a3)
{
  boost::filesystem::path::path(&__p, "q_token_mask");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p);
  if (v5)
  {
    v6 = v5[6];
    v29 = v5[5];
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    if (v36 < 0)
    {
      operator delete(__p);
    }

    boost::filesystem::path::path(&__p, "layer_q");
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p);
    if (v7)
    {
      v9 = v7[5];
      v8 = v7[6];
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      if (v36 < 0)
      {
        operator delete(__p);
      }

      boost::filesystem::path::path(&__p, "pred_code");
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p);
      if (v10)
      {
        v12 = v10[5];
        v11 = v10[6];
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        boost::filesystem::path::path(&__p, "index_b");
        v13 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p);
        if (v13)
        {
          v14 = v13[5];
          v15 = v13[6];
          if (v15)
          {
            atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
          }

          if (v36 < 0)
          {
            operator delete(__p);
          }

          boost::filesystem::path::path(&__p, "index_t");
          v16 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p);
          if (v16)
          {
            v18 = v16[5];
            v17 = v16[6];
            if (v17)
            {
              atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
            }

            if (v36 < 0)
            {
              operator delete(__p);
            }

            InferenceEngine::DataTensor::get_1d_array<int>(v12, &__p);
            InferenceEngine::DataTensor::get_1d_array<int>(v14, &v32);
            InferenceEngine::DataTensor::get_1d_array<int>(v18, v31);
            if (v33 - v32 == v31[1] - v31[0])
            {
              if (v33 - v32 == v35 - __p)
              {
                InferenceEngine::DataTensor::get_1d_array<float>(v9, v30);
                v19 = *v30[0];
                v30[1] = v30[0];
                operator delete(v30[0]);
                InferenceEngine::DataTensor::get_2d_array<float>(v29, v30);
                if (v35 != __p)
                {
                  v21 = 0;
                  if (((v35 - __p) >> 2) <= 1)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v22 = (v35 - __p) >> 2;
                  }

                  v23 = v30[0];
                  do
                  {
                    v24 = *(v32 + v21);
                    v25 = *(v31[0] + v21);
                    if (*(v23[3 * v24] + 4 * v25) != 0.0)
                    {
                      LogObject = InferenceEngine::Diagnostics_GetLogObject(v20);
                      v20 = os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR);
                      if (v20)
                      {
                        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v24;
                        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
                        *(&buf.__r_.__value_.__r.__words[1] + 2) = v25;
                        _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "Duplicate value in index_t found in the outputs! q_mask_vector[%d][%d] is already predicted!", &buf, 0xEu);
                      }
                    }

                    v23 = v30[0];
                    *(*(v30[0] + 3 * v24) + 4 * v25) = 1065353216;
                    *(*(*(*a3 + 24 * v24) + 24 * v25) + 4 * v19) = *(__p + v21++);
                  }

                  while (v22 != v21);
                }

                InferenceEngine::DataTensor::get_name(v29, &buf);
                InferenceEngine::DataTensor::build_from_2d_array<float>(&buf, v30);
              }

              v27 = "top_k_b_index_vector.size() == top_k_pred_code_vector.size()";
              v28 = 178;
            }

            else
            {
              v27 = "top_k_b_index_vector.size() == top_k_t_index_vector.size()";
              v28 = 177;
            }

            __assert_rtn("update_vq_target", "SoundStormIOProcessor.cpp", v28, v27);
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FBAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v35 - 121) < 0)
  {
    operator delete(*(v35 - 144));
  }

  *(v35 - 144) = &a20;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::SoundStormIOProcessor::process_inputs(uint64_t a1, void *a2, uint64_t a3)
{
  boost::filesystem::path::path(buf, "pred_semantic");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, buf);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*buf);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, buf);
  v9 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "SoundStormIOProcessor.cpp", 205, "B == 1");
  }

  (*(*a1 + 16))(&v49, a1, a2, a3);
  (*(*a1 + 24))(&v47, a1, a2, a3);
  (*(*a1 + 32))(&v45, a1, a2, a3);
  (*(*a1 + 48))(&v43, a1, a2, a3);
  (*(*a1 + 64))(&v41, a1, a2, a3);
  (*(*a1 + 40))(&v39, a1, a2, a3);
  InferenceEngine::DataTensor::get_1d_array<float>(v39, buf);
  v10 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v10 >= 1.0)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(v45, buf);
    v14 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "prompt_attention");
    buf[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v15, buf);
    if (buf[0] == 1)
    {
      boost::filesystem::path::path(&v38, "prompt_k_");
      std::to_string(&v37, v14);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v37;
      }

      else
      {
        v16 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v38, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v52 = v18->__r_.__value_.__r.__words[2];
      *buf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(&v37, "prompt_v_");
      std::to_string(&__p, v14);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, p_p, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, buf);
      if (!v24)
      {
        goto LABEL_73;
      }

      boost::filesystem::path::path(&v37, "prompt_k");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_);
      v27 = v24[5];
      v26 = v24[6];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = v25[6];
      v25[5] = v27;
      v25[6] = v26;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v29 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v38.__r_.__value_.__l.__data_);
      if (!v29)
      {
LABEL_73:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      boost::filesystem::path::path(&v37, "prompt_v");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_);
      v32 = v29[5];
      v31 = v29[6];
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }

      v33 = v30[6];
      v30[5] = v32;
      v30[6] = v31;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      (*(*a1 + 56))(buf, a1, a2, a3);
      (*(*a1 + 72))(&v38, a1, a2, a3);
      if (v38.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38.__r_.__value_.__l.__size_);
      }

      v30 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    LogObject = InferenceEngine::Diagnostics_GetLogObject(v30);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Prepare SoundStorm inputs finished for loop %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    v13 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Skip loop %d", buf, 8u);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v13;
}

void sub_1FC29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v39 = *(v37 - 112);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  boost::filesystem::path::path(__p, "vq_tokens");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, __p);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    boost::filesystem::path::path(__p, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, __p);
    if (v9)
    {
      v10 = v9[6];
      v11 = v9[5];
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v11, a3);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v8, __p);
      (*(*a1 + 80))(a1, a2, __p);
      InferenceEngine::DataTensor::get_name(v8, &buf);
      InferenceEngine::DataTensor::build_from_3d_array<float>(&buf, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1FC6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a13;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1FC760(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1FC758);
}

void InferenceEngine::SoundStormIOProcessor::check_outputs<int>(uint64_t a1, InferenceEngine::DataTensor **a2, int a3)
{
  v6 = *a2;
  v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
  v15[0] = 0;
  nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v7, v15);
  v8 = InferenceEngine::DataTensor::contain_value<int>(v6, v15[0]);
  v9 = v8;
  if (v8 >= 1)
  {
    LogObject = InferenceEngine::Diagnostics_GetLogObject(v8);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
      v15[0] = 0;
      nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, v15);
      v14 = v15[0];
      v15[0] = 67109632;
      v15[1] = v9;
      v16 = 1024;
      v17 = v14;
      v18 = 1024;
      v19 = a3;
      _os_log_error_impl(&dword_0, LogObject, OS_LOG_TYPE_ERROR, "Found %d appearances of invalid value %d in loop %d", v15, 0x14u);
    }
  }

  v11 = InferenceEngine::DataTensor::contain_nan<int>(*a2);
  if (v11 >= 1)
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(v9, a3, v12);
    }
  }
}

double nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>,0>(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  return nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>>(a1, a2);
}

void sub_1FC9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<int>>(unsigned __int8 *a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  std::vector<int>::reserve(&v13, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v12, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v12);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v11);
  for (i = v13.__end_; !nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v12, v11); i = v8 + 1)
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v12);
    __x = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &__x);
    v7.__i_ = i;
    v8 = std::vector<int>::insert(&v13, v7, &__x).__i_;
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v12);
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v9;
    operator delete(v9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v13.__begin_;
  *a2 = v13;
  return result;
}

void sub_1FCB38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<int>::emplace_back<int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_1FCCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<int>::emplace_back<int>(void *result, _DWORD *a2)
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
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1FCEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,int const*,int const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 8) = 0;
      v7 = *v6++;
      *v4 = 5;
      *(v4 + 8) = v7;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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
    operator new();
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

void sub_1FD238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::DataTensor::contain_value<int>(InferenceEngine::DataTensor *a1, float a2)
{
  InferenceEngine::DataTensor::get_1d_array<int>(a1, &v7);
  if (v7 == v8)
  {
    v3 = 0;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_8;
  }

  LODWORD(v3) = 0;
  v4 = v7;
  do
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      v3 = (v3 + 1);
    }

    else
    {
      v3 = v3;
    }
  }

  while (v4 != v8);
  if (v7)
  {
LABEL_8:
    v8 = v7;
    operator delete(v7);
  }

  return v3;
}

uint64_t InferenceEngine::DataTensor::contain_nan<int>(InferenceEngine::DataTensor *a1)
{
  InferenceEngine::DataTensor::get_1d_array<int>(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void InferenceEngine::VectorOps::concatenate_vectors_2d<float>()
{
  __assert_rtn("concatenate_vectors_2d", "VectorOps.h", 114, "matrix1.size() == matrix2.size()");
}

{
  __assert_rtn("concatenate_vectors_2d", "VectorOps.h", 112, "matrix1[0].size() == matrix2[0].size()");
}

void InferenceEngine::SoundStormIOProcessor::check_outputs<int>(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Found %d appearances of nan in loop %d", v3, 0xEu);
}

void InferenceEngine::mil2bnns_compiled_model_directory(std::__fs::filesystem::path *a1@<X8>)
{
  v12 = "/private/var/mobile/";
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v8, &v12);
  std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v7.__pn_, "Library");
  std::__fs::filesystem::operator/[abi:ne200100](&v7, &v8, &v9);
  std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v6.__pn_, "Caches");
  std::__fs::filesystem::operator/[abi:ne200100](&v6, &v9, &buffer);
  std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v5.__pn_, "SiriTTS");
  std::__fs::filesystem::operator/[abi:ne200100](&v5, &buffer, &v10);
  std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&__p, "BNNSModels");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v10, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buffer.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buffer.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v3 = MGGetStringAnswer();
  CFStringGetCString(v3, &buffer, 16, 0x8000100u);
  CFRelease(v3);
  std::__fs::filesystem::path::path[abi:ne200100]<char [11],void>(&v10.__pn_, &buffer);
  std::__fs::filesystem::operator/[abi:ne200100](&v10, &v11, a1);
  if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1FD5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 97) < 0)
  {
    operator delete(*(v45 - 120));
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::bnns_log_fn(InferenceEngine *a1, uint64_t a2, const char *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = "";
  }

  if (a1 == 8 || a1 == 2)
  {
    LogObject = InferenceEngine::Diagnostics_GetLogObject(a1);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
    {
      InferenceEngine::bnns_log_fn(a2, v4, LogObject);
    }
  }
}

uint64_t InferenceEngine::Mil2BnnsMilIO::Mil2BnnsMilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5, int a6)
{
  v8 = InferenceEngine::MilIO::MilIO(a1, a2, a3, a4, a5);
  *v8 = off_284B10;
  v8[17] = 0;
  v8[18] = 0;
  if (a6)
  {
    operator new();
  }

  return a1;
}

void sub_1FD838(_Unwind_Exception *a1)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  InferenceEngine::MilIO::~MilIO(v1);
  _Unwind_Resume(a1);
}

void InferenceEngine::MilIO::~MilIO(void **this)
{
  *this = off_284BF0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  InferenceEngine::DataTensor::~DataTensor(this);
}

{
  *this = off_284BF0;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  InferenceEngine::DataTensor::~DataTensor(this);

  operator delete();
}

int *InferenceEngine::Mil2BnnsMilIO::set_framework_specific_buffer(InferenceEngine::Mil2BnnsMilIO *this)
{
  v2 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) == 4 && **v2 == 842231910)
    {
      v7 = 65568;
      goto LABEL_25;
    }

    if (*(this + 5) == 4 && **v2 == 909209702)
    {
      v7 = 65552;
      goto LABEL_25;
    }

    if (*(this + 5) != 5)
    {
      goto LABEL_19;
    }

    v3 = *v2;
  }

  else
  {
    if (*(this + 55) == 4)
    {
      v7 = 65552;
      if (*v2 == 842231910)
      {
        v7 = 65568;
      }

      else if (*v2 != 909209702)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

    v3 = (this + 32);
    if (*(this + 55) != 5)
    {
      goto LABEL_19;
    }
  }

  v4 = *v3;
  v5 = *(v3 + 4);
  if (v4 != 863268457 || v5 != 50)
  {
LABEL_19:
    v8 = this + 32;
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v16, "dtype %s not supported", v8);
    std::logic_error::logic_error(exception, &v16);
  }

  v7 = 131104;
LABEL_25:
  v10 = 163841;
  *(*(this + 17) + 144) = v7;
  result = InferenceEngine::DataTensor::get_rank(this);
  if (result == (&dword_4 + 1))
  {
    v10 = 360449;
  }

  else
  {
    result = InferenceEngine::DataTensor::get_rank(this);
    if (result == &dword_4)
    {
      v10 = 294913;
    }

    else
    {
      result = InferenceEngine::DataTensor::get_rank(this);
      if (result == (&dword_0 + 3))
      {
        v10 = 229377;
      }

      else
      {
        result = InferenceEngine::DataTensor::get_rank(this);
        if (result != (&dword_0 + 2))
        {
          result = InferenceEngine::DataTensor::get_rank(this);
          if (result != (&dword_0 + 1))
          {
            v15 = __cxa_allocate_exception(0x10uLL);
            InferenceEngine::StringFormatter::StringFormatter(&v16, "shape rank %ld not supported", (*(this + 8) - *(this + 7)) >> 3);
            std::logic_error::logic_error(v15, &v16);
          }

          v10 = 98305;
        }
      }
    }
  }

  v12 = *(this + 17);
  *(v12 + 4) = v10;
  *(v12 + 136) = *(this + 11);
  v13 = *(this + 7);
  v14 = *(this + 8);
  if (v14 != v13)
  {

    return memmove((v12 + 8), v13, v14 - v13);
  }

  return result;
}

void sub_1FDB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer(InferenceEngine::Mil2BnnsMilIO *this)
{
  v2 = *(this + 17);
  v3 = *(v2 + 144);
  if (v3 == 65552)
  {
    v8 = (this + 32);
    v9 = *(this + 55);
    if (v9 < 0)
    {
      if (*(this + 5) != 4)
      {
        goto LABEL_23;
      }

      v8 = *v8;
    }

    else if (v9 != 4)
    {
      goto LABEL_23;
    }

    if (*v8 == 909209702)
    {
      goto LABEL_27;
    }

LABEL_23:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (v3 == 131104)
  {
    v6 = this + 32;
    v7 = *(this + 55);
    if (v7 < 0)
    {
      if (*(this + 5) != 5)
      {
        goto LABEL_19;
      }

      v6 = *v6;
    }

    else if (v7 != 5)
    {
      goto LABEL_19;
    }

    v10 = *v6;
    v11 = v6[4];
    if (v10 == 863268457 && v11 == 50)
    {
      goto LABEL_27;
    }

LABEL_19:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (v3 != 65568)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v18 = this + 32;
    if (*(this + 55) < 0)
    {
      v18 = *v18;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v38, "dtype %s not supported", v18);
    std::logic_error::logic_error(exception, &v38);
  }

  v4 = (this + 32);
  v5 = *(this + 55);
  if (v5 < 0)
  {
    if (*(this + 5) != 4)
    {
      goto LABEL_51;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
LABEL_51:
    InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer();
  }

  if (*v4 != 842231910)
  {
    goto LABEL_51;
  }

LABEL_27:
  HIDWORD(v14) = *(v2 + 4) - 32769;
  LODWORD(v14) = HIDWORD(v14);
  v13 = v14 >> 16;
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 32, 3uLL);
        __p = 0;
        v30 = 0;
        v31 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &__p);
        v15 = __p;
        if (!__p)
        {
          goto LABEL_47;
        }

        v30 = __p;
LABEL_46:
        operator delete(v15);
LABEL_47:
        v16 = v38.__r_.__value_.__r.__words[0];
        if (v38.__r_.__value_.__r.__words[0])
        {
          v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
          goto LABEL_49;
        }

        goto LABEL_50;
      case 4:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 40, 4uLL);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v32, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &v32);
        v15 = v32;
        if (!v32)
        {
          goto LABEL_47;
        }

        v33 = v32;
        goto LABEL_46;
      case 5:
        memset(&v38, 0, sizeof(v38));
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 48, 5uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v35, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
        InferenceEngine::DataTensor::set_shape(this, &v35);
        v15 = v35;
        if (!v35)
        {
          goto LABEL_47;
        }

        v36 = v35;
        goto LABEL_46;
    }

LABEL_55:
    v19 = __cxa_allocate_exception(0x10uLL);
    InferenceEngine::StringFormatter::StringFormatter(&v38, "layout %ld not supported", *(*(this + 17) + 4));
    std::logic_error::logic_error(v19, &v38);
  }

  if (v13)
  {
    if (v13 == 1)
    {
      memset(&v38, 0, sizeof(v38));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 16, 1uLL);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v23, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
      InferenceEngine::DataTensor::set_shape(this, &v23);
      v15 = v23;
      if (!v23)
      {
        goto LABEL_47;
      }

      v24 = v23;
      goto LABEL_46;
    }

    if (v13 == 2)
    {
      memset(&v38, 0, sizeof(v38));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v38, v2 + 8, v2 + 24, 2uLL);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v26, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_, (v38.__r_.__value_.__l.__size_ - v38.__r_.__value_.__r.__words[0]) >> 3);
      InferenceEngine::DataTensor::set_shape(this, &v26);
      v15 = v26;
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v20, 0, 0, 0);
  InferenceEngine::DataTensor::set_shape(this, &v20);
  v16 = v20;
  if (v20)
  {
    v21 = v20;
LABEL_49:
    operator delete(v16);
  }

LABEL_50:
  *(this + 11) = *(*(this + 17) + 136);
}

void sub_1FDFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
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

uint64_t InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(uint64_t a1, std::string *a2)
{
  v3 = InferenceEngine::MilInferenceModel::MilInferenceModel(a1, a2);
  *v3 = off_284B40;
  v4 = (v3 + 336);
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0;
  BNNSGraphCompileOptionsMakeDefault();
  boost::filesystem::path::path(&__p, "mil2bnns_model_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (a1 + 32), &__p, &v67);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  boost::filesystem::path::path(&__p, "mil2bnns_downcast_type");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (a1 + 32), &__p, &v66);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  boost::filesystem::path::path(&__p, "mil2bnns_mmap_filename");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (a1 + 32), &__p, &v65);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  boost::filesystem::path::path(&__p, "model_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (a1 + 32), &__p, &v64);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v5 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  size = v65.__r_.__value_.__l.__size_;
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v65.__r_.__value_.__l.__size_;
  }

  if (!v8)
  {
    boost::filesystem::path::path(v60, "mil2bnns_mmap_path");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", (a1 + 32), v60, &v62.__pn_);
    v63 = v62;
    memset(&v62, 0, sizeof(v62));
    std::__fs::filesystem::path::filename[abi:ne200100](&v63, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    }

    else
    {
      *&__p.st_dev = *&v68.__r_.__value_.__l.__data_;
      *&__p.st_uid = *(&v68.__r_.__value_.__l + 2);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    *&v65.__r_.__value_.__l.__data_ = *&__p.st_dev;
    v65.__r_.__value_.__r.__words[2] = *&__p.st_uid;
    HIBYTE(__p.st_gid) = 0;
    LOBYTE(__p.st_dev) = 0;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__pn_.__r_.__value_.__l.__data_);
    }

    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    v5 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    size = v65.__r_.__value_.__l.__size_;
    v6 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  }

  if (v6 < 0)
  {
    v5 = size;
  }

  if (v5)
  {
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v64.__r_.__value_.__l.__size_;
    }

    if (v9)
    {
      p_p = &__p;
      std::string::basic_string[abi:ne200100](&__p, v9 + 1);
      if ((__p.st_gid & 0x80000000) != 0)
      {
        p_p = *&__p.st_dev;
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v64;
      }

      else
      {
        v11 = v64.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v11, v9);
      *(&p_p->st_dev + v9) = 95;
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v65;
      }

      else
      {
        v12 = v65.__r_.__value_.__r.__words[0];
      }

      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v65.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&__p, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v68.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
      *(v68.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      v65.__r_.__value_.__r.__words[0] = v15;
      v65.__r_.__value_.__l.__size_ = v68.__r_.__value_.__r.__words[0];
      *(&v65.__r_.__value_.__r.__words[1] + 7) = *(v68.__r_.__value_.__r.__words + 7);
      *(&v65.__r_.__value_.__s + 23) = v16;
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }
    }

    InferenceEngine::mil2bnns_compiled_model_directory(&v63);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v62.__pn_, &v65);
    std::__fs::filesystem::operator/[abi:ne200100](&v62, &v63, &v68);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    }

    else
    {
      *&__p.st_dev = *&v68.__r_.__value_.__l.__data_;
      *&__p.st_uid = *(&v68.__r_.__value_.__l + 2);
    }

    if (*(a1 + 359) < 0)
    {
      operator delete(v4->__r_.__value_.__l.__data_);
    }

    *&v4->__r_.__value_.__l.__data_ = *&__p.st_dev;
    v4->__r_.__value_.__r.__words[2] = *&__p.st_uid;
    HIBYTE(__p.st_gid) = 0;
    LOBYTE(__p.st_dev) = 0;
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v67.__r_.__value_.__l.__size_ == 7 && *v67.__r_.__value_.__l.__data_ == 1702257015 && *(v67.__r_.__value_.__r.__words[0] + 3) == 1852732005)
    {
      goto LABEL_91;
    }

    if (v67.__r_.__value_.__l.__size_ == 10 && *v67.__r_.__value_.__l.__data_ == 0x6F7473646E756F73 && *(v67.__r_.__value_.__r.__words[0] + 8) == 28018)
    {
      goto LABEL_91;
    }

    if (v67.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_92;
    }

    v20 = v67.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v67.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(v67.__r_.__value_.__r.__words[2]) != 10)
      {
        goto LABEL_92;
      }

      if (v67.__r_.__value_.__r.__words[0] != 0x6F7473646E756F73 || LOWORD(v67.__r_.__value_.__r.__words[1]) != 28018)
      {
        goto LABEL_92;
      }

LABEL_91:
      BNNSGraphCompileOptionsSetPredefinedOptimizations();
      goto LABEL_92;
    }

    if (LODWORD(v67.__r_.__value_.__l.__data_) == 1702257015 && *(v67.__r_.__value_.__r.__words + 3) == 1852732005)
    {
      goto LABEL_91;
    }

    v20 = &v67;
  }

  data = v20->__r_.__value_.__l.__data_;
  v23 = *(v20->__r_.__value_.__r.__words + 3);
  if (data == 1601401972 && v23 == 1886154335)
  {
    goto LABEL_91;
  }

LABEL_92:
  v25 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = v66.__r_.__value_.__l.__size_;
  }

  if (v25)
  {
    if ((_get_cpu_capabilities() & 0x78000000) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v48 = &v66;
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v66.__r_.__value_.__r.__words[0];
      }

      InferenceEngine::StringFormatter::StringFormatter(&__p, "BNNS downcast type not supported '%s'", v48);
      std::logic_error::logic_error(exception, &__p);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v66.__r_.__value_.__l.__size_ == 4 && *v66.__r_.__value_.__l.__data_ == 909209702)
      {
        goto LABEL_126;
      }

      if (v66.__r_.__value_.__l.__size_ == 19)
      {
        v28 = *v66.__r_.__value_.__l.__data_ == 0x73706F5F36317066 && *(v66.__r_.__value_.__r.__words[0] + 8) == 0x63615F323370665FLL;
        if (v28 && *(v66.__r_.__value_.__r.__words[0] + 11) == 0x6D756363615F3233)
        {
          goto LABEL_126;
        }
      }

      if (v66.__r_.__value_.__l.__size_ != 4)
      {
        goto LABEL_127;
      }

      v30 = v66.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v66.__r_.__value_.__r.__words[2]) != 4)
      {
        if (HIBYTE(v66.__r_.__value_.__r.__words[2]) != 19)
        {
          goto LABEL_127;
        }

        v26 = v66.__r_.__value_.__r.__words[0] == 0x73706F5F36317066 && v66.__r_.__value_.__l.__size_ == 0x63615F323370665FLL;
        if (!v26 || *(&v66.__r_.__value_.__r.__words[1] + 3) != 0x6D756363615F3233)
        {
          goto LABEL_127;
        }

LABEL_126:
        BNNSGraphCompileOptionsSetDownconvertMode();
        goto LABEL_127;
      }

      if (LODWORD(v66.__r_.__value_.__l.__data_) == 909209702)
      {
        goto LABEL_126;
      }

      v30 = &v66;
    }

    if (LODWORD(v30->__r_.__value_.__l.__data_) != 909207138 || (_get_cpu_capabilities() & 0x78000000uLL) < 0x10000001)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_127:
  if ((*(a1 + 359) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 344))
    {
      goto LABEL_135;
    }
  }

  else if (!*(a1 + 359))
  {
    goto LABEL_135;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, v4);
  std::__fs::filesystem::__status(&__p, 0);
  v31 = v68.__r_.__value_.__s.__data_[0];
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (!v31 || v31 == 255)
  {
LABEL_135:
    InferenceEngine::mil2bnns_compiled_model_directory(&__p);
    std::__fs::filesystem::__status(&__p, 0);
    if (v68.__r_.__value_.__s.__data_[0] == 255 || !v68.__r_.__value_.__s.__data_[0])
    {
      directories = std::__fs::filesystem::__create_directories(&__p, 0);
      if (!directories)
      {
        LogObject = InferenceEngine::Diagnostics_GetLogObject(directories);
        if (os_log_type_enabled(LogObject, OS_LOG_TYPE_ERROR))
        {
          InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(&__p.st_dev, LogObject);
        }

        std::string::assign(v4, "");
      }
    }

    if (*(a1 + 359) < 0)
    {
      if (!*(a1 + 344))
      {
        goto LABEL_147;
      }

      v34 = v4->__r_.__value_.__r.__words[0];
    }

    else if (!*(a1 + 359))
    {
LABEL_147:
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        v68 = *(a1 + 64);
      }

      if (*(a1 + 135) < 0)
      {
        v35 = *(a1 + 112);
      }

      *(a1 + 240) = BNNSGraphCompileFromFile_v2();
      *(a1 + 248) = v36;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      if (*(a1 + 240))
      {
        goto LABEL_157;
      }

LABEL_166:
      v44 = __cxa_allocate_exception(0x10uLL);
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        v68 = *(a1 + 64);
      }

      v49 = &v68;
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = v68.__r_.__value_.__r.__words[0];
      }

      InferenceEngine::StringFormatter::StringFormatter(&__p, "failed to compile mil2bnns model from: '%s'", v49);
      std::logic_error::logic_error(v44, &__p);
    }

    BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();
    goto LABEL_147;
  }

  v39 = v4;
  if (*(a1 + 359) < 0)
  {
    v39 = v4->__r_.__value_.__r.__words[0];
  }

  v40 = open(v39, 0);
  v41 = v40;
  if (v40 < 0)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    v51 = v4;
    if (*(a1 + 359) < 0)
    {
      v51 = v4->__r_.__value_.__r.__words[0];
    }

    v52 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&__p, "failed to open bnns mmap file from: '%s', errno: %d", v51, *v52);
    std::logic_error::logic_error(v50, &__p);
  }

  if (fstat(v40, &__p) < 0)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    v54 = v4;
    if (*(a1 + 359) < 0)
    {
      v54 = v4->__r_.__value_.__r.__words[0];
    }

    v55 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&v68, "failed to fstat bnns mmap file from: '%s', errno: %d", v54, *v55);
    std::logic_error::logic_error(v53, &v68);
  }

  v42 = mmap(0, __p.st_size, 1, 1, v41, 0);
  if (v42 == -1)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    v57 = v4;
    if (*(a1 + 359) < 0)
    {
      v57 = v4->__r_.__value_.__r.__words[0];
    }

    v58 = __error();
    InferenceEngine::StringFormatter::StringFormatter(&v68, "failed to mmap bnns mmap file from: '%s', errno: %d", v57, *v58);
    std::logic_error::logic_error(v56, &v68);
  }

  close(v41);
  st_size = __p.st_size;
  *(a1 + 240) = v42;
  *(a1 + 248) = st_size;
  if (!v42)
  {
    goto LABEL_166;
  }

LABEL_157:
  *(a1 + 264) = 0;
  (*(*a1 + 64))(a1);
  v37 = BNNSGraphCompileOptionsDestroy();
  v38 = InferenceEngine::Diagnostics_GetLogObject(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *&__p.st_dev = *(a1 + 64);
      *&__p.st_uid = *(a1 + 80);
    }

    v45 = &__p;
    if ((__p.st_gid & 0x80000000) != 0)
    {
      v45 = *&__p.st_dev;
    }

    LODWORD(v68.__r_.__value_.__l.__data_) = 136315138;
    *(v68.__r_.__value_.__r.__words + 4) = v45;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Load model from %s", &v68, 0xCu);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1FED14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
    if ((v50 & 1) == 0)
    {
LABEL_8:
      __cxa_begin_catch(exception_object);
      BNNSGraphCompileOptionsDestroy();
      __cxa_rethrow();
    }
  }

  else if (!v50)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v49);
  goto LABEL_8;
}

void sub_1FF000(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1FEFF8);
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void InferenceEngine::Mil2BnnsMilInferenceModel::~Mil2BnnsMilInferenceModel(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  *this = off_284B40;
  InferenceEngine::Mil2BnnsMilInferenceModel::destroy_context(this);
  v2 = *(this + 359);
  if (v2 < 0)
  {
    v2 = *(this + 43);
  }

  v3 = *(this + 30);
  if (v2)
  {
    munmap(v3, *(this + 31));
  }

  else
  {
    free(v3);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = (this + 288);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  InferenceEngine::MilInferenceModel::~MilInferenceModel(this);
}

void InferenceEngine::Mil2BnnsMilInferenceModel::prepare(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::prepare(this);
  v2 = *(this + 26) + *(this + 21);
  *(this + 34) = v2;
  *(this + 35) = malloc_type_malloc(16 * v2, 0x10A20408DAD38D9uLL);
  for (i = *(this + 20); i; i = *i)
  {
    v4 = i[5];
    if (v4)
    {
      v5 = **v4;
      if (v6)
      {
        v7 = i[6];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
LABEL_8:
    v8 = *(this + 30);
    v9 = *(this + 31);
    InferenceEngine::MilIO::get_io_name(v6, &__p);
    ArgumentPosition = BNNSGraphGetArgumentPosition();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(v6 + 32) = ArgumentPosition;
    if (*(this + 136) == 1)
    {
      v11 = *(v6 + 17);
    }

    else
    {
      v11 = *(v6 + 11);
    }

    data_size = InferenceEngine::DataTensor::get_data_size(v6);
    v13 = (*(this + 35) + 16 * *(v6 + 32));
    *v13 = v11;
    v13[1] = data_size;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  for (j = *(this + 25); j; j = *j)
  {
    v15 = j[5];
    if (v15)
    {
      v16 = **v15;
      if (v17)
      {
        v18 = j[6];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
LABEL_23:
    v19 = *(this + 30);
    v20 = *(this + 31);
    InferenceEngine::MilIO::get_io_name(v17, &__p);
    v21 = BNNSGraphGetArgumentPosition();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(v17 + 32) = v21;
    if (*(this + 136) == 1)
    {
      v22 = *(v17 + 17);
    }

    else
    {
      v22 = *(v17 + 11);
    }

    v23 = InferenceEngine::DataTensor::get_data_size(v17);
    v24 = (*(this + 35) + 16 * *(v17 + 32));
    *v24 = v22;
    v24[1] = v23;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  v25 = *(this + 26) + *(this + 21);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  std::vector<std::vector<int>>::resize(this + 36, v25);
  if (v25)
  {
    v26 = *(this + 40);
    do
    {
      v27 = *(this + 41);
      if (v26 >= v27)
      {
        v28 = *(this + 39);
        v29 = (v26 - v28) >> 4;
        if ((v29 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v30 = v27 - v28;
        v31 = v30 >> 3;
        if (v30 >> 3 <= (v29 + 1))
        {
          v31 = v29 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_shape_t>>(this + 312, v32);
        }

        v33 = (16 * v29);
        *v33 = *&__p.__r_.__value_.__l.__data_;
        v26 = (16 * v29 + 16);
        v34 = *(this + 39);
        v35 = *(this + 40) - v34;
        v36 = 16 * v29 - v35;
        memcpy(v33 - v35, v34, v35);
        v37 = *(this + 39);
        *(this + 39) = v36;
        *(this + 40) = v26;
        *(this + 41) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v26++ = *&__p.__r_.__value_.__l.__data_;
      }

      *(this + 40) = v26;
      --v25;
    }

    while (v25);
  }
}

void sub_1FF548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::Mil2BnnsMilInferenceModel::clean(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  free(*(this + 35));
  *(this + 40) = *(this + 39);
  std::vector<std::vector<std::pair<int,int>>>::clear[abi:ne200100](this + 36);
  if (*(this + 136) == 1)
  {
    for (i = *(this + 25); i; i = *i)
    {
      v3 = i[5];
      v4 = **v3;
      v6 = i[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v5[11] = 0;
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      else
      {
        v5[11] = 0;
      }
    }
  }

  InferenceEngine::MilInferenceModel::clean(this);
}

void InferenceEngine::Mil2BnnsMilInferenceModel::set_input(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v20 = *a2;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InferenceEngine::MilInferenceModel::set_input(a1, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(a1 + 136) == 1)
  {
    InferenceEngine::DataTensor::get_name(*a2, &__p);
    *&v17 = &__p;
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 144), &__p.__r_.__value_.__l.__data_);
    v6 = v5[5];
    if (v6)
    {
      v7 = **v6;
      if (v8)
      {
        v9 = v5[6];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
LABEL_12:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = v8[32];
    InferenceEngine::DataTensor::get_shape(v8, 0, &__p.__r_.__value_.__l.__data_);
    v18 = 0;
    v17 = 0uLL;
    std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
    v11 = *(a1 + 288);
    v12 = v11 + 24 * v10;
    v13 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v13;
      operator delete(v13);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      v11 = *(a1 + 288);
    }

    *v12 = v17;
    *(v12 + 16) = v18;
    v15 = (v11 + 24 * v10);
    v14 = *v15;
    v16 = (*(a1 + 312) + 16 * v10);
    *v16 = (v15[1] - *v15) >> 3;
    v16[1] = v14;
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1FF844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::Mil2BnnsMilInferenceModel::execute(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::get_all_input_names(this, &v27);
  size = v27.__r_.__value_.__l.__size_;
  for (i = v27.__r_.__value_.__r.__words[0]; i != size; i += 24)
  {
    if (*(i + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *i, *(i + 8));
    }

    else
    {
      v4 = *i;
      v26.__r_.__value_.__r.__words[2] = *(i + 16);
      *&v26.__r_.__value_.__l.__data_ = v4;
    }

    if (((*(*this + 24))(this, &v26) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v20 = &v26;
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v26.__r_.__value_.__r.__words[0];
      }

      InferenceEngine::StringFormatter::StringFormatter(&v25, "Mil2BnnsMilInferenceModel execution missing input %s", v20);
      std::logic_error::logic_error(exception, &v25);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v26.__r_.__value_.__r.__words[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (*(this + 136))
  {
    v5 = *(this + 28);
    v6 = *(this + 29);
    v7 = *(this + 21);
    v8 = *(this + 26);
    v9 = *(this + 39);
    v10 = BNNSGraphContextSetDynamicShapes_v2();
    if (v10 < 0)
    {
      v23 = v10;
      v24 = __cxa_allocate_exception(0x10uLL);
      InferenceEngine::StringFormatter::StringFormatter(&v27, "Set dynamic shape for execution failed with return code %d", v23);
      std::logic_error::logic_error(v24, &v27);
    }
  }

  v11 = 2;
  do
  {
    v12 = *(this + 28);
    v13 = *(this + 29);
    v14 = *(this + 34);
    v15 = *(this + 35);
    v16 = *(this + 32);
    v17 = *(this + 33);
    result = BNNSGraphContextExecute_v2();
    if (v11 < 2)
    {
      break;
    }

    --v11;
  }

  while (result);
  if (result)
  {
    v21 = result;
    v22 = __cxa_allocate_exception(0x10uLL);
    InferenceEngine::StringFormatter::StringFormatter(&v27, "BNNS execution failed with return code %d", v21);
    std::logic_error::logic_error(v22, &v27);
  }

  return result;
}

void sub_1FFAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void InferenceEngine::Mil2BnnsMilInferenceModel::destroy_context(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  v2 = *(this + 28);
  v3 = *(this + 29);
  BNNSGraphContextDestroy_v2();
  v4 = *(this + 33);
  if (v4)
  {

    free(v4);
  }
}

size_t InferenceEngine::Mil2BnnsMilInferenceModel::build_context(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  (*(*this + 72))(this);
  v2 = *(this + 30);
  v3 = *(this + 31);
  v4 = BNNSGraphContextMakeWithLogging();
  *(this + 28) = v4;
  *(this + 29) = v5;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = this;
    v9 = exception;
    if (*(v8 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(v8 + 8), *(v8 + 9));
    }

    else
    {
      v11 = *(v8 + 64);
    }

    v10 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v11.__r_.__value_.__r.__words[0];
    }

    InferenceEngine::StringFormatter::StringFormatter(&v12, "failed to create context: '%s'", v10);
    std::logic_error::logic_error(v9, &v12);
  }

  if (*(this + 136) == 1)
  {
    result = BNNSGraphContextSetArgumentType();
    *(this + 32) = 0;
    *(this + 33) = 0;
  }

  else
  {
    result = BNNSGraphContextGetWorkspaceSize_v2();
    *(this + 32) = result;
    if (result)
    {
      result = malloc_type_valloc(result, 0x53D61B8DuLL);
    }

    *(this + 33) = result;
  }

  return result;
}

void InferenceEngine::Mil2BnnsMilIO::~Mil2BnnsMilIO(InferenceEngine::Mil2BnnsMilIO *this)
{
  *this = off_284B10;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_284BF0;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  InferenceEngine::DataTensor::~DataTensor(this);
}

{
  *this = off_284B10;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_284BF0;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  InferenceEngine::DataTensor::~DataTensor(this);

  operator delete();
}

void std::__shared_ptr_emplace<BNNSNDArrayDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,BOOL &,std::allocator<InferenceEngine::Mil2BnnsMilIO>,0>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5, unsigned __int8 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_284C70;
  InferenceEngine::Mil2BnnsMilIO::Mil2BnnsMilIO((a1 + 3), a2, a3, a4, a5, *a6);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_shape_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void InferenceEngine::bnns_log_fn(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "BNNS failure: %s, with op_info: %s", &v3, 0x16u);
}

void InferenceEngine::Mil2BnnsMilIO::read_framework_specific_buffer()
{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 146, "dtype_ == int32");
}

{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 144, "dtype_ == fp16");
}

{
  __assert_rtn("read_framework_specific_buffer", "Mil2BnnsInferenceModule.cpp", 142, "dtype_ == fp32");
}

void InferenceEngine::Mil2BnnsMilInferenceModel::Mil2BnnsMilInferenceModel(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to create mil2bnns model directory: %s", &v3, 0xCu);
}

void InferenceEngine::BaseInferenceController::~BaseInferenceController(InferenceEngine::BaseInferenceController *this)
{
  *this = off_284CC0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 24);

  InferenceEngine::MLInferenceModel::~MLInferenceModel(this);
}

void InferenceEngine::BaseInferenceController::set_io_processor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void InferenceEngine::BaseInferenceController::set_input(uint64_t a1, uint64_t a2)
{
  InferenceEngine::DataTensor::get_name(*a2, &__p);
  p_p = &__p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 24), &__p.__r_.__value_.__l.__data_);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_200480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::BaseInferenceController::set_input(uint64_t a1, const void **a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t InferenceEngine::BaseInferenceController::clean(InferenceEngine::BaseInferenceController *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 24);

  return InferenceEngine::MLInferenceModel::clean(this);
}

const void **InferenceEngine::BaseInferenceController::get_output@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void InferenceEngine::BaseInferenceController::execute(InferenceEngine::MilInferenceModel **this)
{
  v2 = 0;
  v3 = 0.0;
  while (1)
  {
    InferenceEngine::MLInferenceModel::get_model_parameters(this, buf);
    v4 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(buf, "loop");
    LODWORD(v30.__r_.__value_.__l.__data_) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v4, &v30);
    data = v30.__r_.__value_.__l.__data_;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(buf);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v33, buf[0]);
    if (v2 >= data)
    {
      break;
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = this[8];
    if (!v8 || !(**v8)(v8, this + 24, v2))
    {
      InferenceEngine::MLInferenceModel::get_all_input_names(this, buf);
      v9 = *buf;
      v10 = *v33;
      while (v9 != v10)
      {
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v9, *(v9 + 1));
        }

        else
        {
          v11 = *v9;
          v30.__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&v30.__r_.__value_.__l.__data_ = v11;
        }

        v29.__r_.__value_.__r.__words[0] = &v30;
        if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v30.__r_.__value_.__l.__data_)[5])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v25 = &v30;
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = v30.__r_.__value_.__r.__words[0];
          }

          InferenceEngine::StringFormatter::StringFormatter(&v29, "Model input %s is not set correctly!", v25);
          std::logic_error::logic_error(exception, &v29);
        }

        v29.__r_.__value_.__r.__words[0] = &v30;
        v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v30.__r_.__value_.__l.__data_);
        v13 = v12[6];
        v27 = v12[5];
        v28 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        InferenceEngine::MLInferenceModel::set_input(this, &v27);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v9 = (v9 + 24);
      }

      v30.__r_.__value_.__r.__words[0] = buf;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      InferenceEngine::MLInferenceModel::execute(this);
      InferenceEngine::MLInferenceModel::get_all_output_names(this, buf);
      v15 = *buf;
      v14 = *v33;
      while (v15 != v14)
      {
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          v30.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&v30.__r_.__value_.__l.__data_ = v16;
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v26, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = v30;
        }

        InferenceEngine::MLInferenceModel::get_output(this);
        v31 = &v30;
        v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 3, &v30.__r_.__value_.__l.__data_);
        v18 = *&v29.__r_.__value_.__l.__data_;
        *&v29.__r_.__value_.__l.__data_ = 0uLL;
        v19 = v17[6];
        *(v17 + 5) = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          if (v29.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29.__r_.__value_.__l.__size_);
          }
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        v15 = (v15 + 24);
      }

      v30.__r_.__value_.__r.__words[0] = buf;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      InferenceEngine::MLInferenceModel::reset(this);
      v6 = this[8];
      if (v6)
      {
        v6 = (*(*v6 + 8))(v6, this + 24, v2);
        if (v6)
        {
          break;
        }
      }

      LogObject = InferenceEngine::Diagnostics_GetLogObject(v6);
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v2;
        _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Loop %d has completed!", buf, 8u);
      }

      v3 = v3 + ((std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000);
    }

    v2 = (v2 + 1);
  }

  v21 = InferenceEngine::Diagnostics_GetLogObject(v6);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v22)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Inference completed!", buf, 2u);
  }

  v23 = InferenceEngine::Diagnostics_GetLogObject(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = v2;
    *v33 = 2048;
    *&v33[2] = v3;
    v34 = 2048;
    v35 = (v3 / v2) / 1000.0;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%i steps, total_time_microseconds: %.3f us, average time per step: %.6f ms", buf, 0x1Cu);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t InferenceEngine::DataTensor::DataTensor(uint64_t a1, __int128 *a2, __int128 *a3, char **a4)
{
  *a1 = off_284D30;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if ((a1 + 56) == a4)
  {
    goto LABEL_17;
  }

  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 56), *a4, a4[1], (a4[1] - *a4) >> 3);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64) - v9;
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10 >> 3;
  v12 = v11 <= 1 ? 1 : v11;
  if (*v9 != -1)
  {
    v13 = 1;
    do
    {
      v14 = v13;
      if (v12 == v13)
      {
        break;
      }

      v15 = v9[v13++];
    }

    while (v15 != -1);
    if (v14 >= v11)
    {
LABEL_17:
      boost::filesystem::path::path(__p, "");
      InferenceEngine::DataTensor::allocate_memory(a1, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_200CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void *InferenceEngine::DataTensor::allocate_memory(uint64_t a1, uint64_t a2)
{
  InferenceEngine::DataTensor::init_data_size(a1);
  if (*(a1 + 96) == 1)
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = open(v4, 0);
    if (v5 < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = *(a2 + 23);
      v11 = *a2;
      v12 = __error();
      if (v10 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = v11;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v18, "MemoryMap unable to open '%s': error %d\n", v13, *v12);
      std::logic_error::logic_error(exception, &v18);
    }

    v6 = v5;
    v7 = mmap(0, *(a1 + 80), 1, 1, v5, 0);
    *(a1 + 88) = v7;
    if (v7 == -1)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      InferenceEngine::StringFormatter::StringFormatter(&v18, "MemoryMap unable to mmap, error %d/%s", v15, v17);
      std::logic_error::logic_error(v14, &v18);
    }

    return close(v6);
  }

  else
  {
    free(*(a1 + 88));
    result = malloc_type_valloc(*(a1 + 80), 0xB641B648uLL);
    *(a1 + 88) = result;
  }

  return result;
}

void sub_200EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataTensor::init_data_size(uint64_t this)
{
  v1 = *(this + 56);
  v2 = *(this + 64) - v1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = 1;
    do
    {
      v6 = *v1++;
      v5 *= v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  v7 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 40) != 4 || **v7 != 842231910)
    {
      if (*(this + 40) != 4 || **v7 != 909209702)
      {
        if (*(this + 40) != 5)
        {
          goto LABEL_29;
        }

        v8 = *v7;
        goto LABEL_19;
      }

LABEL_27:
      v12 = 2;
      goto LABEL_28;
    }
  }

  else
  {
    if (*(this + 55) != 4)
    {
      v8 = (this + 32);
      if (*(this + 55) != 5)
      {
        goto LABEL_29;
      }

LABEL_19:
      v9 = *v8;
      v10 = *(v8 + 4);
      if (v9 != 863268457 || v10 != 50)
      {
LABEL_29:
        v13 = this;
        exception = __cxa_allocate_exception(0x10uLL);
        if (*(v13 + 55) < 0)
        {
          v7 = *v7;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v15, "DataTensor type not supported: '%s'", v7);
        std::logic_error::logic_error(exception, &v15);
      }

      goto LABEL_24;
    }

    if (*v7 != 842231910)
    {
      if (*v7 != 909209702)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v12 = 4;
LABEL_28:
  *(this + 80) = v12 * v5;
  return this;
}

void sub_2010D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void InferenceEngine::DataTensor::~DataTensor(InferenceEngine::DataTensor *this)
{
  *this = off_284D30;
  v2 = *(this + 96);
  v3 = *(this + 11);
  if (v2 == 1)
  {
    munmap(v3, *(this + 10));
  }

  else
  {
    free(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  InferenceEngine::DataTensor::~DataTensor(this);

  operator delete();
}

void InferenceEngine::DataTensor::get_name(InferenceEngine::DataTensor *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void InferenceEngine::DataTensor::get_dtype(InferenceEngine::DataTensor *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void InferenceEngine::DataTensor::set_rank(InferenceEngine::DataTensor *this, unint64_t a2)
{
  if (!a2)
  {
    InferenceEngine::DataTensor::set_rank();
  }

  v2 = a2;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, a2);
  v5 = *(this + 7);
  v4 = *(this + 8);
  v6 = (this + 56);
  v7 = (v4 - v5) >> 3;
  v8 = (v7 - 1);
  if (v7 - 1 >= 0)
  {
    v9 = __p;
    v10 = v8 + 1;
    v11 = (v5 + 8 * v8);
    v12 = v2 - 1;
    do
    {
      if (v12 < 0)
      {
        __assert_rtn("set_rank", "DataTensor.cpp", 106, "new_shape_dim >= 0");
      }

      v13 = *v11--;
      v9[v12--] = v13;
    }

    while (v10-- > 1);
  }

  if (v6 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v6, __p, v16, (v16 - __p) >> 3);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_201328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::get_shape(InferenceEngine::DataTensor *this@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (!a2 || *(v5 + 8 * v9) != 1)
      {
        v10 = a3[2];
        if (v8 >= v10)
        {
          v11 = *a3;
          v12 = v8 - *a3;
          v13 = (v12 >> 3) + 1;
          if (v13 >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v14 = v10 - v11;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a3, v15);
          }

          v16 = (8 * (v12 >> 3));
          *v16 = *(v5 + 8 * v9);
          v8 = (v16 + 1);
          memcpy(0, v11, v12);
          v17 = *a3;
          *a3 = 0;
          a3[1] = v8;
          a3[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = *(v5 + 8 * v9);
          v8 += 8;
        }

        a3[1] = v8;
        v5 = *(this + 7);
        v4 = *(this + 8);
      }

      ++v9;
    }

    while (v9 < (v4 - v5) >> 3);
  }
}

void sub_201488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float InferenceEngine::DataTensor::cast_data_to_target_tensor(uint64_t a1, uint64_t *a2)
{
  InferenceEngine::DataTensor::valid_shape((a1 + 56), (*a2 + 56), 0, 0);
  v5 = (a1 + 32);
  v6 = *a2;
  v7 = (*a2 + 32);
  v8 = *(a1 + 55);
  v9 = *(a1 + 40);
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a1 + 55);
  }

  else
  {
    v10 = *(a1 + 40);
  }

  v11 = *(v6 + 55);
  v12 = *(v6 + 40);
  if ((v11 & 0x80u) == 0)
  {
    v13 = *(v6 + 55);
  }

  else
  {
    v13 = *(v6 + 40);
  }

  if (v10 == v13)
  {
    v14 = (v8 & 0x80u) == 0 ? (a1 + 32) : *v5;
    v15 = *v7;
    v16 = ((v11 & 0x80u) == 0 ? *a2 + 32 : *v7);
    if (!memcmp(v14, v16, v10))
    {
      v22 = *(v6 + 88);
      v24 = *(a1 + 80);
      v23 = *(a1 + 88);

      memcpy(v22, v23, v24);
      return result;
    }
  }

  if ((v8 & 0x80) == 0)
  {
    if (v8 != 4)
    {
      v17 = (a1 + 32);
      if (v8 != 5)
      {
        goto LABEL_70;
      }

      goto LABEL_22;
    }

    if (*v5 != 909209702)
    {
      v21 = *v5;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v9 == 4)
  {
    if (**v5 != 909209702)
    {
      v21 = **v5;
LABEL_37:
      if (v21 != 842231910)
      {
        goto LABEL_70;
      }

      if ((v11 & 0x80) != 0)
      {
        if (v12 != 4)
        {
          goto LABEL_80;
        }

        v7 = *v7;
      }

      else if (v11 != 4)
      {
        goto LABEL_80;
      }

      if (*v7 == 909209702)
      {
        v38 = *(a1 + 80);
        if (v38 >= 4)
        {
          v39 = v38 >> 2;
          v40 = *(a1 + 88);
          v41 = *(v6 + 88);
          do
          {
            v42 = *v40++;
            result = v42;
            __asm { FCVT            H0, S0 }

            *v41++ = LOWORD(result);
            --v39;
          }

          while (v39);
        }

        return result;
      }

LABEL_80:
      exception = __cxa_allocate_exception(0x10uLL);
      v58 = a1;
      v59 = exception;
      if (*(v58 + 55) < 0)
      {
        v5 = *v5;
      }

      v60 = (*a2 + 32);
      if (*(*a2 + 55) < 0)
      {
        v60 = *v60;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v60);
      std::logic_error::logic_error(v59, &v65);
    }

LABEL_41:
    if ((v11 & 0x80) != 0)
    {
      if (v12 != 4)
      {
        goto LABEL_85;
      }

      v7 = *v7;
    }

    else if (v11 != 4)
    {
      goto LABEL_85;
    }

    if (*v7 == 842231910)
    {
      v43 = *(a1 + 80);
      if (v43 >= 2)
      {
        v44 = v43 >> 1;
        v45 = *(a1 + 88);
        v46 = *(v6 + 88);
        do
        {
          v47 = *v45++;
          _H0 = v47;
          __asm { FCVT            S0, H0 }

          *v46++ = result;
          --v44;
        }

        while (v44);
      }

      return result;
    }

LABEL_85:
    v61 = __cxa_allocate_exception(0x10uLL);
    v62 = a1;
    v63 = v61;
    if (*(v62 + 55) < 0)
    {
      v5 = *v5;
    }

    v64 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v64 = *v64;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v64);
    std::logic_error::logic_error(v63, &v65);
  }

  if (v9 != 5)
  {
    goto LABEL_70;
  }

  v17 = *v5;
LABEL_22:
  v18 = *v17;
  v19 = *(v17 + 4);
  if (v18 != 863268457 || v19 != 50)
  {
LABEL_70:
    v49 = __cxa_allocate_exception(0x10uLL);
    v50 = a1;
    v51 = v49;
    if (*(v50 + 55) < 0)
    {
      v5 = *v5;
    }

    v52 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v52 = *v52;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v52);
    std::logic_error::logic_error(v51, &v65);
  }

  if ((v11 & 0x80) != 0)
  {
    if (v12 != 4)
    {
      goto LABEL_75;
    }

    v7 = *v7;
  }

  else if (v11 != 4)
  {
LABEL_75:
    v53 = __cxa_allocate_exception(0x10uLL);
    v54 = a1;
    v55 = v53;
    if (*(v54 + 55) < 0)
    {
      v5 = *v5;
    }

    v56 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v56 = *v56;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v56);
    std::logic_error::logic_error(v55, &v65);
  }

  if (*v7 == 842231910)
  {
    v33 = *(a1 + 80);
    if (v33 >= 4)
    {
      v34 = v33 >> 2;
      v35 = *(a1 + 88);
      v36 = *(v6 + 88);
      do
      {
        v37 = *v35++;
        result = v37;
        *v36++ = v37;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    if (*v7 != 909209702)
    {
      goto LABEL_75;
    }

    v25 = *(a1 + 80);
    if (v25 >= 4)
    {
      v26 = v25 >> 2;
      v27 = *(a1 + 88);
      v28 = *(v6 + 88);
      do
      {
        v29 = *v27++;
        result = v29;
        __asm { FCVT            H0, S0 }

        *v28++ = LOWORD(result);
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_201974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *InferenceEngine::DataTensor::valid_shape(uint64_t *result, void *a2, int a3, char a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  if (v6 != a2[1] - *a2)
  {
    InferenceEngine::DataTensor::valid_shape();
  }

  if (v5 != v4)
  {
    v10 = result;
    v11 = 0;
    v12 = (v6 >> 3) - 1;
    do
    {
      v13 = *(v4 + 8 * v11);
      if (a3)
      {
        result = InferenceEngine::DataUtils::compare_shape(v13, *(*a2 + 8 * v12), a4);
        if ((result & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v15 = a2;
          v16 = exception;
          InferenceEngine::StringFormatter::StringFormatter(&v20, "Shape mismatch! src_shape[%d]=%d, dst_shape[%d]=%d", v11, *(*v10 + 8 * v11), v12, *(*v15 + 8 * v12));
          std::logic_error::logic_error(v16, &v20);
        }
      }

      else
      {
        result = InferenceEngine::DataUtils::compare_shape(v13, *(*a2 + 8 * v11), a4);
        if ((result & 1) == 0)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          v18 = a2;
          v19 = v17;
          InferenceEngine::StringFormatter::StringFormatter(&v20, "Shape mismatch! src_shape[%d]=%d, dst_shape[%d]=%d", v11, *(*v10 + 8 * v11), v11, *(*v18 + 8 * v11));
          std::logic_error::logic_error(v19, &v20);
        }
      }

      ++v11;
      v4 = *v10;
      --v12;
    }

    while (v11 < (v10[1] - *v10) >> 3);
  }

  return result;
}

void sub_201B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    __cxa_free_exception(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataTensor::get_size(InferenceEngine::DataTensor *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8) - v1;
  if (!v2)
  {
    return 1;
  }

  v3 = v2 >> 3;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  result = 1;
  do
  {
    v5 = *v1++;
    result *= v5;
    --v3;
  }

  while (v3);
  return result;
}

void InferenceEngine::DataTensor::resize(uint64_t a1, char **a2)
{
  v3 = (a1 + 56);
  if (v3 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  boost::filesystem::path::path(__p, "");
  InferenceEngine::DataTensor::allocate_memory(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_201C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL InferenceEngine::DataUtils::compare_shape(InferenceEngine::DataUtils *this, int a2, char a3)
{
  if (a3)
  {
    v4 = this == -1 || a2 == -1;
    return this == a2 || v4;
  }

  else
  {
    if ((this & 0x80000000) != 0)
    {
      InferenceEngine::DataUtils::compare_shape();
    }

    if (a2 < 0)
    {
      InferenceEngine::DataUtils::compare_shape();
    }

    return this == a2;
  }
}

uint64_t InferenceEngine::DataTensor::set_shape(InferenceEngine::DataTensor *this, char **a2)
{
  v3 = (this + 56);
  if (v3 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return InferenceEngine::DataTensor::init_data_size(this);
}

void InferenceEngine::DataTensor::unsqueeze(InferenceEngine::DataTensor *this, int a2)
{
  if ((a2 & 0x80000000) == 0 && *(this + 8) == *(this + 7))
  {
    InferenceEngine::DataTensor::unsqueeze();
  }

  InferenceEngine::DataTensor::get_shape(this, 0, &v8);
  v7 = 1;
  std::vector<unsigned long>::insert(&v8, v8 + 8 * a2, &v7);
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v8, v9, (v9 - v8) >> 3);
  InferenceEngine::DataTensor::set_shape(this, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_201DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<unsigned long>::emplace_back<unsigned long>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_201F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::squeeze(InferenceEngine::DataTensor *this, int a2)
{
  if ((a2 >= 0) >= ((*(this + 8) - *(this + 7)) >> 3))
  {
    InferenceEngine::DataTensor::squeeze();
  }

  InferenceEngine::DataTensor::get_shape(this, 0, &v10);
  if (a2 >= ((v11 - v10) >> 3))
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(v10 + a2) != 1)
  {
    __assert_rtn("squeeze", "DataTensor.cpp", 242, "get_shape().at(dimension) == 1");
  }

  v11 = v10;
  operator delete(v10);
  InferenceEngine::DataTensor::get_shape(this, 0, &v10);
  v4 = v10;
  v5 = v10 + 8 * a2;
  v6 = v11 - (v5 + 8);
  if (v11 != v5 + 8)
  {
    memmove(v5, v5 + 8, v11 - (v5 + 8));
    v4 = v10;
  }

  v11 = &v5[v6];
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v4, &v5[v6], (&v5[v6] - v4) >> 3);
  InferenceEngine::DataTensor::set_shape(this, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_2020DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataTensor::accumulate_sum(InferenceEngine::DataTensor *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8) - v1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = 1;
    do
    {
      v6 = *v1++;
      v5 *= v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  return _cblas_sasum_NEWLAPACK(v5, *(this + 11), 1);
}

uint64_t InferenceEngine::MilIO::MilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  v7 = InferenceEngine::DataTensor::DataTensor(a1, a2, a4, a5);
  *v7 = off_284BF0;
  v8 = (v7 + 13);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v8->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  return a1;
}

void InferenceEngine::MilIO::get_io_name(InferenceEngine::MilIO *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 127) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 13), *(this + 14));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 104);
    a2->__r_.__value_.__r.__words[2] = *(this + 15);
  }
}

uint64_t InferenceEngine::DataUtils::write_binary_data_to_file(uint64_t *a1)
{
  std::ofstream::basic_ofstream(v2, a1);
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(v2[0] - 3)), *(&v2[4] + *(v2[0] - 3)) | 4);
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  return std::ios::~ios();
}

void *std::__split_buffer<unsigned long>::emplace_back<unsigned long>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result[4], v11);
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void InferenceEngine::DataUtils::compare_shape()
{
  __assert_rtn("compare_shape", "DataTensor.cpp", 305, "dst_dim >= 0");
}

{
  __assert_rtn("compare_shape", "DataTensor.cpp", 304, "src_dim >= 0");
}

void sub_20278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  InferenceEngine::SoundStormIOProcessor::~SoundStormIOProcessor(v18);
  _Unwind_Resume(a1);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_vq_target(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, InferenceEngine::DataTensor **a4@<X8>)
{
  boost::filesystem::path::path(v20, "pred_enc_output");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v20);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p.__r_.__value_.__l.__data_);
  v9 = *(__p.__r_.__value_.__r.__words[0] + 8);
  __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  *a4 = 0;
  a4[1] = 0;
  if (!a3)
  {
    v13 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "num_vqs");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v13, &v18);
    v14 = v18;
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "vq_mask_id");
    LODWORD(v18) = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v15, &v18);
    v19 = v18;
    std::vector<float>::vector[abi:ne200100](v20, v14);
    std::vector<std::vector<float>>::vector[abi:ne200100](&__p, v9);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    boost::filesystem::path::path(v20, "target");
    InferenceEngine::DataTensor::build_from_2d_array<float>(v20, &__p);
  }

  boost::filesystem::path::path(&__p, "target");
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &__p.__r_.__value_.__l.__data_);
  if (!v10)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v10[5];
  v11 = v10[6];
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v12;
  a4[1] = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  InferenceEngine::DataTensor::get_name(v12, &__p);
  v20[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p.__r_.__value_.__l.__data_);
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = v16[6];
  v16[5] = v12;
  v16[6] = v11;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_202A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = &a19;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_q_token_mask(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  boost::filesystem::path::path(&v20, "pred_enc_output");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
  v9 = *(__p + 1);
  v22 = __p;
  operator delete(__p);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
  if (v22 == __p)
  {
    *a4 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (*(__p + v11) == a3)
      {
        std::vector<float>::vector[abi:ne200100](v19, v9);
        std::vector<std::vector<float>>::vector[abi:ne200100](&v20, 1uLL);
        if (v19[0])
        {
          v19[1] = v19[0];
          operator delete(v19[0]);
        }

        boost::filesystem::path::path(v19, "q_token_mask");
        InferenceEngine::DataTensor::build_from_2d_array<float>(v19, &v20);
      }

      ++v11;
    }

    while (v11 < (v22 - __p) >> 2);
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  boost::filesystem::path::path(&v20, "q_token_mask");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v20.__r_.__value_.__l.__data_);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v12[5];
  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v15 = *a4;
  InferenceEngine::DataTensor::get_name(*a4, &v20);
  v19[0] = &v20;
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v20.__r_.__value_.__l.__data_);
  v17 = *(a4 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = v16[6];
  v16[5] = v15;
  v16[6] = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_202D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_pred_data(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(&v24, "pred_enc_output");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    boost::filesystem::path::path(&v24, "target");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v24);
      }

      boost::filesystem::path::path(&v24, "q_token_mask");
      v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v24);
      if (v9)
      {
        v11 = v9[5];
        v10 = v9[6];
        if (v10)
        {
          atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_shape(v5, 0, &v24);
        if (v24)
        {
          v25 = v24;
          operator delete(v24);
        }

        InferenceEngine::DataTensor::get_3d_array<float>(v5, &v21);
        v25 = 0;
        v26 = 0;
        v24 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v24, *v21, v21[1], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3));
        v18 = &v21;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v18);
        InferenceEngine::DataTensor::get_3d_array<float>(v8, &v18);
        v22 = 0;
        v23 = 0;
        v21 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v21, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 3));
        v17[0] = &v18;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](v17);
        InferenceEngine::DataTensor::unsqueeze(v11, 2);
        InferenceEngine::DataTensor::get_3d_array<float>(v11, v17);
        v19 = 0;
        v20 = 0;
        v18 = 0;
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v18, *v17[0], v17[0][1], 0xAAAAAAAAAAAAAAABLL * ((v17[0][1] - *v17[0]) >> 3));
        __p[0] = v17;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](__p);
        InferenceEngine::DataTensor::squeeze(v11, 2);
        memset(v15, 0, sizeof(v15));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v15, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
        memset(v14, 0, sizeof(v14));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v14, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v15, v14, 1, v16);
        memset(v13, 0, sizeof(v13));
        std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v13, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
        InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v16, v13, 1, v17);
        __p[0] = v13;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v16;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v14;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v15;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
        boost::filesystem::path::path(__p, "pred_data");
        InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v17);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_203290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v34 + 8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  __p = &a28;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a28 = &a31;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a31 = v35 - 144;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v35 - 144) = v35 - 120;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100]((v35 - 144));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void sub_2033A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a10 = &a25;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  JUMPOUT(0x20334CLL);
}

void sub_2033C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, char a28)
{
  a25 = &a28;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a25);
  JUMPOUT(0x20335CLL);
}

void sub_2033E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  a28 = (v28 - 144);
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  JUMPOUT(0x20336CLL);
}

void sub_20341C()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x203378);
}

void sub_203434()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x203384);
}

void sub_20344C()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x203390);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_prompt_data(uint64_t a1, void *a2)
{
  boost::filesystem::path::path(&v16, "prompt_enc_output");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v16);
  if (v3)
  {
    v5 = v3[5];
    v4 = v3[6];
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    boost::filesystem::path::path(&v16, "prompt_target");
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v16);
    if (v6)
    {
      v8 = v6[5];
      v7 = v6[6];
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }

      InferenceEngine::DataTensor::get_shape(v5, 0, &v16);
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v5, &v13);
      v17 = 0;
      v18 = 0;
      v16 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v16, *v13, v13[1], 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3));
      v12[0] = &v13;
      std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](v12);
      InferenceEngine::DataTensor::get_3d_array<float>(v8, v12);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v13, *v12[0], v12[0][1], 0xAAAAAAAAAAAAAAABLL * ((v12[0][1] - *v12[0]) >> 3));
      __p[0] = v12;
      std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](__p);
      memset(v11, 0, sizeof(v11));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v11, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
      memset(v10, 0, sizeof(v10));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v10, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>(v11, v10, 1, v12);
      __p[0] = v10;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v11;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
      boost::filesystem::path::path(__p, "prompt_data");
      InferenceEngine::DataTensor::build_from_2d_array<float>(__p, v12);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_203760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v29 = *(v26 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  __p = &a21;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = v27 - 88;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_203824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a9 = &a18;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  JUMPOUT(0x2037ECLL);
}

void sub_203844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, char a21)
{
  a18 = &a21;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  JUMPOUT(0x2037FCLL);
}

void sub_203870()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x203808);
}

void sub_203888()
{
  if (*(v0 - 65) < 0)
  {
    operator delete(*(v0 - 88));
  }

  JUMPOUT(0x203814);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_multinomial_factor(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  boost::filesystem::path::path(&v13, "layer_q");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v13);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_1d_array<float>(v7[5], &__p);
  v8 = *__p;
  v17 = __p;
  operator delete(__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "inference_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v9, &__p);
  v10 = *__p - 1;
  v17 = __p;
  operator delete(__p);
  if (v10 == a3)
  {
    boost::filesystem::path::path(&__p, "multinomial_factor");
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v13, &v11, &v12, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(&__p, &v13);
  }

LABEL_8:
  boost::filesystem::path::path(&__p, "multinomial_factor");
  v11 = 1065353216;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v13, &v11, &v12, 1uLL);
  InferenceEngine::DataTensor::build_from_1d_array<float>(&__p, &v13);
}

void sub_203AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::P2ASoundStormIOProcessor::process_inputs(uint64_t a1, void *a2, uint64_t a3)
{
  boost::filesystem::path::path(buf, "pred_enc_output");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, buf);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(*buf);
  }

  InferenceEngine::DataTensor::get_shape(v8, 0, buf);
  v9 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v9 != 1)
  {
    __assert_rtn("process_inputs", "P2ASoundStormIOProcessor.cpp", 119, "B == 1");
  }

  (*(*a1 + 16))(&v51, a1, a2, a3);
  (*(*a1 + 24))(&v49, a1, a2, a3);
  (*(*a1 + 32))(&v47, a1, a2, a3);
  (*(*a1 + 48))(&v45, a1, a2, a3);
  (*(*a1 + 64))(&v43, a1, a2, a3);
  (*(*a1 + 40))(&v41, a1, a2, a3);
  (*(*a1 + 88))(&v39, a1, a2, a3);
  InferenceEngine::DataTensor::get_1d_array<float>(v41, buf);
  v10 = **buf;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (v10 >= 1.0)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(v47, buf);
    v14 = **buf;
    *&buf[8] = *buf;
    operator delete(*buf);
    v15 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "prompt_attention");
    buf[0] = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v15, buf);
    if (buf[0] == 1)
    {
      boost::filesystem::path::path(&v38, "prompt_k_");
      std::to_string(&v37, v14);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v37;
      }

      else
      {
        v16 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v38, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v54 = v18->__r_.__value_.__r.__words[2];
      *buf = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(&v37, "prompt_v_");
      std::to_string(&__p, v14);
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
        v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v37, p_p, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, buf);
      if (!v24)
      {
        goto LABEL_75;
      }

      boost::filesystem::path::path(&v37, "prompt_k");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v25 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_);
      v27 = v24[5];
      v26 = v24[6];
      if (v26)
      {
        atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = v25[6];
      v25[5] = v27;
      v25[6] = v26;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v29 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, &v38.__r_.__value_.__l.__data_);
      if (!v29)
      {
LABEL_75:
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      boost::filesystem::path::path(&v37, "prompt_v");
      __p.__r_.__value_.__r.__words[0] = &v37;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v37.__r_.__value_.__l.__data_);
      v32 = v29[5];
      v31 = v29[6];
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }

      v33 = v30[6];
      v30[5] = v32;
      v30[6] = v31;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      (*(*a1 + 56))(buf, a1, a2, a3);
      (*(*a1 + 72))(&v38, a1, a2, a3);
      if (v38.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38.__r_.__value_.__l.__size_);
      }

      v30 = *&buf[8];
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    LogObject = InferenceEngine::Diagnostics_GetLogObject(v30);
    if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Prepare P2ASoundStorm inputs finished for loop %d", buf, 8u);
    }

    v13 = 0;
  }

  else
  {
    v12 = InferenceEngine::Diagnostics_GetLogObject(v11);
    v13 = 1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Skip loop %d", buf, 8u);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v13;
}

void sub_2041C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v39 = *(v37 - 128);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(v37 - 112);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::P2ASoundStormIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  boost::filesystem::path::path(__p, "target");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, __p);
  if (v6)
  {
    v8 = v6[5];
    v7 = v6[6];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    boost::filesystem::path::path(__p, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, __p);
    if (v9)
    {
      v10 = v9[6];
      v11 = v9[5];
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v11, a3);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v8, __p);
      (*(*a1 + 80))(a1, a2, __p);
      boost::filesystem::path::path(buf, "target");
      InferenceEngine::DataTensor::build_from_3d_array<float>(buf, __p);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_2045F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a13;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_2046A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x20469CLL);
}

uint64_t InferenceEngine::BaseIOProcessor::BaseIOProcessor(uint64_t a1, unsigned __int8 *a2)
{
  *a1 = off_284DE8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 8));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v8, a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v8[0];
  v8[0] = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = v9;
  v9 = v6;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v9, v8[0]);
  return a1;
}

void InferenceEngine::BaseIOProcessor::~BaseIOProcessor(InferenceEngine::BaseIOProcessor *this)
{
  *this = off_284DE8;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 2, *(this + 8));
}

uint64_t InferenceEngine::EspressoMilIO::EspressoMilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  v6 = InferenceEngine::MilIO::MilIO(a1, a2, a3, a4, a5);
  *v6 = off_284E08;
  InferenceEngine::EspressoUtils::convert_data_to_espresso_buffer<void>((v6 + 16), v6[11], (a1 + 56), 65568);
  return a1;
}

void InferenceEngine::EspressoMilIO::~EspressoMilIO(void **this)
{
  InferenceEngine::MilIO::~MilIO(this);

  operator delete();
}

uint64_t InferenceEngine::EspressoMilInferenceModel::EspressoMilInferenceModel(uint64_t a1, std::string *a2)
{
  *InferenceEngine::MilInferenceModel::MilInferenceModel(a1, a2) = off_284E38;
  *(a1 + 248) = espresso_create_context();
  *(a1 + 240) = espresso_create_plan();
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v18 = *(a1 + 64);
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 120))
    {
      goto LABEL_16;
    }
  }

  else if (!*(a1 + 135))
  {
    goto LABEL_16;
  }

  std::operator+<char>();
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

  std::string::append(&v18, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_16:
  v5 = *(a1 + 240);
  v6 = espresso_plan_add_network();
  v7 = boost::filesystem::path::path(v16, "Unable to load network.");
  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v12 = v17;
    v13 = v16[0];
    status_string = espresso_get_status_string();
    v15 = v16;
    if (v12 < 0)
    {
      v15 = v13;
    }

    InferenceEngine::StringFormatter::StringFormatter(&__p, "%s Error: %d, %s", v15, v6, status_string);
    std::logic_error::logic_error(exception, &__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v7);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    v9 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Load model from %s", &__p, 0xCu);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_204AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a17 < 0)
      {
        operator delete(a12);
      }

      if (a23 < 0)
      {
        operator delete(a18);
      }

      InferenceEngine::MilInferenceModel::~MilInferenceModel(v30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::~EspressoMilInferenceModel(InferenceEngine::EspressoMilInferenceModel *this)
{
  *this = off_284E38;
  v2 = *(this + 30);
  v3 = espresso_plan_destroy();
  boost::filesystem::path::path(__p, "Unable to destroy linear plan");
  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = v19;
    v8 = __p[0];
    status_string = espresso_get_status_string();
    v10 = __p;
    if (v7 < 0)
    {
      v10 = v8;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v20, "%s Error: %d, %s", v10, v3, status_string);
    std::logic_error::logic_error(exception, &v20);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 31);
  v5 = espresso_context_destroy();
  boost::filesystem::path::path(v16, "Unable to destroy context");
  if (v5)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    v12 = v17;
    v13 = v16[0];
    v14 = espresso_get_status_string();
    v15 = v16;
    if (v12 < 0)
    {
      v15 = v13;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v20, "%s Error: %d, %s", v15, v5, v14);
    std::logic_error::logic_error(v11, &v20);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  InferenceEngine::MilInferenceModel::~MilInferenceModel(this);
}

void sub_204D28(void *a1)
{
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
    if ((v2 & 1) == 0)
    {
LABEL_6:
      __clang_call_terminate(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v1);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::prepare(InferenceEngine::EspressoMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::prepare(this);
  v2 = *(this + 30);
  v3 = espresso_plan_build();
  boost::filesystem::path::path(__p, "Unable to build plan.");
  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v31 = v41;
    v32 = __p[0];
    status_string = espresso_get_status_string();
    v34 = __p;
    if (v31 < 0)
    {
      v34 = v32;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v42, "%s Error: %d, %s", v34, v3, status_string);
    std::logic_error::logic_error(exception, &v42);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(this + 20);
  if (v4)
  {
    while (1)
    {
      v5 = v4[5];
      if (!v5)
      {
        break;
      }

      v6 = **v5;
      if (!v7)
      {
        goto LABEL_10;
      }

      v8 = v4[6];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_11:
      v9 = *(this + 28);
      v10 = *(this + 29);
      InferenceEngine::MilIO::get_io_name(v7, &v39);
      v11 = espresso_network_bind_buffer();
      boost::filesystem::path::path(v37, "Unable to bind input buffer");
      if (v11)
      {
        v20 = __cxa_allocate_exception(0x10uLL);
        v21 = v38;
        v22 = v37[0];
        v23 = espresso_get_status_string();
        v24 = v37;
        if (v21 < 0)
        {
          v24 = v22;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v42, "%s Error: %d, %s", v24, v11, v23);
        std::logic_error::logic_error(v20, &v42);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
        if (!v8)
        {
          goto LABEL_17;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_17;
      }

      if (v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v7 = 0;
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_21:
  v12 = *(this + 25);
  if (v12)
  {
    while (1)
    {
      v13 = v12[5];
      if (!v13)
      {
        break;
      }

      v14 = **v13;
      if (!v15)
      {
        goto LABEL_27;
      }

      v16 = v12[6];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_28:
      v17 = *(this + 28);
      v18 = *(this + 29);
      InferenceEngine::MilIO::get_io_name(v15, &v39);
      v19 = espresso_network_bind_buffer();
      boost::filesystem::path::path(v35, "Unable to bind output buffer");
      if (v19)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        v26 = v36;
        v27 = v35[0];
        v28 = espresso_get_status_string();
        v29 = v35;
        if (v26 < 0)
        {
          v29 = v27;
        }

        InferenceEngine::StringFormatter::StringFormatter(&v42, "%s Error: %d, %s", v29, v19, v28);
        std::logic_error::logic_error(v25, &v42);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
        if (!v16)
        {
          goto LABEL_34;
        }

LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_34;
      }

      if (v16)
      {
        goto LABEL_33;
      }

LABEL_34:
      v12 = *v12;
      if (!v12)
      {
        return;
      }
    }

    v15 = 0;
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }
}

void sub_2051CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (a35 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::clean(InferenceEngine::EspressoMilInferenceModel *this)
{
  v2 = *(this + 30);
  v3 = espresso_plan_build_clean();
  boost::filesystem::path::path(__p, "unable to clean the plan");
  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v5 = v10;
    v6 = __p[0];
    status_string = espresso_get_status_string();
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v11, "%s Error: %d, %s", v8, v3, status_string);
    std::logic_error::logic_error(exception, &v11);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::MilInferenceModel::clean(this);
}

void sub_2053AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void InferenceEngine::EspressoMilInferenceModel::execute(InferenceEngine::EspressoMilInferenceModel *this)
{
  v1 = *(this + 30);
  v2 = espresso_plan_execute_sync();
  boost::filesystem::path::path(__p, "Unable to execute model.");
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = v9;
    v5 = __p[0];
    status_string = espresso_get_status_string();
    v7 = __p;
    if (v4 < 0)
    {
      v7 = v5;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v10, "%s Error: %d, %s", v7, v2, status_string);
    std::logic_error::logic_error(exception, &v10);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2054C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void *std::__shared_ptr_emplace<InferenceEngine::EspressoMilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,std::allocator<InferenceEngine::EspressoMilIO>,0>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_284ED0;
  InferenceEngine::EspressoMilIO::EspressoMilIO((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::EspressoMilIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_284ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t InferenceEngine::MilInferenceModel::MilInferenceModel(uint64_t a1, std::string *a2)
{
  *a1 = off_284F20;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 32));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  *(a1 + 144) = 0u;
  *(a1 + 64) = 0u;
  v5 = (a1 + 64);
  *(a1 + 112) = 0u;
  v6 = (a1 + 112);
  v7 = (a1 + 88);
  *(a1 + 160) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v23, a2);
  std::__fs::filesystem::path::parent_path[abi:ne200100](&v23, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v23;
  }

  InferenceEngine::Utils::read_json_from_file(&v18, v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  v8 = *(a1 + 32);
  *(a1 + 32) = v19[0];
  v19[0] = v8;
  v9 = *(a1 + 40);
  *(a1 + 40) = v20;
  v20 = v9;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v19);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v20, v19[0]);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&buf, "model_file");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v4, &buf.__r_.__value_.__l.__data_, &v18);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &v18);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, v21, &buf);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&buf, "model_parameters");
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,0>(v4, &buf.__r_.__value_.__l.__data_, &__p, v15);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  v10 = *(a1 + 48);
  *(a1 + 48) = v15[0];
  v15[0] = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = v16;
  v16 = v11;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a1 + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v15);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v16, v15[0]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&__p);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&__p.__r_.__value_.__l.__size_, __p.__r_.__value_.__s.__data_[0]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__p, "model_name");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v4, &__p.__r_.__value_.__l.__data_, &buf);
  if (*(a1 + 111) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 104) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&__p, "model_function");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("main", v4, &__p.__r_.__value_.__l.__data_, &buf);
  if (*(a1 + 135) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 128) = *(&buf.__r_.__value_.__l + 2);
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&buf, "model_dynamic_shape");
  __p.__r_.__value_.__s.__data_[0] = 0;
  v12 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<BOOL,0>(v4, &buf.__r_.__value_.__l.__data_, &__p);
  *(a1 + 136) = v12;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v12);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 135) < 0)
    {
      v6 = *v6;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Load model with %s function", &buf, 0xCu);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_205B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(a11);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(v43);
  if (v40[135] < 0)
  {
    operator delete(*v44);
  }

  if (v40[111] < 0)
  {
    operator delete(*v46);
  }

  if (v40[87] < 0)
  {
    operator delete(*v45);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v42);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v41);
  if (v40[31] < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void InferenceEngine::MilInferenceModel::~MilInferenceModel(InferenceEngine::MilInferenceModel *this)
{
  *this = off_284F20;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 184);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::~__hash_table(this + 144);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 48);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 7, *(this + 48));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(this + 32);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(this + 5, *(this + 32));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void InferenceEngine::MilInferenceModel::add_model_ios(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v23, v3);
      boost::filesystem::path::path(&__p, "name");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v23, &__p.__r_.__value_.__l.__data_, &v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(&v20, "io_name");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v23, &v20.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      boost::filesystem::path::path(v18, "io_dtype");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v23, v18, &v20);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      boost::filesystem::path::path(buf, "shape");
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v7.n128_f64[0] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<unsigned long>,0>(v23, buf, &v15, v18);
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v28 < 0)
      {
        operator delete(*buf);
      }

      (*(*a1 + 80))(&v15, a1, &v22, &__p, &v20, v18, v7);
      *buf = &v22;
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v22.__r_.__value_.__l.__data_);
      v10 = v15;
      v9 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v8[6];
      v8[5] = v10;
      v8[6] = v9;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      LogObject = InferenceEngine::Diagnostics_GetLogObject(v8);
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
      {
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v22;
        }

        else
        {
          v13 = v22.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v13;
        v26 = 2080;
        v27 = p_p;
        _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Added IO: %s -> %s", buf, 0x16u);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v23);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v24, v23[0]);
      v3 += 16;
    }

    while (v3 != v4);
  }
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<unsigned long>,0>@<D0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v13, v10);
    v11 = std::string::insert(&v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v14, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v14);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v13, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v13);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v14, &v13))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a4, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  else
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v14);
    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<unsigned long>,std::vector<unsigned long>,0>(v8, a4);
  }

  return result;
}

void sub_206310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void InferenceEngine::MilInferenceModel::prepare(InferenceEngine::MilInferenceModel *this)
{
  boost::filesystem::path::path(__p, "model_inputs");
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, __p, v3, v7);
  v2[0] = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  boost::filesystem::path::path(v3, "model_outputs");
  memset(v2, 0, sizeof(v2));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, v3, v2, __p);
  v8 = v2;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }

  InferenceEngine::MilInferenceModel::add_model_ios(this, v7, this + 18);
  InferenceEngine::MilInferenceModel::add_model_ios(this, __p, this + 23);
  v3[0] = __p;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v3);
  __p[0] = v7;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_206470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v25 - 24) = v24;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v25 - 24));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a19 = (v25 - 48);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v13, v10);
    v11 = std::string::insert(&v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v14, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v14);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v13, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v13);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v14, &v13))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a4, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  else
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v14);
    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v8, a4);
  }
}

void sub_206618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void InferenceEngine::MilInferenceModel::clean(InferenceEngine::MilInferenceModel *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 144);

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 184);
}

void InferenceEngine::MilInferenceModel::get_all_input_names(InferenceEngine::MilInferenceModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  boost::filesystem::path::path(&__p, "model_inputs");
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, &__p.__r_.__value_.__l.__data_, v8, &v11);
  v6 = v8;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = v11;
  for (i = v12; v4 != i; v4 += 16)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v6, v4);
    boost::filesystem::path::path(v8, "name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", &v6, v8, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6);
  }

  __p.__r_.__value_.__r.__words[0] = &v11;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2067EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void InferenceEngine::MilInferenceModel::get_all_output_names(InferenceEngine::MilInferenceModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  boost::filesystem::path::path(&__p, "model_outputs");
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, &__p.__r_.__value_.__l.__data_, v8, &v11);
  v6 = v8;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = v11;
  for (i = v12; v4 != i; v4 += 16)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v6, v4);
    boost::filesystem::path::path(v8, "name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", &v6, v8, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6);
  }

  __p.__r_.__value_.__r.__words[0] = &v11;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2069B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void InferenceEngine::MilInferenceModel::set_input(uint64_t a1, InferenceEngine::DataTensor **a2)
{
  InferenceEngine::DataTensor::get_name(*a2, &v21);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 144), &v21.__r_.__value_.__l.__data_);
  InferenceEngine::DataTensor::get_name(*a2, &v18);
  v5 = std::string::insert(&v18, 0, "The key is not found: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = InferenceEngine::Utils::assert_with_log(v4 != 0, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v7);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_DEBUG))
  {
    InferenceEngine::MilInferenceModel::set_input(a2, LogObject);
  }

  InferenceEngine::DataTensor::get_name(*a2, &v21);
  __p[0] = &v21;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 144), &v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v10 = *a2;
  rank = InferenceEngine::DataTensor::get_rank(v9[5]);
  InferenceEngine::DataTensor::set_rank(v10, rank);
  if (*(a1 + 136) == 1)
  {
    InferenceEngine::DataTensor::get_shape(*a2, 0, &v21.__r_.__value_.__l.__data_);
    InferenceEngine::DataTensor::get_shape(v9[5], 0, __p);
    InferenceEngine::DataTensor::valid_shape(&v21, __p, 0, 1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21.__r_.__value_.__r.__words[0])
    {
      v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v12 = v9[5];
    InferenceEngine::DataTensor::get_shape(*a2, 0, v17);
    InferenceEngine::DataTensor::resize(v12, v17);
    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    (*(*v9[5] + 16))(v9[5]);
  }

  else
  {
    InferenceEngine::DataTensor::get_shape(*a2, 0, &v21.__r_.__value_.__l.__data_);
    InferenceEngine::DataTensor::get_shape(v9[5], 0, __p);
    InferenceEngine::DataTensor::valid_shape(&v21, __p, 0, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21.__r_.__value_.__r.__words[0])
    {
      v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v13 = *a2;
  v14 = v9[6];
  v15 = v9[5];
  v16 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InferenceEngine::DataTensor::cast_data_to_target_tensor(v13, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_206CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MilInferenceModel::get_output(uint64_t a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 184), a2) != 0;
  std::operator+<char>();
  InferenceEngine::Utils::assert_with_log(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 184), a2);
  v6 = v5;
  if (*(a1 + 136) == 1)
  {
    (*(*v5[5] + 24))(v5[5]);
  }

  InferenceEngine::DataTensor::get_dtype(v6[5], &__p);
  InferenceEngine::DataTensor::get_shape(v6[5], 0, &v7);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long>,0>();
}

void sub_206F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MilInferenceModel::get_output_io(uint64_t a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>((a1 + 184), a2) != 0;
  std::operator+<char>();
  InferenceEngine::Utils::assert_with_log(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::MilIO>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 184), a2);
  v6 = v5;
  if (*(a1 + 136) == 1)
  {
    (*(*v5[5] + 24))(v5[5]);
  }

  InferenceEngine::MilIO::get_io_name(v6[5], &__p);
  InferenceEngine::DataTensor::get_dtype(v6[5], &v8);
  InferenceEngine::DataTensor::get_shape(v6[5], 0, &v7);
  std::allocate_shared[abi:ne200100]<InferenceEngine::MilIO,std::allocator<InferenceEngine::MilIO>,std::string const&,std::string,std::string,std::vector<unsigned long>,0>();
}

void sub_2070D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v27 = *(v25 + 8);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<InferenceEngine::MilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,std::allocator<InferenceEngine::MilIO>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_284840;
  InferenceEngine::MilIO::MilIO(a1 + 3);
  return a1;
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<unsigned long>,std::vector<unsigned long>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>,0>(a1, a2);
}

void sub_207260(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>,0>(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  return nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>>(a1, a2);
}

void sub_207354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>>(unsigned __int8 *a1, uint64_t a2)
{
  v12 = 0uLL;
  v13 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  std::vector<std::pair<int,int>>::reserve(&v12, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v11);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v10, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v10);
  for (i = *(&v12 + 1); !nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v11, v10); i = v7 + 8)
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v11);
    v14 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long,0>(v6, &v14);
    v7 = std::vector<unsigned long>::insert(&v12, i, &v14);
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v11);
  }

  v8 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v8;
    operator delete(v8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  return result;
}

void sub_2074DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long,0>(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    boost::filesystem::path::path(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 1);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_2075FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(a1, a2);
}

void sub_207694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  if (*result != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    boost::filesystem::path::path(&v12, v9);
    v10 = std::string::insert(&v12, 0, "type must be array, but is ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v13, exception);
  }

  v3 = *(result + 8);
  if (v3 != a2)
  {
    v4 = v3[1];
    v5 = &v4[-*v3] >> 4;
    v7 = *v3;

    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a2, v7, v4, v5);
  }

  return result;
}

void sub_2077B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v16, a2, a3, v8);
    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, v14);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v15, a2, &a2[v12], v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, &a2[v12], a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

void InferenceEngine::MilInferenceModel::set_input(InferenceEngine::DataTensor **a1, NSObject *a2)
{
  InferenceEngine::DataTensor::get_name(*a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *buf = 136315138;
  v6 = p_p;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Set input: %s", buf, 0xCu);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void InferenceEngine::MLInferenceModel::MLInferenceModel(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_284F98;
  a1[1] = 0;
  a1[2] = 0;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12.__pn_, a2);
  std::__fs::filesystem::__status(&v12, 0);
  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (!v11 || v11 == 255)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v12.__pn_, "Model config %s doesn't exist!", v8);
    std::logic_error::logic_error(exception, &v12.__pn_);
  }

  v5 = *(a3 + 23);
  if (v5 < 0)
  {
    if (*(a3 + 8) == 8 && **a3 == 0x6F73736572707365)
    {
LABEL_8:
      std::allocate_shared[abi:ne200100]<InferenceEngine::EspressoMilInferenceModel,std::allocator<InferenceEngine::EspressoMilInferenceModel>,std::string const&,0>();
    }

    if (*(a3 + 8) != 8)
    {
LABEL_19:
      v9 = __cxa_allocate_exception(0x10uLL);
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v12.__pn_, "Unsupported inference type %s! Inference type can be either %s or %s.", v10, "espresso", "mil2bnns");
      std::logic_error::logic_error(v9, &v12.__pn_);
    }

    v6 = *a3;
  }

  else
  {
    if (v5 != 8)
    {
      goto LABEL_19;
    }

    v6 = a3;
    if (*a3 == 0x6F73736572707365)
    {
      goto LABEL_8;
    }
  }

  if (*v6 == 0x736E6E62326C696DLL)
  {
    std::allocate_shared[abi:ne200100]<InferenceEngine::Mil2BnnsMilInferenceModel,std::allocator<InferenceEngine::Mil2BnnsMilInferenceModel>,std::string const&,0>();
  }

  goto LABEL_19;
}

void sub_207E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MLInferenceModel::~MLInferenceModel(InferenceEngine::MLInferenceModel *this)
{
  *this = off_284F98;
  (*(**(this + 1) + 8))(*(this + 1));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void InferenceEngine::MLInferenceModel::set_input(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_207F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MLInferenceModel::set_input(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 16))(v3, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_20804C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::MLInferenceModel::reset(InferenceEngine::MLInferenceModel *this)
{
  (*(**(this + 1) + 8))(*(this + 1));
  v2 = ***(this + 1);

  return v2();
}

void *std::__shared_ptr_emplace<InferenceEngine::EspressoMilInferenceModel>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<InferenceEngine::EspressoMilInferenceModel>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_285000;
  InferenceEngine::EspressoMilInferenceModel::EspressoMilInferenceModel(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<InferenceEngine::EspressoMilInferenceModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_285000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t InferenceEngine::VectorOps::float32_to_float16(InferenceEngine::VectorOps *this, float a2)
{
  v2 = LODWORD(a2) >> 31;
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = ((LODWORD(a2) & 0x7FFFFFu) >> 13) | (LODWORD(a2) >> 31 << 15) | ((LODWORD(a2) >> 23 << 10) + 0x4000);
  if (v3 >= 0x8F)
  {
    v5 = (LODWORD(a2) >> 31 << 15) | 0x7C00;
  }

  v6 = ((v4 | 0x800000u) >> (118 - v3) >> 13) | (v2 << 15);
  v7 = v2 << 15;
  if (v3 <= 0x66)
  {
    LOWORD(v6) = v7;
  }

  if (v3 <= 0x70)
  {
    LOWORD(v5) = v6;
  }

  v8 = v7 | 0x7C00;
  v9 = v7 | 0x7FFF;
  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v3 != 255)
  {
    return v5;
  }

  return v10;
}

InferenceEngine::VectorOps *InferenceEngine::VectorOps::convert_fp32_to_fp16@<X0>(float **a1@<X0>, void *a2@<X8>)
{
  result = std::vector<unsigned short>::vector[abi:ne200100](a2, a1[1] - *a1);
  v5 = a1;
  v4 = *a1;
  v6 = v5[1] - v4;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = *result;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = *v4++;
      result = InferenceEngine::VectorOps::float32_to_float16(result, v10);
      *v8++ = result;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_208494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::Utils::read_metadata_from_file@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  LogObject = InferenceEngine::Diagnostics_GetLogObject(a1);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (a1[23] >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Read metadata from %s", buf, 0xCu);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::ifstream::basic_ifstream(buf, a1);
  if (!v20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (a1[23] >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    InferenceEngine::StringFormatter::StringFormatter(&__p, "Can't open file from %s", v13);
    std::logic_error::logic_error(exception, &__p);
  }

  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v6 = std::locale::use_facet(&v14, &std::ctype<char>::id);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v14);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v18 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::string&>(&__p, v17, 1, &v14);
    std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v17);
    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 16))
    {
      v10 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const&>(a2, &v14);
    }

    else
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(*(a2 + 8), &v14);
      v10 = v9 + 16;
    }

    *(a2 + 8) = v10;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v14);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v15, LOBYTE(v14.__locale_));
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_20880C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a22);
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t InferenceEngine::Utils::read_json_from_file@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  LogObject = InferenceEngine::Diagnostics_GetLogObject(a1);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (a1[23] >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Read json from %s", buf, 0xCu);
  }

  std::ifstream::basic_ifstream(buf, a1);
  if (!v13)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v9, "Can't open file from %s", v8);
    std::logic_error::logic_error(exception, &v9);
  }

  v11 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parse<std::ifstream &>(buf, v10, 1, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:ne200100](v10);
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  return std::ios::~ios();
}

void sub_208AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t InferenceEngine::Utils::assert_with_log(uint64_t result, char *a2)
{
  if ((result & 1) == 0)
  {
    InferenceEngine::Utils::assert_with_log(a2);
  }

  return result;
}

void InferenceEngine::Utils::assert_with_log(char *a1)
{
  LogObject = InferenceEngine::Diagnostics_GetLogObject(a1);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
  {
    if (a1[23] >= 0)
    {
      v3 = a1;
    }

    else
    {
      v3 = *a1;
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_0, LogObject, OS_LOG_TYPE_INFO, "Assertion Error: %s", &v4, 0xCu);
  }

  __assert_rtn("assert_with_log", "Utils.cpp", 80, "expr");
}

std::string *InferenceEngine::StringFormatter::StringFormatter(std::string *this, const char *a2, ...)
{
  va_start(va, a2);
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  StringFormatter::append(this, a2, va);
  return this;
}

void sub_208C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::Diagnostics_GetLogObject(InferenceEngine *this)
{
  if (InferenceEngine::Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    InferenceEngine::Diagnostics_GetLogObject();
  }

  return InferenceEngine::Diagnostics_GetLogObject(void)::__profile_log_default;
}

void sub_208F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  InferenceEngine::P2ASoundStormIOProcessor::~P2ASoundStormIOProcessor(v20);
  _Unwind_Resume(a1);
}

void InferenceEngine::P2ASoundStormPromptExtractionIOProcessor::process_outputs(uint64_t a1, void *a2, int a3)
{
  boost::filesystem::path::path(v14, "target");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v14);
  if (v6)
  {
    v7 = v6[5];
    v8 = v6[6];
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    boost::filesystem::path::path(v14, "pred_code");
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<SiriTTS::ForcedAlignment::Phoneme>>>>::find<std::string>(a2, v14);
    if (v9)
    {
      v10 = v9[6];
      v12 = v9[5];
      v13 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      InferenceEngine::SoundStormIOProcessor::check_outputs<int>(a1, &v12, a3);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      InferenceEngine::DataTensor::get_3d_array<float>(v7, v14);
      (*(*a1 + 80))(a1, a2, v14);
      boost::filesystem::path::path(v11, "target");
      InferenceEngine::DataTensor::build_from_3d_array<float>(v11, v14);
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_209914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void ***__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void **a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  __p = &a40;
  std::vector<std::vector<std::vector<std::vector<std::vector<float>>>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  *(v47 + 24) = v48 - 176;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a40);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void sub_209BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(*(v33 + 24));
  }

  JUMPOUT(0x209B94);
}

void sub_209C10()
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v0 + 64));
  }

  JUMPOUT(0x209BC0);
}

void sub_209C28()
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v0 + 96));
  }

  JUMPOUT(0x209B58);
}

void sub_209C40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x209B68);
}

void sub_209C58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x209B88);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::at(uint64_t a1, const void **a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    boost::filesystem::path::path(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use at() with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(304, &v9, exception);
  }

  return std::map<std::string,std::string>::at(*(a1 + 8), a2);
}

void sub_209DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      __cxa_end_catch();
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_209E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void InferenceEngine::DataTensor::build_from_5d_array<float>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = v2;
  v3 = *v2;
  __p[1] = (0xAAAAAAAAAAAAAAABLL * (v4[1] - v3));
  v6 = v3;
  v5 = *v3;
  __p[2] = (0xAAAAAAAAAAAAAAABLL * (v6[1] - v5));
  v8 = v5;
  v7 = *v5;
  __p[3] = (0xAAAAAAAAAAAAAAABLL * (v8[1] - v7));
  __p[4] = ((v7[1] - *v7) >> 2);
  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v9, __p, &v11, 5uLL);
  InferenceEngine::DataUtils::get_type_string<float>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_209FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::get_4d_array<float>(InferenceEngine::DataTensor *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    {
      InferenceEngine::DataTensor::get_4d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_4d_array<float>();
  }

  {
    InferenceEngine::DataTensor::get_4d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  InferenceEngine::DataTensor::get_shape(this, 0, __p);
  InferenceEngine::DataUtils::convert_data_to_4d_array<float>(v9, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_20A1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::VectorOps::flatten_5d_to_1d<float>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(v8, 0, sizeof(v8));
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      InferenceEngine::VectorOps::flatten_4d_to_1d<float>((v3 + v5), __p);
      std::vector<std::vector<double>>::push_back[abi:ne200100](v8, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }

  TrainingUtils::flatten_2d_to_1d<float>(v8, a2);
  __p[0] = v8;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_20A288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void InferenceEngine::DataUtils::convert_data_to_4d_array<float>(uint64_t a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] - *a2 != 32)
  {
    InferenceEngine::DataUtils::convert_data_to_4d_array<float>();
  }

  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  std::vector<float>::vector[abi:ne200100](__p, v4[3]);
  std::vector<std::vector<float>>::vector[abi:ne200100](v18, v9);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](v19, v8);
  std::vector<std::vector<std::vector<std::vector<float>>>>::vector[abi:ne200100](a3, v7);
  v20 = v19;
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = v18;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v10 = *a2;
  v11 = **a2;
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      if (v10[1])
      {
        v13 = 0;
        do
        {
          v14 = v10[2];
          if (v14)
          {
            v15 = 0;
            v16 = 0;
            do
            {
              memcpy(*(*(*(*a3 + 24 * i) + 24 * v13) + v15), (a1 + 4 * v10[3] * v16++ + 4 * v14 * v13 * v10[3] + 4 * v14 * i * v10[3] * v10[1]), 4 * v10[3]);
              v10 = *a2;
              v14 = (*a2)[2];
              v15 += 24;
            }

            while (v16 < v14);
          }

          ++v13;
        }

        while (v13 < v10[1]);
        v11 = *v10;
      }
    }
  }
}

void sub_20A450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a14;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(uint64_t a1, char ****a2, char ****a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<std::vector<float>>>>,std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*,std::vector<std::vector<std::vector<float>>>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<std::vector<std::vector<float>>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<std::vector<double>>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char ****std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *,std::vector<std::vector<std::vector<float>>> *>(int a1, char ****a2, char ****a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::vector<std::vector<float>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::vector<std::vector<float>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, char ***a2, char ***a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<std::vector<float>>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<SiriTTS::ForcedAlignment::Phoneme>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char ***std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(int a1, char ***a2, char ***a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void InferenceEngine::DataTensor::get_4d_array<float>()
{
  __assert_rtn("get_4d_array", "DataTensor.hpp", 290, "0");
}

{
  __assert_rtn("get_4d_array", "DataTensor.hpp", 288, "typeid(T) == typeid(int32_t)");
}

{
  __assert_rtn("get_4d_array", "DataTensor.hpp", 284, "typeid(T) == typeid(float)");
}

void sub_20B1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v15 = *(v13 - 48);
  if (v15)
  {
    *(v13 - 40) = v15;
    operator delete(v15);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_20B510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a12, a13);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_20B6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a22, a23);

  _Unwind_Resume(a1);
}

void sub_20B7F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_20BA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, SiriTTS::TTSTrainer *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  std::unique_ptr<SiriTTS::TTSTrainer>::~unique_ptr[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

SiriTTS::TTSTrainer **std::unique_ptr<SiriTTS::TTSTrainer>::~unique_ptr[abi:ne200100](SiriTTS::TTSTrainer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SiriTTS::TTSTrainer::~TTSTrainer(v2);
    operator delete();
  }

  return a1;
}

void sub_20C028(_Unwind_Exception *a1)
{
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v3 - 88);

  _Unwind_Resume(a1);
}

void sub_20C898(_Unwind_Exception *a1)
{
  std::__function::__value_func<int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__value_func[abi:ne200100](v3 - 104);

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::vector<std::tuple<unsigned long,float const*>>::__init_with_size[abi:ne200100]<std::tuple<unsigned long,float const*> const*,std::tuple<unsigned long,float const*> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<unsigned long,float const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_20CAE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<SiriTTS::TTSTrainer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

SiriTTS::TTSTrainer *std::__shared_ptr_pointer<SiriTTS::TTSTrainer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    SiriTTS::TTSTrainer::~TTSTrainer(result);

    operator delete();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SiriTTS::TTSTrainer  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage)>,int ()(SiriTTS::TTSTrainer::CallbackMessage)>::~__func(uint64_t a1)
{

  operator delete();
}

id std::__function::__func<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage)>,int ()(SiriTTS::TTSTrainer::CallbackMessage)>::__clone(uint64_t a1, void *a2)
{
  *a2 = off_285158;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage)>,int ()(SiriTTS::TTSTrainer::CallbackMessage)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage)>,int ()(SiriTTS::TTSTrainer::CallbackMessage)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage),std::allocator<int({block_pointer} {__strong})(SiriTTS::TTSTrainer::CallbackMessage)>,int ()(SiriTTS::TTSTrainer::CallbackMessage)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id SiriTTSTrainerGetLog()
{
  if (qword_28CCF8 != -1)
  {
    dispatch_once(&qword_28CCF8, &__block_literal_global_2);
  }

  v1 = _MergedGlobals;

  return v1;
}

void sub_20E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_20E62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(nlohmann::detail::input_stream_adapter *this)
{
  *(this + 24) = vaddq_s64(*(this + 24), vdupq_n_s64(1uLL));
  if (*(this + 20) == 1)
  {
    *(this + 20) = 0;
    result = *(this + 4);
  }

  else
  {
    result = nlohmann::detail::input_stream_adapter::get_character(this);
    *(this + 4) = result;
  }

  if (result != -1)
  {
    v4 = result;
    std::vector<char>::push_back[abi:ne200100](this + 48, &v4);
    result = *(this + 4);
    if (result == 10)
    {
      v3 = *(this + 5) + 1;
      *(this + 4) = 0;
      *(this + 5) = v3;
    }
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  std::vector<char>::push_back[abi:ne200100]((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = (a1[5] + 1);
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const std::string *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

uint64_t std::istream::operator>>()
{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}