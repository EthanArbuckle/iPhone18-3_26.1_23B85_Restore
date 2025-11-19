void xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(void *a1, float *a2, int a3, unsigned int a4, double *a5, double *a6, int8x16_t a7, int8x16_t a8)
{
  if (*a1 <= a4)
  {
    std::terminate();
  }

  v13 = *(a1[1] + 4 * a4);
  *v14.i32 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(a1, a3, a2, a5, a7, a8);
  v15 = *v14.i32;
  v17 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(a1, a3, a2, a6, v14, v16);
  xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(a1, a2, a5, v15);
  xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(a1, a2, a6, v17);
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

float xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(uint64_t a1, int a2, float *a3, double *a4, int8x16_t a5, int8x16_t a6)
{
  v6 = a4[1];
  a6.i64[0] = 0;
  v7 = v6 <= 0.0 || v6 < a3[8];
  if (!v7)
  {
    v8 = *a4;
    v9 = a3[10];
    v10 = v9;
    v7 = *a4 < -v9;
    v11 = *a4 + v9;
    if (!v7)
    {
      v11 = 0.0;
    }

    v12 = v8 <= v10;
    v13 = v8 - v10;
    if (v12)
    {
      v13 = v11;
    }

    *a6.i64 = -v13 / (v6 + a3[9]);
    v14 = a3[11];
    if (v14 != 0.0)
    {
      *a5.i64 = v14;
      if (fabs(*a6.i64) > *a5.i64)
      {
        v15.f64[0] = NAN;
        v15.f64[1] = NAN;
        a6.i64[0] = vbslq_s8(vnegq_f64(v15), a5, a6).u64[0];
      }
    }
  }

  v16 = *a6.i64;
  if (a2 == 0x7FFFFFFF || (*(a1 + 48) & 1) == 0)
  {
    return v16;
  }

  if (*(a1 + 16) <= a2)
  {
    goto LABEL_21;
  }

  result = *(*(a1 + 24) + 4 * a2);
  if (result > v16)
  {
    return result;
  }

  if (*(a1 + 32) <= a2)
  {
LABEL_21:
    std::terminate();
  }

  result = v16;
  if (*(*(a1 + 40) + 4 * a2) < v16)
  {
    return *(*(a1 + 40) + 4 * a2);
  }

  return result;
}

float xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(uint64_t a1, float *a2, double *a3, float a4)
{
  v4 = a3[1];
  v5 = 0.0;
  if (v4 > 0.0)
  {
    if (a2[11] == 0.0 && (*(a1 + 48) & 1) == 0)
    {
      v8 = *a3;
      v9 = a2[10];
      v10 = v9;
      if (*a3 <= v9)
      {
        v12 = -v9;
        v11 = 0.0;
        if (v8 < v12)
        {
          v11 = v8 + v10;
        }
      }

      else
      {
        v11 = v8 - v10;
      }

      return v11 * v11 / (v4 + a2[9]);
    }

    else
    {
      v6 = *a3;
      v7 = v4;
      return -(((a4 * a4) * (a2[9] + v7)) + ((v6 + v6) * a4));
    }
  }

  return v5;
}

int *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void xgboost::tree::ColMaker::Builder::InitNewNode(uint64_t a1, int **a2, float32x2_t **a3, uint64_t a4, uint64_t a5)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 2640);
  v68 = *(a1 + 2648);
  if (v7 != v68)
  {
    while (1)
    {
      v8 = *(a5 + 12);
      memset(v69, 0, sizeof(v69));
      v9 = *v7;
      v10 = v7[1];
      v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - *v7) >> 3);
      v12 = v8 - v11;
      if (v8 > v11)
      {
        break;
      }

      if (v8 < v11)
      {
        v17 = v9 + 104 * v8;
        while (v10 != v17)
        {
          v18 = *(v10 - 64);
          if (v18)
          {
            *(v10 - 56) = v18;
            operator delete(v18);
          }

          v10 -= 104;
        }

        goto LABEL_19;
      }

LABEL_20:
      v7 += 3;
      if (v7 == v68)
      {
        goto LABEL_21;
      }
    }

    v13 = v7[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v13 - v10) >> 3) < v12)
    {
      if ((v8 & 0x80000000) == 0)
      {
        v14 = 0x4EC4EC4EC4EC4EC5 * ((v13 - v9) >> 3);
        v15 = 2 * v14;
        if (2 * v14 <= v8)
        {
          v15 = v8;
        }

        if (v14 >= 0x13B13B13B13B13BLL)
        {
          v16 = 0x276276276276276;
        }

        else
        {
          v16 = v15;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::ColMaker::ThreadEntry>>(v16);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 + 104 * v12;
    v19 = v10 + 40;
    v20 = 104 * v8 - 104 * v11;
    do
    {
      *(v19 - 40) = 0u;
      *(v19 - 24) = 0;
      *(v19 - 16) = 0;
      *(v19 - 8) = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v19, 0, 0, 0);
      *(v19 + 24) = *&v69[1].__ptr_;
      *(v19 + 40) = *&v69[3].__ptr_;
      *(v19 + 56) = v69[5];
      v19 += 104;
      v20 -= 104;
    }

    while (v20);
LABEL_19:
    v7[1] = v17;
    goto LABEL_20;
  }

LABEL_21:
  v21 = *(a5 + 12);
  memset(v69, 0, sizeof(v69));
  v22 = *(a1 + 2672);
  v23 = *(a1 + 2664);
  v24 = 0x4EC4EC4EC4EC4EC5 * ((v22 - v23) >> 3);
  v25 = v21 >= v24;
  v26 = v21 - v24;
  if (v21 <= v24)
  {
    v32 = a4;
    v31 = a2;
    if (!v25)
    {
      v33 = v23 + 104 * v21;
      while (v22 != v33)
      {
        v34 = *(v22 - 64);
        if (v34)
        {
          *(v22 - 56) = v34;
          operator delete(v34);
        }

        v22 -= 104;
      }

      *(a1 + 2672) = v33;
    }
  }

  else
  {
    v27 = *(a1 + 2680);
    if (0x4EC4EC4EC4EC4EC5 * ((v27 - v22) >> 3) < v26)
    {
      if ((v21 & 0x80000000) == 0)
      {
        v28 = 0x4EC4EC4EC4EC4EC5 * ((v27 - v23) >> 3);
        v29 = 2 * v28;
        if (2 * v28 <= v21)
        {
          v29 = v21;
        }

        if (v28 >= 0x13B13B13B13B13BLL)
        {
          v30 = 0x276276276276276;
        }

        else
        {
          v30 = v29;
        }

        if (v30 <= 0x276276276276276)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v35 = v22 + 104 * v26;
    v36 = v22 + 40;
    v37 = 104 * v21 - 104 * v24;
    do
    {
      *(v36 - 40) = 0u;
      *(v36 - 24) = 0u;
      *(v36 - 8) = 0;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *v36 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v36, 0, 0, 0);
      *(v36 + 24) = *&v69[1].__ptr_;
      *(v36 + 40) = *&v69[3].__ptr_;
      *(v36 + 56) = v69[5];
      v36 += 104;
      v37 -= 104;
    }

    while (v37);
    *(a1 + 2672) = v35;
    v32 = a4;
    v31 = a2;
  }

  v38 = *(*(*v32 + 24))(v32);
  v69[0].__ptr_ = 0;
  v69[1].__ptr_ = 850045863;
  memset(&v69[2], 0, 32);
  v70 = 0u;
  v71 = 0;
  if (v38)
  {
    v39 = *(a1 + 2616);
    v40 = *a3;
    do
    {
      v42 = *v39++;
      v41 = v42;
      if ((v42 & 0x80000000) == 0)
      {
        *(**(a1 + 2640) + 104 * v41) = vaddq_f64(*(**(a1 + 2640) + 104 * v41), vcvtq_f64_f32(*v40));
      }

      ++v40;
      --v38;
    }

    while (v38);
  }

  dmlc::OMPException::Rethrow(v69);
  std::mutex::~mutex(&v69[1]);
  std::exception_ptr::~exception_ptr(v69);
  v43 = *v31;
  v44 = v31[1];
  if (*v31 != v44)
  {
    v45 = *(a1 + 2640);
    v46 = *(a1 + 2648);
    v47 = *(a1 + 2664);
    do
    {
      v48 = *v43;
      v49 = 0uLL;
      if (v45 != v46)
      {
        v50 = v45;
        do
        {
          v51 = *v50;
          v50 += 3;
          v49 = vaddq_f64(v49, *(v51 + 104 * v48));
        }

        while (v50 != v46);
      }

      *(v47 + 104 * v48) = v49;
      ++v43;
    }

    while (v43 != v44);
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 2712), v69);
  v54 = *v31;
  v55 = v31[1];
  if (*v31 != v55)
  {
    v56 = *(a1 + 2664);
    do
    {
      v57 = *v54;
      v58 = *(*(a5 + 160) + 20 * *v54);
      *v59.i32 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v69, v58 & 0x7FFFFFFF, *(a1 + 8), (v56 + 104 * *v54), v52, v53);
      v60 = *(a1 + 2664) + 104 * v57;
      *(v60 + 20) = v59.i32[0];
      v61 = *(a1 + 8);
      v63 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v69, v58 & 0x7FFFFFFF, v61, v60, v59, v62);
      *v52.i32 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v69, v61, v60, v63);
      v56 = *(a1 + 2664);
      *(v56 + 104 * v57 + 16) = v52.i32[0];
      ++v54;
    }

    while (v54 != v55);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void xgboost::tree::TreeEvaluator::AddSplit<false>(uint64_t a1, int a2, int a3, int a4, int a5, float a6, float a7)
{
  if (*(a1 + 28) == 1)
  {
    v15 = v7;
    v16 = v8;
    v9 = *(a1 + 24);
    v10[0] = a3;
    v10[1] = a2;
    v10[2] = a4;
    v10[3] = a5;
    *&v10[4] = a6;
    *&v10[5] = a7;
    v11 = xmmword_274E1F3B0;
    v12 = vdupq_n_s64(1uLL);
    v13 = 1;
    v14 = v9;
    xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::Eval<xgboost::HostDeviceVector<float> *,xgboost::HostDeviceVector<float> *,xgboost::HostDeviceVector<int> *>(v10, a1, a1 + 8, a1 + 16);
  }
}

void xgboost::common::ColumnSampler::Init(float *a1, std::vector<unsigned int>::size_type a2, __n128 *__c, float a4, float a5, float a6)
{
  std::vector<float>::__move_assign((a1 + 10), __c);
  a1[16] = a5;
  a1[17] = a6;
  a1[18] = a4;
  if (!*a1)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN7xgboost16HostDeviceVectorIjEENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  xgboost::common::ColumnSampler::Reset(a1);
  v11 = *a1;
  __x[0] = 0;
  std::vector<unsigned int>::resize(*v11, a2, __x);
  v12 = *a1;
  v13 = **a1;
  v15 = *v13;
  v14 = v13[1];
  if (*v13 != v14)
  {
    v16 = 0;
    v17 = (v14 - v15 - 4) >> 2;
    v18 = vdupq_n_s64(v17);
    v19 = (v17 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v20 = (v15 + 8);
    do
    {
      v21 = vdupq_n_s64(v16);
      v22 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_274E1F3B0)));
      if (vuzp1_s16(v22, *v18.i8).u8[0])
      {
        *(v20 - 2) = v16;
      }

      if (vuzp1_s16(v22, *&v18).i8[2])
      {
        *(v20 - 1) = v16 + 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_274E1FC60)))).i32[1])
      {
        *v20 = v16 + 2;
        v20[1] = v16 + 3;
      }

      v16 += 4;
      v20 += 4;
    }

    while (v19 != v16);
  }

  v23 = *(a1 + 1);
  v26 = v12;
  v27 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xgboost::common::ColumnSampler::ColSample(&v26, __x, a1[17]);
  v24 = *__x;
  memset(__x, 0, sizeof(__x));
  v25 = *(a1 + 1);
  *a1 = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if (*&__x[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__x[2]);
    }
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_274D19C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
  }
}

void dmlc::LogCheckFormat<unsigned long long,unsigned long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E70](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E50](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D19ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<int,xgboost::tree::TrainParam::SamplingMethod>(unsigned int *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E20](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D1A0C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::common::ColumnSampler::Reset(std::vector<unsigned int> ***this)
{
  v1 = this;
  v2 = *this;
  __x = 0;
  std::vector<unsigned int>::resize(*v2, 0, &__x);
  v3 = *(v1 + 3);
  v1 = (v1 + 24);
  std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void _ZNSt3__120__shared_ptr_emplaceIN7xgboost16HostDeviceVectorIjEENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2883E0CB0;
  xgboost::HostDeviceVector<unsigned int>::HostDeviceVector();
}

void std::__shared_ptr_emplace<xgboost::HostDeviceVector<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E0CB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void std::vector<xgboost::tree::ColMaker::ThreadEntry>::__init_with_size[abi:ne200100]<xgboost::tree::ColMaker::ThreadEntry*,xgboost::tree::ColMaker::ThreadEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::ColMaker::ThreadEntry>>(a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::ColMaker::ThreadEntry>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D1A4EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::ColMaker::ThreadEntry>,xgboost::tree::ColMaker::ThreadEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; i -= 104)
    {
      v5 = *(i - 64);
      if (v5)
      {
        *(i - 56) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::vector<xgboost::tree::ColMaker::ThreadEntry>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::ColMaker::ThreadEntry>,xgboost::tree::ColMaker::ThreadEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 4);
      *a4 = v7;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 7);
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      v9 = v6[4];
      v10 = v6[5];
      *(a4 + 96) = *(v6 + 12);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      v6 = (v6 + 104);
      a4 += 104;
    }

    while (v6 != a3);
    v16 = a4;
    v14 = 1;
    do
    {
      v11 = *(v5 + 5);
      if (v11)
      {
        *(v5 + 6) = v11;
        operator delete(v11);
      }

      v5 = (v5 + 104);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::ColMaker::ThreadEntry>,xgboost::tree::ColMaker::ThreadEntry*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__split_buffer<xgboost::tree::ColMaker::ThreadEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 104;
    v4 = *(v2 - 64);
    if (v4)
    {
      *(v2 - 56) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 104;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::ColMaker::NodeEntry>,xgboost::tree::ColMaker::NodeEntry*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      v7 = *(v5 + 3);
      *(a3 + 32) = *(v5 + 8);
      *(a3 + 24) = v7;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 40) = 0;
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 56) = *(v5 + 7);
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      v8 = v5[4];
      v9 = v5[5];
      *(a3 + 96) = *(v5 + 12);
      *(a3 + 64) = v8;
      *(a3 + 80) = v9;
      v5 = (v5 + 104);
      a3 += 104;
    }

    while (v5 != a2);
    do
    {
      v10 = *(v4 + 5);
      if (v10)
      {
        *(v4 + 6) = v10;
        operator delete(v10);
      }

      v4 = (v4 + 104);
    }

    while (v4 != a2);
  }
}

void xgboost::common::ColumnSampler::GetFeatureSet(xgboost::common::ColumnSampler *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = *(this + 16);
  if (v5 == 1.0 && *(this + 18) == 1.0)
  {
    v6 = *(this + 1);
    *a3 = *this;
    goto LABEL_18;
  }

  for (i = *(this + 3); i; i = *i)
  {
    v8 = *(i + 8);
    if (v8 <= a2)
    {
      if (v8 >= a2)
      {
        goto LABEL_16;
      }

      ++i;
    }
  }

  v9 = *(this + 1);
  v18 = *this;
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(this + 16);
  }

  xgboost::common::ColumnSampler::ColSample(&v18, &v20, v5);
  v22 = &v21;
  v10 = std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 16, &v21);
  v11 = v20;
  v20 = 0uLL;
  v12 = v10[6];
  *(v10 + 5) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
    }
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_16:
  if (*(this + 18) == 1.0)
  {
    *&v20 = &v21;
    v13 = std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 16, &v21);
    *a3 = v13[5];
    v6 = v13[6];
LABEL_18:
    *(a3 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  *&v20 = &v21;
  v14 = std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 16, &v21);
  v15 = v14[6];
  v16 = v14[5];
  v17 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xgboost::common::ColumnSampler::ColSample(&v16, a3, *(this + 18));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_274D1A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::Eval<xgboost::HostDeviceVector<float> *,xgboost::HostDeviceVector<float> *,xgboost::HostDeviceVector<int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 60) & 0x80000000) != 0)
  {
    v6 = *a1;
    v7 = *(a1 + 16);
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    *&v11 = &v6;
    *(&v11 + 1) = &v10;
    v12 = a1;
    v13 = &v9;
    v14 = &v8;
    xgboost::common::ParallelFor<unsigned long,void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1}>(v4, v5, 2, 0, &v11);
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 16);
    xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCUDA<(void *)0,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>();
  }
}

void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCUDA<(void *)0,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/../common/transform.h", 160);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Not part of device code. WITH_CUDA: ", 36);
  MEMORY[0x277C68DF0](v2, 0);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
}

void xgboost::common::ParallelFor<unsigned long,void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1}>(uint64_t a1, int a2, int a3, uint64_t a4, __int128 *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = a2;
  v23 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v20, &v23);
  }

  v24.__ptr_ = 0;
  v25.__m_.__sig = 850045863;
  memset(v25.__m_.__opaque, 0, sizeof(v25.__m_.__opaque));
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4)
      {
        if (a1)
        {
          for (i = 0; i != a1; ++i)
          {
            v14 = a5[1];
            v20 = *a5;
            v21 = v14;
            v22 = *(a5 + 4);
            dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, i);
          }
        }
      }

      else if (a1)
      {
        for (j = 0; j != a1; ++j)
        {
          v18 = a5[1];
          v20 = *a5;
          v21 = v18;
          v22 = *(a5 + 4);
          dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, j);
        }
      }
    }

    else if (a3 == 3 && a1)
    {
      for (k = 0; k != a1; ++k)
      {
        v10 = a5[1];
        v20 = *a5;
        v21 = v10;
        v22 = *(a5 + 4);
        dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, k);
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a4)
      {
        if (a1)
        {
          for (m = 0; m != a1; ++m)
          {
            v8 = a5[1];
            v20 = *a5;
            v21 = v8;
            v22 = *(a5 + 4);
            dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, m);
          }
        }
      }

      else if (a1)
      {
        for (n = 0; n != a1; ++n)
        {
          v16 = a5[1];
          v20 = *a5;
          v21 = v16;
          v22 = *(a5 + 4);
          dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, n);
        }
      }
    }
  }

  else if (a1)
  {
    for (ii = 0; ii != a1; ++ii)
    {
      v12 = a5[1];
      v20 = *a5;
      v21 = v12;
      v22 = *(a5 + 4);
      dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(&v24, &v20, ii);
    }
  }

  dmlc::OMPException::Rethrow(&v24);
  std::mutex::~mutex(&v25);
  std::exception_ptr::~exception_ptr(&v24);
  v19 = *MEMORY[0x277D85DE8];
}

float *dmlc::OMPException::Run<void xgboost::common::Transform<false>::Evaluator<void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}>::LaunchCPU<xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int>>(void xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1},xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<float>,xgboost::HostDeviceVector<int> *)::{lambda(unsigned long)#1},unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = ***(a2 + 8);
  v6 = *v4;
  v5 = v4[1];
  v19[0] = (v5 - v6) >> 2;
  v19[1] = v6;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = ***(a2 + 24);
  v10 = *v8;
  v9 = v8[1];
  v18[0] = (v9 - v10) >> 2;
  v18[1] = v10;
  v11 = v10 || v9 == 0;
  if (!v11 || ((v12 = ***(a2 + 32), v14 = *v12, v13 = v12[1], v17[0] = (v13 - v14) >> 2, (v17[1] = v14) == 0) ? (v15 = v13 == 0) : (v15 = 1), !v15))
  {
LABEL_17:
    std::terminate();
  }

  return xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}::operator()(v3, a3, v19, v18, v17);
}

