void sub_220978908(_Unwind_Exception *a1)
{
  v2 = STACK[0xA88];
  if (STACK[0xA88])
  {
    STACK[0xA90] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100EmRKDF16_(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_220978AAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE11__vallocateB8ne200100Em(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDF16_EEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDF16_EEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27844FAC8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void _Z15_computeArgTopKIDF16_EvPKT_iiPi(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
      v42 = a1;
      if (a2 >= 1)
      {
        v5 = 0;
        v6 = a3;
        v7 = a2;
        do
        {
          v8 = __p;
          v9 = v40;
          v10 = v40 - __p;
          v11 = (v40 - __p) >> 2;
          if (v11 >= v6)
          {
            if (*(a1 + 2 * v5) > *(a1 + 2 * *__p))
            {
              v43 = v42;
              if (v11 >= 2)
              {
                v13 = *__p;
                v14 = _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEET1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(__p, &v43, (v40 - __p) >> 2);
                v15 = (v40 - 4);
                if (v40 - 4 == v14)
                {
                  *v14 = v13;
                }

                else
                {
                  *v14 = *v15;
                  *v15 = v13;
                  _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEEvT1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(v8, (v14 + 1), &v43, ((v14 + 1) - v8) >> 2);
                }
              }

              v20 = v40;
              v21 = v40 - 4;
              v40 = v21;
              if (v21 >= v41)
              {
                v22 = __p;
                v23 = v21 - __p;
                v24 = (v21 - __p) >> 2;
                v25 = v24 + 1;
                if ((v24 + 1) >> 62)
                {
LABEL_48:
                  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
                }

                v26 = v41 - __p;
                if ((v41 - __p) >> 1 > v25)
                {
                  v25 = v26 >> 1;
                }

                if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v27 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v27);
                }

                v28 = v24;
                v29 = (4 * v24);
                v30 = &v29[-v28];
                *v29 = v5;
                v20 = (v29 + 1);
                memcpy(v30, v22, v23);
                v31 = __p;
                __p = v30;
                v40 = v20;
                v41 = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                *v21 = v5;
              }

              v40 = v20;
              v43 = v42;
              _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEEvT1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(__p, v20, &v43, (v20 - __p) >> 2);
            }
          }

          else
          {
            if (v40 >= v41)
            {
              v16 = v11 + 1;
              if ((v11 + 1) >> 62)
              {
                goto LABEL_48;
              }

              v17 = v41 - __p;
              if ((v41 - __p) >> 1 > v16)
              {
                v16 = v17 >> 1;
              }

              if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v18 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v18);
              }

              *(4 * v11) = v5;
              v12 = 4 * v11 + 4;
              memcpy(0, v8, v10);
              v19 = __p;
              __p = 0;
              v40 = v12;
              v41 = 0;
              if (v19)
              {
                operator delete(v19);
                v8 = __p;
              }

              else
              {
                v8 = 0;
              }
            }

            else
            {
              *v40 = v5;
              v12 = (v9 + 4);
            }

            v40 = v12;
            v43 = v42;
            _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEEvT1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(v8, v12, &v43, (v12 - v8) >> 2);
          }

          ++v5;
        }

        while (v7 != v5);
        v32 = __p;
        for (i = v40; __p != i; v40 = i)
        {
          v34 = (i - v32) >> 2;
          *(a4 - 4 + i - v32) = *v32;
          v43 = v42;
          if (v34 >= 2)
          {
            v35 = *v32;
            v36 = _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEET1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(v32, &v43, v34);
            v37 = (i - 4);
            if (i - 4 == v36)
            {
              *v36 = v35;
            }

            else
            {
              *v36 = *v37;
              *v37 = v35;
              _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEEvT1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(v32, (v36 + 1), &v43, ((v36 + 1) - v32) >> 2);
            }
          }

          v32 = __p;
          i = v40 - 4;
        }

        if (v32)
        {
          v40 = v32;
          operator delete(v32);
        }
      }
    }
  }
}

void sub_220978F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _computeArgTopK<float>(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
      v42 = a1;
      if (a2 >= 1)
      {
        v5 = 0;
        v6 = a3;
        v7 = a2;
        do
        {
          v8 = __p;
          v9 = v40;
          v10 = v40 - __p;
          v11 = (v40 - __p) >> 2;
          if (v11 >= v6)
          {
            if (*(a1 + 4 * v5) > *(a1 + 4 * *__p))
            {
              v43 = v42;
              if (v11 >= 2)
              {
                v13 = *__p;
                v14 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(__p, &v43, (v40 - __p) >> 2);
                v15 = (v40 - 4);
                if (v40 - 4 == v14)
                {
                  *v14 = v13;
                }

                else
                {
                  *v14 = *v15;
                  *v15 = v13;
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(v8, (v14 + 1), &v43, ((v14 + 1) - v8) >> 2);
                }
              }

              v20 = v40;
              v21 = v40 - 4;
              v40 = v21;
              if (v21 >= v41)
              {
                v22 = __p;
                v23 = v21 - __p;
                v24 = (v21 - __p) >> 2;
                v25 = v24 + 1;
                if ((v24 + 1) >> 62)
                {
LABEL_48:
                  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
                }

                v26 = v41 - __p;
                if ((v41 - __p) >> 1 > v25)
                {
                  v25 = v26 >> 1;
                }

                if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v27 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v27);
                }

                v28 = v24;
                v29 = (4 * v24);
                v30 = &v29[-v28];
                *v29 = v5;
                v20 = (v29 + 1);
                memcpy(v30, v22, v23);
                v31 = __p;
                __p = v30;
                v40 = v20;
                v41 = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                *v21 = v5;
              }

              v40 = v20;
              v43 = v42;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(__p, v20, &v43, (v20 - __p) >> 2);
            }
          }

          else
          {
            if (v40 >= v41)
            {
              v16 = v11 + 1;
              if ((v11 + 1) >> 62)
              {
                goto LABEL_48;
              }

              v17 = v41 - __p;
              if ((v41 - __p) >> 1 > v16)
              {
                v16 = v17 >> 1;
              }

              if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v18 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v18);
              }

              *(4 * v11) = v5;
              v12 = 4 * v11 + 4;
              memcpy(0, v8, v10);
              v19 = __p;
              __p = 0;
              v40 = v12;
              v41 = 0;
              if (v19)
              {
                operator delete(v19);
                v8 = __p;
              }

              else
              {
                v8 = 0;
              }
            }

            else
            {
              *v40 = v5;
              v12 = (v9 + 4);
            }

            v40 = v12;
            v43 = v42;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(v8, v12, &v43, (v12 - v8) >> 2);
          }

          ++v5;
        }

        while (v7 != v5);
        v32 = __p;
        for (i = v40; __p != i; v40 = i)
        {
          v34 = (i - v32) >> 2;
          *(a4 - 4 + i - v32) = *v32;
          v43 = v42;
          if (v34 >= 2)
          {
            v35 = *v32;
            v36 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(v32, &v43, v34);
            v37 = (i - 4);
            if (i - 4 == v36)
            {
              *v36 = v35;
            }

            else
            {
              *v36 = *v37;
              *v37 = v35;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(v32, (v36 + 1), &v43, ((v36 + 1) - v32) >> 2);
            }
          }

          v32 = __p;
          i = v40 - 4;
        }

        if (v32)
        {
          v40 = v32;
          operator delete(v32);
        }
      }
    }
  }
}

void sub_2209792BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEEvT1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v8 = *(a2 - 4);
    v6 = (a2 - 4);
    v7 = v8;
    v9 = *a3;
    v10 = *v5;
    v11 = *(*a3 + 2 * v10);
    v12 = *(*a3 + 2 * v8);
    v13 = v10 < v8;
    if (v11 != v12)
    {
      v13 = v11 > v12;
    }

    if (v13)
    {
      do
      {
        *v6 = v10;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v10 = *v5;
        v14 = *(v9 + 2 * v10);
        v15 = v10 < v7;
        if (v14 != v12)
        {
          v15 = v14 > v12;
        }
      }

      while (v15);
      *v6 = v7;
    }
  }

  return result;
}

int *_ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERZ15_computeArgTopKIDF16_EvPKT_iiPiE11ArgComparerNS_11__wrap_iterIS6_EEEET1_SB_OT0_NS_15iterator_traitsISB_E15difference_typeE(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = &a1[v3 + 1];
    v6 = (2 * v3) | 1;
    v7 = 2 * v3 + 2;
    if (v7 < a3)
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = *(v4 + 2 * v8);
      v11 = *(v4 + 2 * v9);
      v12 = v8 < v9;
      if (v10 != v11)
      {
        v12 = v10 > v11;
      }

      v13 = !v12;
      if (v12)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v5 = (v5 + v14);
      if (!v13)
      {
        v6 = v7;
      }
    }

    *a1 = *v5;
    a1 = v5;
    v3 = v6;
  }

  while (v6 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v8 = *(a2 - 4);
    v6 = (a2 - 4);
    v7 = v8;
    v9 = *a3;
    v10 = *v5;
    v11 = *(*a3 + 4 * v10);
    v12 = *(*a3 + 4 * v8);
    v13 = v10 < v8;
    if (v11 != v12)
    {
      v13 = v11 > v12;
    }

    if (v13)
    {
      do
      {
        *v6 = v10;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v10 = *v5;
        v14 = *(v9 + 4 * v10);
        v15 = v10 < v7;
        if (v14 != v12)
        {
          v15 = v14 > v12;
        }
      }

      while (v15);
      *v6 = v7;
    }
  }

  return result;
}

int *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void _computeArgTopK<float>(float const*,int,int,int *)::ArgComparer &,std::__wrap_iter<int *>>(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = &a1[v3 + 1];
    v6 = (2 * v3) | 1;
    v7 = 2 * v3 + 2;
    if (v7 < a3)
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = *(v4 + 4 * v8);
      v11 = *(v4 + 4 * v9);
      v12 = v8 < v9;
      if (v10 != v11)
      {
        v12 = v10 > v11;
      }

      v13 = !v12;
      if (v12)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v5 = (v5 + v14);
      if (!v13)
      {
        v6 = v7;
      }
    }

    *a1 = *v5;
    a1 = v5;
    v3 = v6;
  }

  while (v6 <= (a3 - 2) / 2);
  return v5;
}