float *xgboost::tree::TreeEvaluator::AddSplit<false>(int,int,int,unsigned int,float,float)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<float,18446744073709551615ul>,xgboost::common::Span<int,18446744073709551615ul>)#1}::operator()(float *result, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(result + 1);
  v6 = *a3;
  if (*a3 <= v5)
  {
    goto LABEL_13;
  }

  v7 = *result;
  if (v6 <= v7)
  {
    goto LABEL_13;
  }

  v8 = a3[1];
  v9 = (v8 + 4 * v7);
  *v9 = *(v8 + 4 * v5);
  v10 = *a4;
  if (*a4 <= v5)
  {
    goto LABEL_13;
  }

  if (v10 <= v7)
  {
    goto LABEL_13;
  }

  v11 = a4[1];
  v12 = (v11 + 4 * v7);
  *v12 = *(v11 + 4 * v5);
  v13 = *(result + 2);
  if (v6 <= v13 || (v14 = (v8 + 4 * v13), *v14 = *(v8 + 4 * v5), v10 <= v13) || (v15 = *(v11 + 4 * v5), v16 = (v11 + 4 * v13), *v16 = v15, v17 = *(result + 3), *a5 <= v17))
  {
LABEL_13:
    std::terminate();
  }

  v18 = (result[4] + result[5]) * 0.5;
  v19 = *(a5[1] + 4 * v17);
  if ((v19 & 0x80000000) == 0)
  {
    if (!v19)
    {
      return result;
    }

    v9 = v12;
    v16 = v14;
  }

  *v9 = v18;
  *v16 = v18;
  return result;
}

void xgboost::tree::ColMaker::Builder::~Builder(void **this)
{
  *this = &unk_2883E0C70;
  v2 = this + 343;
  if (*(this + 2839) < 0)
  {
    operator delete(this[352]);
  }

  v3 = this + 349;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 346;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::linear::ShotgunUpdater::~ShotgunUpdater(xgboost::linear::ShotgunUpdater *this)
{
  *this = &unk_2883E0DF8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2883E0DF8;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::linear::ShotgunUpdater::LoadConfig(xgboost::linear::ShotgunUpdater *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "linear_train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::linear::LinearTrainParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D1B4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::linear::ShotgunUpdater::SaveConfig(xgboost::linear::ShotgunUpdater *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::linear::LinearTrainParam>((this + 16), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "linear_train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

uint64_t xgboost::linear::ShotgunUpdater::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::linear::LinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v9);
  v10 = v9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/linear/updater_shotgun.cc", 21);
    v5 = dmlc::LogMessageFatal::GetEntry(&v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Unsupported feature selector for shotgun updater.\n", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Supported options are: {cyclic, shuffle}", 40);
    dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    v3 = *(a1 + 32);
  }

  v7 = xgboost::linear::FeatureSelector::Create(v3);
  result = *(a1 + 48);
  *(a1 + 48) = v7;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_274D1B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::linear::ShotgunUpdater::Update(uint64_t a1, uint64_t *a2, uint64_t (***a3)(void), uint64_t a4, double a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 24)), a5));
  *(a1 + 36) = v10;
  v11 = *(*(a4 + 152) + 8);
  if (v11 <= 0)
  {
    v18 = v9;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      BiasGradientParallel = xgboost::linear::GetBiasGradientParallel(i, v11, *a2, a3, 1);
      *&BiasGradientParallel = -BiasGradientParallel / v14 * *(a1 + 20);
      v15 = *(a4 + 160) + 4 * (*(*(a4 + 152) + 8) * *(*(a4 + 152) + 4));
      *(v15 + 4 * i) = *(v15 + 4 * i) + *&BiasGradientParallel;
      v16 = *a2;
      LODWORD(v20[0]) = i;
      LODWORD(v19) = v11;
      LODWORD(v23.__ptr_) = LODWORD(BiasGradientParallel);
      v21 = v16;
      if (*&BiasGradientParallel != 0.0)
      {
        v17 = *(**a3)(a3);
        v24.__ptr_ = &v21;
        v25 = &v19;
        v26 = v20;
        v27 = &v23;
        xgboost::common::ParallelFor<unsigned int,xgboost::linear::UpdateBiasResidualParallel(int,int,float,std::vector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,int)::{lambda#1}>(v17, 1, 2, 0, &v24);
      }
    }

    v18 = *a2;
    v10 = *(a1 + 36);
  }

  (*(**(a1 + 48) + 16))(*(a1 + 48), a4, v18, a3, 0, v10.f32[1]);
  ((*a3)[10])(&v21, a3);
  v20[0] = v21;
  v20[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(&v19, 0);
}