E5RT::ExecutionStream *cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::AJAXExtendE5MLModule(E5RT::ExecutionStream *a1, uint64_t a2, void *__src, size_t __len, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v14 = __len;
  if (__len)
  {
    memmove(&__p, __src, __len);
  }

  *(&__p + __len) = 0;
  std::unordered_map<std::string,std::string>::unordered_map(v15, a5);
  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::EspressoE5MLModule(a1, &v12);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v15);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkIOTypes(a1);
  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(a1);
  v9 = *(a1 + 2);
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  E5RT::ExecutionStream::PreWireInUseAllocations(*a1);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::resetInputs(a1, 0);
  return a1;
}

void sub_220979678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::~EspressoE5MLModule(v22);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkIOTypes(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this)
{
  v28 = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  std::string::basic_string[abi:ne200100]<0>(&v25, "in_new_token_mask");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  if (SBYTE7(v26) < 0)
  {
    operator delete(v25);
  }

  MEMORY[0x223D8F770](v21, v24);
  v25 = xmmword_220AE5290;
  v26 = unk_220AE52A0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v25, &v27, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(InputPortRef, v21, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v21);
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
  v4 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  *(this + 3) = E5RT::TensorDescriptor::GetNumElements(v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_keys");
  v5 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x223D8F770](v17, v24);
  v25 = xmmword_220AE5270;
  v26 = xmmword_220AE5270;
  v27 = *(this + 3);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v25, &v28, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v5, v17, &v14);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  E5RT::TensorDataType::~TensorDataType(v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values");
  v6 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x223D8F770](v13, v24);
  v25 = xmmword_220AE5270;
  v26 = xmmword_220AE5270;
  v27 = *(this + 3);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v25, &v28, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v6, v13, &v14);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  E5RT::TensorDataType::~TensorDataType(v13);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkInputTokenIDTensorType(this);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkSelfAttentionTensorType(this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v12, v24);
  v25 = xmmword_220AE52B0;
  v26 = unk_220AE52C0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v25, &v27, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(OutputPortRef, v12, &v14);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  E5RT::TensorDataType::~TensorDataType(v12);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "out_cached_keys");
  v8 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v11, v24);
  v25 = xmmword_220AE52D0;
  v26 = unk_220AE52E0;
  v27 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v25, &v28, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v8, v11, &v14);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  E5RT::TensorDataType::~TensorDataType(v11);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "out_cached_values");
  v9 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v10, v24);
  v25 = xmmword_220AE52D0;
  v26 = unk_220AE52E0;
  v27 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v14, &v25, &v28, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v9, v10, &v14);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  E5RT::TensorDataType::~TensorDataType(v10);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v22);
  E5RT::TensorDataType::~TensorDataType(v23);
  E5RT::TensorDataType::~TensorDataType(v24);
}

void sub_220979B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(&a13);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  E5RT::TensorDataType::~TensorDataType((v31 - 128));
  E5RT::TensorDataType::~TensorDataType((v31 - 112));
  E5RT::TensorDataType::~TensorDataType((v31 - 96));
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::resetInputs(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this, unint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions");
  v4 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  if (v5 < 2)
  {
    v4 = 0;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) >= 1)
  {
    memset_pattern16(v4, &unk_220AE5280, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::setInputTokenID(this, 0);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_mask");
  v6 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  if (v7 < 2)
  {
    v6 = 0;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if (v8 >= 1)
  {
    bzero(v6, v8);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getKVCache(this, &__p);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::reset(&__p, a2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::~EspressoE5MLModule(cgm::token_generation_inference::espresso_inference::EspressoE5MLModule *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::setInputTokenID(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this, __int16 a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_id_2U8LE");
  v3 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  v5 = v4;
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v5 >= 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  *v6 = a2;
}

void sub_220979EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::getKVCache(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "in_cached_keys");
  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getMemoryBoundToInputPort(a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_cached_values");
  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::getMemoryBoundToInputPort((a2 + 16));
  *(a2 + 32) = *(this + 3);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_220979F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::forwardToken(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this, __int16 a2, unint64_t a3)
{
  v5 = *(this + 3);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::setInputTokenID(this, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_mask");
  v6 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  v7 = a3 % v5;
  if (v8 >= 2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  *(v9 + 2 * v7) = COERCE_UNSIGNED_INT(1.0);
  cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::setSelfAttentionBuffer(this, a3);
  E5RT::ExecutionStream::ExecuteStreamSync(*this);
  *(v9 + 2 * v7) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "out_cached_keys");
  v10 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::outputSpan();
  v12 = v11;
  std::string::basic_string[abi:ne200100]<0>(v24, "in_cached_keys");
  v13 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  if (v12 >= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (v14 >= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  _ZN3cgm26token_generation_inference4ajax5utils17copyStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEEmmS7_mmm(v15, v12 >> 1, 0, 1uLL, v16, v14 >> 1, v7, *(this + 3), 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "out_cached_values");
  v17 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::outputSpan();
  v19 = v18;
  std::string::basic_string[abi:ne200100]<0>(v24, "in_cached_values");
  v20 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  if (v19 >= 2)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  if (v21 >= 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  _ZN3cgm26token_generation_inference4ajax5utils17copyStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEEmmS7_mmm(v22, v19 >> 1, 0, 1uLL, v23, v21 >> 1, v7, *(this + 3), 1);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22097A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::setSelfAttentionBuffer(E5RT::ExecutionStreamOperation **this, unint64_t a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[1]);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v23, InputPorts);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions");
  v4 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  if (v6 >= 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *v5.i16 = a2;
  v8 = 1;
  if (a2 + 1 > 1)
  {
    v8 = a2 + 1;
  }

  v9 = vdupq_n_s64(v8 - 1);
  v10 = -((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = xmmword_220AE5220;
  v12 = xmmword_220AE5230;
  v13 = xmmword_220AE5240;
  v14 = xmmword_220AE5250;
  v15 = (v7 + 8);
  v16 = 7;
  v17 = vdupq_n_s64(8uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v9, v14));
    if (vuzp1_s8(vuzp1_s16(v18, v5), v5).u8[0])
    {
      *(v15 - 4) = (v16 - 7) - *v5.i16;
    }

    if (vuzp1_s8(vuzp1_s16(v18, v5), *&v5).i8[1])
    {
      *(v15 - 3) = (v16 - 6) - *v5.i16;
    }

    if (vuzp1_s8(vuzp1_s16(v5, vmovn_s64(vcgeq_u64(v9, *&v13))), *&v5).i8[2])
    {
      *(v15 - 2) = (v16 - 5) - *v5.i16;
      *(v15 - 1) = (v16 - 4) - *v5.i16;
    }

    v19 = vmovn_s64(vcgeq_u64(v9, v12));
    if (vuzp1_s8(*&v5, vuzp1_s16(v19, v5)).i32[1])
    {
      *v15 = (v16 - 3) - *v5.i16;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(v19, v5)).i8[5])
    {
      v15[1] = (v16 - 2) - *v5.i16;
    }

    if (vuzp1_s8(*&v5, vuzp1_s16(v5, vmovn_s64(vcgeq_u64(v9, *&v11)))).i8[6])
    {
      v15[2] = (v16 - 1) - *v5.i16;
      v15[3] = v16 - *v5.i16;
    }

    v12 = vaddq_s64(v12, v17);
    v13 = vaddq_s64(v13, v17);
    v14 = vaddq_s64(v14, v17);
    v11 = vaddq_s64(v11, v17);
    v16 += 8;
    v15 += 8;
  }

  while (v10 + v16 != 7);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v23);
}

void sub_22097A3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkInputTokenIDTensorType(cgm::token_generation_inference::ajax::AJAXExtendE5MLModule *this)
{
  v9 = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_id_2U8LE");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223D8F770](v2, v6);
  v7 = xmmword_220AE52F8;
  v8 = 2;
  v4 = 0;
  v5 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v7, &v9, 3uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(InputPortRef, v2, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v2);
  E5RT::TensorDataType::~TensorDataType(v6);
}

void sub_22097A524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(&a10);
  E5RT::TensorDataType::~TensorDataType(&a18);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::AJAXExtendE5MLModule::checkSelfAttentionTensorType(E5RT::ExecutionStreamOperation **this)
{
  v13 = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this[1]);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v9, InputPorts);
  std::string::basic_string[abi:ne200100]<0>(v11, "in_relative_positions");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  if (v12.i8[7] < 0)
  {
    operator delete(v11[0]);
  }

  MEMORY[0x223D8F770](v8, v10);
  v4 = this[3];
  v11[0] = 1;
  v11[1] = v4;
  v12 = vdupq_n_s64(1uLL);
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v11, &v13, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(InputPortRef, v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v8);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v9);
  E5RT::TensorDataType::~TensorDataType(v10);
}

void sub_22097A6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(&a13);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a15);
  E5RT::TensorDataType::~TensorDataType((v15 - 72));
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::espresso_inference::E5MLModuleSettings::~E5MLModuleSettings(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 6));
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
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

void cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(cgm::token_generation_inference::ajax::utils::AJAXKVCache *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22097A8FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
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

void sub_22097AC5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
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

void sub_22097AE70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3cgm26token_generation_inference4ajax5utils17copyStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEEmmS7_mmm(void *result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  v27 = result;
  v28 = a2;
  v25 = a5;
  v26 = a6;
  if ((a6 - a7 - a9) / a8 != (a2 - a3 - a9) / a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Number of src strides dont match number of dst strides");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!a9)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v23, 0);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Strided Chunk length < 0: ", &v23, &v24);
    std::runtime_error::runtime_error(v22, &v24);
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a3;
  v10 = a9 - 1;
  if (a9 - 1 + a3 < a2)
  {
    v12 = a7;
    v15 = result;
    do
    {
      if (v10 + v12 >= v26)
      {
        break;
      }

      if (a9 == 1)
      {
        *(a5 + 2 * v12) = v15[v9];
      }

      else
      {
        v16 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v27, v9, a9);
        v18 = v17;
        v19 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v25, v12, a9);
        result = _ZN3cgm26token_generation_inference4ajax5utils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES7_(v16, v18, v19, v20);
        a2 = v28;
      }

      v9 += a4;
      v12 += a8;
    }

    while (v10 + v9 < a2);
  }

  return result;
}

void sub_22097B03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void *_ZN3cgm26token_generation_inference4ajax5utils4copyIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEES7_(void *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 != a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "dimensions mismatch");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2)
  {

    return memmove(__dst, __src, 2 * a2);
  }

  return __src;
}

uint64_t _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm_cold_1(exception);
  }

  return *a1 + 2 * a2;
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