void sub_274D1BC28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274D1BC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::exception_ptr a18, uint64_t a19)
{
  std::mutex::~mutex(&a19);
  std::exception_ptr::~exception_ptr(&a18);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::Registry<xgboost::LinearUpdaterReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::LinearUpdater * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t xgboost::LinearUpdater::Create(uint64_t a1, uint64_t a2)
{
  dmlc::Registry<xgboost::LinearUpdaterReg>::Get();
  dmlc::Registry<xgboost::LinearUpdaterReg>::Get();
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(&qword_280AF7368, a1);
  if (v4 == &qword_280AF7370 || (v5 = v4[7]) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/linear/linear_updater.cc", 17);
    v9 = dmlc::LogMessageFatal::GetEntry(&v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown linear updater ", 23);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    __break(1u);
LABEL_12:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = *(v5 + 96);
  if (!v6)
  {
    goto LABEL_12;
  }

  result = (*(*v6 + 48))(v6);
  *(result + 8) = a2;
  return result;
}

float xgboost::common::IncrementHist<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (2 * a4 > (2 * a3))
  {
    v4 = 2 * a4 - 2 * a3;
    v5 = (*(a1 + 8) + 8 * a3);
    v6 = (*(a2 + 8) + 8 * a3);
    do
    {
      v7 = *v6++;
      result = v7 + *v5;
      *v5++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

double xgboost::common::IncrementHist<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (2 * a4 > (2 * a3))
  {
    v4 = 2 * a4 - 2 * a3;
    v5 = (*(a1 + 8) + 16 * a3);
    v6 = (*(a2 + 8) + 16 * a3);
    do
    {
      v7 = *v6++;
      result = v7 + *v5;
      *v5++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

float xgboost::common::CopyHist<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (2 * a4 > (2 * a3))
  {
    v4 = 2 * a4 - 2 * a3;
    v5 = (*(a1 + 8) + 8 * a3);
    v6 = (*(a2 + 8) + 8 * a3);
    do
    {
      v7 = *v6++;
      result = v7;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

double xgboost::common::CopyHist<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (2 * a4 > (2 * a3))
  {
    v4 = 2 * a4 - 2 * a3;
    v5 = (*(a1 + 8) + 16 * a3);
    v6 = (*(a2 + 8) + 16 * a3);
    do
    {
      v7 = *v6++;
      result = v7;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

float xgboost::common::SubtractionHist<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (2 * a5 > (2 * a4))
  {
    v5 = 2 * a5 - 2 * a4;
    v6 = (*(a1 + 8) + 8 * a4);
    v7 = (*(a3 + 8) + 8 * a4);
    v8 = (*(a2 + 8) + 8 * a4);
    do
    {
      v9 = *v8++;
      v10 = v9;
      v11 = *v7++;
      result = v10 - v11;
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

double xgboost::common::SubtractionHist<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (2 * a5 > (2 * a4))
  {
    v5 = 2 * a5 - 2 * a4;
    v6 = (*(a1 + 8) + 16 * a4);
    v7 = (*(a3 + 8) + 16 * a4);
    v8 = (*(a2 + 8) + 16 * a4);
    do
    {
      v9 = *v8++;
      v10 = v9;
      v11 = *v7++;
      result = v10 - v11;
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void xgboost::common::GHistBuilder<float>::BuildHist<true>(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5)
{
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (*(*a3 + 8 * (v9 - 1)) - **a3 == v9 - 1)
  {
    v18 = *a3;
    v19 = a3[2];
    v10 = a5[1];
    v17[0] = *a5;
    v17[1] = v10;
    v11 = v17;
  }

  else
  {
    if (v9 >= 0x12)
    {
      v9 = 18;
    }

    v12 = v8 - 8 * v9;
    *&v18 = *a3;
    *(&v18 + 1) = v12;
    LODWORD(v19) = -1;
    v13 = a5[1];
    v16[0] = *a5;
    v16[1] = v13;
    xgboost::common::BuildHistDispatch<float,true,true>(a2, &v18, a4, v16);
    *&v18 = v12;
    *(&v18 + 1) = v8;
    LODWORD(v19) = -1;
    v14 = a5[1];
    v15[0] = *a5;
    v15[1] = v14;
    v11 = v15;
  }

  xgboost::common::BuildHistDispatch<float,false,true>(a2, &v18, a4, v11);
}

void xgboost::common::BuildHistDispatch<float,false,true>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[19];
  v5 = *(a3 + 18);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v51 = *a2;
        v52 = a2[1];
        v53 = v52 - *a2;
        if (v52 != *a2)
        {
          v54 = 0;
          v55 = *(a4 + 8);
          v56 = *a1;
          v57 = a3[3];
          v58 = *a3;
          v59 = v53 >> 3;
          if (v59 <= 1)
          {
            v59 = 1;
          }

          do
          {
            v60 = *(v51 + 8 * v54);
            v61 = (v58 + 8 * (v60 - v4));
            v62 = *v61;
            v63 = v61[1] - *v61;
            if (v63)
            {
              v64 = (v57 + 4 * v62);
              do
              {
                v65 = *v64++;
                *(v55 + 4 * (2 * v65)) = *(v56 + 8 * v60) + *(v55 + 4 * (2 * v65));
                *(v55 + 4 * ((2 * v65) | 1u)) = *(v56 + 4 * ((2 * v60) | 1)) + *(v55 + 4 * ((2 * v65) | 1u));
                --v63;
              }

              while (v63);
            }

            ++v54;
          }

          while (v54 != v59);
        }

        break;
      case 2:
        v36 = *a2;
        v37 = a2[1];
        v38 = v37 - *a2;
        if (v37 != *a2)
        {
          v39 = 0;
          v40 = *(a4 + 8);
          v41 = *a1;
          v42 = a3[3];
          v43 = *a3;
          v44 = v38 >> 3;
          if (v44 <= 1)
          {
            v44 = 1;
          }

          do
          {
            v45 = *(v36 + 8 * v39);
            v46 = (v43 + 8 * (v45 - v4));
            v47 = *v46;
            v48 = v46[1] - *v46;
            if (v48)
            {
              v49 = (v42 + 2 * v47);
              do
              {
                v50 = *v49++;
                *(v40 + 8 * v50) = *(v41 + 8 * v45) + *(v40 + 8 * v50);
                *(v40 + 4 * ((2 * v50) | 1)) = *(v41 + 4 * ((2 * v45) | 1)) + *(v40 + 4 * ((2 * v50) | 1));
                --v48;
              }

              while (v48);
            }

            ++v39;
          }

          while (v39 != v44);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = a2[1];
        v8 = v7 - *a2;
        if (v7 != *a2)
        {
          v9 = 0;
          v10 = *(a4 + 8);
          v11 = *a1;
          v12 = a3[3];
          v13 = *a3;
          v14 = v8 >> 3;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            v15 = *(v6 + 8 * v9);
            v16 = (v13 + 8 * (v15 - v4));
            v17 = *v16;
            v18 = v16[1] - *v16;
            if (v18)
            {
              v19 = (v12 + v17);
              do
              {
                v20 = *v19++;
                *(v10 + 8 * v20) = *(v11 + 8 * v15) + *(v10 + 8 * v20);
                *(v10 + 4 * ((2 * v20) | 1)) = *(v11 + 4 * ((2 * v15) | 1)) + *(v10 + 4 * ((2 * v20) | 1));
                --v18;
              }

              while (v18);
            }

            ++v9;
          }

          while (v9 != v14);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v103);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v67 = dmlc::LogMessageFatal::GetEntry(&v103);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ": ", 2);
        v69 = &v103;
LABEL_58:
        dmlc::LogMessageFatal::~LogMessageFatal(v69);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v85 = *a2;
        v86 = a2[1];
        v87 = v86 - *a2;
        if (v86 != *a2)
        {
          v88 = 0;
          v89 = *(a4 + 8);
          v90 = *a1;
          v91 = *a3;
          v92 = a3[3];
          v93 = *a3 + 8;
          v94 = v87 >> 3;
          if (v94 <= 1)
          {
            v94 = 1;
          }

          do
          {
            v95 = *(v85 + 8 * v88);
            v96 = *(v91 + 8 * v95);
            v97 = *(v93 + 8 * v95) - v96;
            if (v97)
            {
              v98 = (v92 + 4 * v96);
              do
              {
                v99 = *v98++;
                *(v89 + 4 * (2 * v99)) = *(v90 + 8 * v95) + *(v89 + 4 * (2 * v99));
                *(v89 + 4 * ((2 * v99) | 1u)) = *(v90 + 4 * ((2 * v95) | 1)) + *(v89 + 4 * ((2 * v99) | 1u));
                --v97;
              }

              while (v97);
            }

            ++v88;
          }

          while (v88 != v94);
        }

        break;
      case 2:
        v70 = *a2;
        v71 = a2[1];
        v72 = v71 - *a2;
        if (v71 != *a2)
        {
          v73 = 0;
          v74 = *(a4 + 8);
          v75 = *a1;
          v76 = *a3;
          v77 = a3[3];
          v78 = *a3 + 8;
          v79 = v72 >> 3;
          if (v79 <= 1)
          {
            v79 = 1;
          }

          do
          {
            v80 = *(v70 + 8 * v73);
            v81 = *(v76 + 8 * v80);
            v82 = *(v78 + 8 * v80) - v81;
            if (v82)
            {
              v83 = (v77 + 2 * v81);
              do
              {
                v84 = *v83++;
                *(v74 + 8 * v84) = *(v75 + 8 * v80) + *(v74 + 8 * v84);
                *(v74 + 4 * ((2 * v84) | 1)) = *(v75 + 4 * ((2 * v80) | 1)) + *(v74 + 4 * ((2 * v84) | 1));
                --v82;
              }

              while (v82);
            }

            ++v73;
          }

          while (v73 != v79);
        }

        break;
      case 1:
        v21 = *a2;
        v22 = a2[1];
        v23 = v22 - *a2;
        if (v22 != *a2)
        {
          v24 = 0;
          v25 = *(a4 + 8);
          v26 = *a1;
          v27 = *a3;
          v28 = a3[3];
          v29 = *a3 + 8;
          v30 = v23 >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            v31 = *(v21 + 8 * v24);
            v32 = *(v27 + 8 * v31);
            v33 = *(v29 + 8 * v31) - v32;
            if (v33)
            {
              v34 = (v28 + v32);
              do
              {
                v35 = *v34++;
                *(v25 + 8 * v35) = *(v26 + 8 * v31) + *(v25 + 8 * v35);
                *(v25 + 4 * ((2 * v35) | 1)) = *(v26 + 4 * ((2 * v31) | 1)) + *(v25 + 4 * ((2 * v35) | 1));
                --v33;
              }

              while (v33);
            }

            ++v24;
          }

          while (v24 != v30);
        }

        break;
      default:
        v100 = dmlc::LogMessageFatal::GetEntry(&v104);
        dmlc::LogMessageFatal::Entry::Init(v100, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v101 = dmlc::LogMessageFatal::GetEntry(&v104);
        v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, ": ", 2);
        v69 = &v104;
        goto LABEL_58;
    }
  }
}

void xgboost::common::BuildHistDispatch<float,true,true>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[19];
  v5 = *(a3 + 18);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v87 = *a2;
        v88 = a2[1];
        v89 = v88 - *a2;
        if (v88 != *a2)
        {
          v90 = 0;
          v91 = *(a4 + 8);
          v92 = *a1;
          v93 = a3[3];
          v94 = *a3;
          v95 = v89 >> 3;
          if (v95 <= 1)
          {
            v95 = 1;
          }

          do
          {
            v96 = (v87 + 8 * v90);
            v97 = *v96;
            v98 = (v94 + 8 * (*v96 - v4));
            v100 = *v98;
            v99 = v98[1];
            v101 = v96[10];
            v102 = (v94 + 8 * (v101 - v4));
            v103 = *v102;
            v104 = v102[1];
            _X3 = v92 + 8 * v101;
            __asm { PRFM            #0, [X3] }

            if (v103 < v104)
            {
              _X3 = v93 + 4 * v103;
              do
              {
                __asm { PRFM            #0, [X3] }

                v103 += 16;
                _X3 += 64;
              }

              while (v103 < v104);
            }

            if (v99 != v100)
            {
              v109 = v99 - v100;
              v110 = 2 * v97;
              v111 = (v93 + 4 * v100);
              do
              {
                v112 = *v111++;
                *(v91 + 4 * (2 * v112)) = *(v92 + 4 * v110) + *(v91 + 4 * (2 * v112));
                *(v91 + 4 * ((2 * v112) | 1u)) = *(v92 + 4 * (v110 | 1)) + *(v91 + 4 * ((2 * v112) | 1u));
                --v109;
              }

              while (v109);
            }

            ++v90;
          }

          while (v90 != v95);
        }

        break;
      case 2:
        v61 = *a2;
        v62 = a2[1];
        v63 = v62 - *a2;
        if (v62 != *a2)
        {
          v64 = 0;
          v65 = *(a4 + 8);
          v66 = *a1;
          v67 = a3[3];
          v68 = *a3;
          v69 = v63 >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          do
          {
            v70 = (v61 + 8 * v64);
            v71 = *v70;
            v72 = (v68 + 8 * (*v70 - v4));
            v73 = *v72;
            v74 = v72[1];
            v75 = v70[10];
            v76 = (v68 + 8 * (v75 - v4));
            v77 = *v76;
            v78 = v76[1];
            _X4 = v66 + 8 * v75;
            __asm { PRFM            #0, [X4] }

            if (v77 < v78)
            {
              _X4 = v67 + 2 * v77;
              do
              {
                __asm { PRFM            #0, [X4] }

                v77 += 16;
                _X4 += 32;
              }

              while (v77 < v78);
            }

            if (v74 != v73)
            {
              v83 = v74 - v73;
              v84 = 2 * v71;
              v85 = (v67 + 2 * v73);
              do
              {
                v86 = *v85++;
                *(v65 + 8 * v86) = *(v66 + 4 * v84) + *(v65 + 8 * v86);
                *(v65 + 4 * ((2 * v86) | 1)) = *(v66 + 4 * (v84 | 1)) + *(v65 + 4 * ((2 * v86) | 1));
                --v83;
              }

              while (v83);
            }

            ++v64;
          }

          while (v64 != v69);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = a2[1];
        v8 = v7 - *a2;
        if (v7 != *a2)
        {
          v9 = 0;
          v10 = *(a4 + 8);
          v11 = *a1;
          v12 = a3[3];
          v13 = *a3;
          v14 = v8 >> 3;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            v15 = (v6 + 8 * v9);
            v16 = *v15;
            v17 = (v13 + 8 * (*v15 - v4));
            v19 = *v17;
            v18 = v17[1];
            v20 = v15[10];
            v21 = (v13 + 8 * (v20 - v4));
            v22 = *v21;
            v23 = v21[1];
            _X4 = v11 + 8 * v20;
            __asm { PRFM            #0, [X4] }

            while (v22 < v23)
            {
              _X4 = v12 + v22;
              __asm { PRFM            #0, [X4] }

              v22 += 16;
            }

            if (v18 != v19)
            {
              v32 = v18 - v19;
              v33 = 2 * v16;
              v34 = (v12 + v19);
              do
              {
                v35 = *v34++;
                *(v10 + 8 * v35) = *(v11 + 4 * v33) + *(v10 + 8 * v35);
                *(v10 + 4 * ((2 * v35) | 1)) = *(v11 + 4 * (v33 | 1)) + *(v10 + 4 * ((2 * v35) | 1));
                --v32;
              }

              while (v32);
            }

            ++v9;
          }

          while (v9 != v14);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v170);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v114 = dmlc::LogMessageFatal::GetEntry(&v170);
        v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, ": ", 2);
        v116 = &v170;
LABEL_76:
        dmlc::LogMessageFatal::~LogMessageFatal(v116);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v142 = *a2;
        v143 = a2[1];
        v144 = v143 - *a2;
        if (v143 != *a2)
        {
          v145 = 0;
          v146 = *(a4 + 8);
          v147 = *a1;
          v148 = *a3;
          v149 = a3[3];
          v150 = *a3 + 8;
          v151 = v144 >> 3;
          if (v151 <= 1)
          {
            v151 = 1;
          }

          do
          {
            v152 = (v142 + 8 * v145);
            v153 = *v152;
            v154 = *(v148 + 8 * *v152);
            v155 = *(v150 + 8 * *v152);
            v156 = v152[10];
            v157 = *(v148 + 8 * v156);
            v158 = *(v150 + 8 * v156);
            _X3 = v147 + 8 * v156;
            __asm { PRFM            #0, [X3] }

            if (v157 < v158)
            {
              _X3 = v149 + 4 * v157;
              do
              {
                __asm { PRFM            #0, [X3] }

                v157 += 16;
                _X3 += 64;
              }

              while (v157 < v158);
            }

            if (v155 != v154)
            {
              v163 = v155 - v154;
              v164 = 2 * v153;
              v165 = (v149 + 4 * v154);
              do
              {
                v166 = *v165++;
                *(v146 + 4 * (2 * v166)) = *(v147 + 4 * v164) + *(v146 + 4 * (2 * v166));
                *(v146 + 4 * ((2 * v166) | 1u)) = *(v147 + 4 * (v164 | 1)) + *(v146 + 4 * ((2 * v166) | 1u));
                --v163;
              }

              while (v163);
            }

            ++v145;
          }

          while (v145 != v151);
        }

        break;
      case 2:
        v117 = *a2;
        v118 = a2[1];
        v119 = v118 - *a2;
        if (v118 != *a2)
        {
          v120 = 0;
          v121 = *(a4 + 8);
          v122 = *a1;
          v123 = *a3;
          v124 = a3[3];
          v125 = *a3 + 8;
          v126 = v119 >> 3;
          if (v126 <= 1)
          {
            v126 = 1;
          }

          do
          {
            v127 = (v117 + 8 * v120);
            v128 = *v127;
            v129 = *(v123 + 8 * *v127);
            v130 = *(v125 + 8 * *v127);
            v131 = v127[10];
            v132 = *(v123 + 8 * v131);
            v133 = *(v125 + 8 * v131);
            _X4 = v122 + 8 * v131;
            __asm { PRFM            #0, [X4] }

            if (v132 < v133)
            {
              _X4 = v124 + 2 * v132;
              do
              {
                __asm { PRFM            #0, [X4] }

                v132 += 16;
                _X4 += 32;
              }

              while (v132 < v133);
            }

            if (v130 != v129)
            {
              v138 = v130 - v129;
              v139 = 2 * v128;
              v140 = (v124 + 2 * v129);
              do
              {
                v141 = *v140++;
                *(v121 + 8 * v141) = *(v122 + 4 * v139) + *(v121 + 8 * v141);
                *(v121 + 4 * ((2 * v141) | 1)) = *(v122 + 4 * (v139 | 1)) + *(v121 + 4 * ((2 * v141) | 1));
                --v138;
              }

              while (v138);
            }

            ++v120;
          }

          while (v120 != v126);
        }

        break;
      case 1:
        v36 = *a2;
        v37 = a2[1];
        v38 = v37 - *a2;
        if (v37 != *a2)
        {
          v39 = 0;
          v40 = *(a4 + 8);
          v41 = *a1;
          v42 = *a3;
          v43 = a3[3];
          v44 = *a3 + 8;
          v45 = v38 >> 3;
          if (v45 <= 1)
          {
            v45 = 1;
          }

          do
          {
            v46 = (v36 + 8 * v39);
            v47 = *v46;
            v48 = *(v42 + 8 * *v46);
            v49 = *(v44 + 8 * *v46);
            v50 = v46[10];
            v51 = *(v42 + 8 * v50);
            v52 = *(v44 + 8 * v50);
            _X4 = v41 + 8 * v50;
            __asm { PRFM            #0, [X4] }

            while (v51 < v52)
            {
              _X4 = v43 + v51;
              __asm { PRFM            #0, [X4] }

              v51 += 16;
            }

            if (v49 != v48)
            {
              v57 = v49 - v48;
              v58 = 2 * v47;
              v59 = (v43 + v48);
              do
              {
                v60 = *v59++;
                *(v40 + 8 * v60) = *(v41 + 4 * v58) + *(v40 + 8 * v60);
                *(v40 + 4 * ((2 * v60) | 1)) = *(v41 + 4 * (v58 | 1)) + *(v40 + 4 * ((2 * v60) | 1));
                --v57;
              }

              while (v57);
            }

            ++v39;
          }

          while (v39 != v45);
        }

        break;
      default:
        v167 = dmlc::LogMessageFatal::GetEntry(&v171);
        dmlc::LogMessageFatal::Entry::Init(v167, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v168 = dmlc::LogMessageFatal::GetEntry(&v171);
        v169 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v168, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v169, ": ", 2);
        v116 = &v171;
        goto LABEL_76;
    }
  }
}

void xgboost::common::GHistBuilder<float>::BuildHist<false>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (*(*a3 + 8 * (v9 - 1)) - **a3 == v9 - 1)
  {
    v18 = *a3;
    v19 = a3[2];
    v10 = a5[1];
    v17[0] = *a5;
    v17[1] = v10;
    v11 = v17;
  }

  else
  {
    if (v9 >= 0x12)
    {
      v9 = 18;
    }

    v12 = v8 - 8 * v9;
    *&v18 = *a3;
    *(&v18 + 1) = v12;
    LODWORD(v19) = -1;
    v13 = a5[1];
    v16[0] = *a5;
    v16[1] = v13;
    xgboost::common::BuildHistDispatch<float,true,false>(a2, &v18, a4, v16);
    *&v18 = v12;
    *(&v18 + 1) = v8;
    LODWORD(v19) = -1;
    v14 = a5[1];
    v15[0] = *a5;
    v15[1] = v14;
    v11 = v15;
  }

  xgboost::common::BuildHistDispatch<float,false,false>(a2, &v18, a4, v11);
}

void xgboost::common::BuildHistDispatch<float,false,false>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 152);
  v5 = *(a3 + 72);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v67 = *a2;
        v68 = *(a2 + 8) - *a2;
        if (v68)
        {
          v69 = 0;
          v70 = *(a4 + 8);
          v71 = *a1;
          v72 = *(a3 + 24);
          v73 = *(a3 + 48);
          v75 = *(*a3 + 8 * (*v67 - v4));
          v74 = *(*a3 + 8 * (*v67 - v4) + 8);
          v76 = v68 >> 3;
          if ((v68 >> 3) <= 1)
          {
            v76 = 1;
          }

          do
          {
            if (v74 != v75)
            {
              v77 = v67[v69];
              v78 = (v72 + 4 * (v77 - v4) * (v74 - v75));
              v79 = 2 * v77;
              v80 = (2 * v77) | 1;
              v81 = v73;
              v82 = v74 - v75;
              do
              {
                v84 = *v78++;
                v83 = v84;
                v85 = *v81++;
                v86 = v85 + v83;
                *(v70 + 4 * (2 * v86)) = *(v71 + 4 * v79) + *(v70 + 4 * (2 * v86));
                *(v70 + 4 * ((2 * v86) | 1u)) = *(v71 + 4 * v80) + *(v70 + 4 * ((2 * v86) | 1u));
                --v82;
              }

              while (v82);
            }

            ++v69;
          }

          while (v69 != v76);
        }

        break;
      case 2:
        v47 = *a2;
        v48 = *(a2 + 8) - *a2;
        if (v48)
        {
          v49 = 0;
          v50 = *(a4 + 8);
          v51 = *a1;
          v52 = *(a3 + 24);
          v53 = *(a3 + 48);
          v55 = *(*a3 + 8 * (*v47 - v4));
          v54 = *(*a3 + 8 * (*v47 - v4) + 8);
          v56 = v48 >> 3;
          if ((v48 >> 3) <= 1)
          {
            v56 = 1;
          }

          do
          {
            if (v54 != v55)
            {
              v57 = v47[v49];
              v58 = (v52 + 2 * (v57 - v4) * (v54 - v55));
              v59 = 2 * v57;
              v60 = (2 * v57) | 1;
              v61 = v53;
              v62 = v54 - v55;
              do
              {
                v64 = *v58++;
                v63 = v64;
                v65 = *v61++;
                v66 = v65 + v63;
                *(v50 + 4 * (2 * v66)) = *(v51 + 4 * v59) + *(v50 + 4 * (2 * v66));
                *(v50 + 4 * ((2 * v66) | 1u)) = *(v51 + 4 * v60) + *(v50 + 4 * ((2 * v66) | 1u));
                --v62;
              }

              while (v62);
            }

            ++v49;
          }

          while (v49 != v56);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = *(a2 + 8) - *a2;
        if (v7)
        {
          v8 = 0;
          v9 = *(a4 + 8);
          v10 = *a1;
          v11 = *(a3 + 24);
          v12 = *(a3 + 48);
          v14 = *(*a3 + 8 * (*v6 - v4));
          v13 = *(*a3 + 8 * (*v6 - v4) + 8);
          v15 = v7 >> 3;
          if ((v7 >> 3) <= 1)
          {
            v15 = 1;
          }

          do
          {
            if (v13 != v14)
            {
              v16 = v6[v8];
              v17 = (v11 + (v16 - v4) * (v13 - v14));
              v18 = 2 * v16;
              v19 = (2 * v16) | 1;
              v20 = v12;
              v21 = v13 - v14;
              do
              {
                v23 = *v17++;
                v22 = v23;
                v24 = *v20++;
                v25 = v24 + v22;
                *(v9 + 4 * (2 * v25)) = *(v10 + 4 * v18) + *(v9 + 4 * (2 * v25));
                *(v9 + 4 * ((2 * v25) | 1u)) = *(v10 + 4 * v19) + *(v9 + 4 * ((2 * v25) | 1u));
                --v21;
              }

              while (v21);
            }

            ++v8;
          }

          while (v8 != v15);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v136);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v88 = dmlc::LogMessageFatal::GetEntry(&v136);
        v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": ", 2);
        v90 = &v136;
LABEL_58:
        dmlc::LogMessageFatal::~LogMessageFatal(v90);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v112 = *a2;
        v113 = *(a2 + 8);
        v114 = v113 - *a2;
        if (v113 != *a2)
        {
          v115 = 0;
          v116 = *(a4 + 8);
          v117 = *a1;
          v118 = *(a3 + 24);
          v119 = *(a3 + 48);
          v121 = *(*a3 + 8 * *v112);
          v120 = *(*a3 + 8 * *v112 + 8);
          v122 = v114 >> 3;
          if (v122 <= 1)
          {
            v122 = 1;
          }

          do
          {
            if (v120 != v121)
            {
              v123 = v112[v115];
              v124 = (v118 + 4 * v123 * (v120 - v121));
              v125 = 2 * v123;
              v126 = (2 * v123) | 1;
              v127 = v119;
              v128 = v120 - v121;
              do
              {
                v130 = *v124++;
                v129 = v130;
                v131 = *v127++;
                v132 = v131 + v129;
                *(v116 + 4 * (2 * v132)) = *(v117 + 4 * v125) + *(v116 + 4 * (2 * v132));
                *(v116 + 4 * ((2 * v132) | 1u)) = *(v117 + 4 * v126) + *(v116 + 4 * ((2 * v132) | 1u));
                --v128;
              }

              while (v128);
            }

            ++v115;
          }

          while (v115 != v122);
        }

        break;
      case 2:
        v91 = *a2;
        v92 = *(a2 + 8);
        v93 = v92 - *a2;
        if (v92 != *a2)
        {
          v94 = 0;
          v95 = *(a4 + 8);
          v96 = *a1;
          v97 = *(a3 + 24);
          v98 = *(a3 + 48);
          v100 = *(*a3 + 8 * *v91);
          v99 = *(*a3 + 8 * *v91 + 8);
          v101 = v93 >> 3;
          if (v101 <= 1)
          {
            v101 = 1;
          }

          do
          {
            if (v99 != v100)
            {
              v102 = v91[v94];
              v103 = (v97 + 2 * v102 * (v99 - v100));
              v104 = 2 * v102;
              v105 = (2 * v102) | 1;
              v106 = v98;
              v107 = v99 - v100;
              do
              {
                v109 = *v103++;
                v108 = v109;
                v110 = *v106++;
                v111 = v110 + v108;
                *(v95 + 4 * (2 * v111)) = *(v96 + 4 * v104) + *(v95 + 4 * (2 * v111));
                *(v95 + 4 * ((2 * v111) | 1u)) = *(v96 + 4 * v105) + *(v95 + 4 * ((2 * v111) | 1u));
                --v107;
              }

              while (v107);
            }

            ++v94;
          }

          while (v94 != v101);
        }

        break;
      case 1:
        v26 = *a2;
        v27 = *(a2 + 8);
        v28 = v27 - *a2;
        if (v27 != *a2)
        {
          v29 = 0;
          v30 = *(a4 + 8);
          v31 = *a1;
          v32 = *(a3 + 24);
          v33 = *(a3 + 48);
          v35 = *(*a3 + 8 * *v26);
          v34 = *(*a3 + 8 * *v26 + 8);
          v36 = v28 >> 3;
          if (v36 <= 1)
          {
            v36 = 1;
          }

          do
          {
            if (v34 != v35)
            {
              v37 = v26[v29];
              v38 = (v32 + v37 * (v34 - v35));
              v39 = 2 * v37;
              v40 = (2 * v37) | 1;
              v41 = v33;
              v42 = v34 - v35;
              do
              {
                v44 = *v38++;
                v43 = v44;
                v45 = *v41++;
                v46 = v45 + v43;
                *(v30 + 4 * (2 * v46)) = *(v31 + 4 * v39) + *(v30 + 4 * (2 * v46));
                *(v30 + 4 * ((2 * v46) | 1u)) = *(v31 + 4 * v40) + *(v30 + 4 * ((2 * v46) | 1u));
                --v42;
              }

              while (v42);
            }

            ++v29;
          }

          while (v29 != v36);
        }

        break;
      default:
        v133 = dmlc::LogMessageFatal::GetEntry(&v137);
        dmlc::LogMessageFatal::Entry::Init(v133, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v134 = dmlc::LogMessageFatal::GetEntry(&v137);
        v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, ": ", 2);
        v90 = &v137;
        goto LABEL_58;
    }
  }
}

void xgboost::common::BuildHistDispatch<float,true,false>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 152);
  v5 = *(a3 + 72);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v99 = *a2;
        v100 = *(a2 + 8) - *a2;
        if (v100)
        {
          v101 = 0;
          v102 = *(a4 + 8);
          v103 = *a1;
          v104 = *(a3 + 24);
          v105 = *(a3 + 48);
          v107 = *(*a3 + 8 * (*v99 - v4));
          v106 = *(*a3 + 8 * (*v99 - v4) + 8);
          v108 = v106 - v107;
          v109 = v100 >> 3;
          if ((v100 >> 3) <= 1)
          {
            v109 = 1;
          }

          do
          {
            v110 = &v99[v101];
            v111 = *v110;
            v112 = v110[10];
            v113 = v112 - v4;
            v114 = (v112 - v4) * v108;
            v115 = v114 + v108;
            _X6 = v103 + 8 * v112;
            __asm { PRFM            #0, [X6] }

            if (v114 < v114 + v108)
            {
              _X5 = v104 + 4 * v108 * v113;
              do
              {
                __asm { PRFM            #0, [X5] }

                v114 += 16;
                _X5 += 64;
              }

              while (v114 < v115);
            }

            if (v106 != v107)
            {
              v120 = (v111 - v4) * v108;
              v121 = 2 * v111;
              v122 = (v104 + 4 * v120);
              v123 = v105;
              v124 = v106 - v107;
              do
              {
                v126 = *v122++;
                v125 = v126;
                v127 = *v123++;
                v128 = v127 + v125;
                *(v102 + 4 * (2 * v128)) = *(v103 + 4 * v121) + *(v102 + 4 * (2 * v128));
                *(v102 + 4 * ((2 * v128) | 1u)) = *(v103 + 4 * (v121 | 1)) + *(v102 + 4 * ((2 * v128) | 1u));
                --v124;
              }

              while (v124);
            }

            ++v101;
          }

          while (v101 != v109);
        }

        break;
      case 2:
        v69 = *a2;
        v70 = *(a2 + 8) - *a2;
        if (v70)
        {
          v71 = 0;
          v72 = *(a4 + 8);
          v73 = *a1;
          v74 = *(a3 + 24);
          v75 = *(a3 + 48);
          v77 = *(*a3 + 8 * (*v69 - v4));
          v76 = *(*a3 + 8 * (*v69 - v4) + 8);
          v78 = v76 - v77;
          v79 = v70 >> 3;
          if ((v70 >> 3) <= 1)
          {
            v79 = 1;
          }

          do
          {
            v80 = &v69[v71];
            v81 = *v80;
            v82 = v80[10];
            v83 = v82 - v4;
            v84 = (v82 - v4) * v78;
            v85 = v84 + v78;
            _X6 = v73 + 8 * v82;
            __asm { PRFM            #0, [X6] }

            if (v84 < v84 + v78)
            {
              _X5 = v74 + 2 * v78 * v83;
              do
              {
                __asm { PRFM            #0, [X5] }

                v84 += 16;
                _X5 += 32;
              }

              while (v84 < v85);
            }

            if (v76 != v77)
            {
              v90 = (v81 - v4) * v78;
              v91 = 2 * v81;
              v92 = (v74 + 2 * v90);
              v93 = v75;
              v94 = v76 - v77;
              do
              {
                v96 = *v92++;
                v95 = v96;
                v97 = *v93++;
                v98 = v97 + v95;
                *(v72 + 4 * (2 * v98)) = *(v73 + 4 * v91) + *(v72 + 4 * (2 * v98));
                *(v72 + 4 * ((2 * v98) | 1u)) = *(v73 + 4 * (v91 | 1)) + *(v72 + 4 * ((2 * v98) | 1u));
                --v94;
              }

              while (v94);
            }

            ++v71;
          }

          while (v71 != v79);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = *(a2 + 8) - *a2;
        if (v7)
        {
          v8 = 0;
          v9 = *(a4 + 8);
          v10 = *a1;
          v11 = *(a3 + 24);
          v12 = *(a3 + 48);
          v14 = *(*a3 + 8 * (*v6 - v4));
          v13 = *(*a3 + 8 * (*v6 - v4) + 8);
          v15 = v13 - v14;
          v16 = v7 >> 3;
          if ((v7 >> 3) <= 1)
          {
            v16 = 1;
          }

          do
          {
            v17 = &v6[v8];
            v18 = *v17;
            v19 = v17[10];
            v20 = (v19 - v4) * v15;
            v21 = v20 + v15;
            _X4 = v10 + 8 * v19;
            __asm { PRFM            #0, [X4] }

            while (v20 < v21)
            {
              _X4 = v11 + v20;
              __asm { PRFM            #0, [X4] }

              v20 += 16;
            }

            if (v13 != v14)
            {
              v30 = (v18 - v4) * v15;
              v31 = 2 * v18;
              v32 = (v11 + v30);
              v33 = v12;
              v34 = v13 - v14;
              do
              {
                v36 = *v32++;
                v35 = v36;
                v37 = *v33++;
                v38 = v37 + v35;
                *(v9 + 4 * (2 * v38)) = *(v10 + 4 * v31) + *(v9 + 4 * (2 * v38));
                *(v9 + 4 * ((2 * v38) | 1u)) = *(v10 + 4 * (v31 | 1)) + *(v9 + 4 * ((2 * v38) | 1u));
                --v34;
              }

              while (v34);
            }

            ++v8;
          }

          while (v8 != v16);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v196);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v130 = dmlc::LogMessageFatal::GetEntry(&v196);
        v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, ": ", 2);
        v132 = &v196;
LABEL_76:
        dmlc::LogMessageFatal::~LogMessageFatal(v132);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v163 = *a2;
        v164 = *(a2 + 8);
        v165 = v164 - *a2;
        if (v164 != *a2)
        {
          v166 = 0;
          v167 = *(a4 + 8);
          v168 = *a1;
          v169 = *(a3 + 24);
          v170 = *(a3 + 48);
          v172 = *(*a3 + 8 * *v163);
          v171 = *(*a3 + 8 * *v163 + 8);
          v173 = v171 - v172;
          v174 = v165 >> 3;
          if (v174 <= 1)
          {
            v174 = 1;
          }

          do
          {
            v175 = &v163[v166];
            v176 = *v175;
            v177 = v175[10];
            v178 = v177 * v173;
            v179 = v177 * v173 + v173;
            _X5 = v168 + 8 * v177;
            __asm { PRFM            #0, [X5] }

            if (v177 * v173 < v179)
            {
              _X4 = v169 + 4 * v173 * v177;
              do
              {
                __asm { PRFM            #0, [X4] }

                v178 += 16;
                _X4 += 64;
              }

              while (v178 < v179);
            }

            if (v171 != v172)
            {
              v184 = v176 * v173;
              v185 = 2 * v176;
              v186 = (v169 + 4 * v184);
              v187 = v170;
              v188 = v171 - v172;
              do
              {
                v190 = *v186++;
                v189 = v190;
                v191 = *v187++;
                v192 = v191 + v189;
                *(v167 + 4 * (2 * v192)) = *(v168 + 4 * v185) + *(v167 + 4 * (2 * v192));
                *(v167 + 4 * ((2 * v192) | 1u)) = *(v168 + 4 * (v185 | 1)) + *(v167 + 4 * ((2 * v192) | 1u));
                --v188;
              }

              while (v188);
            }

            ++v166;
          }

          while (v166 != v174);
        }

        break;
      case 2:
        v133 = *a2;
        v134 = *(a2 + 8);
        v135 = v134 - *a2;
        if (v134 != *a2)
        {
          v136 = 0;
          v137 = *(a4 + 8);
          v138 = *a1;
          v139 = *(a3 + 24);
          v140 = *(a3 + 48);
          v142 = *(*a3 + 8 * *v133);
          v141 = *(*a3 + 8 * *v133 + 8);
          v143 = v141 - v142;
          v144 = v135 >> 3;
          if (v144 <= 1)
          {
            v144 = 1;
          }

          do
          {
            v145 = &v133[v136];
            v146 = *v145;
            v147 = v145[10];
            v148 = v147 * v143;
            v149 = v147 * v143 + v143;
            _X5 = v138 + 8 * v147;
            __asm { PRFM            #0, [X5] }

            if (v147 * v143 < v149)
            {
              _X4 = v139 + 2 * v143 * v147;
              do
              {
                __asm { PRFM            #0, [X4] }

                v148 += 16;
                _X4 += 32;
              }

              while (v148 < v149);
            }

            if (v141 != v142)
            {
              v154 = v146 * v143;
              v155 = 2 * v146;
              v156 = (v139 + 2 * v154);
              v157 = v140;
              v158 = v141 - v142;
              do
              {
                v160 = *v156++;
                v159 = v160;
                v161 = *v157++;
                v162 = v161 + v159;
                *(v137 + 4 * (2 * v162)) = *(v138 + 4 * v155) + *(v137 + 4 * (2 * v162));
                *(v137 + 4 * ((2 * v162) | 1u)) = *(v138 + 4 * (v155 | 1)) + *(v137 + 4 * ((2 * v162) | 1u));
                --v158;
              }

              while (v158);
            }

            ++v136;
          }

          while (v136 != v144);
        }

        break;
      case 1:
        v39 = *a2;
        v40 = *(a2 + 8);
        v41 = v40 - *a2;
        if (v40 != *a2)
        {
          v42 = 0;
          v43 = *(a4 + 8);
          v44 = *a1;
          v45 = *(a3 + 24);
          v46 = *(a3 + 48);
          v48 = *(*a3 + 8 * *v39);
          v47 = *(*a3 + 8 * *v39 + 8);
          v49 = v47 - v48;
          v50 = v41 >> 3;
          if (v50 <= 1)
          {
            v50 = 1;
          }

          do
          {
            v51 = &v39[v42];
            v52 = *v51;
            v53 = v51[10];
            v54 = v53 * v49;
            v55 = v53 * v49 + v49;
            _X3 = v44 + 8 * v53;
            __asm { PRFM            #0, [X3] }

            while (v54 < v55)
            {
              _X3 = v45 + v54;
              __asm { PRFM            #0, [X3] }

              v54 += 16;
            }

            if (v47 != v48)
            {
              v60 = v52 * v49;
              v61 = 2 * v52;
              v62 = (v45 + v60);
              v63 = v46;
              v64 = v47 - v48;
              do
              {
                v66 = *v62++;
                v65 = v66;
                v67 = *v63++;
                v68 = v67 + v65;
                *(v43 + 4 * (2 * v68)) = *(v44 + 4 * v61) + *(v43 + 4 * (2 * v68));
                *(v43 + 4 * ((2 * v68) | 1u)) = *(v44 + 4 * (v61 | 1)) + *(v43 + 4 * ((2 * v68) | 1u));
                --v64;
              }

              while (v64);
            }

            ++v42;
          }

          while (v42 != v50);
        }

        break;
      default:
        v193 = dmlc::LogMessageFatal::GetEntry(&v197);
        dmlc::LogMessageFatal::Entry::Init(v193, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v194 = dmlc::LogMessageFatal::GetEntry(&v197);
        v195 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v194, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, ": ", 2);
        v132 = &v197;
        goto LABEL_76;
    }
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<true>(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5)
{
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (*(*a3 + 8 * (v9 - 1)) - **a3 == v9 - 1)
  {
    v18 = *a3;
    v19 = a3[2];
    v10 = a5[1];
    v17[0] = *a5;
    v17[1] = v10;
    v11 = v17;
  }

  else
  {
    if (v9 >= 0x12)
    {
      v9 = 18;
    }

    v12 = v8 - 8 * v9;
    *&v18 = *a3;
    *(&v18 + 1) = v12;
    LODWORD(v19) = -1;
    v13 = a5[1];
    v16[0] = *a5;
    v16[1] = v13;
    xgboost::common::BuildHistDispatch<double,true,true>(a2, &v18, a4, v16);
    *&v18 = v12;
    *(&v18 + 1) = v8;
    LODWORD(v19) = -1;
    v14 = a5[1];
    v15[0] = *a5;
    v15[1] = v14;
    v11 = v15;
  }

  xgboost::common::BuildHistDispatch<double,false,true>(a2, &v18, a4, v11);
}

void xgboost::common::BuildHistDispatch<double,false,true>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[19];
  v5 = *(a3 + 18);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v54 = *a2;
        v55 = a2[1];
        v56 = v55 - *a2;
        if (v55 != *a2)
        {
          v57 = 0;
          v58 = *(a4 + 8);
          v59 = *a1;
          v60 = a3[3];
          v61 = *a3;
          v62 = v56 >> 3;
          if (v62 <= 1)
          {
            v62 = 1;
          }

          do
          {
            v63 = *(v54 + 8 * v57);
            v64 = (v61 + 8 * (v63 - v4));
            v65 = *v64;
            v66 = v64[1] - *v64;
            if (v66)
            {
              v67 = (v60 + 4 * v65);
              v68 = vcvtq_f64_f32(*(v59 + 8 * v63));
              do
              {
                v69 = *v67++;
                *(v58 + 8 * (2 * v69)) = vaddq_f64(*(v58 + 8 * (2 * v69)), v68);
                --v66;
              }

              while (v66);
            }

            ++v57;
          }

          while (v57 != v62);
        }

        break;
      case 2:
        v38 = *a2;
        v39 = a2[1];
        v40 = v39 - *a2;
        if (v39 != *a2)
        {
          v41 = 0;
          v42 = *(a4 + 8);
          v43 = *a1;
          v44 = a3[3];
          v45 = *a3;
          v46 = v40 >> 3;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          do
          {
            v47 = *(v38 + 8 * v41);
            v48 = (v45 + 8 * (v47 - v4));
            v49 = *v48;
            v50 = v48[1] - *v48;
            if (v50)
            {
              v51 = (v44 + 2 * v49);
              v52 = vcvtq_f64_f32(*(v43 + 8 * v47));
              do
              {
                v53 = *v51++;
                *(v42 + 16 * v53) = vaddq_f64(*(v42 + 16 * v53), v52);
                --v50;
              }

              while (v50);
            }

            ++v41;
          }

          while (v41 != v46);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = a2[1];
        v8 = v7 - *a2;
        if (v7 != *a2)
        {
          v9 = 0;
          v10 = *(a4 + 8);
          v11 = *a1;
          v12 = a3[3];
          v13 = *a3;
          v14 = v8 >> 3;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            v15 = *(v6 + 8 * v9);
            v16 = (v13 + 8 * (v15 - v4));
            v17 = *v16;
            v18 = v16[1] - *v16;
            if (v18)
            {
              v19 = (v12 + v17);
              v20 = vcvtq_f64_f32(*(v11 + 8 * v15));
              do
              {
                v21 = *v19++;
                *(v10 + 16 * v21) = vaddq_f64(*(v10 + 16 * v21), v20);
                --v18;
              }

              while (v18);
            }

            ++v9;
          }

          while (v9 != v14);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v109);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v71 = dmlc::LogMessageFatal::GetEntry(&v109);
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ": ", 2);
        v73 = &v109;
LABEL_58:
        dmlc::LogMessageFatal::~LogMessageFatal(v73);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v90 = *a2;
        v91 = a2[1];
        v92 = v91 - *a2;
        if (v91 != *a2)
        {
          v93 = 0;
          v94 = *(a4 + 8);
          v95 = *a1;
          v96 = *a3;
          v97 = a3[3];
          v98 = *a3 + 8;
          v99 = v92 >> 3;
          if (v99 <= 1)
          {
            v99 = 1;
          }

          do
          {
            v100 = *(v90 + 8 * v93);
            v101 = *(v96 + 8 * v100);
            v102 = *(v98 + 8 * v100) - v101;
            if (v102)
            {
              v103 = (v97 + 4 * v101);
              v104 = vcvtq_f64_f32(*(v95 + 8 * v100));
              do
              {
                v105 = *v103++;
                *(v94 + 8 * (2 * v105)) = vaddq_f64(*(v94 + 8 * (2 * v105)), v104);
                --v102;
              }

              while (v102);
            }

            ++v93;
          }

          while (v93 != v99);
        }

        break;
      case 2:
        v74 = *a2;
        v75 = a2[1];
        v76 = v75 - *a2;
        if (v75 != *a2)
        {
          v77 = 0;
          v78 = *(a4 + 8);
          v79 = *a1;
          v80 = *a3;
          v81 = a3[3];
          v82 = *a3 + 8;
          v83 = v76 >> 3;
          if (v83 <= 1)
          {
            v83 = 1;
          }

          do
          {
            v84 = *(v74 + 8 * v77);
            v85 = *(v80 + 8 * v84);
            v86 = *(v82 + 8 * v84) - v85;
            if (v86)
            {
              v87 = (v81 + 2 * v85);
              v88 = vcvtq_f64_f32(*(v79 + 8 * v84));
              do
              {
                v89 = *v87++;
                *(v78 + 16 * v89) = vaddq_f64(*(v78 + 16 * v89), v88);
                --v86;
              }

              while (v86);
            }

            ++v77;
          }

          while (v77 != v83);
        }

        break;
      case 1:
        v22 = *a2;
        v23 = a2[1];
        v24 = v23 - *a2;
        if (v23 != *a2)
        {
          v25 = 0;
          v26 = *(a4 + 8);
          v27 = *a1;
          v28 = *a3;
          v29 = a3[3];
          v30 = *a3 + 8;
          v31 = v24 >> 3;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          do
          {
            v32 = *(v22 + 8 * v25);
            v33 = *(v28 + 8 * v32);
            v34 = *(v30 + 8 * v32) - v33;
            if (v34)
            {
              v35 = (v29 + v33);
              v36 = vcvtq_f64_f32(*(v27 + 8 * v32));
              do
              {
                v37 = *v35++;
                *(v26 + 16 * v37) = vaddq_f64(*(v26 + 16 * v37), v36);
                --v34;
              }

              while (v34);
            }

            ++v25;
          }

          while (v25 != v31);
        }

        break;
      default:
        v106 = dmlc::LogMessageFatal::GetEntry(&v110);
        dmlc::LogMessageFatal::Entry::Init(v106, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v107 = dmlc::LogMessageFatal::GetEntry(&v110);
        v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, ": ", 2);
        v73 = &v110;
        goto LABEL_58;
    }
  }
}

void xgboost::common::BuildHistDispatch<double,true,true>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[19];
  v5 = *(a3 + 18);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v87 = *a2;
        v88 = a2[1];
        v89 = v88 - *a2;
        if (v88 != *a2)
        {
          v90 = 0;
          v91 = *(a4 + 8);
          v92 = *a1;
          v93 = a3[3];
          v94 = *a3;
          v95 = v89 >> 3;
          if (v95 <= 1)
          {
            v95 = 1;
          }

          do
          {
            v96 = (v87 + 8 * v90);
            v97 = *v96;
            v98 = (v94 + 8 * (*v96 - v4));
            v100 = *v98;
            v99 = v98[1];
            v101 = v96[10];
            v102 = (v94 + 8 * (v101 - v4));
            v103 = *v102;
            v104 = v102[1];
            _X3 = v92 + 8 * v101;
            __asm { PRFM            #0, [X3] }

            if (v103 < v104)
            {
              _X3 = v93 + 4 * v103;
              do
              {
                __asm { PRFM            #0, [X3] }

                v103 += 16;
                _X3 += 64;
              }

              while (v103 < v104);
            }

            if (v99 != v100)
            {
              v109 = v99 - v100;
              v110 = (v93 + 4 * v100);
              v111 = vcvtq_f64_f32(*(v92 + 8 * v97));
              do
              {
                v112 = *v110++;
                *(v91 + 8 * (2 * v112)) = vaddq_f64(*(v91 + 8 * (2 * v112)), v111);
                --v109;
              }

              while (v109);
            }

            ++v90;
          }

          while (v90 != v95);
        }

        break;
      case 2:
        v61 = *a2;
        v62 = a2[1];
        v63 = v62 - *a2;
        if (v62 != *a2)
        {
          v64 = 0;
          v65 = *(a4 + 8);
          v66 = *a1;
          v67 = a3[3];
          v68 = *a3;
          v69 = v63 >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          do
          {
            v70 = (v61 + 8 * v64);
            v71 = *v70;
            v72 = (v68 + 8 * (*v70 - v4));
            v74 = *v72;
            v73 = v72[1];
            v75 = v70[10];
            v76 = (v68 + 8 * (v75 - v4));
            v77 = *v76;
            v78 = v76[1];
            _X3 = v66 + 8 * v75;
            __asm { PRFM            #0, [X3] }

            if (v77 < v78)
            {
              _X3 = v67 + 2 * v77;
              do
              {
                __asm { PRFM            #0, [X3] }

                v77 += 16;
                _X3 += 32;
              }

              while (v77 < v78);
            }

            if (v73 != v74)
            {
              v83 = v73 - v74;
              v84 = (v67 + 2 * v74);
              v85 = vcvtq_f64_f32(*(v66 + 8 * v71));
              do
              {
                v86 = *v84++;
                *(v65 + 16 * v86) = vaddq_f64(*(v65 + 16 * v86), v85);
                --v83;
              }

              while (v83);
            }

            ++v64;
          }

          while (v64 != v69);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = a2[1];
        v8 = v7 - *a2;
        if (v7 != *a2)
        {
          v9 = 0;
          v10 = *(a4 + 8);
          v11 = *a1;
          v12 = a3[3];
          v13 = *a3;
          v14 = v8 >> 3;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            v15 = (v6 + 8 * v9);
            v16 = *v15;
            v17 = (v13 + 8 * (*v15 - v4));
            v19 = *v17;
            v18 = v17[1];
            v20 = v15[10];
            v21 = (v13 + 8 * (v20 - v4));
            v22 = *v21;
            v23 = v21[1];
            _X3 = v11 + 8 * v20;
            __asm { PRFM            #0, [X3] }

            while (v22 < v23)
            {
              _X3 = v12 + v22;
              __asm { PRFM            #0, [X3] }

              v22 += 16;
            }

            if (v18 != v19)
            {
              v32 = v18 - v19;
              v33 = (v12 + v19);
              v34 = vcvtq_f64_f32(*(v11 + 8 * v16));
              do
              {
                v35 = *v33++;
                *(v10 + 16 * v35) = vaddq_f64(*(v10 + 16 * v35), v34);
                --v32;
              }

              while (v32);
            }

            ++v9;
          }

          while (v9 != v14);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v170);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v114 = dmlc::LogMessageFatal::GetEntry(&v170);
        v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, ": ", 2);
        v116 = &v170;
LABEL_76:
        dmlc::LogMessageFatal::~LogMessageFatal(v116);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v142 = *a2;
        v143 = a2[1];
        v144 = v143 - *a2;
        if (v143 != *a2)
        {
          v145 = 0;
          v146 = *(a4 + 8);
          v147 = *a1;
          v148 = *a3;
          v149 = a3[3];
          v150 = *a3 + 8;
          v151 = v144 >> 3;
          if (v151 <= 1)
          {
            v151 = 1;
          }

          do
          {
            v152 = (v142 + 8 * v145);
            v153 = *v152;
            v154 = *(v148 + 8 * *v152);
            v155 = *(v150 + 8 * *v152);
            v156 = v152[10];
            v157 = *(v148 + 8 * v156);
            v158 = *(v150 + 8 * v156);
            _X3 = v147 + 8 * v156;
            __asm { PRFM            #0, [X3] }

            if (v157 < v158)
            {
              _X3 = v149 + 4 * v157;
              do
              {
                __asm { PRFM            #0, [X3] }

                v157 += 16;
                _X3 += 64;
              }

              while (v157 < v158);
            }

            if (v155 != v154)
            {
              v163 = v155 - v154;
              v164 = (v149 + 4 * v154);
              v165 = vcvtq_f64_f32(*(v147 + 8 * v153));
              do
              {
                v166 = *v164++;
                *(v146 + 8 * (2 * v166)) = vaddq_f64(*(v146 + 8 * (2 * v166)), v165);
                --v163;
              }

              while (v163);
            }

            ++v145;
          }

          while (v145 != v151);
        }

        break;
      case 2:
        v117 = *a2;
        v118 = a2[1];
        v119 = v118 - *a2;
        if (v118 != *a2)
        {
          v120 = 0;
          v121 = *(a4 + 8);
          v122 = *a1;
          v123 = *a3;
          v124 = a3[3];
          v125 = *a3 + 8;
          v126 = v119 >> 3;
          if (v126 <= 1)
          {
            v126 = 1;
          }

          do
          {
            v127 = (v117 + 8 * v120);
            v128 = *v127;
            v129 = *(v123 + 8 * *v127);
            v130 = *(v125 + 8 * *v127);
            v131 = v127[10];
            v132 = *(v123 + 8 * v131);
            v133 = *(v125 + 8 * v131);
            _X3 = v122 + 8 * v131;
            __asm { PRFM            #0, [X3] }

            if (v132 < v133)
            {
              _X3 = v124 + 2 * v132;
              do
              {
                __asm { PRFM            #0, [X3] }

                v132 += 16;
                _X3 += 32;
              }

              while (v132 < v133);
            }

            if (v130 != v129)
            {
              v138 = v130 - v129;
              v139 = (v124 + 2 * v129);
              v140 = vcvtq_f64_f32(*(v122 + 8 * v128));
              do
              {
                v141 = *v139++;
                *(v121 + 16 * v141) = vaddq_f64(*(v121 + 16 * v141), v140);
                --v138;
              }

              while (v138);
            }

            ++v120;
          }

          while (v120 != v126);
        }

        break;
      case 1:
        v36 = *a2;
        v37 = a2[1];
        v38 = v37 - *a2;
        if (v37 != *a2)
        {
          v39 = 0;
          v40 = *(a4 + 8);
          v41 = *a1;
          v42 = *a3;
          v43 = a3[3];
          v44 = *a3 + 8;
          v45 = v38 >> 3;
          if (v45 <= 1)
          {
            v45 = 1;
          }

          do
          {
            v46 = (v36 + 8 * v39);
            v47 = *v46;
            v48 = *(v42 + 8 * *v46);
            v49 = *(v44 + 8 * *v46);
            v50 = v46[10];
            v51 = *(v42 + 8 * v50);
            v52 = *(v44 + 8 * v50);
            _X3 = v41 + 8 * v50;
            __asm { PRFM            #0, [X3] }

            while (v51 < v52)
            {
              _X3 = v43 + v51;
              __asm { PRFM            #0, [X3] }

              v51 += 16;
            }

            if (v49 != v48)
            {
              v57 = v49 - v48;
              v58 = (v43 + v48);
              v59 = vcvtq_f64_f32(*(v41 + 8 * v47));
              do
              {
                v60 = *v58++;
                *(v40 + 16 * v60) = vaddq_f64(*(v40 + 16 * v60), v59);
                --v57;
              }

              while (v57);
            }

            ++v39;
          }

          while (v39 != v45);
        }

        break;
      default:
        v167 = dmlc::LogMessageFatal::GetEntry(&v171);
        dmlc::LogMessageFatal::Entry::Init(v167, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v168 = dmlc::LogMessageFatal::GetEntry(&v171);
        v169 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v168, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v169, ": ", 2);
        v116 = &v171;
        goto LABEL_76;
    }
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<false>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3[1];
  v9 = (v8 - *a3) >> 3;
  if (*(*a3 + 8 * (v9 - 1)) - **a3 == v9 - 1)
  {
    v18 = *a3;
    v19 = a3[2];
    v10 = a5[1];
    v17[0] = *a5;
    v17[1] = v10;
    v11 = v17;
  }

  else
  {
    if (v9 >= 0x12)
    {
      v9 = 18;
    }

    v12 = v8 - 8 * v9;
    *&v18 = *a3;
    *(&v18 + 1) = v12;
    LODWORD(v19) = -1;
    v13 = a5[1];
    v16[0] = *a5;
    v16[1] = v13;
    xgboost::common::BuildHistDispatch<double,true,false>(a2, &v18, a4, v16);
    *&v18 = v12;
    *(&v18 + 1) = v8;
    LODWORD(v19) = -1;
    v14 = a5[1];
    v15[0] = *a5;
    v15[1] = v14;
    v11 = v15;
  }

  xgboost::common::BuildHistDispatch<double,false,false>(a2, &v18, a4, v11);
}

void xgboost::common::BuildHistDispatch<double,false,false>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 152);
  v5 = *(a3 + 72);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v61 = *a2;
        v62 = *(a2 + 8) - *a2;
        if (v62)
        {
          v63 = 0;
          v64 = *(a4 + 8);
          v65 = *a1;
          v66 = *(a3 + 24);
          v67 = *(a3 + 48);
          v69 = *(*a3 + 8 * (*v61 - v4));
          v68 = *(*a3 + 8 * (*v61 - v4) + 8);
          v70 = v62 >> 3;
          if ((v62 >> 3) <= 1)
          {
            v70 = 1;
          }

          do
          {
            if (v68 != v69)
            {
              v71 = v61[v63];
              v72 = (v66 + 4 * (v71 - v4) * (v68 - v69));
              v73 = vcvtq_f64_f32(*(v65 + 8 * v71));
              v74 = v67;
              v75 = v68 - v69;
              do
              {
                v77 = *v72++;
                v76 = v77;
                v78 = *v74++;
                *(v64 + 8 * (2 * (v78 + v76))) = vaddq_f64(*(v64 + 8 * (2 * (v78 + v76))), v73);
                --v75;
              }

              while (v75);
            }

            ++v63;
          }

          while (v63 != v70);
        }

        break;
      case 2:
        v43 = *a2;
        v44 = *(a2 + 8) - *a2;
        if (v44)
        {
          v45 = 0;
          v46 = *(a4 + 8);
          v47 = *a1;
          v48 = *(a3 + 24);
          v49 = *(a3 + 48);
          v51 = *(*a3 + 8 * (*v43 - v4));
          v50 = *(*a3 + 8 * (*v43 - v4) + 8);
          v52 = v44 >> 3;
          if ((v44 >> 3) <= 1)
          {
            v52 = 1;
          }

          do
          {
            if (v50 != v51)
            {
              v53 = v43[v45];
              v54 = (v48 + 2 * (v53 - v4) * (v50 - v51));
              v55 = vcvtq_f64_f32(*(v47 + 8 * v53));
              v56 = v49;
              v57 = v50 - v51;
              do
              {
                v59 = *v54++;
                v58 = v59;
                v60 = *v56++;
                *(v46 + 8 * (2 * (v60 + v58))) = vaddq_f64(*(v46 + 8 * (2 * (v60 + v58))), v55);
                --v57;
              }

              while (v57);
            }

            ++v45;
          }

          while (v45 != v52);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = *(a2 + 8) - *a2;
        if (v7)
        {
          v8 = 0;
          v9 = *(a4 + 8);
          v10 = *a1;
          v11 = *(a3 + 24);
          v12 = *(a3 + 48);
          v14 = *(*a3 + 8 * (*v6 - v4));
          v13 = *(*a3 + 8 * (*v6 - v4) + 8);
          v15 = v7 >> 3;
          if ((v7 >> 3) <= 1)
          {
            v15 = 1;
          }

          do
          {
            if (v13 != v14)
            {
              v16 = v6[v8];
              v17 = (v11 + (v16 - v4) * (v13 - v14));
              v18 = vcvtq_f64_f32(*(v10 + 8 * v16));
              v19 = v12;
              v20 = v13 - v14;
              do
              {
                v22 = *v17++;
                v21 = v22;
                v23 = *v19++;
                *(v9 + 8 * (2 * (v23 + v21))) = vaddq_f64(*(v9 + 8 * (2 * (v23 + v21))), v18);
                --v20;
              }

              while (v20);
            }

            ++v8;
          }

          while (v8 != v15);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v124);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v80 = dmlc::LogMessageFatal::GetEntry(&v124);
        v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ": ", 2);
        v82 = &v124;
LABEL_58:
        dmlc::LogMessageFatal::~LogMessageFatal(v82);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v102 = *a2;
        v103 = *(a2 + 8);
        v104 = v103 - *a2;
        if (v103 != *a2)
        {
          v105 = 0;
          v106 = *(a4 + 8);
          v107 = *a1;
          v108 = *(a3 + 24);
          v109 = *(a3 + 48);
          v111 = *(*a3 + 8 * *v102);
          v110 = *(*a3 + 8 * *v102 + 8);
          v112 = v104 >> 3;
          if (v112 <= 1)
          {
            v112 = 1;
          }

          do
          {
            if (v110 != v111)
            {
              v113 = v102[v105];
              v114 = (v108 + 4 * v113 * (v110 - v111));
              v115 = vcvtq_f64_f32(*(v107 + 8 * v113));
              v116 = v109;
              v117 = v110 - v111;
              do
              {
                v119 = *v114++;
                v118 = v119;
                v120 = *v116++;
                *(v106 + 8 * (2 * (v120 + v118))) = vaddq_f64(*(v106 + 8 * (2 * (v120 + v118))), v115);
                --v117;
              }

              while (v117);
            }

            ++v105;
          }

          while (v105 != v112);
        }

        break;
      case 2:
        v83 = *a2;
        v84 = *(a2 + 8);
        v85 = v84 - *a2;
        if (v84 != *a2)
        {
          v86 = 0;
          v87 = *(a4 + 8);
          v88 = *a1;
          v89 = *(a3 + 24);
          v90 = *(a3 + 48);
          v92 = *(*a3 + 8 * *v83);
          v91 = *(*a3 + 8 * *v83 + 8);
          v93 = v85 >> 3;
          if (v93 <= 1)
          {
            v93 = 1;
          }

          do
          {
            if (v91 != v92)
            {
              v94 = v83[v86];
              v95 = (v89 + 2 * v94 * (v91 - v92));
              v96 = vcvtq_f64_f32(*(v88 + 8 * v94));
              v97 = v90;
              v98 = v91 - v92;
              do
              {
                v100 = *v95++;
                v99 = v100;
                v101 = *v97++;
                *(v87 + 8 * (2 * (v101 + v99))) = vaddq_f64(*(v87 + 8 * (2 * (v101 + v99))), v96);
                --v98;
              }

              while (v98);
            }

            ++v86;
          }

          while (v86 != v93);
        }

        break;
      case 1:
        v24 = *a2;
        v25 = *(a2 + 8);
        v26 = v25 - *a2;
        if (v25 != *a2)
        {
          v27 = 0;
          v28 = *(a4 + 8);
          v29 = *a1;
          v30 = *(a3 + 24);
          v31 = *(a3 + 48);
          v33 = *(*a3 + 8 * *v24);
          v32 = *(*a3 + 8 * *v24 + 8);
          v34 = v26 >> 3;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          do
          {
            if (v32 != v33)
            {
              v35 = v24[v27];
              v36 = (v30 + v35 * (v32 - v33));
              v37 = vcvtq_f64_f32(*(v29 + 8 * v35));
              v38 = v31;
              v39 = v32 - v33;
              do
              {
                v41 = *v36++;
                v40 = v41;
                v42 = *v38++;
                *(v28 + 8 * (2 * (v42 + v40))) = vaddq_f64(*(v28 + 8 * (2 * (v42 + v40))), v37);
                --v39;
              }

              while (v39);
            }

            ++v27;
          }

          while (v27 != v34);
        }

        break;
      default:
        v121 = dmlc::LogMessageFatal::GetEntry(&v125);
        dmlc::LogMessageFatal::Entry::Init(v121, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v122 = dmlc::LogMessageFatal::GetEntry(&v125);
        v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, ": ", 2);
        v82 = &v125;
        goto LABEL_58;
    }
  }
}

void xgboost::common::BuildHistDispatch<double,true,false>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 152);
  v5 = *(a3 + 72);
  if (v4)
  {
    switch(v5)
    {
      case 4:
        v93 = *a2;
        v94 = *(a2 + 8) - *a2;
        if (v94)
        {
          v95 = 0;
          v96 = *(a4 + 8);
          v97 = *a1;
          v98 = *(a3 + 24);
          v99 = *(a3 + 48);
          v101 = *(*a3 + 8 * (*v93 - v4));
          v100 = *(*a3 + 8 * (*v93 - v4) + 8);
          v102 = v100 - v101;
          v103 = v94 >> 3;
          if ((v94 >> 3) <= 1)
          {
            v103 = 1;
          }

          do
          {
            v104 = &v93[v95];
            v105 = *v104;
            v106 = v104[10];
            v107 = v106 - v4;
            v108 = (v106 - v4) * v102;
            v109 = v108 + v102;
            _X6 = v97 + 8 * v106;
            __asm { PRFM            #0, [X6] }

            if (v108 < v108 + v102)
            {
              _X5 = v98 + 4 * v102 * v107;
              do
              {
                __asm { PRFM            #0, [X5] }

                v108 += 16;
                _X5 += 64;
              }

              while (v108 < v109);
            }

            if (v100 != v101)
            {
              v114 = (v98 + 4 * (v105 - v4) * v102);
              v115 = vcvtq_f64_f32(*(v97 + 8 * v105));
              v116 = v99;
              v117 = v100 - v101;
              do
              {
                v119 = *v114++;
                v118 = v119;
                v120 = *v116++;
                *(v96 + 8 * (2 * (v120 + v118))) = vaddq_f64(*(v96 + 8 * (2 * (v120 + v118))), v115);
                --v117;
              }

              while (v117);
            }

            ++v95;
          }

          while (v95 != v103);
        }

        break;
      case 2:
        v65 = *a2;
        v66 = *(a2 + 8) - *a2;
        if (v66)
        {
          v67 = 0;
          v68 = *(a4 + 8);
          v69 = *a1;
          v70 = *(a3 + 24);
          v71 = *(a3 + 48);
          v73 = *(*a3 + 8 * (*v65 - v4));
          v72 = *(*a3 + 8 * (*v65 - v4) + 8);
          v74 = v72 - v73;
          v75 = v66 >> 3;
          if ((v66 >> 3) <= 1)
          {
            v75 = 1;
          }

          do
          {
            v76 = &v65[v67];
            v77 = *v76;
            v78 = v76[10];
            v79 = v78 - v4;
            v80 = (v78 - v4) * v74;
            v81 = v80 + v74;
            _X6 = v69 + 8 * v78;
            __asm { PRFM            #0, [X6] }

            if (v80 < v80 + v74)
            {
              _X5 = v70 + 2 * v74 * v79;
              do
              {
                __asm { PRFM            #0, [X5] }

                v80 += 16;
                _X5 += 32;
              }

              while (v80 < v81);
            }

            if (v72 != v73)
            {
              v86 = (v70 + 2 * (v77 - v4) * v74);
              v87 = vcvtq_f64_f32(*(v69 + 8 * v77));
              v88 = v71;
              v89 = v72 - v73;
              do
              {
                v91 = *v86++;
                v90 = v91;
                v92 = *v88++;
                *(v68 + 8 * (2 * (v92 + v90))) = vaddq_f64(*(v68 + 8 * (2 * (v92 + v90))), v87);
                --v89;
              }

              while (v89);
            }

            ++v67;
          }

          while (v67 != v75);
        }

        break;
      case 1:
        v6 = *a2;
        v7 = *(a2 + 8) - *a2;
        if (v7)
        {
          v8 = 0;
          v9 = *(a4 + 8);
          v10 = *a1;
          v11 = *(a3 + 24);
          v12 = *(a3 + 48);
          v14 = *(*a3 + 8 * (*v6 - v4));
          v13 = *(*a3 + 8 * (*v6 - v4) + 8);
          v15 = v13 - v14;
          v16 = v7 >> 3;
          if ((v7 >> 3) <= 1)
          {
            v16 = 1;
          }

          do
          {
            v17 = &v6[v8];
            v18 = *v17;
            v19 = v17[10];
            v20 = (v19 - v4) * v15;
            v21 = v20 + v15;
            _X4 = v10 + 8 * v19;
            __asm { PRFM            #0, [X4] }

            while (v20 < v21)
            {
              _X4 = v11 + v20;
              __asm { PRFM            #0, [X4] }

              v20 += 16;
            }

            if (v13 != v14)
            {
              v30 = (v11 + (v18 - v4) * v15);
              v31 = vcvtq_f64_f32(*(v10 + 8 * v18));
              v32 = v12;
              v33 = v13 - v14;
              do
              {
                v35 = *v30++;
                v34 = v35;
                v36 = *v32++;
                *(v9 + 8 * (2 * (v36 + v34))) = vaddq_f64(*(v9 + 8 * (2 * (v36 + v34))), v31);
                --v33;
              }

              while (v33);
            }

            ++v8;
          }

          while (v8 != v16);
        }

        return;
      default:
        Entry = dmlc::LogMessageFatal::GetEntry(&v184);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 235);
        v122 = dmlc::LogMessageFatal::GetEntry(&v184);
        v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, ": ", 2);
        v124 = &v184;
LABEL_76:
        dmlc::LogMessageFatal::~LogMessageFatal(v124);
        return;
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        v153 = *a2;
        v154 = *(a2 + 8);
        v155 = v154 - *a2;
        if (v154 != *a2)
        {
          v156 = 0;
          v157 = *(a4 + 8);
          v158 = *a1;
          v159 = *(a3 + 24);
          v160 = *(a3 + 48);
          v162 = *(*a3 + 8 * *v153);
          v161 = *(*a3 + 8 * *v153 + 8);
          v163 = v161 - v162;
          v164 = v155 >> 3;
          if (v164 <= 1)
          {
            v164 = 1;
          }

          do
          {
            v165 = &v153[v156];
            v166 = *v165;
            v167 = v165[10];
            v168 = v167 * v163;
            v169 = v167 * v163 + v163;
            _X5 = v158 + 8 * v167;
            __asm { PRFM            #0, [X5] }

            if (v167 * v163 < v169)
            {
              _X4 = v159 + 4 * v163 * v167;
              do
              {
                __asm { PRFM            #0, [X4] }

                v168 += 16;
                _X4 += 64;
              }

              while (v168 < v169);
            }

            if (v161 != v162)
            {
              v174 = (v159 + 4 * v166 * v163);
              v175 = vcvtq_f64_f32(*(v158 + 8 * v166));
              v176 = v160;
              v177 = v161 - v162;
              do
              {
                v179 = *v174++;
                v178 = v179;
                v180 = *v176++;
                *(v157 + 8 * (2 * (v180 + v178))) = vaddq_f64(*(v157 + 8 * (2 * (v180 + v178))), v175);
                --v177;
              }

              while (v177);
            }

            ++v156;
          }

          while (v156 != v164);
        }

        break;
      case 2:
        v125 = *a2;
        v126 = *(a2 + 8);
        v127 = v126 - *a2;
        if (v126 != *a2)
        {
          v128 = 0;
          v129 = *(a4 + 8);
          v130 = *a1;
          v131 = *(a3 + 24);
          v132 = *(a3 + 48);
          v134 = *(*a3 + 8 * *v125);
          v133 = *(*a3 + 8 * *v125 + 8);
          v135 = v133 - v134;
          v136 = v127 >> 3;
          if (v136 <= 1)
          {
            v136 = 1;
          }

          do
          {
            v137 = &v125[v128];
            v138 = *v137;
            v139 = v137[10];
            v140 = v139 * v135;
            v141 = v139 * v135 + v135;
            _X5 = v130 + 8 * v139;
            __asm { PRFM            #0, [X5] }

            if (v139 * v135 < v141)
            {
              _X4 = v131 + 2 * v135 * v139;
              do
              {
                __asm { PRFM            #0, [X4] }

                v140 += 16;
                _X4 += 32;
              }

              while (v140 < v141);
            }

            if (v133 != v134)
            {
              v146 = (v131 + 2 * v138 * v135);
              v147 = vcvtq_f64_f32(*(v130 + 8 * v138));
              v148 = v132;
              v149 = v133 - v134;
              do
              {
                v151 = *v146++;
                v150 = v151;
                v152 = *v148++;
                *(v129 + 8 * (2 * (v152 + v150))) = vaddq_f64(*(v129 + 8 * (2 * (v152 + v150))), v147);
                --v149;
              }

              while (v149);
            }

            ++v128;
          }

          while (v128 != v136);
        }

        break;
      case 1:
        v37 = *a2;
        v38 = *(a2 + 8);
        v39 = v38 - *a2;
        if (v38 != *a2)
        {
          v40 = 0;
          v41 = *(a4 + 8);
          v42 = *a1;
          v43 = *(a3 + 24);
          v44 = *(a3 + 48);
          v46 = *(*a3 + 8 * *v37);
          v45 = *(*a3 + 8 * *v37 + 8);
          v47 = v45 - v46;
          v48 = v39 >> 3;
          if (v48 <= 1)
          {
            v48 = 1;
          }

          do
          {
            v49 = &v37[v40];
            v50 = *v49;
            v51 = v49[10];
            v52 = v51 * v47;
            v53 = v51 * v47 + v47;
            _X3 = v42 + 8 * v51;
            __asm { PRFM            #0, [X3] }

            while (v52 < v53)
            {
              _X3 = v43 + v52;
              __asm { PRFM            #0, [X3] }

              v52 += 16;
            }

            if (v45 != v46)
            {
              v58 = (v43 + v50 * v47);
              v59 = vcvtq_f64_f32(*(v42 + 8 * v50));
              v60 = v44;
              v61 = v45 - v46;
              do
              {
                v63 = *v58++;
                v62 = v63;
                v64 = *v60++;
                *(v41 + 8 * (2 * (v64 + v62))) = vaddq_f64(*(v41 + 8 * (2 * (v64 + v62))), v59);
                --v61;
              }

              while (v61);
            }

            ++v40;
          }

          while (v40 != v48);
        }

        break;
      default:
        v181 = dmlc::LogMessageFatal::GetEntry(&v185);
        dmlc::LogMessageFatal::Entry::Init(v181, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/hist_util.cc", 218);
        v182 = dmlc::LogMessageFatal::GetEntry(&v185);
        v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, "Check failed: false", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, ": ", 2);
        v124 = &v185;
        goto LABEL_76;
    }
  }
}

void xgboost::common::HistogramCuts::HistogramCuts(xgboost::common::HistogramCuts *this)
{
  *this = 0;
  *(this + 1) = -1082130432;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

_DWORD *XGBoostVersion(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    *result = 1;
  }

  if (a2)
  {
    *a2 = 6;
  }

  if (a3)
  {
    *a3 = 1;
  }

  return result;
}

void xgboost::XGBBuildInfoDevice(xgboost *this, xgboost::Json *a2)
{
  __p[4] = 0x500000000;
  __p[3] = &unk_2883E70E8;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "USE_CUDA");
  (*(**this + 24))(*this, __p);
  xgboost::Json::operator=();
}

void sub_274D1F438(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v17 = a2;
  (*(*v16 + 56))(v16, a2, a3.__vftable, a3.__imp_.__imp_);
  MEMORY[0x277C69180](v15, 0x20C40A4A59CD2);
  if (v17 == 2)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    XGBAPISetLastError(v20);
  }

  else
  {
    if (v17 != 1)
    {
      _Unwind_Resume(a1);
    }

    v21 = __cxa_begin_catch(a1);
    v22 = (*(*v21 + 16))(v21);
    std::string::basic_string[abi:ne200100]<0>(&a9, v22);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v23 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v23);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1F424);
}

void XGProxyDMatrixSetDataCSR(xgboost::data::DMatrixProxy **a1, char *a2, char *a3, char *a4, unsigned int a5)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v20);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 321);
    v11 = dmlc::LogMessageFatal::GetEntry(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v20);
    v12 = dmlc::LogMessageFatal::GetEntry(v20);
    dmlc::LogMessageFatal::Entry::Init(v12, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 323);
    v13 = dmlc::LogMessageFatal::GetEntry(v20);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: p_m", 17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v20);
  }

  v15 = *a1;
  if (!v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(v20);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 325);
    v17 = dmlc::LogMessageFatal::GetEntry(v20);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: m", 15);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Current DMatrix type does not support set data.", 47);
    dmlc::LogMessageFatal::~LogMessageFatal(v20);
  }

  xgboost::data::DMatrixProxy::SetCSRData(v15, a2, a3, a4, a5, 1);
}

void sub_274D1F730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, std::runtime_error a11, std::runtime_error a12)
{
  if (a2 == 2)
  {
    v12 = __cxa_begin_catch(exception_object);
    v13 = (*(*v12 + 16))(v12);
    XGBAPISetLastError(v13);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v14 = __cxa_begin_catch(exception_object);
    v15 = (*(*v14 + 16))(v14);
    std::string::basic_string[abi:ne200100]<0>(&a10, v15);
    std::runtime_error::runtime_error(&a12, &a10);
    a12.__vftable = &unk_2883DE270;
    v16 = std::runtime_error::what(&a12);
    XGBAPISetLastError(v16);
    std::runtime_error::~runtime_error(&a12);
    if (SHIBYTE(a11.__imp_.__imp_) < 0)
    {
      operator delete(a10);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1F6BCLL);
}

void XGDMatrixCreateFromCSCEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v6 = &unk_2883E0F08;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4 - 1;
  v12 = a6;
  v13 = a4 - 1;
  operator new();
}

void sub_274D1F980(_Unwind_Exception *a1, std::runtime_error a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::string *a7, uint64_t a8, std::runtime_error a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v17 = a2.__vftable;
  MEMORY[0x277C69180](v16, 0x20C40A4A59CD2, a2.__imp_.__imp_, a3, a4, a5, a6, a7);
  if (v17 == 2)
  {
    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    XGBAPISetLastError(v20);
  }

  else
  {
    if (v17 != 1)
    {
      _Unwind_Resume(a1);
    }

    v21 = __cxa_begin_catch(a1);
    v22 = (*(*v21 + 16))(v21);
    std::string::basic_string[abi:ne200100]<0>(&a11, v22);
    std::runtime_error::runtime_error(&a9, &a11);
    a9.__vftable = &unk_2883DE270;
    v23 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v23);
    std::runtime_error::~runtime_error(&a9);
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1F968);
}

void XGDMatrixCreateFromMat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v3 = &unk_2883E0F90;
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = a2;
  v9 = a3;
  operator new();
}

void sub_274D1FBBC(_Unwind_Exception *__p, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::string *a7, uint64_t a8, std::runtime_error __pa, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  MEMORY[0x277C69180](v16, 0x20C40A4A59CD2, a3, a4, a5, a6, a7);
  if (a2 == 2)
  {
    v19 = __cxa_begin_catch(__p);
    v20 = (*(*v19 + 16))(v19);
    XGBAPISetLastError(v20);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(__p);
    }

    v21 = __cxa_begin_catch(__p);
    v22 = (*(*v21 + 16))(v21);
    std::string::basic_string[abi:ne200100]<0>(&a11, v22);
    std::runtime_error::runtime_error(&__pa, &a11);
    __pa.__vftable = &unk_2883DE270;
    v23 = std::runtime_error::what(&__pa);
    XGBAPISetLastError(v23);
    std::runtime_error::~runtime_error(&__pa);
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1FBA4);
}

uint64_t XGDMatrixFree(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x277C69180](a1, 0x20C40A4A59CD2);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 470);
    v4 = dmlc::LogMessageFatal::GetEntry(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v6);
  }

  return 0;
}

void sub_274D1FDB8(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1FDA8);
}

uint64_t XGDMatrixSetFloatInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v11);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 491);
    v9 = dmlc::LogMessageFatal::GetEntry(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v11);
  }

  (*(**a1 + 8))(*a1, a2, a3, 1, a4);
  return 0;
}

void sub_274D1FFA8(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D1FF94);
}

uint64_t XGDMatrixSetUIntInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v11);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 509);
    v9 = dmlc::LogMessageFatal::GetEntry(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v11);
  }

  (*(**a1 + 8))(*a1, a2, a3, 3, a4);
  return 0;
}

void sub_274D2019C(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D20188);
}

uint64_t XGDMatrixSetDenseInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v16);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 550);
    v11 = dmlc::LogMessageFatal::GetEntry(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v16);
  }

  if ((a5 - 5) <= 0xFFFFFFFB)
  {
    v13 = dmlc::LogMessageFatal::GetEntry(v16);
    dmlc::LogMessageFatal::Entry::Init(v13, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 552);
    v14 = dmlc::LogMessageFatal::GetEntry(v16);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Check failed: type >= 1 && type <= 4", 36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v16);
  }

  (*(**a1 + 8))(*a1, a2, a3, a5, a4);
  return 0;
}

void sub_274D203F4(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D20390);
}

uint64_t XGDMatrixGetFloatInfo(uint64_t (****a1)(void), char *a2, uint64_t *a3, void *a4)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 571);
    v9 = dmlc::LogMessageFatal::GetEntry(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v12);
  }

  v10 = (***a1)();
  xgboost::MetaInfo::GetInfo(v10, a2, a3, 1, a4);
  return 0;
}

void sub_274D20604(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D205F0);
}

uint64_t XGDMatrixGetUIntInfo(uint64_t (****a1)(void), char *a2, uint64_t *a3, void *a4)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 582);
    v9 = dmlc::LogMessageFatal::GetEntry(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v12);
  }

  v10 = (***a1)();
  xgboost::MetaInfo::GetInfo(v10, a2, a3, 3, a4);
  return 0;
}

void sub_274D207FC(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D207E8);
}

uint64_t XGDMatrixNumRow(uint64_t (****a1)(void), void *a2)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 591);
    v5 = dmlc::LogMessageFatal::GetEntry(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }

  v6 = (***a1)();
  result = 0;
  *a2 = *v6;
  return result;
}

void sub_274D209DC(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D209CCLL);
}

uint64_t XGDMatrixNumCol(uint64_t (****a1)(void), void *a2)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 600);
    v5 = dmlc::LogMessageFatal::GetEntry(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }

  v6 = (***a1)();
  result = 0;
  *a2 = *(v6 + 8);
  return result;
}