uint64_t cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::AJAXE5MLModelBase(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  E5RT::ProgramLibrary::OpenLibrary();
  if (v12)
  {
    operator new();
  }

  v12 = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, &v11);
  v4 = v11.__r_.__value_.__r.__words[0];
  v11.__r_.__value_.__r.__words[0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v9 = 0;
  v10 = 0;
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::loadEmbeddingTable(&v9, &v11);
  v5 = *&v11.__r_.__value_.__l.__data_;
  *&v11.__r_.__value_.__l.__data_ = 0uLL;
  v6 = *(a1 + 24);
  *(a1 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (v11.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11.__r_.__value_.__l.__size_);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_22097B44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v20 = *(v17 + 24);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v17 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::create(std::string *this, const std::__fs::filesystem::path *a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = *this;
  }

  E5RT::ProgramLibrary::OpenLibrary();
  if (v9)
  {
    operator new();
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v2 = *(E5RT::ProgramLibrary::GetExportedFunctions(0) + 16);
  if (!v2)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "Failed to load base model due to no valid E5 functions found.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v10);
  }

  while (1)
  {
    std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>::pair[abi:ne200100](&v10, v2 + 1);
    v3 = strlen("load_embeddings");
    v4 = v3;
    v5 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v3 != v10.__r_.__value_.__l.__size_)
      {
LABEL_16:
        v7 = 1;
        goto LABEL_17;
      }

      if (v3 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v6 = v10.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v3 != SHIBYTE(v10.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_16;
      }

      v6 = &v10;
    }

    v7 = memcmp(v6, "load_embeddings", v4) != 0;
LABEL_17:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v5 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    if (v5 < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (v7)
    {
      operator new();
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_23;
    }
  }
}

void sub_22097B798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::AJAXE5MLModelBase(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::getSharedConstants(cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase *this@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 2))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "in_embeddings");
    v4 = *(this + 3);
    *(&v6 + 1) = *(this + 2);
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_map<std::string,std::shared_ptr<E5RT::MemoryObject>>::unordered_map(a2, __p, 1);
  }

  else
  {
    v7 = 0;
    *__p = 0u;
    v6 = 0u;
    std::unordered_map<std::string,std::shared_ptr<E5RT::MemoryObject>>::unordered_map(a2, __p, 1);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27844FAD0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__shared_ptr_pointer<E5RT::ProgramLibrary  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::ProgramLibrary  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ProgramLibrary  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t *std::shared_ptr<E5RT::ExecutionStreamOperation>::shared_ptr[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::MemoryObject>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

void cgm::token_generation_inference::ajax::AJAXE5MLModelLoader::createModelFromBundle(cgm::token_generation_inference::ajax::AJAXE5MLModelLoader *this, const TGIE5ModelConfiguration *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::extension[abi:ne200100]((this + 8), &v33);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".mil");
  v36.__data_ = &__p;
  v3 = std::__fs::filesystem::operator==[abi:ne200100](&v33, v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if (v3)
    {
LABEL_5:
      if ((*this - 2) < 2)
      {
        operator new();
      }

      if (*this == 1)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&v33, "Cannot load a MIL model without being told the ModelType");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v33);
    }
  }

  else if (v3)
  {
    goto LABEL_5;
  }

  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(this + 1), *(this + 2));
  }

  else
  {
    v33 = *(this + 8);
  }

  E5RT::ProgramLibrary::OpenLibrary();
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v31);
  TGIE5ModelConfiguration::e5FunctionNames(this, &__p);
  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v33.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_220940000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No function names in the model configuration, reading from the model bundle", &v33, 2u);
    }

    v8 = (ExportedFunctions + 2);
    v9 = MEMORY[0x277D86220];
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = (v8 + 1);
        if (*(v8 + 39) < 0)
        {
          v10 = *(v8 + 2);
        }

        LODWORD(v33.__r_.__value_.__l.__data_) = 136315138;
        *(v33.__r_.__value_.__r.__words + 4) = v10;
        _os_log_impl(&dword_220940000, v9, OS_LOG_TYPE_INFO, "Found exported function in model bundle: %s", &v33, 0xCu);
      }

      std::vector<std::string>::push_back[abi:ne200100](&__p, v8 + 1);
    }
  }

  v5 = E5RT::ProgramLibrary::GetExportedFunctions(v31);
  *(&v33.__r_.__value_.__s + 23) = 15;
  strcpy(&v33, "load_embeddings");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v5, &v33.__r_.__value_.__l.__data_);
  v7 = v6;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_16:
      operator new();
    }
  }

  else if (v6)
  {
    goto LABEL_16;
  }

  size = __p.__r_.__value_.__l.__size_;
  v11 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
  {
    v13 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v11;
        if (*(v11 + 23) < 0)
        {
          v14 = *v11;
        }

        LODWORD(v33.__r_.__value_.__l.__data_) = 136315138;
        *(v33.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&dword_220940000, v13, OS_LOG_TYPE_INFO, "Found exported function in model bundle: %s", &v33, 0xCu);
      }

      if (cgm::token_generation_inference::ajax::utils::isPromptFunctionName(v11))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          LOWORD(v33.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_220940000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Creating enumerated shape model", &v33, 2u);
        }

        operator new();
      }

      v11 += 24;
    }

    while (v11 != size);
    size = __p.__r_.__value_.__l.__size_;
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  v33.__r_.__value_.__s.__data_[0] = 0;
  v34 = 0;
  while (1)
  {
    if (v11 == size)
    {
      goto LABEL_46;
    }

    if (cgm::token_generation_inference::ajax::utils::isExtendFunctionName(v11))
    {
      break;
    }

    v11 += 24;
  }

  std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(&v33, v11);
LABEL_46:
  if (v34 == 1)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Legacy ANE model no longer supported");
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v30 = 4;
  strcpy(v29, "main");
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, v29))
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Bundle does not contain extend or main function.");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v15 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, v29);
  v16 = v15;
  if (!v15)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = v15[5];
  v18 = v16[6];
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  if (*this)
  {
    if (*this != 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v19 = (*(*v17 + 40))(v17);
    std::string::basic_string[abi:ne200100]<0>(v27, "out_logits");
    v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v19, v27);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (!v20)
    {
      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Missing port output logits required to determine ane vs gpu");
      __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v21 = E5RT::OperandDescriptor::TensorDescriptor(v20[5]);
    if (E5RT::TensorDescriptor::GetRank(v21) != 4)
    {
LABEL_53:
      operator new();
    }
  }

  v22 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v22, "Legacy ANE model no longer supported");
  __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22097C384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  __cxa_free_exception(v33);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  a27 = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(a1);
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

double std::__fs::filesystem::path::extension[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
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

TGIE5ModelConfiguration *TGIE5ModelConfiguration::e5FunctionNames@<X0>(TGIE5ModelConfiguration *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(&this[1].var1.var0.var0.var1 + 2);
  for (i = *&this[2].var0; v2 != i; v2 += 4)
  {
    this = std::vector<std::string>::push_back[abi:ne200100](a2, v2);
  }

  return this;
}

void sub_22097C6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
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

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_22097CB04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_22097CC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

E5RT::ExecutionStream *cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::AJAXPromptE5MLModule(E5RT::ExecutionStream *a1, uint64_t a2, void *__src, size_t __len, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = __len;
  if (__len)
  {
    memmove(&__p, __src, __len);
  }

  *(&__p + __len) = 0;
  std::unordered_map<std::string,std::string>::unordered_map(v13, a5);
  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::EspressoE5MLModule(a1, &v10);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v13);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::checkIOTypes(a1);
  return a1;
}

void cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::checkIOTypes(cgm::token_generation_inference::ajax::AJAXPromptE5MLModule *this)
{
  v24 = *MEMORY[0x277D85DE8];
  E5RT::TensorDataType::TensorDataType();
  E5RT::TensorDataType::TensorDataType();
  std::string::basic_string[abi:ne200100]<0>(&v18, "in_new_token_id_2U8LE");
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  MEMORY[0x223D8F770](v15, v17);
  v22 = xmmword_220AE53C0;
  v23 = 2;
  *&v19 = 0;
  v18 = 0uLL;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v18, &v22, &v24, 3uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(InputPortRef, v15, &v18);
  if (v18)
  {
    *(&v18 + 1) = v18;
    operator delete(v18);
  }

  E5RT::TensorDataType::~TensorDataType(v15);
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
  v4 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  *(this + 3) = *(*E5RT::TensorDescriptor::GetTensorShape(v4) + 8);
  std::string::basic_string[abi:ne200100]<0>(&v22, "in_relative_positions");
  v5 = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MEMORY[0x223D8F770](v14, v16);
  v6 = *(this + 3);
  *&v18 = 1;
  *(&v18 + 1) = v6;
  *&v19 = 1;
  *(&v19 + 1) = v6;
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v18, &v20, 4uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v5, v14, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "out_cached_keys");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v10, v16);
  v18 = xmmword_220AE5270;
  v19 = xmmword_220AE5270;
  v20 = *(this + 3);
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v18, &v21, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(OutputPortRef, v10, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v10);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "out_cached_values");
  v8 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MEMORY[0x223D8F770](v9, v16);
  v18 = xmmword_220AE5270;
  v19 = xmmword_220AE5270;
  v20 = *(this + 3);
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, &v18, &v21, 5uLL);
  cgm::token_generation_inference::ajax::utils::checkTensorType(v8, v9, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(v9);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  E5RT::TensorDataType::~TensorDataType(v16);
  E5RT::TensorDataType::~TensorDataType(v17);
}