void sub_274D20BBC(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D20BACLL);
}

void XGBoosterCreate(__int128 **a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  if (a2)
  {
    v2 = a2;
    do
    {
      std::vector<std::shared_ptr<xgboost::DMatrix>>::push_back[abi:ne200100](v4, *a1++);
      --v2;
    }

    while (v2);
  }

  xgboost::Learner::Create();
}

void sub_274D20D78(_Unwind_Exception *a1, std::runtime_error a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::runtime_error a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v15 = a2.__vftable;
  a9.__vftable = &a10;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a10, v20);
    std::runtime_error::runtime_error(&a9, &a10);
    a9.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a9);
    if (a15 < 0)
    {
      operator delete(a10);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D20D64);
}

void std::vector<std::shared_ptr<xgboost::DMatrix>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
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

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
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
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

uint64_t XGBoosterFree(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 8))(a1);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v4);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 621);
    v2 = dmlc::LogMessageFatal::GetEntry(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v4);
  }

  return 0;
}

void sub_274D2103C(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D2102CLL);
}

uint64_t XGBoosterSetParam(uint64_t a1, char *__s, char *a3)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v11);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 630);
    v7 = dmlc::LogMessageFatal::GetEntry(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v11);
  }

  std::string::basic_string[abi:ne200100]<0>(v11, __s);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  (*(*a1 + 128))(a1, v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  return 0;
}

void sub_274D21258(_Unwind_Exception *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, uint64_t a8, std::runtime_error __pa, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a11);
  if (a2 == 2)
  {
    v18 = __cxa_begin_catch(__p);
    v19 = (*(*v18 + 16))(v18);
    XGBAPISetLastError(v19);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(__p);
    }

    v20 = __cxa_begin_catch(__p);
    v21 = (*(*v20 + 16))(v20);
    std::string::basic_string[abi:ne200100]<0>(&a11, v21);
    std::runtime_error::runtime_error(&__pa, &a11);
    __pa.__vftable = &unk_2883DE270;
    v22 = std::runtime_error::what(&__pa);
    XGBAPISetLastError(v22);
    std::runtime_error::~runtime_error(&__pa);
    if (a16 < 0)
    {
      operator delete(a11);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D21244);
}

uint64_t XGBoosterGetNumFeature(uint64_t a1, void *a2)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 638);
    v5 = dmlc::LogMessageFatal::GetEntry(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }

  (*(*a1 + 32))(a1);
  v6 = (*(*a1 + 136))(a1);
  result = 0;
  *a2 = v6;
  return result;
}

void sub_274D21498(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D21488);
}

std::__shared_weak_count *XGBoosterUpdateOneIter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 680);
    v7 = dmlc::LogMessageFatal::GetEntry(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v10);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 40))(a1, a2, &v11);
  result = v12;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    return 0;
  }

  return result;
}

void sub_274D216A4(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D21690);
}

uint64_t XGBoosterEvalOneIter(uint64_t a1, uint64_t a2, __int128 **a3, char **a4, uint64_t a5, void *a6)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 717);
    v13 = dmlc::LogMessageFatal::GetEntry(v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v24);
  }

  v14 = (*(*a1 + 224))(a1);
  memset(v24, 0, sizeof(v24));
  v21 = 0;
  v22 = 0;
  for (i = 0; a5; --a5)
  {
    std::vector<std::shared_ptr<xgboost::DMatrix>>::push_back[abi:ne200100](v24, *a3);
    v15 = v22;
    if (v22 >= i)
    {
      v16 = std::vector<std::string>::__emplace_back_slow_path<char const*&>(&v21, a4);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, *a4);
      v16 = v15 + 24;
    }

    v22 = v16;
    ++a4;
    ++a3;
  }

  (*(*a1 + 56))(&v19, a1, a2, v24, &v21);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  *v14 = v19;
  *(v14 + 16) = v20;
  if (*(v14 + 23) >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = *v14;
  }

  *a6 = v17;
  *&v19 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  v21 = v24;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v21);
  return 0;
}

void sub_274D219A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, std::runtime_error a5, uint64_t a6, std::string *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::runtime_error a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a14);
  if (a2 == 2)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = (*(*v21 + 16))(v21);
    XGBAPISetLastError(v22);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v23 = __cxa_begin_catch(a1);
    v24 = (*(*v23 + 16))(v23);
    std::string::basic_string[abi:ne200100]<0>(&a14, v24);
    std::runtime_error::runtime_error(&a12, &a14);
    a12.__vftable = &unk_2883DE270;
    v25 = std::runtime_error::what(&a12);
    XGBAPISetLastError(v25);
    std::runtime_error::~runtime_error(&a12);
    if (a19 < 0)
    {
      operator delete(a14);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D21988);
}

uint64_t XGBoosterPredict(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6, void *a7)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 742);
    v15 = dmlc::LogMessageFatal::GetEntry(v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v23);
  }

  v16 = (*(*a1 + 224))(a1);
  IterationFromTreeLimit = xgboost::GetIterationFromTreeLimit(a4, a1, v17);
  v19 = a2[1];
  v24 = *a2;
  v25 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BYTE2(v22) = (a3 & 0x10) != 0;
  BYTE1(v22) = (a3 & 8) != 0;
  LOBYTE(v22) = (a3 & 4) != 0;
  (*(*a1 + 64))(a1, &v24, a3 & 1, v16 + 144, 0, IterationFromTreeLimit, a5 != 0, (a3 >> 1) & 1, v22);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  result = 0;
  v21 = **(v16 + 144);
  if (*(*(v16 + 144) + 8) == v21)
  {
    v21 = 0;
  }

  *a7 = v21;
  *a6 = (*(*(v16 + 144) + 8) - **(v16 + 144)) >> 2;
  return result;
}

void sub_274D21CA0(_Unwind_Exception *a1, std::string *a2, std::runtime_error a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  v15 = a2;
  dmlc::LogMessageFatal::~LogMessageFatal(&a9);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a9, v20);
    std::runtime_error::runtime_error(&a15, &a9);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(a9);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D21C84);
}

uint64_t xgboost::GetIterationFromTreeLimit(uint64_t this, uint64_t a2, xgboost::Learner *a3)
{
  if (this)
  {
    (*(*a2 + 32))(a2);
    operator new();
  }

  return this;
}

void sub_274D22484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  v41 = *(v39 - 72);
  if (v41)
  {
    if (atomic_fetch_add_explicit(v41 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v41 + 8))(v41);
    }
  }

  _Unwind_Resume(exception_object);
}

void XGBoosterPredictFromDMatrix(uint64_t a1, uint64_t a2, char *__s)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 764);
    v6 = dmlc::LogMessageFatal::GetEntry(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Booster has not been initialized or has already been disposed.", 62);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  if (!a2)
  {
    v7 = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(v7, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 767);
    v8 = dmlc::LogMessageFatal::GetEntry(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "DMatrix has not been initialized or has already been disposed.", 62);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  strlen(__s);
  xgboost::Json::Load();
}

void sub_274D22F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::runtime_error a15, int a16, __int16 a17, char a18, char a19, std::string *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v29 = *(v26 - 136);
  if (v29 && atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v29 + 8))(v29);
  }

  if (a2 == 2)
  {
    v30 = __cxa_begin_catch(exception_object);
    v31 = (*(*v30 + 16))(v30);
    XGBAPISetLastError(v31);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v32 = __cxa_begin_catch(exception_object);
    v33 = (*(*v32 + 16))(v32);
    std::string::basic_string[abi:ne200100]<0>(&a20, v33);
    std::runtime_error::runtime_error(&a15, &a20);
    a15.__vftable = &unk_2883DE270;
    v34 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v34);
    std::runtime_error::~runtime_error(&a15);
    if (a25 < 0)
    {
      operator delete(a20);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D22EACLL);
}

char *xgboost::RequiredArg<xgboost::JsonInteger>(char **a1, uint64_t a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a1);
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), a2);
  v5 = v4;
  if (v3 + 24 == v4 || (v6 = *(v4 + 56), *(v6 + 12) == 6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api_utils.h", 248);
    v8 = dmlc::LogMessageFatal::GetEntry(&v18);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    for (i = 0; i != 27; ++i)
    {
      v16 = aXgboosterpredi[i];
      std::ostream::put();
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    v6 = *(v5 + 56);
  }

  return xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v6) + 16;
}

char *xgboost::RequiredArg<xgboost::JsonBoolean>(char **a1, uint64_t a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a1);
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), a2);
  v5 = v4;
  if (v3 + 24 == v4 || (v6 = *(v4 + 56), *(v6 + 12) == 6))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api_utils.h", 248);
    v8 = dmlc::LogMessageFatal::GetEntry(&v18);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    for (i = 0; i != 27; ++i)
    {
      v16 = aXgboosterpredi[i];
      std::ostream::put();
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    v6 = *(v5 + 56);
  }

  return xgboost::Cast<xgboost::JsonBoolean const,xgboost::Value const>(v6) + 16;
}

uint64_t XGBoosterPredictFromCUDAArray(uint64_t a1)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 891);
    v2 = dmlc::LogMessageFatal::GetEntry(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v6);
  }

  v3 = dmlc::LogMessageFatal::GetEntry(&v7);
  dmlc::LogMessageFatal::Entry::Init(v3, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../common/common.h", 239);
  v4 = dmlc::LogMessageFatal::GetEntry(&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  return 0;
}

void sub_274D23550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&__p, v20);
    std::runtime_error::runtime_error(&a15, &__p);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(__p);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D23540);
}