void sub_22097D2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  E5RT::TensorDataType::~TensorDataType(&a12);
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  E5RT::TensorDataType::~TensorDataType(&a23);
  E5RT::TensorDataType::~TensorDataType(&a25);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::setUp(E5RT::ExecutionStreamOperation **this, const cgm::token_generation_inference::ajax::utils::AJAXKVCache *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "out_cached_keys");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  v5 = *(a2 + 1);
  v27 = *a2;
  v28 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindPreAllocatedMemoryToPort(OutputPortRef, &v27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "out_cached_values");
  v6 = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  v7 = *(a2 + 3);
  v25 = *(a2 + 2);
  v26 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindPreAllocatedMemoryToPort(v6, &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::bindAllPorts(this);
  v8 = this[2];
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  E5RT::ExecutionStream::PreWireInUseAllocations(*this);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_relative_positions");
  v9 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  v11 = v10 >> 1;
  if (v10 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if ((2 * v11) >= 1)
  {
    memset_pattern16(v12, &unk_220AE5280, 2 * v11);
  }

  v13 = this[3];
  if (v13)
  {
    v14 = 0;
    v15 = v13 + 7;
    v16 = -v13;
    v17 = v12 + 2 * v13 - 8;
    do
    {
      if ((v13 - 1) >= v14)
      {
        v18 = 0;
        v19 = vdupq_n_s64(v13 + ~v14);
        v20 = v17;
        do
        {
          v21 = vdupq_n_s64(v18);
          v22 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_220AE5250)));
          if (vuzp1_s8(vuzp1_s16(v22, 6), 6).u8[0])
          {
            v20[3] = (v16 + v18 + 1);
          }

          if (vuzp1_s8(vuzp1_s16(v22, 6), 6).i8[1])
          {
            v20[2] = (v16 + v18 + 2);
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_220AE5240)))), 6).i8[2])
          {
            v20[1] = (v16 + v18 + 3);
            *v20 = (v16 + v18 + 4);
          }

          v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_220AE5230)));
          if (vuzp1_s8(6, vuzp1_s16(v23, 6)).i32[1])
          {
            *(v20 - 1) = (v16 + v18 + 5);
          }

          if (vuzp1_s8(6, vuzp1_s16(v23, 6)).i8[5])
          {
            *(v20 - 2) = (v16 + v18 + 6);
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v21, xmmword_220AE5220))))).i8[6])
          {
            *(v20 - 3) = (v16 + v18 + 7);
            *(v20 - 4) = (v16 + v18 + 8);
          }

          v18 += 8;
          v20 -= 8;
        }

        while ((v15 & 0xFFFFFFFFFFFFFFF8) != v18);
      }

      v14 = (v14 + 1);
      --v15;
      ++v16;
      v17 += 2 * v13;
    }

    while (v14 != v13);
  }
}

void sub_22097D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::AJAXPromptE5MLModule::forward(E5RT::ExecutionStream **a1, int **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_id_2U8LE");
  v4 = cgm::token_generation_inference::espresso_inference::EspressoE5MLModule::inputSpan();
  v6 = v5 >> 1;
  if (v5 >= 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if ((2 * v6) >= 1)
  {
    bzero(v7, 2 * v6);
  }

  v8 = *a2;
  v9 = a2[1];
  while (v8 != v9)
  {
    v10 = *v8++;
    *v7++ = v10;
  }

  return E5RT::ExecutionStream::ExecuteStreamSync(*a1);
}

void sub_22097D840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(std::runtime_error *a1, int a2, std::string *a3)
{
  result = std::runtime_error::runtime_error(a1, a3);
  result->__vftable = &unk_28344D320;
  LODWORD(result[1].__vftable) = a2;
  return result;
}

{
  result = std::runtime_error::runtime_error(a1, a3);
  result->__vftable = &unk_28344D320;
  LODWORD(result[1].__vftable) = a2;
  return result;
}

void cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::to_string(&v16, a1);
  v5 = std::string::insert(&v16, 0, "Context length of ", 0x12uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v17, " was exceeded during ", 0x15uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&v18, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v19, ".", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  std::runtime_error::runtime_error(a3, &v20);
  *a3 = &unk_28344D320;
  *(a3 + 16) = 2;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_22097DA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::AJAXE5Error::~AJAXE5Error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223D8FE50);
}

void cgm::token_generation_inference::ajax::kvcache_utils::buildCacheFillPlan(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5 != v4)
  {
    v8 = v5 + 1;
    if (v4 != v5 + 1)
    {
      v9 = v5;
      do
      {
        v10 = *v8 - *v9 - 1;
        if (*v8 - *v9 != 1)
        {
          v12 = 0uLL;
          v13 = 0;
          *&v12 = *v9 + 1;
          *(&v12 + 1) = v10;
          v13 = ((v9 - *a2) >> 3) + 1;
          std::vector<cgm::token_generation_inference::ajax::kvcache_utils::CacheFillInstruction>::push_back[abi:ne200100](a3, &v12);
          v4 = a2[1];
        }

        ++v8;
        ++v9;
      }

      while (v8 != v4);
    }

    v11 = *(v4 - 1);
    if (v11 != a1 - 1)
    {
      *&v12 = v11 + 1;
      *(&v12 + 1) = ~v11 + a1;
      v13 = (v4 - *a2) >> 3;
      std::vector<cgm::token_generation_inference::ajax::kvcache_utils::CacheFillInstruction>::push_back[abi:ne200100](a3, &v12);
    }
  }
}

void sub_22097DC1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<cgm::token_generation_inference::ajax::kvcache_utils::CacheFillInstruction>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::kvcache_utils::CacheFillInstruction>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

cgm::token_generation_inference::common::logging::CGMTGILogger *cgm::token_generation_inference::ajax::kvcache_utils::fillCacheHoles(cgm::token_generation_inference::common::logging::CGMTGILogger *result, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4 && *a3 != a3[1])
  {
    v12 = result;
    v13 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(result);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v14)
    {
      v15 = (a3[1] - *a3) >> 3;
      *buf = 134219008;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      *&buf[22] = 2048;
      v27 = a5;
      *v28 = 2048;
      *&v28[2] = a6;
      *&v28[10] = 2048;
      *&v28[12] = a7;
      _os_log_impl(&dword_220940000, v13, OS_LOG_TYPE_INFO, "Filling cache holes for {numHoles=%zu, currentCacheSize=%zu, maxCacheSize=%zu, sequentialElementsPerToken=%zu, numSequencesPerToken=%zu}", buf, 0x34u);
    }

    v16 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v14);
    v17 = os_signpost_id_generate(v16);
    v18 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v17);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_220940000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Fill_Cache_Holes", "", buf, 2u);
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN3cgm26token_generation_inference4ajax13kvcache_utilsL15_fillCacheHolesIaEEvN4E5RT4SpanIT_Lm18446744073709551615EEERKNSt3__16vectorImNS8_9allocatorImEEEEmmmm_block_invoke;
    v27 = &__block_descriptor_tmp;
    *v28 = v17;
    *&v28[8] = a3;
    cgm::token_generation_inference::ajax::kvcache_utils::buildCacheFillPlan(a4, a3, &__p);
    v20 = __p;
    if (a7)
    {
      v21 = 0;
      v22 = v25;
      do
      {
        if (v20 != v22)
        {
          v23 = v20;
          do
          {
            memmove(v12 + (*v23 + v21 * a5 - v23[2]) * a6, v12 + (*v23 + v21 * a5) * a6, v23[1] * a6);
            v23 += 3;
          }

          while (v23 != v22);
        }

        ++v21;
      }

      while (v21 != a7);
    }

    if (v20)
    {
      v25 = v20;
      operator delete(v20);
    }

    return (*&buf[16])(buf);
  }

  return result;
}

{
  v29 = *MEMORY[0x277D85DE8];
  if (a4 && *a3 != a3[1])
  {
    v12 = result;
    v13 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(result);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v14)
    {
      v15 = (a3[1] - *a3) >> 3;
      *buf = 134219008;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      *&buf[22] = 2048;
      v27 = a5;
      *v28 = 2048;
      *&v28[2] = a6;
      *&v28[10] = 2048;
      *&v28[12] = a7;
      _os_log_impl(&dword_220940000, v13, OS_LOG_TYPE_INFO, "Filling cache holes for {numHoles=%zu, currentCacheSize=%zu, maxCacheSize=%zu, sequentialElementsPerToken=%zu, numSequencesPerToken=%zu}", buf, 0x34u);
    }

    v16 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v14);
    v17 = os_signpost_id_generate(v16);
    v18 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v17);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_220940000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Fill_Cache_Holes", "", buf, 2u);
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN3cgm26token_generation_inference4ajax13kvcache_utilsL15_fillCacheHolesIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKNSt3__16vectorImNS8_9allocatorImEEEEmmmm_block_invoke;
    v27 = &__block_descriptor_tmp_8;
    *v28 = v17;
    *&v28[8] = a3;
    cgm::token_generation_inference::ajax::kvcache_utils::buildCacheFillPlan(a4, a3, &__p);
    v20 = __p;
    if (a7)
    {
      v21 = 0;
      v22 = v25;
      do
      {
        if (v20 != v22)
        {
          v23 = v20;
          do
          {
            memmove(v12 + 2 * (*v23 + v21 * a5 - v23[2]) * a6, v12 + 2 * (*v23 + v21 * a5) * a6, 2 * a6 * v23[1]);
            v23 += 3;
          }

          while (v23 != v22);
        }

        ++v21;
      }

      while (v21 != a7);
    }

    if (v20)
    {
      v25 = v20;
      operator delete(v20);
    }

    return (*&buf[16])(buf);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::kvcache_utils::CacheFillInstruction>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZN3cgm26token_generation_inference4ajax13kvcache_utilsL15_fillCacheHolesIaEEvN4E5RT4SpanIT_Lm18446744073709551615EEERKNSt3__16vectorImNS8_9allocatorImEEEEmmmm_block_invoke(cgm::token_generation_inference::common::logging::CGMTGILogger *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v3 = *(a1 + 4);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = (*(*(a1 + 5) + 8) - **(a1 + 5)) >> 3;
      v6 = 134217984;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_220940000, v4, OS_SIGNPOST_INTERVAL_END, v3, "Fill_Cache_Holes", "Number of holes: %zu", &v6, 0xCu);
    }
  }
}

void ___ZN3cgm26token_generation_inference4ajax13kvcache_utilsL15_fillCacheHolesIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKNSt3__16vectorImNS8_9allocatorImEEEEmmmm_block_invoke(cgm::token_generation_inference::common::logging::CGMTGILogger *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(a1);
  v3 = *(a1 + 4);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = (*(*(a1 + 5) + 8) - **(a1 + 5)) >> 3;
      v6 = 134217984;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_220940000, v4, OS_SIGNPOST_INTERVAL_END, v3, "Fill_Cache_Holes", "Number of holes: %zu", &v6, 0xCu);
    }
  }
}

void cgm::token_generation_inference::ajax::utils::makeAjaxCompilerOptions(cgm::token_generation_inference::ajax::utils *a1@<X0>, uint64_t *a2@<X8>)
{
  switch(a1)
  {
    case 3:

      cgm::token_generation_inference::ajax::utils::makeCPUAjaxCompilerOptions(a1, a2);
      break;
    case 2:

      cgm::token_generation_inference::ajax::utils::makeGPUAjaxCompilerOptions(a1, a2);
      break;
    case 1:

      cgm::token_generation_inference::ajax::utils::makeANEAjaxCompilerOptions(a1, a2);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unknown model type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void cgm::token_generation_inference::ajax::utils::makeANEAjaxCompilerOptions(cgm::token_generation_inference::ajax::utils *this@<X0>, uint64_t *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  E5RT::E5CompilerOptions::Create(a2, this);
  E5RT::E5CompilerOptions::SetExperimentalMatchE5MinimalCpuPatterns(*a2);
  E5RT::E5CompilerOptions::SetExperimentalMoveReadStateOps(*a2);
  E5RT::E5CompilerOptions::SetExperimentalShrinkQuantGroup(*a2);
  *v9 = xmmword_220AE53F0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(&__p, v9, &v10, 2uLL);
  E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "graph");
  E5RT::E5CompilerOptions::SetSegmenter();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "bnns");
  std::string::basic_string[abi:ne200100]<0>(v8, "classic_cpu");
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v9, &__p, v9, 2uLL);
  E5RT::E5CompilerOptions::SetPreferredCpuBackends();
  p_p = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  for (i = 0; i != -48; i -= 24)
  {
    if (v8[i + 23] < 0)
    {
      operator delete(*&v8[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v9, "*");
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, v9, &v11, 1uLL);
  E5RT::E5CompilerOptions::SetMilEntryPoints();
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "OptimizeKernelCoalescing=true,BSSLimit=3758096384,EnableAggressiveNETransposeFusion=true");
  E5RT::E5CompilerOptions::SetCustomAneCompilerOptions();
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_22097E704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v27 = *v25;
  *v25 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::utils::makeGPUAjaxCompilerOptions(cgm::token_generation_inference::ajax::utils *this@<X0>, uint64_t *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  E5RT::E5CompilerOptions::Create(a2, this);
  v6 = 2;
  v3 = 0;
  v4 = 0;
  __p = 0;
  std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(&__p, &v6, v7, 1uLL);
  E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "*");
  __p = 0;
  v3 = 0;
  v4 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v6, &v8, 1uLL);
  E5RT::E5CompilerOptions::SetMilEntryPoints();
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if ((v7[15] & 0x80000000) != 0)
  {
    operator delete(v6);
  }
}

void sub_22097E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v20 = *v18;
  *v18 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::makeCPUAjaxCompilerOptions(cgm::token_generation_inference::ajax::utils *this@<X0>, uint64_t *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  E5RT::E5CompilerOptions::Create(a2, this);
  v6 = 1;
  v3 = 0;
  v4 = 0;
  __p = 0;
  std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(&__p, &v6, &v7, 1uLL);
  E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "bnns");
  __p = 0;
  v3 = 0;
  v4 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v6, &v9, 1uLL);
  E5RT::E5CompilerOptions::SetPreferredCpuBackends();
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v8 < 0)
  {
    operator delete(v6);
  }

  std::string::basic_string[abi:ne200100]<0>(&v6, "*");
  __p = 0;
  v3 = 0;
  v4 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v6, &v9, 1uLL);
  E5RT::E5CompilerOptions::SetMilEntryPoints();
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v8 < 0)
  {
    operator delete(v6);
  }
}

void sub_22097EAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v20 = *v18;
  *v18 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::makeProgramLibrary(cgm::token_generation_inference::ajax::utils *this@<X0>, std::string *a2@<X2>, void *a3@<X8>)
{
  cgm::token_generation_inference::ajax::utils::getBundleCacheLocation(a2, &__p);
  cgm::token_generation_inference::ajax::utils::makeProgramLibrary(this, &__p, a3);
  if (v7 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22097EBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cgm::token_generation_inference::ajax::utils::makeProgramLibrary(std::string::size_type a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  std::__fs::filesystem::path::extension[abi:ne200100](a1, &buf);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".bundle");
  v22.__data_ = &__p;
  v6 = std::__fs::filesystem::operator==[abi:ne200100](&buf, v22);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
LABEL_5:
    v8 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_INFO, "Loading precompiled model from path %{public}s", &buf, 0xCu);
    }

    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf.__pn_, *a1, *(a1 + 8));
    }

    else
    {
      buf.__pn_ = *a1;
    }

    E5RT::ProgramLibrary::OpenLibrary();
    *a3 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__pn_.__r_.__value_.__l.__data_);
    }

    return;
  }

  std::__fs::filesystem::path::extension[abi:ne200100](a1, &buf);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".mil");
  v23.__data_ = &__p;
  v10 = std::__fs::filesystem::operator==[abi:ne200100](&buf, v23);
  v11 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Unexpected model path extension.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &buf.__pn_);
  }

  v12 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v13;
    _os_log_impl(&dword_220940000, v12, OS_LOG_TYPE_INFO, "Loading MIL model from path %{public}s", &buf, 0xCu);
  }

  cgm::token_generation_inference::ajax::utils::createE5Compiler(a2);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf.__pn_, *a1, *(a1 + 8));
  }

  else
  {
    buf.__pn_ = *a1;
  }

  IsNewCompileRequired = E5RT::E5Compiler::IsNewCompileRequired();
  v15 = IsNewCompileRequired;
  if ((SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!IsNewCompileRequired)
    {
      goto LABEL_35;
    }

LABEL_33:
    v16 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(IsNewCompileRequired);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_220940000, v16, OS_LOG_TYPE_INFO, "MIL model will require on-demand compilation during load", &buf, 2u);
    }

    goto LABEL_35;
  }

  operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  if (v15)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf.__pn_, *a1, *(a1 + 8));
  }

  else
  {
    buf.__pn_ = *a1;
  }

  E5RT::E5Compiler::Compile();
  *a3 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    (*(*v18 + 8))();
  }
}

void sub_22097F0C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  v22 = *v21;
  *v21 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  JUMPOUT(0x22097F1D4);
}

void sub_22097F110(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x22097F1D4);
}

void sub_22097F120(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  JUMPOUT(0x22097F16CLL);
}

void sub_22097F1A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x22097F1D0);
}

std::string *cgm::token_generation_inference::ajax::utils::getBundleCacheLocation@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (this)
  {
    return std::optional<std::string>::operator=[abi:ne200100]<char const(&)[67],void>(a2, "/var/mobile/Library/com.apple.modelcatalog/compiled/e5bundlecache/");
  }

  return this;
}

void sub_22097F218(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::createE5Compiler(uint64_t a1)
{
  MEMORY[0x223D8F8A0](v3);
  if (*(a1 + 24) == 1)
  {
    E5RT::E5CompilerConfigOptions::SetBundleCacheLocation();
  }

  E5RT::E5Compiler::MakeCompiler();
  return MEMORY[0x223D8F8B0](v3);
}

uint64_t cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(cgm::token_generation_inference::ajax::utils *this, const std::__fs::filesystem::path *a2, std::string *a3)
{
  cgm::token_generation_inference::ajax::utils::getBundleCacheLocation(a3, &__p);
  v5 = cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(this, a2, &__p);
  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_22097F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cgm::token_generation_inference::ajax::utils::createE5Compiler(a3);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  IsNewCompileRequired = E5RT::E5Compiler::IsNewCompileRequired();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return IsNewCompileRequired;
}

void sub_22097F40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22097F4B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22097F53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const(&)[67],void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, a2);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
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
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void *cgm::token_generation_inference::ajax::utils::operator<<(void *a1, E5RT::TensorDataType *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v21.__r_.__value_.__l.__data_) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21.__r_.__value_.__s.__data_[8], "uint");
  v22 = 1;
  std::string::basic_string[abi:ne200100]<0>(v23, "int");
  v24 = 4;
  std::string::basic_string[abi:ne200100]<0>(v25, "float");
  std::unordered_map<E5RT::ComponentDataType,std::string>::unordered_map(v20, &v21, 3);
  for (i = 0; i != -96; i -= 32)
  {
    if (v25[i + 23] < 0)
    {
      operator delete(*&v25[i]);
    }
  }

  LODWORD(v21.__r_.__value_.__l.__data_) = E5RT::TensorDataType::GetComponentDataType(a2);
  v5 = std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::find<E5RT::ComponentDataType>(v20, &v21);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = v5[3];
  v6 = v5 + 3;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = v6[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v10, v11);
  ComponentSize = E5RT::TensorDataType::GetComponentSize(a2);
  std::to_string(&v21, 8 * ComponentSize);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v21;
  }

  else
  {
    v13 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v13, size);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "x", 1);
  NumComponents = E5RT::TensorDataType::GetNumComponents(a2);
  std::to_string(&v21, NumComponents);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v21;
  }

  else
  {
    v17 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v21.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::~__hash_table(v20);
  return a1;
}