uint64_t XGBoosterPredictFromCUDAColumnar(uint64_t a1)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v6);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 901);
    v2 = dmlc::LogMessageFatal::GetEntry(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v6);
  }

  v3 = dmlc::LogMessageFatal::GetEntry(&v7);
  dmlc::LogMessageFatal::Entry::Init(v3, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../common/common.h", 239);
  v4 = dmlc::LogMessageFatal::GetEntry(&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  return 0;
}

void sub_274D23744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::runtime_error a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&__p, v20);
    std::runtime_error::runtime_error(&a15, &__p);
    a15.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a15);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a15);
    if (a14 < 0)
    {
      operator delete(__p);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D23734);
}

uint64_t XGBoosterLoadModel(uint64_t a1, char *__s)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v16);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 909);
    v5 = dmlc::LogMessageFatal::GetEntry(&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(&v16);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  xgboost::common::FileExtension(__p, 1, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v16.__r_.__value_.__l.__size_ == 4 && *v16.__r_.__value_.__l.__data_ == 1852797802;
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  else
  {
    v6 = SHIBYTE(v16.__r_.__value_.__r.__words[2]) == 4 && LODWORD(v16.__r_.__value_.__l.__data_) == 1852797802;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_13:
      XGBoosterLoadModel::$_0::operator()(&v16, __s);
      xgboost::Json::Load();
    }
  }

  else if (v6)
  {
    goto LABEL_13;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, __s);
  xgboost::common::FileExtension(v12, 1, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v16.__r_.__value_.__l.__size_ == 3 && *v16.__r_.__value_.__l.__data_ == 25205 && *(v16.__r_.__value_.__r.__words[0] + 2) == 106;
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  else
  {
    v8 = SHIBYTE(v16.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v16.__r_.__value_.__l.__data_) == 25205 && v16.__r_.__value_.__s.__data_[2] == 106;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
    if (v8)
    {
LABEL_35:
      XGBoosterLoadModel::$_0::operator()(&v16, __s);
      xgboost::Json::Load();
    }
  }

  else if (v8)
  {
    goto LABEL_35;
  }

  v10 = dmlc::Stream::Create(__s, "r", 0);
  (*(*a1 + 104))(a1, v10);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  return 0;
}

void sub_274D23BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v25 = a10.__vftable;
  if (a10.__vftable && atomic_fetch_add_explicit(&a10.~runtime_error_0, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(v25->~runtime_error + 1))(v25);
  }

  if (*(v22 - 33) < 0)
  {
    operator delete(*(v22 - 56));
  }

  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(exception_object);
    v27 = (*(*v26 + 16))(v26);
    XGBAPISetLastError(v27);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v28 = __cxa_begin_catch(exception_object);
    v29 = (*(*v28 + 16))(v28);
    std::string::basic_string[abi:ne200100]<0>((v22 - 56), v29);
    std::runtime_error::runtime_error(&a10, (v22 - 56));
    a10.__vftable = &unk_2883DE270;
    v30 = std::runtime_error::what(&a10);
    XGBAPISetLastError(v30);
    std::runtime_error::~runtime_error(&a10);
    if (*(v22 - 33) < 0)
    {
      operator delete(*(v22 - 56));
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D23BB8);
}

char *XGBoosterLoadModel::$_0::operator()(std::string *a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  xgboost::common::LoadSequentialFile(__p, 0, a1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = size;
  v9 = 3;
  if (size < 3)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v10, &v9);
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  LOBYTE(v10) = 123;
  if (*v4 != 123)
  {
    dmlc::LogCheckFormat<char,char>(v4, &v10);
  }

  v5 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  v6 = (v5 & 0x80u) != 0;
  if ((v5 & 0x80u) != 0)
  {
    v5 = a1->__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v7 = a1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = a1;
  }

  LOBYTE(v10) = 125;
  result = v7 + v5 - 2;
  if (*result != 125)
  {
    dmlc::LogCheckFormat<char,char>(result, &v10);
  }

  return result;
}

void sub_274D240AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XGBoosterSaveModel(uint64_t a1, dmlc::Stream *this)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v16);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 943);
    v5 = dmlc::LogMessageFatal::GetEntry(&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(&v16);
  }

  v6 = dmlc::Stream::Create(this, "w", 0);
  (*(*a1 + 32))(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  xgboost::common::FileExtension(__p, 1, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v16.__r_.__value_.__l.__size_ == 4 && *v16.__r_.__value_.__l.__data_ == 1852797802;
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  else
  {
    v7 = SHIBYTE(v16.__r_.__value_.__r.__words[2]) == 4 && LODWORD(v16.__r_.__value_.__l.__data_) == 1852797802;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_35:
      v16.__r_.__value_.__l.__size_ = 0x300000000;
      v17[0] = 0;
      v17[1] = 0;
      v16.__r_.__value_.__r.__words[0] = &unk_2883E6E50;
      v16.__r_.__value_.__r.__words[2] = v17;
      operator new();
    }
  }

  else if (v7)
  {
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, this);
  xgboost::common::FileExtension(v12, 1, &v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v16.__r_.__value_.__l.__size_ == 3 && *v16.__r_.__value_.__l.__data_ == 25205 && *(v16.__r_.__value_.__r.__words[0] + 2) == 106;
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  else
  {
    v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v16.__r_.__value_.__l.__data_) == 25205 && v16.__r_.__value_.__s.__data_[2] == 106;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
    if (v9)
    {
      goto LABEL_35;
    }
  }

  else if (v9)
  {
    goto LABEL_35;
  }

  (*(*a1 + 112))(a1, v6);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return 0;
}

void sub_274D24588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::string *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  if (a2 == 2)
  {
    v31 = __cxa_begin_catch(exception_object);
    v32 = (*(*v31 + 16))(v31);
    XGBAPISetLastError(v32);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v33 = __cxa_begin_catch(exception_object);
    v34 = (*(*v33 + 16))(v33);
    std::string::basic_string[abi:ne200100]<0>(&a23, v34);
    std::runtime_error::runtime_error(&a9, &a23);
    a9.__vftable = &unk_2883DE270;
    v35 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v35);
    std::runtime_error::~runtime_error(&a9);
    if (a28 < 0)
    {
      operator delete(a23);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D24568);
}

uint64_t XGBoosterLoadModelFromBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v9);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 973);
    v7 = dmlc::LogMessageFatal::GetEntry(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v9);
  }

  v9[0] = &unk_2883E11A8;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = 0;
  (*(*a1 + 104))(a1, v9);
  return 0;
}

void sub_274D248E0(_Unwind_Exception *a1, int a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::runtime_error a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a10);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a10, v20);
    std::runtime_error::runtime_error(&a9, &a10);
    a9.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a9);
    if (a15 < 0)
    {
      operator delete(a10);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D248CCLL);
}

void XGBoosterSaveModelToBuffer(uint64_t a1, char *__s)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 982);
    v4 = dmlc::LogMessageFatal::GetEntry(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  strlen(__s);
  xgboost::Json::Load();
}

void sub_274D25184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error __p, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, std::string *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (atomic_fetch_add_explicit(v20 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v20 + 8))(v20);
  }

  if (a13 < 0)
  {
    operator delete(__p.__vftable);
  }

  v23 = a15;
  if (a15 && atomic_fetch_add_explicit((a15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v23 + 8))(v23);
  }

  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(exception_object);
    v25 = (*(*v24 + 16))(v24);
    XGBAPISetLastError(v25);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v26 = __cxa_begin_catch(exception_object);
    v27 = (*(*v26 + 16))(v26);
    std::string::basic_string[abi:ne200100]<0>(&a17, v27);
    std::runtime_error::runtime_error(&__p, &a17);
    __p.__vftable = &unk_2883DE270;
    v28 = std::runtime_error::what(&__p);
    XGBAPISetLastError(v28);
    std::runtime_error::~runtime_error(&__p);
    if (SHIBYTE(a19) < 0)
    {
      operator delete(a17);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D24EE0);
}

uint64_t XGBoosterSerializeToBuffer(void *a1, void *a2, uint64_t *a3)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 1044);
    v7 = dmlc::LogMessageFatal::GetEntry(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v12);
  }

  v8 = (*(*a1 + 224))(a1);
  std::string::resize(v8, 0, 0);
  v12[0] = &unk_2883E1018;
  v12[1] = v8;
  v12[2] = 0;
  (*(*a1 + 32))(a1);
  (*(a1[2] + 24))(a1 + 2, v12);
  if (*(v8 + 23) < 0)
  {
    if (*(v8 + 8))
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (*(v8 + 23))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a3 = v9;
  v11 = *(v8 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 8);
  }

  *a2 = v11;
  return result;
}

void sub_274D25610(_Unwind_Exception *a1, std::runtime_error a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::runtime_error a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v15 = a2.__vftable;
  dmlc::LogMessageFatal::~LogMessageFatal(&a10);
  if (v15 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a10, v20);
    std::runtime_error::runtime_error(&a9, &a10);
    a9.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a9);
    if (a15 < 0)
    {
      operator delete(a10);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D255FCLL);
}

uint64_t XGBoosterUnserializeFromBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v9);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/c_api.cc", 1060);
    v7 = dmlc::LogMessageFatal::GetEntry(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DMatrix/Booster has not been initialized or has already been disposed.", 70);
    dmlc::LogMessageFatal::~LogMessageFatal(v9);
  }

  v9[0] = &unk_2883E11A8;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = 0;
  (*(*(a1 + 16) + 16))(a1 + 16, v9);
  return 0;
}

void sub_274D2581C(_Unwind_Exception *a1, int a2, std::string *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::runtime_error a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a10);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = (*(*v17 + 16))(v17);
    XGBAPISetLastError(v18);
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    v20 = (*(*v19 + 16))(v19);
    std::string::basic_string[abi:ne200100]<0>(&a10, v20);
    std::runtime_error::runtime_error(&a9, &a10);
    a9.__vftable = &unk_2883DE270;
    v21 = std::runtime_error::what(&a9);
    XGBAPISetLastError(v21);
    std::runtime_error::~runtime_error(&a9);
    if (a15 < 0)
    {
      operator delete(a10);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x274D25808);
}

uint64_t xgboost::data::DMatrixProxy::Info(xgboost::data::DMatrixProxy *this)
{
  return this + 8;
}

{
  return this + 8;
}

void xgboost::DMatrix::SetInfo(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = (*(*a1 + 32))(a1);
  v11 = (**a1)(a1);

  xgboost::MetaInfo::SetInfo(v11, v10, a2, a3, a4, a5);
}

void xgboost::DMatrix::SetInfo(uint64_t a1, const char *a2, uint64_t *a3)
{
  (*(*a1 + 32))(a1);
  (**a1)(a1);
  strlen(a2);
  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  xgboost::MetaInfo::SetInfo();
}

void xgboost::data::DMatrixProxy::~DMatrixProxy(xgboost::data::DMatrixProxy *this)
{
  *this = &unk_2883E0E60;
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *v2;
    if (v3)
    {
      v3(this + 224);
    }

    *(this + 27) = 0;
  }

  xgboost::MetaInfo::~MetaInfo((this + 8));
}

{
  *this = &unk_2883E0E60;
  v2 = *(this + 27);
  if (v2)
  {
    v3 = *v2;
    if (v3)
    {
      v3(this + 224);
    }

    *(this + 27) = 0;
  }

  xgboost::MetaInfo::~MetaInfo((this + 8));
}

uint64_t xgboost::data::DMatrixProxy::Slice()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 88);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Slicing DMatrix is not supported for Proxy DMatrix.", 51);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void xgboost::data::DMatrixProxy::GetRowBatches(xgboost::data::DMatrixProxy *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 92);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(&v3, 0);
}

void xgboost::data::DMatrixProxy::GetColumnBatches(xgboost::data::DMatrixProxy *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 96);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::CSCPage>::BatchIterator(&v3, 0);
}

void xgboost::data::DMatrixProxy::GetSortedColumnBatches(xgboost::data::DMatrixProxy *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 100);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(&v3, 0);
}

void xgboost::data::DMatrixProxy::GetEllpackBatches()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 104);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  xgboost::BatchIterator<xgboost::EllpackPage>::BatchIterator(&v2, 0);
}

void xgboost::data::DMatrixProxy::GetGradientIndex()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/c_api/../data/proxy_dmatrix.h", 108);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Not implemented.", 16);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v2, 0);
}

void xgboost::MetaInfo::MetaInfo(xgboost::MetaInfo *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void xgboost::MetaInfo::~MetaInfo(xgboost::MetaInfo *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::BatchIterator<xgboost::EllpackPage>::BatchIterator(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>::reset[abi:ne200100]<xgboost::BatchIteratorImpl<xgboost::EllpackPage>,0>(a1, a2);
}

void sub_274D2618C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D26254(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::EllpackPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::EllpackPage>,xgboost::BatchIteratorImpl<xgboost::EllpackPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::EllpackPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::EllpackPage>,xgboost::BatchIteratorImpl<xgboost::EllpackPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::EllpackPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::EllpackPage>,xgboost::BatchIteratorImpl<xgboost::EllpackPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::EllpackPage>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>::reset[abi:ne200100]<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>,0>(a1, a2);
}

void sub_274D26364(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D2642C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>,xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>,xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>,xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::GHistIndexMatrix>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL xgboost::data::detail::SingleBatchDataIter<xgboost::data::CSCAdapterBatch>::Next(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    *(a1 + 8) = 1;
  }

  return v1 == 0;
}

BOOL xgboost::data::detail::SingleBatchDataIter<xgboost::data::DenseAdapterBatch>::Next(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    *(a1 + 8) = 1;
  }

  return v1 == 0;
}

void *xgboost::Cast<xgboost::JsonString const,xgboost::Value>(xgboost::Value *a1)
{
  if (*(a1 + 3))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v28);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v3 = dmlc::LogMessageFatal::GetEntry(&v28);
    xgboost::Value::TypeStr(a1, &v23);
    v4 = std::string::insert(&v23, 0, "Invalid cast, from ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v24, " to ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    *v18 = 0u;
    v19 = 0;
    v20 = 0;
    v17 = &unk_2883E6F38;
    xgboost::Value::TypeStr(&v17, __p);
    if ((v22 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v9 = v22;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::string::append(&v25, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v27 = v10->__r_.__value_.__r.__words[2];
    v26 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26;
    }

    if (v27 >= 0)
    {
      v13 = HIBYTE(v27);
    }

    else
    {
      v13 = *(&v26 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v12, v13);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = &unk_2883E6F38;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v28);
    v14 = **a1;
  }

  else
  {
    v16 = **a1;
  }
}

void sub_274D26800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v35 - 33));
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonBoolean const,xgboost::Value const>(char **a1)
{
  if (*(a1 + 3) == 5)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v6 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v22, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x500000000;
    v17[0] = &unk_2883E70E8;
    v18 = 0;
    xgboost::Value::TypeStr(v17, __p);
    if ((v20 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v23, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v25 = v12->__r_.__value_.__r.__words[2];
    v24 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    if (v25 >= 0)
    {
      v15 = HIBYTE(v25);
    }

    else
    {
      v15 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v16 = **a1;
  }
}

void sub_274D26B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v30 - 33));
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<int,unsigned long>(unsigned int *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E20](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E50](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D26D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

size_t rabit::utils::MemoryFixSizeBuffer::Read(rabit::utils::MemoryFixSizeBuffer *this, void *__dst, size_t a3)
{
  v4 = *(this + 3);
  if (*(this + 2) - v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(this + 2) - v4;
  }

  if (v5)
  {
    memcpy(__dst, (*(this + 1) + v4), v5);
    v4 = *(this + 3);
  }

  *(this + 3) = v4 + v5;
  return v5;
}

void *rabit::utils::MemoryFixSizeBuffer::Write(void *this, const void *a2, size_t a3)
{
  if (a3)
  {
    v5 = this;
    rabit::utils::Assert(this[3] + a3 <= this[2], "write position exceed fixed buffer size", a3);
    this = memcpy((*(v5 + 8) + *(v5 + 24)), a2, a3);
    *(v5 + 24) += a3;
  }

  return this;
}

uint64_t rabit::utils::MemoryFixSizeBuffer::Seek(uint64_t this, uint64_t a2)
{
  if (a2 == -1)
  {
    a2 = *(this + 16);
  }

  *(this + 24) = a2;
  return this;
}

uint64_t rabit::utils::Assert(uint64_t this, uint64_t a2, const char *a3, ...)
{
  if ((this & 1) == 0)
  {
    operator new();
  }

  return this;
}

void sub_274D26F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  operator delete(v12);
  _Unwind_Resume(a1);
}

size_t rabit::utils::MemoryBufferStream::Read(rabit::utils::MemoryBufferStream *this, void *a2, const char *a3)
{
  v3 = a3;
  v6 = *(this + 1);
  v7 = *(v6 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(v6 + 8);
  }

  rabit::utils::Assert(*(this + 2) <= v7, "read can not have position excceed buffer length", a3);
  v8 = *(this + 1);
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v11 < v3)
    {
      v3 = v11;
    }

    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_12:
    memcpy(a2, v8 + v10, v3);
    v10 = *(this + 2);
    goto LABEL_13;
  }

  v10 = *(this + 2);
  if (v8[1] - v10 < v3)
  {
    v3 = v8[1] - v10;
  }

  if (v3)
  {
    v8 = *v8;
    goto LABEL_12;
  }

LABEL_13:
  *(this + 2) = v3 + v10;
  return v3;
}

char *rabit::utils::MemoryBufferStream::Write(char *this, const void *__src, size_t __n)
{
  if (__n)
  {
    v5 = this;
    v7 = this + 8;
    v6 = *(this + 1);
    v8 = *(v7 + 1) + __n;
    v9 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
    if (v9 < 0)
    {
      size = v6->__r_.__value_.__l.__size_;
    }

    else
    {
      size = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
    }

    if (v8 > size)
    {
      std::string::resize(v6, v8, 0);
      v6 = v5[1];
      LOBYTE(v9) = *(&v6->__r_.__value_.__s + 23);
    }

    if ((v9 & 0x80) != 0)
    {
      v6 = v6->__r_.__value_.__r.__words[0];
    }

    this = memcpy(v6 + v5[2], __src, __n);
    v5[2] += __n;
  }

  return this;
}

BOOL rabit::utils::MemoryBufferStream::AtEnd(rabit::utils::MemoryBufferStream *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return *(this + 2) == v2;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*&>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void *xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(char **a1)
{
  if (*(a1 + 3) == 2)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v25);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v25);
    xgboost::Value::TypeStr(a1, &v20);
    v6 = std::string::insert(&v20, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v21, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x200000000;
    v17[0] = &unk_2883E7028;
    v17[2] = 0;
    xgboost::Value::TypeStr(v17, __p);
    if ((v19 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v22, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v24 = v12->__r_.__value_.__r.__words[2];
    v23 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v14 = &v23;
    }

    else
    {
      v14 = v23;
    }

    if (v24 >= 0)
    {
      v15 = HIBYTE(v24);
    }

    else
    {
      v15 = *(&v23 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v25);
    v16 = **a1;
  }
}

void sub_274D27468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v30 - 33));
  _Unwind_Resume(a1);
}