void sub_22097FA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::__unordered_map_hasher<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::hash<E5RT::ComponentDataType>,std::equal_to<E5RT::ComponentDataType>,true>,std::__unordered_map_equal<E5RT::ComponentDataType,std::__hash_value_type<E5RT::ComponentDataType,std::string>,std::equal_to<E5RT::ComponentDataType>,std::hash<E5RT::ComponentDataType>,true>,std::allocator<std::__hash_value_type<E5RT::ComponentDataType,std::string>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void *cgm::token_generation_inference::ajax::utils::operator<<(void *a1, E5RT::TensorDescriptor *this)
{
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(this);
  v5 = *TensorShape;
  v6 = *(TensorShape + 8);
  if (*TensorShape != v6)
  {
    do
    {
      std::to_string(&v17, *v5);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v17;
      }

      else
      {
        v7 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "@ ", 2);
  E5RT::TensorDescriptor::GetTensorDataType(&v17, this);
  cgm::token_generation_inference::ajax::utils::operator<<(v10, &v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " :", 2);
  E5RT::TensorDataType::~TensorDataType(&v17);
  TensorStrides = E5RT::TensorDescriptor::GetTensorStrides(this);
  v12 = *TensorStrides;
  v13 = *(TensorStrides + 8);
  if (*TensorStrides != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
      MEMORY[0x223D8FCA0](v15, v14);
    }

    while (v12 != v13);
  }

  return a1;
}

uint64_t cgm::token_generation_inference::ajax::utils::checkTensorType(E5RT::IOPort *a1, uint64_t a2, uint64_t a3)
{
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1);
  v5 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  E5RT::TensorDescriptor::GetTensorDataTypeRef(v5);
  if (E5RT::operator!=())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "I/O has invalid dtype");
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_28344D360;
  }

  result = E5RT::TensorDescriptor::GetTensorShape(v5);
  v7 = *a3;
  v8 = *result;
  v9 = *(result + 8);
  v10 = v9 - *result;
  if (*(a3 + 8) - *a3 != v10)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "I/O has invalid rank");
    std::runtime_error::runtime_error(v16, &v17);
    v16->__vftable = &unk_28344D360;
  }

  if (v9 != v8)
  {
    v11 = v10 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v13 = *v7++;
      v12 = v13;
      if (v13 != -1 && v12 != *v8)
      {
        v14 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v17, "I/O has invalid shape");
        std::runtime_error::runtime_error(v14, &v17);
        v14->__vftable = &unk_28344D360;
      }

      ++v8;
      --v11;
    }

    while (v11);
  }

  return result;
}

void sub_22097FE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t cgm::token_generation_inference::ajax::utils::fillWithALiBi(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v43 = result;
  if (a5)
  {
    v7 = a5 * a3;
    v8 = 1 << log2(a2);
    v9 = exp2(-8.0 / v8);
    v10 = 0;
    v11 = v8;
    v42 = a3 - 1;
    v12 = a4;
    v13 = a4 - 7;
    v46 = vdupq_n_s64(8uLL);
    do
    {
      if (v12 >= v42)
      {
        v14 = a3 - 1;
      }

      else
      {
        v14 = v12;
      }

      if (v10 + a4 >= v42)
      {
        v15 = a3 - 1;
      }

      else
      {
        v15 = v10 + a4;
      }

      result = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm(v43, v10 * a3);
      v48[0] = result;
      v48[1] = v16;
      if (a2)
      {
        v17 = 0;
        v18 = 8 * ~(v14 >> 3);
        v47 = vdupq_n_s64(v15);
        do
        {
          if (v17 >= v11)
          {
            v19 = 0.5;
          }

          else
          {
            v19 = 1.0;
          }

          v20 = pow(v9, v19 + (v17 % v11));
          result = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(v48, v7 * v17, a3);
          if (a3)
          {
            v21 = v13;
            v22 = 7;
            v23 = -v20;
            v24 = xmmword_220AE5250;
            v25 = xmmword_220AE5240;
            v26 = xmmword_220AE5230;
            v27 = xmmword_220AE5220;
            do
            {
              v28 = vmovn_s64(vcgeq_u64(v47, v24));
              if (vuzp1_s8(vuzp1_s16(v28, *&v23), *&v23).u8[0])
              {
                _D6 = v23 * (v22 - 7);
                __asm { FCVT            H6, D6 }

                *(result + 2 * ((v21 + 7) % a3)) = LOWORD(_D6);
              }

              if (vuzp1_s8(vuzp1_s16(v28, *&v23), *&v23).i8[1])
              {
                _D5 = v23 * (v22 - 6);
                __asm { FCVT            H5, D5 }

                *(result + 2 * ((v21 + 6) % a3)) = LOWORD(_D5);
              }

              if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v47, *&v25))), *&v23).i8[2])
              {
                _D6 = v23 * (v22 - 5);
                __asm { FCVT            H6, D6 }

                *(result + 2 * ((v21 + 5) % a3)) = LOWORD(_D6);
                _D5 = v23 * (v22 - 4);
                __asm { FCVT            H5, D5 }

                *(result + 2 * ((v21 + 4) % a3)) = LOWORD(_D5);
              }

              v37 = vmovn_s64(vcgeq_u64(v47, v26));
              if (vuzp1_s8(*&v23, vuzp1_s16(v37, *&v23)).i32[1])
              {
                _D6 = v23 * (v22 - 3);
                __asm { FCVT            H6, D6 }

                *(result + 2 * ((v21 + 3) % a3)) = LOWORD(_D6);
              }

              if (vuzp1_s8(*&v23, vuzp1_s16(v37, *&v23)).i8[5])
              {
                _D5 = v23 * (v22 - 2);
                __asm { FCVT            H5, D5 }

                *(result + 2 * ((v21 + 2) % a3)) = LOWORD(_D5);
              }

              if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v47, *&v27)))).i8[6])
              {
                _D6 = v23 * (v22 - 1);
                __asm { FCVT            H6, D6 }

                *(result + 2 * ((v21 + 1) % a3)) = LOWORD(_D6);
                _D5 = v23 * v22;
                __asm { FCVT            H5, D5 }

                *(result + 2 * (v21 % a3)) = LOWORD(_D5);
              }

              v26 = vaddq_s64(v26, v46);
              v25 = vaddq_s64(v25, v46);
              v24 = vaddq_s64(v24, v46);
              v27 = vaddq_s64(v27, v46);
              v22 += 8;
              v21 -= 8;
            }

            while (v18 + v22 != 7);
          }

          ++v17;
        }

        while (v17 != a2);
      }

      ++v10;
      ++v12;
      ++v13;
    }

    while (v10 != a5);
  }

  return result;
}

BOOL cgm::token_generation_inference::ajax::utils::isPromptFunctionName(char **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 < 0)
  {
    v1 = a1[1];
  }

  v3 = &v2[v1];
  if (v1 >= 10)
  {
    v4 = v2;
    do
    {
      v5 = memchr(v4, 97, v1 - 9);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x6D6F72705F656E61 && *(v5 + 4) == 29808)
      {
        return v5 != v3 && v5 - v2 != -1;
      }

      v4 = v5 + 1;
      v1 = v3 - v4;
    }

    while (v3 - v4 > 9);
  }

  v5 = v3;
  return v5 != v3 && v5 - v2 != -1;
}

BOOL cgm::token_generation_inference::ajax::utils::isExtendFunctionName(char **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 < 0)
  {
    v1 = a1[1];
  }

  v3 = &v2[v1];
  if (v1 >= 10)
  {
    v4 = v2;
    do
    {
      v5 = memchr(v4, 97, v1 - 9);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x657478655F656E61 && *(v5 + 4) == 25710)
      {
        return v5 != v3 && v5 - v2 != -1;
      }

      v4 = v5 + 1;
      v1 = v3 - v4;
    }

    while (v3 - v4 > 9);
  }

  v5 = v3;
  return v5 != v3 && v5 - v2 != -1;
}

uint64_t cgm::token_generation_inference::ajax::utils::AJAXKVCache::asSpans@<X0>(E5RT::MemoryObject **this@<X0>, uint64_t *a2@<X8>)
{
  v4 = E5RT::MemoryObject::TryAsBuffer(*this);
  DataSpan = E5RT::BufferObject::GetDataSpan(v4);
  v7 = v6 >> 1;
  if (v6 >= 2)
  {
    v8 = DataSpan;
  }

  else
  {
    v8 = 0;
  }

  v9 = E5RT::MemoryObject::TryAsBuffer(this[2]);
  result = E5RT::BufferObject::GetDataSpan(v9);
  *a2 = v8;
  a2[1] = v7;
  if (v11 >= 2)
  {
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  a2[2] = v12;
  a2[3] = v11 >> 1;
  return result;
}

void cgm::token_generation_inference::ajax::utils::AJAXKVCache::reset(cgm::token_generation_inference::ajax::utils::AJAXKVCache *this, unint64_t a2)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::asSpans(this, &v7);
  if (a2)
  {
    v6 = 0;
    _ZN3cgm26token_generation_inference4ajax5utils17fillStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS6_mmm(v7, v8, &v6, a2, *(this + 4), *(this + 4) - a2);
    v6 = 0;
    _ZN3cgm26token_generation_inference4ajax5utils17fillStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS6_mmm(v9, v10, &v6, a2, *(this + 4), *(this + 4) - a2);
  }

  else
  {
    if ((2 * v8) >= 1)
    {
      bzero(v7, 2 * v8);
    }

    v4 = 2 * v10;
    if ((2 * v10) >= 1)
    {
      v5 = v9;

      bzero(v5, v4);
    }
  }
}

uint64_t _ZN3cgm26token_generation_inference4ajax5utils17fillStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEERKS6_mmm(uint64_t result, unint64_t a2, _WORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = result;
  v23 = a2;
  v6 = a6 - 1;
  if (a6 - 1 + a4 < a2)
  {
    v9 = a4;
    do
    {
      if (a6 == 1)
      {
        *(v22 + 2 * v9) = *a3;
      }

      else
      {
        result = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v22, v9, a6);
        v13 = (2 * v12) >> 1;
        v14 = v13 - 1;
        if (v13 >= 1)
        {
          v15 = 0;
          v11.i16[0] = *a3;
          v16 = (v13 + 7) & 0x7FFFFFFFFFFFFFF8;
          v17 = vdupq_n_s64(v14);
          v18 = (result + 8);
          do
          {
            v19 = vdupq_n_s64(v15);
            v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_220AE5250)));
            if (vuzp1_s8(vuzp1_s16(v20, v11), v11).u8[0])
            {
              *(v18 - 4) = v11.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v20, v11), *&v11).i8[1])
            {
              *(v18 - 3) = v11.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_220AE5240)))), *&v11).i8[2])
            {
              *(v18 - 2) = v11.i16[0];
              *(v18 - 1) = v11.i16[0];
            }

            v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_220AE5230)));
            if (vuzp1_s8(*&v11, vuzp1_s16(v21, v11)).i32[1])
            {
              *v18 = v11.i16[0];
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v21, v11)).i8[5])
            {
              v18[1] = v11.i16[0];
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_220AE5220))))).i8[6])
            {
              v18[2] = v11.i16[0];
              v18[3] = v11.i16[0];
            }

            v15 += 8;
            v18 += 8;
          }

          while (v16 != v15);
        }
      }

      v9 += a5;
    }

    while (v6 + v9 < v23);
  }

  return result;
}

void *cgm::token_generation_inference::ajax::utils::AJAXKVCache::overwrite(cgm::token_generation_inference::ajax::utils::AJAXKVCache *this, E5RT::MemoryObject **a2)
{
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::reset(this, 0);
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::asSpans(a2, v9);
  v4 = a2[4];
  cgm::token_generation_inference::ajax::utils::AJAXKVCache::asSpans(this, v8);
  v5 = *(this + 4);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  _ZN3cgm26token_generation_inference4ajax5utils17copyStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEEmmS7_mmm(v9[0], v9[1], 0, v4, v8[0], v8[1], 0, v5, v6);
  return _ZN3cgm26token_generation_inference4ajax5utils17copyStridedChunksIDF16_EEvN4E5RT4SpanIT_Lm18446744073709551615EEEmmS7_mmm(v9[2], v9[3], 0, v4, v8[2], v8[3], 0, v5, v6);
}

uint64_t cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(cgm::token_generation_inference::ajax::utils *this, const E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  v4 = std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v10, InputPorts);
  cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(v4);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v10);
  v5 = E5RT::ExecutionStreamOperation::GetInOutPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v9, v5);
  cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(v9);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v9);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v8, OutputPorts);
  cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(v8);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v8);
}

void sub_220980744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    if ((E5RT::IOPort::IsDynamic(i[5]) & 1) == 0)
    {
      E5RT::IOPort::GetMemoryObject(&v10, i[5]);
      v2 = v10;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (!v2)
      {
        SupportedBufferTypes = E5RT::IOPort::GetSupportedBufferTypes(i[5]);
        v4 = *(SupportedBufferTypes + 1);
        if (*SupportedBufferTypes != v4)
        {
          for (j = 0; j != 2; ++j)
          {
            v6 = *SupportedBufferTypes;
            while (*v6 != _ZGRZN3cgm26token_generation_inference4ajax5utilsL22getPreferredBufferTypeERKN4E5RT6IOPortEE14preferredTypes_[j])
            {
              if (++v6 == v4)
              {
                goto LABEL_13;
              }
            }

            if (v6 != v4)
            {
              goto LABEL_16;
            }

LABEL_13:
            ;
          }
        }

        v7 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(SupportedBufferTypes);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(&buf, v13, v7);
        }

LABEL_16:
        PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(i[5]);
        E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
        E5RT::TensorDescriptor::AllocateMemory();
        if (v10)
        {
          operator new();
        }

        v10 = 0;
        E5RT::IOPort::BindMemoryObject();
        v9 = v10;
        v10 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }
    }
  }
}

void sub_220980928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::shareMemoryBetweenOperations(cgm::token_generation_inference::ajax::utils *this, const E5RT::ExecutionStreamOperation *a2, E5RT::ExecutionStreamOperation *a3)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v17, InputPorts);
  v6 = E5RT::ExecutionStreamOperation::GetInputPorts(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v16, v6);
  cgm::token_generation_inference::ajax::utils::shareMemoryBetweenOperations(E5RT::ExecutionStreamOperation const&,E5RT::ExecutionStreamOperation&)::$_0::operator()(v17, v16);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v17);
  v7 = E5RT::ExecutionStreamOperation::GetInOutPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v15, v7);
  v8 = E5RT::ExecutionStreamOperation::GetInOutPorts(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v14, v8);
  cgm::token_generation_inference::ajax::utils::shareMemoryBetweenOperations(E5RT::ExecutionStreamOperation const&,E5RT::ExecutionStreamOperation&)::$_0::operator()(v15, v14);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v15);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v13, OutputPorts);
  v10 = E5RT::ExecutionStreamOperation::GetOutputPorts(a2);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v12, v10);
  cgm::token_generation_inference::ajax::utils::shareMemoryBetweenOperations(E5RT::ExecutionStreamOperation const&,E5RT::ExecutionStreamOperation&)::$_0::operator()(v13, v12);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v12);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v13);
}

void sub_220980A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a14);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::shareMemoryBetweenOperations(E5RT::ExecutionStreamOperation const&,E5RT::ExecutionStreamOperation&)::$_0::operator()(void *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>::pair[abi:ne200100](&__p, i + 1);
    if ((E5RT::IOPort::IsDynamic(v11) & 1) == 0)
    {
      E5RT::IOPort::GetMemoryObject(&v8, v11);
      if (v8)
      {
        v4 = 1;
      }

      else
      {
        v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_) == 0;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (!v4)
      {
        v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
        if (!v5)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        E5RT::IOPort::GetMemoryObject(&v8, v5[5]);
        v6 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        E5RT::IOPort::BindMemoryObject();
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_220980C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  std::pair<std::string const,std::shared_ptr<E5RT::MemoryObject>>::~pair(va);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::setRelativePositions(short float *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v75 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v53 = a3;
  if (a4)
  {
    v12 = 0;
    v13 = 0;
    v14 = a3 + 1;
    do
    {
      v15 = *a7;
      if (v13 >= 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3) || *(v15 + v12) == *(v15 + v12 + 8))
      {
        LOBYTE(v64) = 1;
        std::vector<signed char>::vector[abi:ne200100](&__p, v14 + v13);
        std::vector<std::vector<signed char>>::push_back[abi:ne200100](&v56, &__p);
        if (__p)
        {
          *&v70 = __p;
          operator delete(__p);
        }
      }

      else
      {
        std::vector<std::vector<signed char>>::push_back[abi:ne200100](&v56, (v15 + v12));
      }

      ++v13;
      v12 += 24;
    }

    while (a4 != v13);
    v16 = v56;
    v17 = v57;
    a3 = v53;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v54 = v16;
  v18 = v17 - v16;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3);
  v20 = v19 + a3;
  if (v19 + a3 - 2049 <= 0xFFFFFFFFFFFFF7FFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The max relative position must be less than 2048 due to FP16 accuracy");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2 < v20 * a5)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    v65 = 0;
    v66 = 7;
    v63 = 7;
    v64 = a2;
    __p = v73;
    v70 = xmmword_220AE5410;
    v71 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v72 = 0;
    v74 = v73;
    v61 = 1;
    v62 = &v64;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "Relative positions span should be of shape [context, query], not {}", 67, &v61);
    v61 = v74;
    v62 = *(&v70 + 1);
    std::string::basic_string<std::string_view,0>(&__dst, &v61);
    if (v74 != v73)
    {
      operator delete(v74);
    }

    std::runtime_error::runtime_error(v51, &__dst);
    __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v64 = 0;
  std::vector<long>::vector[abi:ne200100](&__dst, v19);
  v21 = v56;
  if (v57 - v56 != v18)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    v64 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
    v65 = 0;
    v67 = 0;
    v68 = 231;
    v66 = v19;
    __p = v73;
    v70 = xmmword_220AE5410;
    v71 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v72 = 0;
    v74 = v73;
    v61 = 2;
    v62 = &v64;
    v63 = 231;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "tokenMasks of wrong size, {} != {}", 34, &v61);
    v61 = v74;
    v62 = *(&v70 + 1);
    std::string::basic_string<std::string_view,0>(&v59, &v61);
    if (v74 != v73)
    {
      operator delete(v74);
    }

    std::runtime_error::runtime_error(v52, &v59);
    __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v22 = __dst.__r_.__value_.__r.__words[0];
  v23 = v54;
  if (v17 == v54)
  {
LABEL_37:
    v35 = 0;
    v36 = (__dst.__r_.__value_.__l.__size_ - v22) >> 3;
    v37 = -v53;
    v38 = a1;
    do
    {
      v39 = v22;
      v40 = (v21 + 8);
      v41 = v36;
      v42 = v37;
      v43 = v19;
      v44 = a1;
      v45 = v38;
      if (v17 != v23)
      {
        do
        {
          if (!v41)
          {
            __assert_rtn("setRelativePositionsNoHoles", "ajax_utilities.cpp", 248, "queryIdx < maskHoles.size()");
          }

          v46 = *v39;
          if (*v39 != -1)
          {
            v47 = *(v40 - 1);
            if (v47 != *v40)
            {
              if (v35 >= *v40 - v47 || v46 < 1 || *(v47 + v35))
              {
                v48 = v42 + v46;
                if (v48 - 1 < 0)
                {
                  v49 = v48;
                  if (a6)
                  {
                    *v45 = v49;
                  }

                  else
                  {
                    *v44 = v49;
                  }
                }
              }

              else
              {
                *v39 = v46 - 1;
              }
            }
          }

          v45 += a5 + v53;
          ++v44;
          --v42;
          --v41;
          v40 += 3;
          ++v39;
          --v43;
        }

        while (v43);
      }

      ++v35;
      ++v38;
      a1 += a5;
      ++v37;
    }

    while (v35 != v20);
    if (v22)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v24 = 0;
  do
  {
    v25 = (v21 + 24 * v24);
    v26 = *v25;
    v27 = v25[1];
    if (*v25 == v27)
    {
      v30 = *v25;
    }

    else
    {
      v28 = memchr(*v25, 1, v27 - v26);
      if (v28)
      {
        v29 = v28 == v27;
      }

      else
      {
        v29 = 1;
      }

      v30 = v27;
      if (v29)
      {
        v31 = -1;
        goto LABEL_35;
      }
    }

    v32 = &v27[v26 - v30];
    while (v27 != v26)
    {
      v33 = *--v27;
      if (v33 == 1)
      {
        v32 = v27 + 1;
        break;
      }
    }

    if (v26 == v32)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0;
      do
      {
        if (!*v26++)
        {
          ++v31;
        }
      }

      while (v26 != v32);
    }

LABEL_35:
    v22[v24++] = v31;
  }

  while (v24 != v19);
  v23 = v54;
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_53:
  __dst.__r_.__value_.__l.__size_ = v22;
  operator delete(v22);
LABEL_54:
  __p = &v56;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2209811C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (a22)
      {
        a23 = a22;
        operator delete(a22);
      }

      a35 = &a13;
      std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&a35);
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

void cgm::token_generation_inference::ajax::utils::filterFunctionsByMutableWeightSymbols(uint64_t a1@<X0>, const void ***a2@<X1>, void *a3@<X2>, std::vector<std::string> *a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 == 1)
  {
    v11 = *(a1 + 16);
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
    a4->__begin_ = 0;
    std::vector<std::string>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a3, v12);
        if (!v14)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v15 = v14[5];
        v16 = v14[6];
        if (v15 != v16)
        {
          v17 = *(v11 + 39);
          if (v17 >= 0)
          {
            v18 = *(v11 + 39);
          }

          else
          {
            v18 = *(v11 + 24);
          }

          if (v17 >= 0)
          {
            v19 = (v11 + 16);
          }

          else
          {
            v19 = *(v11 + 16);
          }

          while (1)
          {
            v20 = *(v15 + 23);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = v15[1];
            }

            if (v20 == v18)
            {
              v22 = v21 >= 0 ? v15 : *v15;
              if (!memcmp(v22, v19, v18))
              {
                break;
              }
            }

            v15 += 3;
            if (v15 == v16)
            {
              goto LABEL_26;
            }
          }
        }

        if (v15 != v16)
        {
          std::vector<std::string>::push_back[abi:ne200100](a4, v12);
        }