void sub_274D27564(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 56))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::DMatrix *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::DMatrix>,std::allocator<xgboost::DMatrix>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::DMatrix *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::DMatrix>,std::allocator<xgboost::DMatrix>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::DMatrix *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::DMatrix>,std::allocator<xgboost::DMatrix>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<xgboost::data::DMatrixProxy *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::data::DMatrixProxy>,std::allocator<xgboost::data::DMatrixProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::DMatrixProxy *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::data::DMatrixProxy>,std::allocator<xgboost::data::DMatrixProxy>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::data::DMatrixProxy *,std::shared_ptr<xgboost::DMatrix>::__shared_ptr_default_delete<xgboost::DMatrix,xgboost::data::DMatrixProxy>,std::allocator<xgboost::data::DMatrixProxy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<xgboost::DMatrix>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<xgboost::DMatrix>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void dmlc::io::LocalFileSystem::GetPathInfo(const std::string *a1@<X1>, uint64_t a2@<X8>)
{
  v28[3] = *MEMORY[0x277D85DE8];
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  std::string::operator=(a2, a1);
  std::string::operator=((a2 + 24), a1 + 1);
  std::string::operator=((a2 + 48), a1 + 2);
  if ((a1[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    data = &a1[2];
  }

  else
  {
    data = a1[2].__r_.__value_.__l.__data_;
  }

  if (stat(data, &v27) != -1)
  {
LABEL_16:
    *(a2 + 72) = v27.st_size;
    *(a2 + 80) = (v27.st_mode & 0xF000) == 0x4000;
    goto LABEL_26;
  }

  v6 = *__error();
  if ((a1[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &a1[2];
  }

  else
  {
    v7 = a1[2].__r_.__value_.__l.__data_;
  }

  if (lstat(v7, &v27))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v28);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 86);
    v9 = dmlc::LogMessageFatal::GetEntry(v28);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LocalFileSystem.GetPathInfo: ", 29);
    v11 = SHIBYTE(a1[2].__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      v12 = a1 + 2;
    }

    else
    {
      v12 = a1[2].__r_.__value_.__l.__data_;
    }

    if (v11 >= 0)
    {
      size = HIBYTE(a1[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1[2].__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, size);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " error: ", 8);
    v16 = strerror(v6);
    v17 = strlen(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(v28);
    goto LABEL_16;
  }

  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  dmlc::LogMessage::LogMessage(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 81);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28[0], "LocalFileSystem.GetPathInfo: detected symlink ", 46);
  v19 = SHIBYTE(a1[2].__r_.__value_.__r.__words[2]);
  if (v19 >= 0)
  {
    v20 = a1 + 2;
  }

  else
  {
    v20 = a1[2].__r_.__value_.__l.__data_;
  }

  if (v19 >= 0)
  {
    v21 = HIBYTE(a1[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = a1[2].__r_.__value_.__l.__size_;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " error: ", 8);
  v24 = strerror(v6);
  v25 = strlen(v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
  dmlc::LogMessage::~LogMessage(v28);
LABEL_26:
  v26 = *MEMORY[0x277D85DE8];
}

void dmlc::io::FileInfo::~FileInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t dmlc::io::LocalFileSystem::ListDirectory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = (a2 + 48);
  v6 = *(a2 + 48);
  if (*(a2 + 71) >= 0)
  {
    v8 = (a2 + 48);
  }

  else
  {
    v8 = *(a2 + 48);
  }

  v9 = opendir(v8);
  if (!v9)
  {
    v10 = *__error();
    Entry = dmlc::LogMessageFatal::GetEntry(&v61);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 104);
    v12 = dmlc::LogMessageFatal::GetEntry(&v61);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "LocalFileSystem.ListDirectory ", 30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (a2 + 24), &v51);
    v14 = *(a2 + 71);
    if (v14 >= 0)
    {
      v15 = v7;
    }

    else
    {
      v15 = *(a2 + 48);
    }

    if (v14 >= 0)
    {
      v16 = *(a2 + 71);
    }

    else
    {
      v16 = *(a2 + 56);
    }

    v17 = std::string::append(&v51, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

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

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, size);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " error: ", 8);
    v23 = strerror(v10);
    v24 = strlen(v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v61);
  }

  std::vector<dmlc::io::FileInfo>::__base_destruct_at_end[abi:ne200100](a3, *a3);
  for (i = readdir(v9); i; i = readdir(v9))
  {
    d_name = i->d_name;
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      }

      else
      {
        __p = *a2;
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v59, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v59 = *(a2 + 24);
      }

      if (*(a2 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v60 = *v7;
      }

      v27 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v60;
      }

      else
      {
        v27 = v60.__r_.__value_.__l.__size_;
        v28 = v60.__r_.__value_.__r.__words[0];
      }

      if (v28->__r_.__value_.__s.__data_[v27 - 1] != 47)
      {
        std::string::push_back(&v60, 47);
      }

      std::string::append(&v60, d_name);
      (*(*a1 + 16))(&v51, a1, &__p);
      v29 = a3[1];
      v30 = a3[2];
      if (v29 >= v30)
      {
        v35 = 0x2E8BA2E8BA2E8BA3 * ((v29 - *a3) >> 3);
        v36 = v35 + 1;
        if ((v35 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v37 = 0x2E8BA2E8BA2E8BA3 * ((v30 - *a3) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x1745D1745D1745DLL)
        {
          v38 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v38 = v36;
        }

        v64 = a3;
        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::io::FileInfo>>(a3, v38);
        }

        v39 = 88 * v35;
        v61 = 0;
        v62 = v39;
        *(&v63 + 1) = 0;
        v40 = *&v51.__r_.__value_.__l.__data_;
        *(v39 + 16) = *(&v51.__r_.__value_.__l + 2);
        *v39 = v40;
        memset(&v51, 0, sizeof(v51));
        v41 = v52;
        *(v39 + 40) = v53;
        *(v39 + 24) = v41;
        v53 = 0;
        v52 = 0uLL;
        v42 = v54;
        *(v39 + 64) = v55;
        *(v39 + 48) = v42;
        v54 = 0uLL;
        v55 = 0;
        v43 = v56;
        *(v39 + 80) = v57;
        *(v39 + 72) = v43;
        *&v63 = 88 * v35 + 88;
        v44 = a3[1];
        v45 = 88 * v35 + *a3 - v44;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>(a3, *a3, v44, v39 + *a3 - v44);
        v46 = *a3;
        *a3 = v45;
        v47 = a3[2];
        v50 = v63;
        *(a3 + 1) = v63;
        *&v63 = v46;
        *(&v63 + 1) = v47;
        v61 = v46;
        v62 = v46;
        std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(&v61);
        v48 = SHIBYTE(v55);
        a3[1] = v50;
        if (v48 < 0)
        {
          operator delete(v54);
        }
      }

      else
      {
        v31 = *&v51.__r_.__value_.__l.__data_;
        *(v29 + 16) = *(&v51.__r_.__value_.__l + 2);
        *v29 = v31;
        memset(&v51, 0, sizeof(v51));
        v32 = v53;
        *(v29 + 24) = v52;
        *(v29 + 40) = v32;
        v52 = 0uLL;
        v33 = v54;
        *(v29 + 64) = v55;
        *(v29 + 48) = v33;
        v55 = 0;
        v53 = 0;
        v54 = 0uLL;
        v34 = v56;
        *(v29 + 80) = v57;
        *(v29 + 72) = v34;
        a3[1] = v29 + 88;
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return closedir(v9);
}

void sub_274D27F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v37 - 128));
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::LocalFileSystem::Open(dmlc::io::LocalFileSystem *this, const dmlc::io::URI *a2, char *a3, char a4)
{
  v8 = a2 + 48;
  v7 = *(a2 + 6);
  if (*(a2 + 71) >= 0)
  {
    v9 = a2 + 48;
  }

  else
  {
    v9 = *(a2 + 6);
  }

  v10 = strcmp(v9, "stdin");
  v11 = *MEMORY[0x277D85E00];
  v12 = strcmp(v9, "stdout");
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85E08];
  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
  }

  v17 = 7;
  if (strncmp(v9, "file://", 7uLL))
  {
    v17 = 0;
  }

  if (v14)
  {
LABEL_34:
    if (v16)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a3);
  v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_30;
    }

    v19 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
    {
LABEL_24:
      if (v18 != 1)
      {
        goto LABEL_30;
      }

      p_p = &__p;
      goto LABEL_28;
    }

    v19 = &__p;
  }

  if (v19->__r_.__value_.__s.__data_[0] == 119)
  {
    MEMORY[0x277C68BE0](&__p, "wb");
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if ((v18 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  if (__p.__r_.__value_.__l.__size_ != 1)
  {
    goto LABEL_30;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_28:
  if (p_p->__r_.__value_.__s.__data_[0] == 114)
  {
    MEMORY[0x277C68BE0](&__p, "rb");
    LOBYTE(v18) = *(&__p.__r_.__value_.__s + 23);
  }

LABEL_30:
  if ((v18 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  v16 = fopen(&v9[v17], v21);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v16)
  {
LABEL_35:
    operator new();
  }

LABEL_37:
  if ((a4 & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v42);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 209);
    v23 = dmlc::LogMessageFatal::GetEntry(&v42);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: allow_null", 24);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " LocalFileSystem::Open ", 24);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a2 + 3, &__p);
    v27 = *(a2 + 71);
    if (v27 >= 0)
    {
      v28 = v8;
    }

    else
    {
      v28 = *(a2 + 6);
    }

    if (v27 >= 0)
    {
      v29 = *(a2 + 71);
    }

    else
    {
      v29 = *(a2 + 7);
    }

    v30 = std::string::append(&__p, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v41 = v30->__r_.__value_.__r.__words[2];
    *v40 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v41 >= 0)
    {
      v32 = v40;
    }

    else
    {
      v32 = v40[0];
    }

    if (v41 >= 0)
    {
      v33 = HIBYTE(v41);
    }

    else
    {
      v33 = v40[1];
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": ", 3);
    v36 = __error();
    v37 = strerror(*v36);
    v38 = strlen(v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v42);
  }

  return 0;
}

void sub_274D28328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&a19);
  _Unwind_Resume(a1);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void dmlc::io::FileStream::Write(FILE **this, const void *__ptr, size_t a3)
{
  if (fwrite(__ptr, 1uLL, a3, this[1]) != a3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 38);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: std::fwrite(ptr, 1, size, fp_) == size", 52);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "FileStream.Write incomplete", 27);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  }
}

void dmlc::io::FileStream::~FileStream(dmlc::io::FileStream *this)
{
  *this = &unk_2883E1340;
  v2 = *(this + 1);
  if (v2)
  {
    if ((*(this + 16) & 1) == 0)
    {
      fclose(v2);
      *(this + 1) = 0;
    }
  }
}

{
  *this = &unk_2883E1340;
  v2 = *(this + 1);
  if (v2 && (*(this + 16) & 1) == 0)
  {
    fclose(v2);
    *(this + 1) = 0;
  }

  JUMPOUT(0x277C69180);
}

void dmlc::io::FileStream::Seek(FILE **this, uint64_t a2)
{
  if (fseek(this[1], a2, 0))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v5);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/local_filesys.cc", 43);
    v3 = dmlc::LogMessageFatal::GetEntry(&v5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !std::fseek(fp_, static_cast<long>(pos), SEEK_SET)", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  }
}

void std::vector<dmlc::io::FileInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<dmlc::io::FileInfo>>::destroy[abi:ne200100]<dmlc::io::FileInfo,0>(a1, i))
  {
    i -= 88;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<dmlc::io::FileInfo>>::destroy[abi:ne200100]<dmlc::io::FileInfo,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::io::FileInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 72) = v11;
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    do
    {
      std::allocator_traits<std::allocator<dmlc::io::FileInfo>>::destroy[abi:ne200100]<dmlc::io::FileInfo,0>(a1, v5);
      v5 += 88;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 88;
      std::allocator_traits<std::allocator<dmlc::io::FileInfo>>::destroy[abi:ne200100]<dmlc::io::FileInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<dmlc::io::FileInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<dmlc::io::FileInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<dmlc::io::FileInfo>>::destroy[abi:ne200100]<dmlc::io::FileInfo,0>(v5, v4 - 88);
  }
}

uint64_t dmlc::Registry<xgboost::PredictorReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void xgboost::PredictionContainer::ClearExpiredEntries(int8x8_t *this)
{
  v1 = this + 2;
  v2 = this[2];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v2[6];
      if (!v7 || *(v7 + 8) == -1)
      {
        v8 = (v6 - v4) >> 3;
        v9 = v8 + 1;
        if ((v8 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if (-v4 >> 2 > v9)
        {
          v9 = -v4 >> 2;
        }

        if (-v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          if (!(v10 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v11 = (8 * v8);
        v12 = v5 - v4;
        v13 = (8 * v8 - (v5 - v4));
        *v11 = v2[2];
        v5 = v11 + 1;
        memcpy(v13, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = v13;
        v6 = v5;
      }

      v2 = *v2;
    }

    while (v2);
    if (v4 != v6)
    {
      v14 = v4;
      do
      {
        v15 = std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::find<xgboost::DMatrix *>(this, v14);
        if (v15)
        {
          v16 = this[1];
          v17 = v15[1];
          v18 = vcnt_s8(v16);
          v18.i16[0] = vaddlv_u8(v18);
          if (v18.u32[0] > 1uLL)
          {
            if (v17 >= *&v16)
            {
              v17 %= *&v16;
            }
          }

          else
          {
            v17 &= *&v16 - 1;
          }

          v19 = *(*this + 8 * v17);
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19 != v15);
          if (v20 == v1)
          {
            goto LABEL_38;
          }

          v21 = v20[1];
          if (v18.u32[0] > 1uLL)
          {
            if (v21 >= *&v16)
            {
              v21 %= *&v16;
            }
          }

          else
          {
            v21 &= *&v16 - 1;
          }

          if (v21 != v17)
          {
LABEL_38:
            if (!*v15)
            {
              goto LABEL_39;
            }

            v22 = *(*v15 + 8);
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v16)
              {
                v22 %= *&v16;
              }
            }

            else
            {
              v22 &= *&v16 - 1;
            }

            if (v22 != v17)
            {
LABEL_39:
              *(*this + 8 * v17) = 0;
            }
          }

          v23 = *v15;
          if (*v15)
          {
            v24 = *(*&v23 + 8);
            if (v18.u32[0] > 1uLL)
            {
              if (v24 >= *&v16)
              {
                v24 %= *&v16;
              }
            }

            else
            {
              v24 &= *&v16 - 1;
            }

            if (v24 != v17)
            {
              *(*this + 8 * v24) = v20;
              v23 = *v15;
            }
          }

          *v20 = v23;
          *v15 = 0;
          --*&this[3];
          v25[0] = v15;
          v25[1] = this;
          v26 = 1;
          memset(v27, 0, sizeof(v27));
          std::unique_ptr<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>>>>::~unique_ptr[abi:ne200100](v25);
        }

        ++v14;
      }

      while (v14 != v6);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }
}

void sub_274D28E58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::PredictionContainer::Cache(int8x8_t *a1, uint64_t *a2, int a3)
{
  xgboost::PredictionContainer::ClearExpiredEntries(a1);
  v11 = *a2;
  v12 = &v11;
  v6 = std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::__emplace_unique_key_args<xgboost::DMatrix *,std::piecewise_construct_t const&,std::tuple<xgboost::DMatrix *&&>,std::tuple<>>(a1, &v11);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = v6[6];
  v6[5] = v8;
  v6[6] = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (a3 != -1)
  {
    v11 = *a2;
    v12 = &v11;
    std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::__emplace_unique_key_args<xgboost::DMatrix *,std::piecewise_construct_t const&,std::tuple<xgboost::DMatrix *&&>,std::tuple<>>(a1, &v11);
  }

  v11 = *a2;
  v12 = &v11;
  return std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::__emplace_unique_key_args<xgboost::DMatrix *,std::piecewise_construct_t const&,std::tuple<xgboost::DMatrix *&&>,std::tuple<>>(a1, &v11) + 3;
}

void *xgboost::PredictionContainer::Entry(xgboost::PredictionContainer *this, xgboost::DMatrix *a2)
{
  v21 = a2;
  if (!std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::find<xgboost::DMatrix *>(this, &v21))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v20);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/predictor/predictor.cc", 40);
    v17 = dmlc::LogMessageFatal::GetEntry(&v20);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: container_.find(m) != container_.cend()", 53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v20);
  }

  v3 = std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::find<xgboost::DMatrix *>(this, &v21);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = v3[6];
  if (!v5 || (v6 = std::__shared_weak_count::lock(v5)) == 0 || (v7 = v4[5], std::__shared_weak_count::__release_shared[abi:ne200100](v6), !v7))
  {
    v8 = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(v8, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/predictor/predictor.cc", 41);
    v9 = dmlc::LogMessageFatal::GetEntry(&v19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: container_.at(m).ref.lock()", 41);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[Internal error]: DMatrix: ", 27);
    v13 = MEMORY[0x277C68DE0](v12, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " has expired.", 13);
    dmlc::LogMessageFatal::~LogMessageFatal(&v19);
  }

  v14 = std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::find<xgboost::DMatrix *>(this, &v21);
  if (!v14)
  {
LABEL_10:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v14 + 3;
}

void xgboost::Predictor::Create(uint64_t a1, uint64_t a2)
{
  dmlc::Registry<xgboost::PredictorReg>::Get();
  dmlc::Registry<xgboost::PredictorReg>::Get();
  v4 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(&qword_280AF7478, a1);
  if (v4 == &qword_280AF7480 || (v5 = v4[7]) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/predictor/predictor.cc", 58);
    v7 = dmlc::LogMessageFatal::GetEntry(&v12);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unknown predictor type ", 23);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
    __break(1u);
  }

  else
  {

    std::function<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::operator()(v5 + 72, a2);
  }
}

uint64_t std::function<xgboost::Predictor * ()(xgboost::GenericParameter const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void xgboost::Predictor::InitOutPredictions(int16x4_t a1, uint64_t a2, unint64_t *a3, uint64_t **a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  v10 = *(v8 + 8);
  v9 = (v8 + 8);
  v24 = 0;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned int,int>(v9, &v24);
  }

  v11 = *(*(a5 + 8) + 8);
  v12 = *a3 * v11;
  v13 = a3[10];
  v15 = *v13;
  v14 = v13[1];
  LODWORD(v25) = 0;
  std::vector<float>::resize(*a4, v12, &v25, a1);
  if (v14 != v15)
  {
    xgboost::ValidateBaseMarginShape<2>((a3 + 10), *a3, v11);
    xgboost::HostDeviceVector<float>::Copy();
  }

  v17 = **a4;
  v18 = ((*a4)[1] - v17) >> 2;
  if (v18 >= 1)
  {
    v19 = 0;
    v16.i32[0] = **(a5 + 8);
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + 8);
    do
    {
      v22 = vdupq_n_s64(v19);
      v23 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_274E1F3B0)));
      if (vuzp1_s16(v23, v16).u8[0])
      {
        *(v21 - 2) = v16.i32[0];
      }

      if (vuzp1_s16(v23, v16).i8[2])
      {
        *(v21 - 1) = v16.i32[0];
      }

      if (vuzp1_s16(v16, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_274E1FC60)))).i32[1])
      {
        *v21 = v16.i32[0];
        v21[1] = v16.i32[0];
      }

      v19 += 4;
      v21 += 4;
    }

    while (((v18 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v19);
  }
}

void sub_274D29448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ValidateBaseMarginShape<2>(uint64_t a1, unint64_t __val, unsigned int a3)
{
  v23 = __val;
  v22 = a3;
  std::to_string(&v16, __val);
  v5 = std::string::insert(&v16, 0, "Invalid shape of base_margin. Expected: (");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v17, ", ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
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

  v11 = std::string::append(&v18, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v19, ")");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  v20 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

  v18.__r_.__value_.__r.__words[0] = *(a1 + 8);
  if (v18.__r_.__value_.__r.__words[0] != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v18, &v23);
  }

  v18.__r_.__value_.__r.__words[0] = *(a1 + 16);
  if (v18.__r_.__value_.__r.__words[0] != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v18, &v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

void sub_274D29794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::find<xgboost::DMatrix *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<xgboost::DMatrix * const,xgboost::PredictionCacheEntry>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<xgboost::DMatrix * const,xgboost::PredictionCacheEntry>,0>(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void *std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::__emplace_unique_key_args<xgboost::DMatrix *,std::piecewise_construct_t const&,std::tuple<xgboost::DMatrix *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
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

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_274D29E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(uint64_t a1, uint64_t a2)
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