LABEL_26:
        v12 += 3;
      }

      while (v12 != v13);
    }
  }

  else
  {
    if (v6)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&v24, "Unexpectedly asked to run with more than 1 mutable weight symbol adapted.");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v24);
    }

    a4->__begin_ = 0;
    a4->__end_ = 0;
    a4->__end_cap_.__value_ = 0;
    v7 = *a2;
    v8 = a2[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);

    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a4, v7, v8, v9);
  }
}

void sub_2209814A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void cgm::token_generation_inference::ajax::utils::setCausalMaskAndPositionIds(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned __int8 ***a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v25[0] = a1;
  v25[1] = a2;
  v9 = a5[1];
  v10 = *a5;
  if (*a5 == v9)
  {
    if (a7)
    {
      v19 = 0;
      v20 = a7 + a6;
      do
      {
        v21 = a6 + 1;
        if ((a6 + 1) > 1)
        {
          v22 = a6 + 1;
        }

        else
        {
          v22 = 1;
        }

        v23 = 2 * v22;
        *a3++ = a6;
        v24 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(v25, v19, v20);
        bzero(v24, v23);
        v19 += v20;
        a6 = v21;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v9 - v10) != a7)
    {
      cgm::token_generation_inference::ajax::utils::setCausalMaskAndPositionIds();
    }

    v11 = 0;
    v26[0] = a1;
    v26[1] = a2;
    v12 = a7 + a6;
    do
    {
      v13 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(v26, v11 * v12, v12);
      v14 = *v10;
      v15 = v10[1] - *v10;
      if (v15)
      {
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v10[1] - *v10;
        }

        v17 = -1;
        do
        {
          v18 = *v14++;
          if (v18 == 1)
          {
            *v13 = 0;
            ++v17;
          }

          ++v13;
          --v16;
        }

        while (v16);
      }

      else
      {
        v17 = -1;
      }

      a3[v11++] = v17;
      v10 += 3;
    }

    while (v10 != v9);
  }
}

void sub_2209818A0(_Unwind_Exception *a1)
{
  MEMORY[0x223D8FE30](v2, 0x1000C8077774924);
  MEMORY[0x223D8FE30](v1, 0x1000C8077774924);
  _Unwind_Resume(a1);
}

char *cgm::token_generation_inference::ajax::utils::setKVCacheEntry(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t **a6, unint64_t a7, uint64_t a8)
{
  v8 = *a8;
  if (*(*a8 + 24) + a7 > a7)
  {
    v10 = 0;
    v25 = **a5;
    v11 = (*a5)[2];
    v12 = **a6;
    v14 = (*a6)[2];
    v13 = (*a6)[3];
    v15 = a3 + v13 * a7;
    v16 = &result[v13 * a7];
    v17 = a7;
    v24 = v11;
    do
    {
      if (v25)
      {
        v21 = v17;
        v22 = v16;
        v18 = 0;
        v23 = v15;
        do
        {
          if (v11)
          {
            v19 = 0;
            do
            {
              memcpy(&v16[v19], (**a8 + v10), v13);
              result = memcpy((v15 + v19), (*(*a8 + 8) + v10), v13);
              v10 += v13;
              v19 += v14;
              --v11;
            }

            while (v11);
          }

          ++v18;
          v15 += v12;
          v16 += v12;
          v11 = v24;
        }

        while (v18 != v25);
        v8 = *a8;
        v16 = v22;
        v15 = v23;
        v17 = v21;
      }

      ++v17;
      v15 += v13;
      v16 += v13;
    }

    while (v17 < v8[3] + a7);
  }

  return result;
}

char *cgm::token_generation_inference::ajax::utils::moveKVCacheEntry(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t **a6, uint64_t a7, uint64_t a8)
{
  if (a7 != a8)
  {
    v18 = **a5;
    if (v18)
    {
      v8 = 0;
      v19 = (*a5)[2];
      v10 = (*a6)[2];
      v9 = (*a6)[3];
      v11 = **a6;
      v12 = a3 + v9 * a8;
      v13 = a3 + v9 * a7;
      v14 = &result[v9 * a8];
      v15 = &result[v9 * a7];
      do
      {
        if (v19)
        {
          v16 = 0;
          v17 = v19;
          do
          {
            memcpy(&v15[v16], &v14[v16], v9);
            result = memcpy((v13 + v16), (v12 + v16), v9);
            v16 += v10;
            --v17;
          }

          while (v17);
        }

        ++v8;
        v12 += v11;
        v13 += v11;
        v14 += v11;
        v15 += v11;
      }

      while (v8 != v18);
    }
  }

  return result;
}

uint64_t cgm::token_generation_inference::ajax::utils::zeroAllMemoryObjects(E5RT::ExecutionStreamOperation *a1, void *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v24, InputPorts);
  for (i = v25; i; i = *i)
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, i + 2))
    {
      E5RT::IOPort::GetMemoryObject(&v26, i[5]);
      if (v26)
      {
        v6 = E5RT::MemoryObject::Buffer(v26);
        DataSpan = E5RT::BufferObject::GetDataSpan(v6);
        if (v8 >= 1)
        {
          bzero(DataSpan, v8);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v24);
  v9 = E5RT::ExecutionStreamOperation::GetInOutPorts(a1);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v22, v9);
  for (j = v23; j; j = *j)
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, j + 2))
    {
      E5RT::IOPort::GetMemoryObject(&v26, j[5]);
      if (v26)
      {
        v11 = E5RT::MemoryObject::Buffer(v26);
        v12 = E5RT::BufferObject::GetDataSpan(v11);
        if (v13 >= 1)
        {
          bzero(v12, v13);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v22);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(a1);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v20, OutputPorts);
  for (k = v21; k; k = *k)
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, k + 2))
    {
      E5RT::IOPort::GetMemoryObject(&v26, k[5]);
      if (v26)
      {
        v16 = E5RT::MemoryObject::Buffer(v26);
        v17 = E5RT::BufferObject::GetDataSpan(v16);
        if (v18 >= 1)
        {
          bzero(v17, v18);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v20);
}

void sub_220981C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 - 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::espresso_inference::EspressoInferenceException::~EspressoInferenceException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223D8FE50);
}

void std::__shared_ptr_pointer<E5RT::BufferObject  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D8FE50);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::vector<signed char>>::__emplace_back_slow_path<std::vector<signed char> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(24 * v2, *a2, a2[1], a2[1] - *a2);
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
  std::__split_buffer<std::vector<signed char>>::~__split_buffer(&v14);
  return v8;
}

void sub_220981EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<signed char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_2209820C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_28344D400;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223D8FE50);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v15) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_220982CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_220982F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x277D826C0]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_2209830EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, v13, v5, 8u);
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x223D8FD10](&v5);
    std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

uint64_t std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:ne200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = "_";
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[4 * (v2 >> 1)];
    v7 = *v5;
    v6 = (v5 + 1);
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != "_")
  {
    if ((*(v3 - 1) & 0x3FFFu) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:ne200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_220983EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:ne200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](v13, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
    __src = a2;
    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v11, v12, 0);
  }
}

uint64_t std::__format_spec::__process_parsed_char[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, uint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_220985240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v12, v14, v6, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_220985CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:ne200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    *(v3 + 3) = std::__itoa::__digits_base_10[v8 / 0x64u];
    *(v3 + 4) = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v12 + 3) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v12 + 5) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v12 + 7) = std::__itoa::__digits_base_10[v14 % 0x64u];

  return std::__itoa::__append10[abi:ne200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}