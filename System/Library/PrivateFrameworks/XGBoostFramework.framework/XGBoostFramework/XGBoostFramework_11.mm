void sub_274D7810C()
{
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274D78178);
}

void xgboost::predictor::CPUPredictor::PredictContribution(uint64_t a1, uint64_t a2, std::vector<unsigned int> **a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v28 = *MEMORY[0x277D85DE8];
  v15 = *(a4[1] + 4);
  memset(v24, 0, sizeof(v24));
  xgboost::predictor::CPUPredictor::InitThreadTemp(1, v24);
  v9 = (**a2)(a2);
  if (v5)
  {
    v10 = a4[23] - a4[22];
    if (v5 <= (v10 >> 3))
    {
LABEL_6:
      v23 = *(a4[1] + 8);
      LODWORD(v25.__ptr_) = v23;
      LODWORD(v21[0]) = 0;
      if (v23)
      {
        LODWORD(v25.__ptr_) = 0;
        v22 = v15 + 1;
        if (v15 != -1)
        {
          v11 = *a3;
          std::vector<float>::resize(v11, v22 * *v9 * *(a4[1] + 8));
          v12 = v11->__end_ - v11->__begin_;
          if (v12 >= 1)
          {
            bzero(v11->__begin_, v12);
          }

          memset(v21, 0, sizeof(v21));
          v26.__ptr_ = v21;
          LOBYTE(v27.__m_.__sig) = 0;
          if (v5)
          {
            operator new();
          }

          v26.__ptr_ = 0;
          v27.__m_.__sig = 850045863;
          memset(v27.__m_.__opaque, 0, sizeof(v27.__m_.__opaque));
          dmlc::OMPException::Rethrow(&v26);
          std::mutex::~mutex(&v27);
          std::exception_ptr::~exception_ptr(&v26);
          v13 = v9[11];
          v14 = *(v9[10] + 8);
          v16 = *v9[10];
          v17 = v9[12];
          (*(*a2 + 72))(&v19, a2);
          v18[2] = v19;
          v18[3] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          }

          xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v18, 0);
        }

        dmlc::LogCheckFormat<unsigned long,int>(&v22, &v25);
      }

      dmlc::LogCheckFormat<int,int>(&v25, v21);
    }
  }

  else
  {
    v10 = a4[23] - a4[22];
  }

  v5 = v10 >> 3;
  goto LABEL_6;
}

void sub_274D78C64()
{
  std::mutex::~mutex(v0);
  std::exception_ptr::~exception_ptr((v1 - 168));
  JUMPOUT(0x274D78D88);
}

void sub_274D78CFC()
{
  dmlc::LogMessageFatal::~LogMessageFatal((v0 - 192));
  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v0 - 168);
  }

  JUMPOUT(0x274D78D98);
}

void xgboost::predictor::CPUPredictor::PredictInteractionContributions(uint64_t a1, uint64_t (***a2)(void), std::vector<unsigned int> **a3, uint64_t a4)
{
  v6 = (**a2)(a2);
  v8 = *(*(a4 + 8) + 4);
  std::vector<float>::resize(*a3, (v8 + 1) * *v6 * (v8 + 1) * *(*(a4 + 8) + 8));
  v7 = *v6;
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void xgboost::predictor::CPUPredictor::InitThreadTemp(int a1, uint64_t *a2)
{
  if (((a2[1] - *a2) >> 5) < a1)
  {
    *__p = 0u;
    v3 = 0u;
    std::vector<xgboost::RegTree::FVec>::resize(a2, a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_274D791A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::FVec>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 32 * a2;
      if (v4 != v7)
      {
        v8 = a1[1];
        do
        {
          v10 = *(v8 - 32);
          v8 -= 32;
          v9 = v10;
          if (v10)
          {
            *(v4 - 24) = v9;
            operator delete(v9);
          }

          v4 = v8;
        }

        while (v8 != v7);
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    std::vector<xgboost::RegTree::FVec>::__append(a1, v6, a3);
  }
}

uint64_t *std::vector<xgboost::RegTree::FVec>::__append(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 5)
  {
    if (a2)
    {
      v13 = 32 * a2;
      v14 = v7 + 32 * a2;
      do
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        result = std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
        *(v7 + 24) = *(a3 + 24);
        v7 += 32;
        v13 -= 32;
      }

      while (v13);
      v7 = v14;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 5);
    if (v9 >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 5;
    v11 = v6 - *result;
    if (v11 >> 4 > v9)
    {
      v9 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    v22 = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>>(result, v12);
    }

    v19 = 0;
    v20 = 32 * v10;
    v21 = (32 * v10);
    std::__split_buffer<xgboost::RegTree::FVec>::__construct_at_end(&v19, a2, a3);
    v15 = v5[1];
    v16 = v20 + *v5 - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>(v5, *v5, v15, v16);
    v17 = *v5;
    *v5 = v16;
    v18 = v5[2];
    *(v5 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(&v19);
  }

  return result;
}

void sub_274D793A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<xgboost::RegTree::FVec>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = 32 * a2;
    v7 = v4 + 32 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      result = std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      *(v4 + 24) = *(a3 + 24);
      v4 += 32;
      v6 -= 32;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<xgboost::RegTree::FVec::Entry>::__init_with_size[abi:ne200100]<xgboost::RegTree::FVec::Entry*,xgboost::RegTree::FVec::Entry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::RegTree::FVec::Entry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D794AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::FVec::Entry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::RegTree::FVec>,xgboost::RegTree::FVec*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<xgboost::RegTree::FVec>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::RegTree::FVec>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::RegTree::FVec>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void *xgboost::predictor::FVecFill<xgboost::predictor::SparsePageView<8ul>>(void *result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v8 = result;
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = *a5 + 32 * v9;
      if (*(v11 + 8) == *v11)
      {
        std::vector<xgboost::RegTree::FVec::Entry>::resize((*a5 + 32 * v9), v10);
        result = *v11;
        v12 = *(v11 + 8) - *v11;
        if (v12 >= 1)
        {
          result = memset(result, 255, v12);
        }

        *(v11 + 24) = 1;
      }

      v13 = (*(a4 + 16) + 8 * v9 + 8 * a2);
      v15 = *v13;
      v14 = v13[1];
      v16 = v14 - *v13;
      v17 = *(a4 + 32);
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        std::terminate();
      }

      if (v14 == v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = (v17 + 8 * v15 + 4);
        do
        {
          v21 = *(v20 - 1);
          if (v21 < (*(v11 + 8) - *v11) >> 2)
          {
            *(*v11 + 4 * v21) = *v20;
            ++v19;
          }

          v20 += 2;
          --v16;
        }

        while (v16);
      }

      *(v11 + 24) = v19 != (*(v11 + 8) - *v11) >> 2;
      v9 = v9 + 1;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t xgboost::predictor::FVecDrop<xgboost::predictor::SparsePageView<8ul>>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    for (i = 0; i != result; ++i)
    {
      v5 = (*(a3 + 16) + 8 * i + 8 * a2);
      v6 = *v5;
      v7 = v5[1];
      v8 = v7 - *v5;
      v9 = *(a3 + 32);
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        std::terminate();
      }

      v11 = *a4 + 32 * i;
      if (v7 != v6)
      {
        v12 = (v9 + 8 * v6);
        do
        {
          v14 = *v12;
          v12 += 2;
          v13 = v14;
          if (v14 < ((*(v11 + 8) - *v11) >> 2))
          {
            *(*v11 + 4 * v13) = -1;
          }

          --v8;
        }

        while (v8);
      }

      *(v11 + 24) = 1;
    }
  }

  return result;
}

void std::vector<xgboost::RegTree::FVec::Entry>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<xgboost::RegTree::FVec::Entry>::__append(a1, a2 - v2);
  }
}

void std::vector<xgboost::RegTree::FVec::Entry>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
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

void std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::RegTree::FVec>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::RegTree::FVec>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::DenseAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 48);
  v7 = (*(**a2 + 32))();
  v8 = v7[2];
  v9 = **(a2 + 32) * v6;
  v10 = v9;
  if (v8)
  {
    v11 = 0;
    v12 = *v7 + 4 * v8 * a3;
    v10 = **(a2 + 32) * v6;
    do
    {
      v13 = *(v12 + 4 * v11);
      if (*(a2 + 8) != v13)
      {
        if (*(a2 + 16) <= v10)
        {
          std::terminate();
        }

        v14 = *(a2 + 24) + 8 * v10;
        *v14 = v11;
        *(v14 + 4) = v13;
        ++v10;
      }

      ++v11;
    }

    while (v8 != v11);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(v19, (a2 + 16), v9, v10 - v9);
  v16 = *(a2 + 32);
  if (*v16 == 7)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16 + 1;
  }

  *v16 = v17;
  v18 = v19[1];
  *a1 = v19[0];
  a1[1] = v18;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::CSRAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 56);
  v7 = (*(**a2 + 32))();
  v8 = (*v7 + 8 * a3);
  v9 = *v8;
  v10 = **(a2 + 32) * v6;
  v11 = v10;
  v12 = v8[1] - *v8;
  if (v12)
  {
    v13 = (v7[1] + 4 * v9);
    v14 = (v7[2] + 4 * v9);
    v11 = **(a2 + 32) * v6;
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = *v14;
      if (*(a2 + 8) != *v14)
      {
        if (*(a2 + 16) <= v11)
        {
          std::terminate();
        }

        v18 = (*(a2 + 24) + 8 * v11);
        *v18 = v15;
        v18[1] = v17;
        ++v11;
      }

      ++v14;
      --v12;
    }

    while (v12);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(v23, (a2 + 16), v10, v11 - v10);
  v20 = *(a2 + 32);
  if (*v20 == 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v20 + 1;
  }

  *v20 = v21;
  v22 = v23[1];
  *a1 = v23[0];
  a1[1] = v22;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::ArrayAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 128);
  v7 = (*(**a2 + 32))();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 32);
  v12 = *(v7 + 48);
  v25 = *(v7 + 64);
  v24 = v12;
  v23 = v11;
  v22 = v10;
  v21[0] = v8;
  v21[1] = v9;
  v26 = a3;
  v13 = **(a2 + 32) * v6;
  v14 = v13;
  if (*(&v11 + 1))
  {
    v15 = 0;
    v14 = v13;
    do
    {
      v27 = v21;
      v28 = v26;
      v29 = v15;
      *&v10 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(v21, &v27, *&v10);
      if (*(a2 + 8) != *&v10)
      {
        if (*(a2 + 16) <= v14)
        {
          std::terminate();
        }

        v16 = (*(a2 + 24) + 8 * v14);
        *v16 = v15;
        v16[1] = v10;
        ++v14;
      }

      ++v15;
    }

    while (v15 < *(&v23 + 1));
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v27, (a2 + 16), v13, v14 - v13);
  v18 = *(a2 + 32);
  if (*v18 == 7)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 1;
  }

  *v18 = v19;
  v20 = v28;
  *a1 = v27;
  a1[1] = v20;
  return result;
}

unint64_t *xgboost::predictor::AdapterView<xgboost::data::CSRArrayAdapter,8ul>::operator[](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 360);
  v7 = (*(**a2 + 32))();
  xgboost::data::CSRArrayAdapterBatch::GetLine(v7, a3, v20);
  v8 = **(a2 + 32) * v6;
  v9 = v8;
  if (v21)
  {
    v10 = 0;
    v9 = v8;
    do
    {
      xgboost::data::CSRArrayAdapterBatch::Line::GetElement(v20, v10, &v17);
      v11 = v19;
      if (*(a2 + 8) != v19)
      {
        if (*(a2 + 16) <= v9)
        {
          std::terminate();
        }

        v12 = (*(a2 + 24) + 8 * v9);
        *v12 = v18;
        v12[1] = v11;
        ++v9;
      }

      ++v10;
    }

    while (v10 < v21);
  }

  result = xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v17, (a2 + 16), v8, v9 - v8);
  v14 = *(a2 + 32);
  if (*v14 == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 1;
  }

  *v14 = v15;
  v16 = v18;
  *a1 = v17;
  a1[1] = v16;
  return result;
}

uint64_t dmlc::io::LineSplitter::SeekRecordBegin(uint64_t a1, uint64_t (***a2)(void, char *, uint64_t))
{
  v3 = 0;
  v7 = 0;
  while ((**a2)(a2, &v7, 1))
  {
    ++v3;
    if (v7 == 13 || v7 == 10)
    {
      while ((**a2)(a2, &v7, 1))
      {
        if (v7 != 13 && v7 != 10)
        {
          break;
        }

        ++v3;
      }

      return v3;
    }
  }

  return v3;
}

const char *dmlc::io::LineSplitter::FindLastRecordBegin(dmlc::io::LineSplitter *this, const char *a2, const char *a3)
{
  v4 = a2;
  if (a2 == a3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/line_split.cc", 29);
    v6 = dmlc::LogMessageFatal::GetEntry(&v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: begin != end", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v13);
  }

  v8 = a3 - 1;
  while (v8 != v4)
  {
    v10 = *v8--;
    v9 = v10;
    if (v10 == 13 || v9 == 10)
    {
      return v8 + 2;
    }
  }

  return v4;
}

BOOL dmlc::io::LineSplitter::ExtractNextRecord(uint64_t a1, void *a2, void *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v5 = *a3;
    while (1)
    {
      v6 = *v5;
      if (v6 == 10 || v6 == 13)
      {
        break;
      }

      if (++v5 == v4)
      {
        v5 = a3[1];
        break;
      }
    }

    if (v5 == v4)
    {
      v10 = v5;
    }

    else
    {
      do
      {
        v8 = *v5;
        if (v8 != 13 && v8 != 10)
        {
          v10 = v5 - 1;
          goto LABEL_18;
        }

        ++v5;
      }

      while (v5 != v4);
      v10 = a3[1];
      v5 = v10;
    }

LABEL_18:
    *v10 = 0;
    v11 = &v5[-*a3];
    *a2 = *a3;
    a2[1] = v11;
    *a3 = v5;
  }

  return v3 != v4;
}

uint64_t dmlc::io::InputSplitBase::NextRecord(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = (*(*a1 + 80))(a1, a2, a1 + 112);
  }

  while ((v4 & 1) == 0 && ((*(*a1 + 96))(a1, a1 + 112) & 1) != 0);
  return v4;
}

BOOL dmlc::io::InputSplitBase::NextChunk(void *a1, void *a2)
{
  while (1)
  {
    v4 = a1[14];
    v5 = a1[15];
    if (v4 != v5)
    {
      break;
    }

    if (((*(*a1 + 96))(a1, a1 + 14) & 1) == 0)
    {
      return v4 != v5;
    }
  }

  *a2 = v4;
  a2[1] = v5 - v4;
  a1[14] = v5;
  return v4 != v5;
}

void dmlc::io::LineSplitter::~LineSplitter(dmlc::io::LineSplitter *this)
{
  dmlc::io::InputSplitBase::~InputSplitBase(this);

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::Metric::Create(uint64_t a1, uint64_t a2)
{
  v4 = xgboost::CreateMetricImpl<xgboost::MetricReg>(a1);
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/metric.cc", 49);
    v6 = dmlc::LogMessageFatal::GetEntry(&v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown metric function ", 24);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }

  *(v4 + 8) = a2;
  return v4;
}

uint64_t xgboost::CreateMetricImpl<xgboost::MetricReg>(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    __str = *a1;
LABEL_4:
    v19 = *a1;
    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
LABEL_5:
  v2 = std::string::find(&__str, 64, 0);
  if (v2 == -1)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      p_str = &__str;
    }

    if (p_str->__r_.__value_.__s.__data_[size - 1] == 45)
    {
      std::string::basic_string(&v18, &__str, 0, size - 1, &__p);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v19 = v18;
      v12 = "-";
LABEL_37:
      dmlc::Registry<xgboost::MetricReg>::Get();
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(&v18, v13);
      dmlc::Registry<xgboost::MetricReg>::Get();
      v14 = std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::find<std::string>(&v18.__r_.__value_.__l.__data_);
      if (v14 == &qword_280AF6888)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14[7];
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
        if (v15)
        {
          goto LABEL_45;
        }
      }

      else if (v15)
      {
LABEL_45:
        v11 = std::function<xgboost::Metric * ()(char const*)>::operator()(*(v15 + 96), v12);
        goto LABEL_48;
      }

      v11 = 0;
      goto LABEL_48;
    }

LABEL_36:
    std::string::operator=(&v19, &__str);
    v12 = 0;
    goto LABEL_37;
  }

  v3 = v2;
  std::string::basic_string(&v18, &__str, 0, v2, &__p);
  dmlc::Registry<xgboost::MetricReg>::Get();
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v4);
  dmlc::Registry<xgboost::MetricReg>::Get();
  v5 = std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::find<std::string>(&__p.__r_.__value_.__l.__data_);
  if (v5 == &qword_280AF6888)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[7];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
LABEL_17:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&__p, &__str, v3 + 1, v9, &v21);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v11 = std::function<xgboost::Metric * ()(char const*)>::operator()(*(v6 + 96), p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_27;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  v11 = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_274D7A6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::GPUMetric::CreateGPUMetric(uint64_t a1, uint64_t a2)
{
  v4 = xgboost::CreateMetricImpl<xgboost::MetricGPUReg>(a1);
  v7 = v4;
  if (v4)
  {
    *(v4 + 8) = a2;
  }

  else if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v5, v6) + 4) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/metric.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v16, __p, 60, 1);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Cannot find a GPU metric builder for metric ", 44);
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ". Resorting to the CPU builder", 30);
    xgboost::ConsoleLogger::~ConsoleLogger(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v7;
}

void sub_274D7A7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::CreateMetricImpl<xgboost::MetricGPUReg>(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    __str = *a1;
LABEL_4:
    v19 = *a1;
    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
LABEL_5:
  v2 = std::string::find(&__str, 64, 0);
  if (v2 == -1)
  {
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      p_str = &__str;
    }

    if (p_str->__r_.__value_.__s.__data_[size - 1] == 45)
    {
      std::string::basic_string(&v18, &__str, 0, size - 1, &__p);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v19 = v18;
      v12 = "-";
LABEL_37:
      dmlc::Registry<xgboost::MetricGPUReg>::Get();
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(&v18, v13);
      dmlc::Registry<xgboost::MetricGPUReg>::Get();
      v14 = std::__tree<std::__value_type<std::string,xgboost::MetricGPUReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricGPUReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricGPUReg *>>>::find<std::string>(&v18.__r_.__value_.__l.__data_);
      if (v14 == &qword_280AF6910)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14[7];
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
        if (v15)
        {
          goto LABEL_45;
        }
      }

      else if (v15)
      {
LABEL_45:
        v11 = std::function<xgboost::Metric * ()(char const*)>::operator()(*(v15 + 96), v12);
        goto LABEL_48;
      }

      v11 = 0;
      goto LABEL_48;
    }

LABEL_36:
    std::string::operator=(&v19, &__str);
    v12 = 0;
    goto LABEL_37;
  }

  v3 = v2;
  std::string::basic_string(&v18, &__str, 0, v2, &__p);
  dmlc::Registry<xgboost::MetricGPUReg>::Get();
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v18;
  }

  else
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v4);
  dmlc::Registry<xgboost::MetricGPUReg>::Get();
  v5 = std::__tree<std::__value_type<std::string,xgboost::MetricGPUReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricGPUReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricGPUReg *>>>::find<std::string>(&__p.__r_.__value_.__l.__data_);
  if (v5 == &qword_280AF6910)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[7];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
LABEL_17:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&__p, &__str, v3 + 1, v9, &v21);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v11 = std::function<xgboost::Metric * ()(char const*)>::operator()(*(v6 + 96), p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_27;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  v11 = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_274D7AAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Registry<xgboost::MetricReg>::~Registry(uint64_t a1)
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

        std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v5 + 72);
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

__int128 *dmlc::Registry<xgboost::MetricGPUReg>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6848))
  {
    qword_280AF6910 = 0;
    xmmword_280AF68E8 = 0u;
    unk_280AF68F8 = 0u;
    xmmword_280AF68D8 = 0u;
    qword_280AF6908 = &qword_280AF6910;
    qword_280AF6918 = 0;
    unk_280AF6920 = 850045863;
    xmmword_280AF6928 = 0u;
    unk_280AF6938 = 0u;
    xmmword_280AF6948 = 0u;
    qword_280AF6958 = 0;
    __cxa_atexit(dmlc::Registry<xgboost::MetricGPUReg>::~Registry, &xmmword_280AF68D8, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6848);
  }

  return &xmmword_280AF68D8;
}

uint64_t dmlc::Registry<xgboost::MetricGPUReg>::~Registry(uint64_t a1)
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

        std::__function::__value_func<xgboost::Metric * ()(char const*)>::~__value_func[abi:ne200100](v5 + 72);
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

uint64_t std::function<xgboost::Metric * ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::MetricReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricReg *>>>::find<std::string>(const void **a1)
{
  v1 = qword_280AF6888;
  if (!qword_280AF6888)
  {
    return &qword_280AF6888;
  }

  v3 = &qword_280AF6888;
  do
  {
    v4 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF6880, (v1 + 32), a1);
    if (v4)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v3 = v1;
    }

    v1 = *(v1 + v5);
  }

  while (v1);
  if (v3 == &qword_280AF6888 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF6880, a1, v3 + 4))
  {
    return &qword_280AF6888;
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::MetricGPUReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::MetricGPUReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::MetricGPUReg *>>>::find<std::string>(const void **a1)
{
  v1 = qword_280AF6910;
  if (!qword_280AF6910)
  {
    return &qword_280AF6910;
  }

  v3 = &qword_280AF6910;
  do
  {
    v4 = std::less<std::string>::operator()[abi:ne200100](&qword_280AF6908, (v1 + 32), a1);
    if (v4)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v3 = v1;
    }

    v1 = *(v1 + v5);
  }

  while (v1);
  if (v3 == &qword_280AF6910 || std::less<std::string>::operator()[abi:ne200100](&qword_280AF6908, a1, v3 + 4))
  {
    return &qword_280AF6910;
  }

  return v3;
}

void sub_274D7B08C(_Unwind_Exception *a1)
{
  xgboost::tree::TrainParam::~TrainParam((v2 + 16));
  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void xgboost::tree::TreeRefresher::~TreeRefresher(void **this)
{
  *this = &unk_2883E3698;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this[12];
  if (v2)
  {
    this[13] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883E3698;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this[12];
  if (v2)
  {
    this[13] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::TreeRefresher::LoadConfig(xgboost::tree::TreeRefresher *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D7B254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::TreeRefresher::SaveConfig(xgboost::tree::TreeRefresher *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 16), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::tree::TreeRefresher::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::tree::TreeRefresher::Update(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = a3;
  if (a4[1] != *a4)
  {
    v5 = *a2;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    memset(v26, 0, sizeof(v26));
    v34 = 0u;
    *__p = 0u;
    std::vector<xgboost::RegTree::FVec>::resize(v26, 1uLL, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v6 = v28;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v28 - v27);
    if (v28 == v27)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) < 1 - v7)
      {
        v12 = 0x5555555555555556 * ((v29 - v27) >> 3);
        if (v12 <= 1)
        {
          v12 = 1;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v29 - v27) >> 3) >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        *&v35 = &v27;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<xgboost::tree::GradStats>>>(&v27, v13);
      }

      v14 = &v28[3 * (1 - v7)];
      v15 = 24 - 8 * (v28 - v27);
      do
      {
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        std::vector<xgboost::tree::GradStats>::__init_with_size[abi:ne200100]<xgboost::tree::GradStats*,xgboost::tree::GradStats*>(v6, 0, 0, 0);
        v6 += 3;
        v15 -= 24;
      }

      while (v15);
      v28 = v14;
    }

    else if (v7 >= 2)
    {
      v8 = v27 + 3;
      if (v28 != v27 + 3)
      {
        v9 = v28;
        do
        {
          v11 = *(v9 - 3);
          v9 -= 3;
          v10 = v11;
          if (v11)
          {
            *(v6 - 2) = v10;
            operator delete(v10);
          }

          v6 = v9;
        }

        while (v9 != v8);
      }

      v28 = v8;
    }

    __p[0] = 0;
    __p[1] = 850045863;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v16 = *a4;
    v17 = a4[1];
    if (*a4 == v17)
    {
      v18 = 0;
    }

    else
    {
      LODWORD(v18) = 0;
      do
      {
        v19 = *v16++;
        v18 = *(v19 + 12) + v18;
      }

      while (v16 != v17);
    }

    v31 = 0uLL;
    std::vector<xgboost::tree::GradStats>::resize(v27, v18, &v31);
    v20 = v27[1] - *v27;
    if (v20 >= 1)
    {
      bzero(*v27, v20);
    }

    v21 = v26[0];
    std::vector<xgboost::RegTree::FVec::Entry>::resize(v26[0], *(**a4 + 24));
    v22 = *(v21 + 8) - *v21;
    if (v22 >= 1)
    {
      memset(*v21, 255, v22);
    }

    *(v21 + 24) = 1;
    dmlc::OMPException::Rethrow(__p);
    v23 = *v27;
    v24 = v27[1];
    v32 = 0;
    operator new();
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_274D7B7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26)
{
  a18.__ptr_ = &a11;
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&a18);
  a11 = &a14;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

float64x2_t rabit::ReducerSafeImpl<xgboost::tree::GradStats,&xgboost::tree::GradStats::Reduce>(float64x2_t *a1, float64x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = vaddq_f64(*a2, v4);
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t xgboost::tree::TreeRefresher::Refresh(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v14 = result;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v76 = vnegq_f64(v15);
  while (1)
  {
    v16 = (a2 + 16 * a3);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v14 + 48);
    v20 = v18 <= 0.0 || v18 < v19;
    a8.i64[0] = 0;
    if (!v20)
    {
      v21 = *(v14 + 56);
      v22 = v21;
      v20 = v17 < -v21;
      v23 = v17 + v21;
      if (!v20)
      {
        v23 = 0.0;
      }

      v24 = v17 <= v22;
      v25 = v17 - v22;
      if (!v24)
      {
        v23 = v25;
      }

      *a8.i64 = -v23 / (v18 + *(v14 + 52));
      v26 = *(v14 + 60);
      if (v26 != 0.0)
      {
        *a9.i64 = v26;
        if (fabs(*a8.i64) > *a9.i64)
        {
          a10.i64[1] = v76.i64[1];
          a8.i64[0] = vbslq_s8(v76, a9, a8).u64[0];
        }
      }
    }

    v27 = a3;
    v28 = *a8.i64;
    v29 = (*(a4 + 208) + 16 * a3);
    v30 = v18;
    v29[1] = v30;
    v29[2] = v28;
    v31 = *(a4 + 160) + 20 * a3;
    v32 = *(v31 + 4);
    if (v32 == -1)
    {
      break;
    }

    v33 = (a2 + 16 * v32);
    v34 = v33[1];
    v35 = 0.0;
    v36 = 0.0;
    if (v34 >= v19)
    {
      v37 = *v33;
      v38 = *(v14 + 60);
      if (v38 == 0.0)
      {
        v39 = *(v14 + 56);
        if (v39 == 0.0)
        {
          v40 = v37 * v37;
        }

        else
        {
          v46 = v39;
          if (v37 <= v39)
          {
            v48 = -v39;
            v47 = 0.0;
            if (v37 < v48)
            {
              v47 = v37 + v46;
            }
          }

          else
          {
            v47 = v37 - v46;
          }

          v40 = v47 * v47;
        }

        v36 = v40 / (v34 + *(v14 + 52));
      }

      else
      {
        if (v34 <= 0.0)
        {
          v41 = *(v14 + 56);
          v45 = v34 + *(v14 + 52);
          a10.i64[0] = 0;
        }

        else
        {
          v41 = *(v14 + 56);
          v42 = v41;
          v43 = v37 + v41;
          if (v37 >= -v41)
          {
            v43 = 0.0;
          }

          v24 = v37 <= v42;
          v44 = v37 - v42;
          if (v24)
          {
            v44 = v43;
          }

          v45 = v34 + *(v14 + 52);
          *a10.i64 = -v44 / v45;
          *a12.i64 = v38;
          if (fabs(*a10.i64) > *a12.i64)
          {
            a10 = vbslq_s8(v76, a12, a10);
          }
        }

        v36 = -(v45 * (*a10.i64 * *a10.i64) + (v37 + v37) * *a10.i64);
        if (v41 != 0.0)
        {
          v36 = v36 + v41 * fabs(*a10.i64);
        }
      }
    }

    v49 = (a2 + 16 * *(v31 + 8));
    v50 = v49[1];
    if (v50 >= v19)
    {
      v51 = *v49;
      v52 = *(v14 + 60);
      if (v52 == 0.0)
      {
        v53 = *(v14 + 56);
        if (v53 == 0.0)
        {
          v54 = v51 * v51;
        }

        else
        {
          v60 = v53;
          if (v51 <= v53)
          {
            v62 = -v53;
            v61 = 0.0;
            if (v51 < v62)
            {
              v61 = v51 + v60;
            }
          }

          else
          {
            v61 = v51 - v60;
          }

          v54 = v61 * v61;
        }

        v35 = v54 / (v50 + *(v14 + 52));
      }

      else
      {
        if (v50 <= 0.0)
        {
          v55 = *(v14 + 56);
          v59 = v50 + *(v14 + 52);
          a10.i64[0] = 0;
        }

        else
        {
          v55 = *(v14 + 56);
          v56 = v55;
          v57 = v51 + v55;
          if (v51 >= -v55)
          {
            v57 = 0.0;
          }

          v24 = v51 <= v56;
          v58 = v51 - v56;
          if (v24)
          {
            v58 = v57;
          }

          v59 = v50 + *(v14 + 52);
          *a10.i64 = -v58 / v59;
          *a12.i64 = v52;
          if (fabs(*a10.i64) > *a12.i64)
          {
            a10 = vbslq_s8(v76, a12, a10);
          }
        }

        v35 = -(v59 * (*a10.i64 * *a10.i64) + (v51 + v51) * *a10.i64);
        if (v55 != 0.0)
        {
          v35 = v35 + v55 * fabs(*a10.i64);
        }
      }
    }

    v63 = 0.0;
    if (v18 >= v19)
    {
      v64 = *(v14 + 60);
      if (v64 == 0.0)
      {
        v65 = *(v14 + 56);
        if (v65 == 0.0)
        {
          v66 = v17 * v17;
        }

        else
        {
          v72 = v65;
          if (v17 <= v65)
          {
            v74 = -v65;
            v73 = 0.0;
            if (v17 < v74)
            {
              v73 = v17 + v72;
            }
          }

          else
          {
            v73 = v17 - v72;
          }

          v66 = v73 * v73;
        }

        v63 = v66 / (v18 + *(v14 + 52));
      }

      else
      {
        if (v18 <= 0.0)
        {
          v67 = *(v14 + 56);
          v71 = v18 + *(v14 + 52);
          a6.i64[0] = 0;
        }

        else
        {
          v67 = *(v14 + 56);
          v68 = v67;
          v69 = v17 + v67;
          if (v17 >= -v67)
          {
            v69 = 0.0;
          }

          v24 = v17 <= v68;
          v70 = v17 - v68;
          if (v24)
          {
            v70 = v69;
          }

          v71 = v18 + *(v14 + 52);
          *a6.i64 = -v70 / v71;
          *a10.i64 = v64;
          if (fabs(*a6.i64) > *a10.i64)
          {
            a6.i64[0] = vbslq_s8(v76, a10, a6).u64[0];
          }
        }

        v63 = -(v71 * (*a6.i64 * *a6.i64) + (v17 + v17) * *a6.i64);
        if (v67 != 0.0)
        {
          v63 = v67 * fabs(*a6.i64) - (v71 * (*a6.i64 * *a6.i64) + (v17 + v17) * *a6.i64);
        }
      }
    }

    v75 = v36 + v35 - v63;
    *v29 = v75;
    result = xgboost::tree::TreeRefresher::Refresh(v14, a2);
    a3 = *(*(a4 + 160) + 20 * v27 + 8);
  }

  if (*(v14 + 93) == 1)
  {
    *(v31 + 16) = *(v14 + 20) * v28;
    *(v31 + 4) = -1;
  }

  return result;
}

uint64_t std::vector<xgboost::tree::GradStats>::__init_with_size[abi:ne200100]<xgboost::tree::GradStats*,xgboost::tree::GradStats*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D7BE1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<xgboost::tree::GradStats>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<xgboost::tree::GradStats>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<xgboost::tree::GradStats>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<xgboost::tree::GradStats>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<xgboost::tree::GradStats>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<xgboost::tree::GradStats>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<xgboost::tree::GradStats>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

uint64_t rabit::InvokeLambda(rabit *this, void *a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

__n128 std::__function::__func<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2},std::allocator<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883E3708;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2},std::allocator<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2}>,void ()(void)>::operator()(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  (****(a1 + 8))(**(a1 + 8));
  (*(***(a1 + 8) + 72))(&v3);
  v2[2] = v3;
  v2[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v2, 0);
}

void sub_274D7C79C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2},std::allocator<xgboost::tree::TreeRefresher::Update(xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>> *,xgboost::DMatrix *,std::vector<xgboost::RegTree *> const&)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::operator>>(void *a1, void *a2)
{
  a2[1] = *a2;
  v4 = MEMORY[0x277D85DE0];
  while (1)
  {
    v5 = std::istream::peek();
    v6 = v5;
    if (v5 <= 0xFF && (*(v4 + 4 * v5 + 60) & 0x400) != 0)
    {
      v9 = MEMORY[0x277C68D50](a1, __p);
      if ((*(v9 + *(*v9 - 24) + 32) & 5) == 0)
      {
        v11 = a2[1];
        v10 = a2[2];
        if (v11 >= v10)
        {
          v26 = *a2;
          v27 = v11 - *a2;
          v28 = v27 >> 2;
          v29 = (v27 >> 2) + 1;
          if (v29 >> 62)
          {
            std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
          }

          v30 = v10 - v26;
          if (v30 >> 1 > v29)
          {
            v29 = v30 >> 1;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
          v32 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v32);
          }

          *(4 * v28) = __p[0];
          v12 = 4 * v28 + 4;
          memcpy(0, v26, v27);
          v33 = *a2;
          *a2 = 0;
          a2[1] = v12;
          a2[2] = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v11 = __p[0];
          v12 = (v11 + 1);
        }

        a2[1] = v12;
      }

      return a1;
    }

    v7 = v5 << 24;
    std::istream::get();
    if (v7 == 671088640)
    {
      break;
    }

    if (v6 <= 0x7F)
    {
      if ((*(v4 + 4 * v6 + 60) & 0x4000) == 0)
      {
LABEL_9:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
        return a1;
      }
    }

    else if (!__maskrune(v6, 0x4000uLL))
    {
      goto LABEL_9;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  while (1)
  {
    v8 = std::istream::peek();
    if (v8 <= 0x7F)
    {
      break;
    }

    if (!__maskrune(v8, 0x4000uLL))
    {
      goto LABEL_16;
    }

LABEL_15:
    std::istream::get();
  }

  if ((*(v4 + 4 * v8 + 60) & 0x4000) != 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (std::istream::peek() == 41)
  {
    std::istream::get();
  }

  else
  {
LABEL_21:
    v13 = MEMORY[0x277C68D50](a1, &v37);
    if ((*(v13 + *(*v13 - 24) + 32) & 5) != 0)
    {
      goto LABEL_50;
    }

    v14 = __p[1];
    if (__p[1] >= v36)
    {
      v16 = __p[0];
      v17 = __p[1] - __p[0];
      v18 = (__p[1] - __p[0]) >> 2;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
      }

      v20 = v36 - __p[0];
      if ((v36 - __p[0]) >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__p, v21);
      }

      *(4 * v18) = v37;
      v15 = (4 * v18 + 4);
      memcpy(0, v16, v17);
      v22 = __p[0];
      __p[0] = 0;
      __p[1] = v15;
      v36 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *__p[1] = v37;
      v15 = v14 + 4;
    }

    __p[1] = v15;
    do
    {
      while (1)
      {
        v23 = std::istream::get();
        if (v23 <= 0x7F)
        {
          break;
        }

        if (!__maskrune(v23, 0x4000uLL))
        {
          goto LABEL_39;
        }
      }
    }

    while ((*(v4 + 4 * v23 + 60) & 0x4000) != 0);
LABEL_39:
    if (v23 << 24 == 1275068416)
    {
      LOBYTE(v23) = std::istream::get();
    }

    if (v23 == 44)
    {
      while (1)
      {
        v24 = std::istream::peek();
        if (v24 <= 0x7F)
        {
          if ((*(v4 + 4 * v24 + 60) & 0x4000) == 0)
          {
LABEL_47:
            if (v24 << 24 == 687865856)
            {
              std::istream::get();
              goto LABEL_50;
            }

            goto LABEL_21;
          }
        }

        else if (!__maskrune(v24, 0x4000uLL))
        {
          goto LABEL_47;
        }

        std::istream::get();
      }
    }

    if (v23 == 41)
    {
LABEL_50:
      v25 = *a2;
      if (*a2)
      {
        a2[1] = v25;
        operator delete(v25);
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      *a2 = *__p;
      a2[2] = v36;
    }

    else
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  return a1;
}

void sub_274D7CCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ParseInteractionConstraint(uint64_t *a1)
{
  v1 = a1[1];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  xgboost::Json::Load();
}

void sub_274D7D26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, atomic_uint *a19)
{
  if (a19)
  {
    if (atomic_fetch_add_explicit(a19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::HingeObj::SaveConfig(xgboost::obj::HingeObj *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "binary:hinge");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274D7D540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::HingeObj::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = **(a3 + 24);
  v10 = *(*(a3 + 24) + 8);
  LODWORD(v43) = 0;
  v11 = v10 - v9;
  v44 = v11 >> 2;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v44, &v43);
  }

  v44 = ((*a2)[1] - **a2) >> 2;
  v43 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v44 != v43)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v44, &v43);
  }

  v12 = ((*a2)[1] - **a2) >> 2;
  v44 = ((*a2)[1] - **a2) >> 2;
  v13 = *(a3 + 72);
  v15 = *v13;
  v14 = v13[1];
  v16 = v14 - *v13;
  if (v16)
  {
    v43 = v16 >> 2;
    if (v16 >> 2 != v12)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v43, &v44);
    }

    v12 = v44;
  }

  v45.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v12, &v45);
  if ((*(*(a1 + 8) + 24) & 0x80000000) != 0)
  {
    v20 = v44;
    v45.__ptr_ = 0;
    v46.__m_.__sig = 850045863;
    memset(v46.__m_.__opaque, 0, sizeof(v46.__m_.__opaque));
    if (v44)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = **a5;
        v24 = (*a5)[1];
        if (v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24 == 0;
        }

        if (!v25)
        {
          goto LABEL_47;
        }

        v27 = **a2;
        v26 = (*a2)[1];
        if (!v27 && v26 != 0)
        {
          goto LABEL_47;
        }

        v29 = *(a3 + 24);
        v30 = *v29;
        v31 = v29[1];
        if (!v30 && v31 != 0)
        {
          goto LABEL_47;
        }

        v33 = *(a3 + 72);
        v35 = *v33;
        v34 = v33[1];
        v36 = v35 || v34 == 0;
        if (!v36 || (v26 - v27) >> 2 <= v22)
        {
          goto LABEL_47;
        }

        if (v14 == v15)
        {
          v37 = 1.0;
        }

        else
        {
          if ((v34 - v35) >> 2 <= v22)
          {
            goto LABEL_47;
          }

          v37 = *(v35 + 4 * v22);
        }

        if ((v31 - v30) >> 2 <= v22 || (v24 - v23) >> 3 <= v22)
        {
LABEL_47:
          std::terminate();
        }

        v38 = *(v30 + 4 * v22) * 2.0 + -1.0;
        v39 = 1.1755e-38;
        if ((*(v27 + 4 * v22) * v38) < 1.0)
        {
          v39 = v37;
        }

        v40 = -(v38 * v37);
        if ((*(v27 + 4 * v22) * v38) >= 1.0)
        {
          v40 = 0.0;
        }

        v41 = (v23 + v21);
        *v41 = v40;
        v41[1] = v39;
        ++v22;
        v21 += 8;
      }

      while (v20 != v22);
    }

    dmlc::OMPException::Rethrow(&v45);
    std::mutex::~mutex(&v46);
    std::exception_ptr::~exception_ptr(&v45);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v45);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v18 = dmlc::LogMessageFatal::GetEntry(&v45);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v19, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v45);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_274D7DA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::exception_ptr a11)
{
  std::mutex::~mutex((v11 + 8));
  std::exception_ptr::~exception_ptr(&a11);
  _Unwind_Resume(a1);
}

void xgboost::obj::HingeObj::PredTransform(uint64_t a1, float ***a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = (*a2)[1];
  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  if (v3 != v2)
  {
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (v4)
    {
      v5 = v3 - v2;
      while (v5)
      {
        if (*v2 <= 0.0)
        {
          v6 = 0.0;
        }

        else
        {
          v6 = 1.0;
        }

        *v2++ = v6;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }
    }

    std::terminate();
  }

LABEL_13:
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_274D7DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9, uint64_t a10)
{
  std::mutex::~mutex(&a10);
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t dmlc::Registry<xgboost::GradientBoosterReg>::~Registry(uint64_t a1)
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

        std::__function::__value_func<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__value_func[abi:ne200100](v5 + 72);
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

void xgboost::GradientBooster::Create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dmlc::Registry<xgboost::GradientBoosterReg>::Get();
  dmlc::Registry<xgboost::GradientBoosterReg>::Get();
  v6 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(&qword_280AF72E0, a1);
  if (v6 == &qword_280AF72E8 || (v7 = v6[7]) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbm.cc", 24);
    v9 = dmlc::LogMessageFatal::GetEntry(&v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown gbm type ", 17);
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
  }

  else
  {

    std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator()(v7 + 72, a3, a2);
  }
}

uint64_t std::function<xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t xgboost::detail::ToCharsFloatImpl(xgboost::detail *this, float a2, char *a3)
{
  v4 = LODWORD(a2) >> 31;
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = (LODWORD(a2) >> 23);
  if (v6 == 255 || !(v6 | v5))
  {
    if (v5)
    {
      *(this + 2) = 78;
      *this = 24910;
      return 3;
    }

    else
    {
      if (v4 == 1)
      {
        *this = 45;
      }

      v9 = this + v4;
      if ((LODWORD(a2) >> 23))
      {
        *v9 = 0x7974696E69666E49;
        v10 = v4 == 0;
        v11 = 8;
      }

      else
      {
        v9[2] = 48;
        *v9 = 17712;
        v10 = v4 == 0;
        v11 = 3;
      }

      if (v10)
      {
        return v11;
      }

      else
      {
        return v11 + 1;
      }
    }
  }

  else
  {
    v7 = xgboost::detail::PowerBaseComputer::Binary2Decimal(v5 | (v6 << 32));

    return xgboost::detail::RyuPrinter::PrintBase10Float(v7, v4, this);
  }
}

unint64_t xgboost::detail::PowerBaseComputer::Binary2Decimal(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    v1 = a1 | 0x800000;
  }

  else
  {
    v1 = a1;
  }

  if (HIDWORD(a1))
  {
    v2 = (HIDWORD(a1) - 152);
  }

  else
  {
    v2 = 4294967145;
  }

  v3 = (v1 & 1) == 0;
  if (a1 >> 33)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v8 = 0;
  v6 = xgboost::detail::PowerBaseComputer::ToDecimalBase(v3, v5, v2 | ((~v5 + 4 * v1) << 32), (4 * v1) | ((((4 * v1) | 2u) >> 1) << 33), v9, &v8 + 1, &v8);
  return xgboost::detail::PowerBaseComputer::ShortestRepresentation(HIBYTE(v8), v8, v6, v3, v9[0], v9[1]);
}

uint64_t xgboost::detail::RyuPrinter::PrintBase10Float(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = a1;
  if (a2)
  {
    *a3 = 45;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (a1 > 0x3B9AC9FF)
  {
    __assert_rtn("OutputLength", "charconv.cc", 548, "v < Tens(9)");
  }

  if (a1 >= 0x5F5E100)
  {
    v5 = 9;
    goto LABEL_20;
  }

  if (a1 > 0x98967F)
  {
    v5 = 8;
    goto LABEL_20;
  }

  if (a1 > 0xF423F)
  {
    v5 = 7;
    goto LABEL_20;
  }

  if (a1 >> 5 > 0xC34)
  {
    v5 = 6;
    goto LABEL_20;
  }

  if (a1 >> 4 > 0x270)
  {
    v5 = 5;
LABEL_20:
    v6 = 0;
    v7 = &a3[v4];
    v8 = &v7[v5];
    do
    {
      v9 = v3;
      v3 /= 0x2710u;
      v10 = v9 - 10000 * v3;
      v11 = &v8[-v6];
      *(v11 - 1) = *(&xgboost::detail::kItoaLut + v10 % 0x64u);
      *(v11 - 3) = *(&xgboost::detail::kItoaLut + v10 / 0x64u);
      v6 += 4;
    }

    while (v9 >= 0x5F5E100);
    goto LABEL_22;
  }

  if (a1 > 0x3E7)
  {
    v5 = 4;
  }

  else if (a1 > 0x63)
  {
    v5 = 3;
  }

  else if (a1 < 0xA)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = 0;
  v7 = &a3[v4];
  v8 = &v7[v5];
LABEL_22:
  if (v3 >= 0x64)
  {
    *&v8[~v6] = *(&xgboost::detail::kItoaLut + v3 % 0x64u);
    v6 |= 2u;
    v3 = v3 / 0x64u;
  }

  if (v3 < 0xA)
  {
    v13 = v3 | 0x30;
  }

  else
  {
    v12 = 2 * v3;
    a3[v5 + v4 - v6] = *(&xgboost::detail::kItoaLut + v12 + 1);
    v13 = *(&xgboost::detail::kItoaLut + v12);
  }

  *v7 = v13;
  if (v5 < 2)
  {
    v14 = 1;
  }

  else
  {
    v7[1] = 46;
    v14 = v5 + 1;
  }

  v15 = v14 + v4;
  v16 = v15 + 1;
  a3[v15] = 69;
  v17 = __OFADD__(v5, HIDWORD(a1));
  v18 = v5 + HIDWORD(a1);
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    a3[v16] = 45;
    LODWORD(v16) = v15 + 2;
    v19 = 1 - v18;
  }

  else
  {
    v19 = v18 - 1;
  }

  if (v19 < 0xA)
  {
    result = (v16 + 1);
    a3[v16] = v19 | 0x30;
  }

  else
  {
    *&a3[v16] = *(&xgboost::detail::kItoaLut + v19);
    return (v16 + 2);
  }

  return result;
}

_BYTE *xgboost::detail::ItoaUnsignedImpl(_BYTE *this, char *a2, unint64_t a3)
{
  if (a3 >= 0x64)
  {
    v4 = a2 - 1;
    do
    {
      v3 = a3 / 0x64;
      v5 = &xgboost::detail::kItoaLut + 2 * (a3 % 0x64);
      this[v4] = v5[1];
      this[v4 - 1] = *v5;
      v4 -= 2;
      v6 = a3 >> 4;
      a3 /= 0x64uLL;
    }

    while (v6 > 0x270);
  }

  else
  {
    v3 = a3;
  }

  if (v3 < 0xA)
  {
    v8 = v3 | 0x30;
  }

  else
  {
    v7 = &xgboost::detail::kItoaLut + 2 * v3;
    v8 = *v7;
    this[1] = v7[1];
  }

  *this = v8;
  return this;
}

char *xgboost::detail::ToCharsUnsignedImpl(xgboost::detail *this, xgboost::detail *a2, char *a3)
{
  v3 = a2;
  if (a3 >= 0xA)
  {
    v5 = 4;
    v6 = a3;
    while (1)
    {
      if (v6 < 0x64)
      {
        v5 = (v5 - 2);
        goto LABEL_11;
      }

      if (v6 < 0x3E8)
      {
        break;
      }

      if (v6 >> 4 < 0x271)
      {
        goto LABEL_11;
      }

      v7 = v6 >> 5;
      v6 /= 0x2710uLL;
      v5 = (v5 + 4);
      if (v7 <= 0xC34)
      {
        v5 = (v5 - 3);
        goto LABEL_11;
      }
    }

    v5 = (v5 - 1);
  }

  else
  {
    v5 = 1;
  }

LABEL_11:
  if (a2 != this)
  {
    xgboost::detail::ItoaUnsignedImpl(this, v5, a3);
    return this + v5;
  }

  return v3;
}

_BYTE *xgboost::detail::FromCharFloatImpl(_BYTE *this, const char *a2, float *a3, float *a4)
{
  if (!a2)
  {
    return this;
  }

  v4 = *this;
  v5 = v4 == 45;
  if (v5 >= a2)
  {
    v7 = 0;
    v6 = 0;
    v12 = 0;
    v9 = a2;
LABEL_14:
    LODWORD(v8) = a2;
    goto LABEL_15;
  }

  v6 = 0;
  v7 = 0;
  v8 = v4 == 45;
  v9 = a2;
  while (1)
  {
    v10 = this[v8];
    if (v10 == 46)
    {
      if (v9 != a2)
      {
        goto LABEL_40;
      }

      v9 = v8;
      goto LABEL_11;
    }

    if ((v10 - 58) < 0xF6u)
    {
      break;
    }

    if (v6 > 8)
    {
LABEL_40:
      this += v8;
      return this;
    }

    v7 = 10 * v7 + (v10 - 48);
    if (v7)
    {
      ++v6;
    }

LABEL_11:
    if (a2 == ++v8)
    {
      v11 = 0;
      LODWORD(v8) = a2;
      goto LABEL_21;
    }
  }

  if ((this[v8] | 0x20) != 0x65)
  {
    v12 = 0;
    v5 = v8;
    goto LABEL_14;
  }

  v5 = v8 + 1;
  if (v8 + 1 < a2 && ((v23 = this[v5], v23 == 43) || v23 == 45))
  {
    v12 = v23 == 45;
    v5 = v8 + 2;
  }

  else
  {
    v12 = 0;
  }

  v24 = a2 - v5;
  if (a2 <= v5)
  {
LABEL_15:
    if (v5 < a2)
    {
      this += v5;
      return this;
    }

    v11 = 0;
LABEL_19:
    if (v12)
    {
      v11 = -v11;
    }

LABEL_21:
    if (v9 >= v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v8 + ~v9;
    }

    if (!v7 || (v14 = v11 - v13, v15 = v11 - v13 + v6, v15 <= -46))
    {
      this = 0;
      v16 = -0.0;
      if (v4 != 45)
      {
        v16 = 0.0;
      }

LABEL_70:
      *a3 = v16;
      return this;
    }

    if (v15 >= 40)
    {
LABEL_68:
      this = 0;
      v16 = INFINITY;
      if (v4 == 45)
      {
        v16 = -INFINITY;
      }

      goto LABEL_70;
    }

    v17 = __clz(v7);
    if ((v14 & 0x80000000) != 0)
    {
      v26 = -v14;
      if (-v14 < 0xDC9)
      {
        v18 = v14 - v17 + ~((-1217359 * v14) >> 19) + 7;
        v27 = v18 - v14;
        v21 = (((xgboost::detail::RyuPowLogUtils::kFloatPow5InvSplit[v26] * v7) >> 32) + HIDWORD(xgboost::detail::RyuPowLogUtils::kFloatPow5InvSplit[v26]) * v7) >> (v18 - v14 + ((-1217359 * v14) >> 19) + 27);
        if (v18 >= v14)
        {
          v22 = 0;
          if (v27 > 31 || __clz(__rbit32(v7)) < v27)
          {
LABEL_67:
            v30 = v18 - __clz(v21) + 158;
            if (v30 < 255)
            {
              if (v30 <= 1)
              {
                v31 = 1;
              }

              else
              {
                v31 = v30;
              }

              v32 = v31 - v18;
              v33 = v32 + 106;
              if (v32 - 150 < 0)
              {
                __assert_rtn("FromCharFloatImpl", "charconv.cc", 914, "shift >= 0");
              }

              v34 = v32 + 105;
              v35 = v21 >> v34;
              v36 = (v21 & ~(-1 << v34)) == 0;
              v37 = v22 ^ 1;
              if (!v36)
              {
                v37 = 1;
              }

              v38 = v21 >> v33;
              v39 = v38 & 1;
              if (v37)
              {
                v39 = 1;
              }

              if ((v35 & 1) == 0)
              {
                v39 = 0;
              }

              v40 = v39 + v38;
              if (v40 >= 0x1000001)
              {
                __assert_rtn("FromCharFloatImpl", "charconv.cc", 929, "f_m2 <= (1u << (IEEE754::kFloatMantissaBits + 1))");
              }

              this = 0;
              v41 = v30 & ~(v30 >> 31);
              v42 = v4 == 45;
              v43 = v40 & 0x7FFFFF;
              if (v43)
              {
                v39 = 0;
              }

              *a3 = (v42 << 31) | ((v39 + v41) << 23) | v43;
              return this;
            }

            goto LABEL_68;
          }
        }

        if (-858993459 * v7 <= 0x33333333)
        {
          v28 = 0;
          do
          {
            v7 /= 5u;
            ++v28;
          }

          while (-858993459 * v7 < 0x33333334);
        }

        else
        {
          v28 = 0;
        }

        v29 = v28 >= v26;
LABEL_64:
        v22 = v29;
        goto LABEL_67;
      }
    }

    else if (v14 < 0xDC9)
    {
      v18 = v14 - v17 + ((1217359 * v14) >> 19) + 7;
      v19 = v18 - v14;
      v20 = v18 - v14 + ~((1217359 * v14) >> 19);
      if (v20 <= -62)
      {
        __assert_rtn("FromCharFloatImpl", "charconv.cc", 857, "j >= 0");
      }

      v21 = (((xgboost::detail::RyuPowLogUtils::kFloatPow5Split[v14] * v7) >> 32) + HIDWORD(xgboost::detail::RyuPowLogUtils::kFloatPow5Split[v14]) * v7) >> (v20 + 29);
      if (v18 < v14)
      {
        v22 = 1;
        goto LABEL_67;
      }

      if (v19 > 31)
      {
        v22 = 0;
        goto LABEL_67;
      }

      v29 = __clz(__rbit32(v7)) >= v19;
      goto LABEL_64;
    }

    __assert_rtn("Log2Pow5", "charconv.cc", 238, "e <= 3528");
  }

  v25 = 0;
  v11 = 0;
  this += v5;
  while ((*this - 58) >= 0xF6u && v25 <= 3)
  {
    v11 = 10 * v11 + (*this - 48);
    if (v11)
    {
      ++v25;
    }

    ++this;
    if (!--v24)
    {
      goto LABEL_19;
    }
  }

  return this;
}

uint64_t xgboost::detail::PowerBaseComputer::ToDecimalBase(int a1, int a2, unint64_t a3, unint64_t a4, _DWORD *a5, BOOL *a6, char *a7)
{
  v7 = HIDWORD(a3);
  v8 = a4;
  v9 = HIDWORD(a4);
  if ((a3 & 0x80000000) != 0)
  {
    v21 = -a3;
    if (v21 > 0x8000)
    {
      __assert_rtn("Log10Pow5", "charconv.cc", 311, "expoent <= 1 << 15");
    }

    v22 = (0xB2EFB2BD8218 * v21) >> 48;
    v23 = v21 - v22;
    v24 = xgboost::detail::RyuPowLogUtils::kFloatPow5Split[(v21 - v22)];
    v25 = (((v24 * HIDWORD(a4)) >> 32) + HIDWORD(v24) * HIDWORD(a4)) >> (v22 + 28 - (((0x949A784BCD1BLL * (v21 - v22)) >> 32) >> 14));
    a5[2] = (((v24 * a4) >> 32) + HIDWORD(v24) * a4) >> (v22 + 28 - (((0x949A784BCD1BLL * (v21 - v22)) >> 32) >> 14));
    a5[3] = v25;
    v26 = (((v24 * HIDWORD(a3)) >> 32) + HIDWORD(v24) * HIDWORD(a3)) >> (v22 + 28 - (((0x949A784BCD1BLL * (v21 - v22)) >> 32) >> 14));
    *a5 = v22 + a3;
    a5[1] = v26;
    if (v21 >= 2)
    {
      if ((v25 - 1) / 0xAu <= v26 / 0xA)
      {
        v31 = xgboost::detail::RyuPowLogUtils::kFloatPow5Split[v23 + 1];
        v20 = ((((v31 * a4) >> 32) + HIDWORD(v31) * a4) >> (v22 + 28 + ~((0x949A784BCD1BLL * (v23 + 1)) >> 46))) % 0xA;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      if (v22 != 1)
      {
        if (v21 > 0x2C)
        {
          return v20;
        }

        v29 = __clz(__rbit32(a4)) >= v22 - 1;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    *a7 = 1;
    if (a1)
    {
      v32 = a2 == 1;
LABEL_37:
      *a6 = v32;
      return v20;
    }

    v33 = v25 - 1;
LABEL_41:
    a5[3] = v33;
    return v20;
  }

  if (a3 > 0x8000)
  {
    __assert_rtn("Log10Pow2", "charconv.cc", 302, "e <= 1 << 15");
  }

  v10 = a3;
  v11 = (0x9A209A84FBCFLL * a3) >> 49;
  v12 = v11 - a3;
  v13 = xgboost::detail::RyuPowLogUtils::kFloatPow5InvSplit[v11];
  v14 = HIDWORD(v13);
  v15 = v13;
  v16 = v12 + ((0x949A784BCD1BLL * v11) >> 46) + 27;
  v17 = (((v13 * v7) >> 32) + HIDWORD(v13) * v7) >> v16;
  *a5 = v11;
  a5[1] = v17;
  v18 = (((v13 * a4) >> 32) + HIDWORD(v13) * a4) >> v16;
  v19 = (((v15 * HIDWORD(a4)) >> 32) + v14 * HIDWORD(a4)) >> v16;
  a5[2] = v18;
  a5[3] = v19;
  if (v10 < 4)
  {
    LOBYTE(v20) = 0;
LABEL_14:
    if ((-858993459 * a4) > 0x33333333)
    {
      if (a1)
      {
        if ((-858993459 * v7) <= 0x33333333)
        {
          v27 = 0;
          do
          {
            LODWORD(v7) = v7 / 5;
            ++v27;
          }

          while ((-858993459 * v7) < 0x33333334);
        }

        else
        {
          v27 = 0;
        }

        v32 = v27 >= v11;
        goto LABEL_37;
      }

      if ((-858993459 * HIDWORD(a4)) <= 0x33333333)
      {
        v30 = 0;
        do
        {
          LODWORD(v9) = v9 / 5;
          ++v30;
        }

        while ((-858993459 * v9) < 0x33333334);
      }

      else
      {
        v30 = 0;
      }

      v33 = v19 - (v30 >= v11);
      goto LABEL_41;
    }

    v28 = 0;
    do
    {
      v8 /= 5u;
      ++v28;
    }

    while (-858993459 * v8 < 0x33333334);
    v29 = v28 >= v11;
LABEL_30:
    v34 = v29;
    *a7 = v34;
    return v20;
  }

  if ((v19 - 1) / 0xAu <= v17 / 0xA)
  {
    v20 = ((((xgboost::detail::RyuPowLogUtils::kFloatPow5InvSplit[(v11 - 1)] * a4) >> 32) + HIDWORD(xgboost::detail::RyuPowLogUtils::kFloatPow5InvSplit[(v11 - 1)]) * a4) >> (v12 + ((0x949A784BCD1BLL * (v11 - 1)) >> 46) + 26)) % 0xA;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  if (v10 <= 0x21)
  {
    goto LABEL_14;
  }

  return v20;
}

unint64_t xgboost::detail::PowerBaseComputer::ShortestRepresentation(int a1, int a2, unsigned int a3, int a4, unint64_t a5, uint64_t a6)
{
  v6 = HIDWORD(a5);
  v7 = HIDWORD(a6) / 0xA;
  v8 = HIDWORD(a5) / 0xA;
  if (a1 & 1) != 0 || (a2)
  {
    if (v7 <= v8)
    {
      v9 = 0;
      v14 = a6;
    }

    else
    {
      v9 = 0;
      v11 = HIDWORD(a5) / 0xA;
      v12 = HIDWORD(a5);
      do
      {
        LODWORD(v6) = v11;
        HIDWORD(v13) = -858993459 * v12;
        LODWORD(v13) = -858993459 * v12;
        a1 = a1 & ((v13 >> 1) < 0x1999999A);
        a2 = a2 & (a3 == 0);
        v14 = a6 / 0xA;
        a3 = a6 % 0xA;
        ++v9;
        v7 /= 0xAu;
        v11 /= 0xAu;
        LODWORD(a6) = a6 / 0xA;
        LODWORD(v12) = v6;
      }

      while (v7 > v11);
    }

    if (a1)
    {
      v15 = v6 % 0xA == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      do
      {
        a2 = a2 & (a3 == 0);
        LODWORD(a6) = v14 / 0xA;
        a3 = v14 % 0xA;
        LODWORD(v6) = v6 / 0xA;
        ++v9;
        HIDWORD(v16) = -858993459 * v6;
        LODWORD(v16) = -858993459 * v6;
        v14 /= 0xAu;
      }

      while ((v16 >> 1) < 0x1999999A);
    }

    else
    {
      LODWORD(a6) = v14;
    }

    v17 = (a6 == v6) & ~(a1 & a4) | ((a3 != 5) | ~a2 | a6) & (a3 > 4);
  }

  else
  {
    if (v7 <= v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = a6;
        LODWORD(v6) = v8;
        LODWORD(a6) = a6 / 0xA;
        ++v9;
        v7 /= 0xAu;
        v8 /= 0xAu;
      }

      while (v7 > v8);
      a3 = (v10 - 10 * a6);
    }

    v17 = a6 == v6 || a3 > 4;
  }

  return (a6 + v17) | ((v9 + a5) << 32);
}

void xgboost::tree::TreeSyncher::Update(rabit::engine *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  Engine = rabit::engine::GetEngine(a1);
  v6 = (*(*Engine + 72))(Engine);
  if (v6 != 1)
  {
    memset(&v23, 0, sizeof(v23));
    v21[0] = &unk_2883E1018;
    v21[1] = &v23;
    v22 = 0;
    v7 = rabit::engine::GetEngine(v6);
    v8 = (*(*v7 + 64))(v7);
    if (!v8)
    {
      v19 = *a4;
      v20 = a4[1];
      while (v19 != v20)
      {
        v8 = xgboost::RegTree::Save(*v19++, v21);
      }
    }

    v22 = 0;
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v24 = size;
    v10 = rabit::engine::GetEngine(v8);
    v11 = (*(*v10 + 16))(v10, &v24, 8, 0);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v23.__r_.__value_.__l.__size_;
    }

    if (v12 != v24)
    {
      std::string::resize(&v23, v24, 0);
      v12 = v24;
    }

    if (v12)
    {
      v13 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
      v14 = v23.__r_.__value_.__r.__words[0];
      v15 = rabit::engine::GetEngine(v11);
      if (v13 >= 0)
      {
        v16 = &v23;
      }

      else
      {
        v16 = v14;
      }

      (*(*v15 + 16))(v15, v16, v12, 0);
    }

    v18 = *a4;
    v17 = a4[1];
    while (v18 != v17)
    {
      xgboost::RegTree::Load(*v18++, v21);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274D7F0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::SoftmaxMultiClassObj::~SoftmaxMultiClassObj(xgboost::obj::SoftmaxMultiClassObj *this)
{
  *this = &unk_2883E3A00;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

{
  *this = &unk_2883E3A00;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::obj::SoftmaxMultiClassObj::LoadConfig(xgboost::obj::SoftmaxMultiClassObj *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "softmax_multiclass_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v4);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v19[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v18, v6 + 4);
      v5 = std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  if (*(this + 20) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6978, this + 20, v18, v19, 0, &v15, 0);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6978, this + 20, v18, v19, &v15, 0);
    *(this + 20) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v18, v19[0]);
  v18 = &v15;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D7F4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  *(v20 - 56) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v20 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::obj::SoftmaxMultiClassObj::SaveConfig(xgboost::obj::SoftmaxMultiClassObj *this, xgboost::Json *a2)
{
  if (*(this + 16) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v3, "multi:softprob");
    v5 = &unk_2883E6F38;
    v6 = 0;
    *v7 = *v3;
    v8 = v4;
    v3[0] = 0;
    v3[1] = 0;
    v4 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "name");
    (*(**a2 + 24))(*a2, &__p);
    xgboost::Json::operator=();
  }

  std::string::basic_string[abi:ne200100]<0>(v3, "multi:softmax");
  v5 = &unk_2883E6F38;
  v6 = 0;
  *v7 = *v3;
  v8 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void sub_274D7F864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::SoftmaxMultiClassObj::Configure(_BYTE *a1, uint64_t *a2)
{
  v3 = a1 + 20;
  if (a1[20] == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6978, v3, *a2, a2[1], 0, &v4, 0);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    xgboost::obj::SoftmaxMultiClassParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6978, v3, *a2, a2[1], &v4, 0);
    *v3 = 1;
  }

  v7 = &v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_274D7F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::obj::SoftmaxMultiClassObj::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = *(*(a3 + 24) + 8) - **(a3 + 24);
  if (v5)
  {
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = ((*a2)[1] - **a2) >> 2;
    v87 = *(a1 + 24);
    v11 = v87;
    if (v10 != (v5 >> 2) * v87)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(__x);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/multiclass_obj.cu", 61);
      v69 = dmlc::LogMessageFatal::GetEntry(__x);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Check failed: preds.Size() == (static_cast<size_t>(param_.num_class) * info.labels.Size())", 90);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ": ", 2);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "SoftmaxMultiClassObj: label size and pred size does not match.\n", 63);
      v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "label.Size() * num_class: ", 26);
      v74 = MEMORY[0x277C68E50](v73, ((*(*(v7 + 24) + 8) - **(v7 + 24)) >> 2) * *(v9 + 24));
      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "\n", 1);
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "num_class: ", 11);
      v77 = MEMORY[0x277C68E20](v76, *(v9 + 24));
      v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "\n", 1);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "preds.Size(): ", 14);
      MEMORY[0x277C68E50](v79, ((*v8)[1] - **v8) >> 2);
      dmlc::LogMessageFatal::~LogMessageFatal(__x);
      v10 = ((*v8)[1] - **v8) >> 2;
      v11 = *(v9 + 24);
      v87 = *(v9 + 24);
    }

    v12 = *(*(v9 + 8) + 24);
    v13 = *(v9 + 32);
    __x[0] = 0;
    std::vector<int>::resize(v13, 1uLL, __x);
    v14 = ((*v8)[1] - **v8) >> 2;
    *__x = 0;
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v14, __x);
    v15 = **(v9 + 32);
    v16 = *(*(v9 + 32) + 8) - v15;
    if (v16 >= 1)
    {
      memset_pattern16(v15, &unk_274E1F3C0, v16);
    }

    v89 = v10 / v11;
    v85 = **(v7 + 72);
    v86 = *(*(v7 + 72) + 8);
    v17 = v86 - v85;
    v81 = a5;
    if (v86 != v85)
    {
      v18 = v17 >> 2;
      if (v17 >> 2 != v89)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](__x);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, " (", 2);
        v20 = MEMORY[0x277C68E50](v19, v18);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " vs. ", 5);
        v22 = MEMORY[0x277C68E60](v21, v89);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ") ", 2);
        operator new();
      }
    }

    if (v12 < 0)
    {
      *__x = 0;
      v98.__m_.__sig = 850045863;
      memset(v98.__m_.__opaque, 0, sizeof(v98.__m_.__opaque));
      if (v10 >= v11)
      {
        v32 = 0;
        v33 = 0;
        v82 = 8 * v11;
        v34 = 4;
        v80 = v9;
        v83 = v8;
        v84 = v7;
        v93 = v11;
        while (1)
        {
          v36 = **a5;
          v35 = (*a5)[1];
          if (v36)
          {
            v37 = 1;
          }

          else
          {
            v37 = v35 == 0;
          }

          if (!v37)
          {
            goto LABEL_68;
          }

          v92 = v34;
          v38 = *(v7 + 24);
          v39 = *v38;
          v40 = v38[1];
          if (!*v38 && v40 != 0)
          {
            goto LABEL_68;
          }

          v43 = **v8;
          v42 = (*v8)[1];
          v94[0] = (v42 - v43) >> 2;
          v94[1] = v43;
          if (!v43 && v42 != 0)
          {
            goto LABEL_68;
          }

          v90 = v35;
          v45 = *(v7 + 72);
          v46 = *v45;
          v47 = v45[1];
          if (!*v45 && v47 != 0)
          {
            goto LABEL_68;
          }

          v49 = *(v9 + 32);
          v51 = *v49;
          v50 = v49[1];
          if (!v51)
          {
            if (v50)
            {
              goto LABEL_68;
            }
          }

          v88 = v50;
          v91 = v51;
          xgboost::common::Span<float,18446744073709551615ul>::subspan(v94, v33 * v93, v93, &v95);
          v52 = v95;
          if (v95)
          {
            v53 = 0;
            v54 = v96;
            v55 = 1.1755e-38;
            do
            {
              v55 = fmaxf(v96[v53++], v55);
            }

            while (v95 != v53);
            v56 = 0.0;
            v57 = v95;
            do
            {
              v58 = *v54++;
              v56 = v56 + expf(v58 - v55);
              --v57;
            }

            while (v57);
            v59 = v56;
            v9 = v80;
            a5 = v81;
          }

          else
          {
            v59 = 0.0;
            v55 = 1.1755e-38;
          }

          if ((v40 - v39) >> 2 <= v33)
          {
            goto LABEL_68;
          }

          v60 = *(v39 + 4 * v33);
          if (v60 < 0.0 || v60 >= v87)
          {
            if (v88 == v91)
            {
              goto LABEL_68;
            }

            *v91 = 0;
            v60 = 0.0;
          }

          if (v86 == v85)
          {
            v62 = 1.0;
          }

          else
          {
            if ((v47 - v46) >> 2 <= v33)
            {
              goto LABEL_68;
            }

            v62 = *(v46 + 4 * v33);
          }

          if (v87 >= 1)
          {
            break;
          }

LABEL_66:
          ++v33;
          v8 = v83;
          v34 = v92 + v82;
          v32 += v93;
          v7 = v84;
          if (v33 == v89)
          {
            goto LABEL_12;
          }
        }

        v63 = 0;
        v64 = (v90 - v36) >> 3;
        v65 = (v36 + v92);
        while (v52 != v63 && v64 > v32 + v63)
        {
          v66 = expf(v96[v63] - v55) / v59;
          v67 = v66 + -1.0;
          if (v60 != v63)
          {
            v67 = v66;
          }

          *(v65 - 1) = v62 * v67;
          *v65 = fmaxf(v62 * ((v66 + v66) * (1.0 - v66)), 1.0e-16);
          ++v63;
          v65 += 2;
          if (v93 == v63)
          {
            goto LABEL_66;
          }
        }

LABEL_68:
        std::terminate();
      }

LABEL_12:
      dmlc::OMPException::Rethrow(__x);
      std::mutex::~mutex(&v98);
      std::exception_ptr::~exception_ptr(__x);
    }

    else
    {
      v23 = dmlc::LogMessageFatal::GetEntry(__x);
      dmlc::LogMessageFatal::Entry::Init(v23, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
      v24 = dmlc::LogMessageFatal::GetEntry(__x);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Not part of device code. WITH_CUDA: ", 36);
      MEMORY[0x277C68DF0](v25, 0);
      dmlc::LogMessageFatal::~LogMessageFatal(__x);
    }

    v26 = *(v9 + 32);
    v27 = *v26;
    v28 = *(v26 + 8);
    if (*v26 != v28)
    {
      do
      {
        if (*v27 != 1)
        {
          v29 = dmlc::LogMessageFatal::GetEntry(__x);
          dmlc::LogMessageFatal::Entry::Init(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/multiclass_obj.cu", 123);
          v30 = dmlc::LogMessageFatal::GetEntry(__x);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "SoftmaxMultiClassObj: label must be in [0, num_class).", 54);
          dmlc::LogMessageFatal::~LogMessageFatal(__x);
        }

        ++v27;
      }

      while (v27 != v28);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_274D80258(_Unwind_Exception *a1)
{
  std::mutex::~mutex(&v3);
  std::exception_ptr::~exception_ptr(&v2);
  _Unwind_Resume(a1);
}

void sub_274D802A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  MEMORY[0x277C69180](v30, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(&a30);
  _Unwind_Resume(a1);
}

void xgboost::obj::SoftmaxMultiClassObj::PredTransform(uint64_t a1, uint64_t **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = ((*a2)[1] - **a2) >> 2;
  if (*(a1 + 16) != 1)
  {
    xgboost::HostDeviceVector<float>::HostDeviceVector();
  }

  v6 = xmmword_274E1F3B0;
  v7 = v3 / v2;
  v8 = 1;
  LODWORD(v5.__ptr_) = v2;
  v9 = 0xFFFFFFFF00000001;
  xgboost::common::Transform<false>::Evaluator<xgboost::obj::SoftmaxMultiClassObj::Transform(xgboost::HostDeviceVector<float> *,BOOL)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>)#1}>::Eval<xgboost::HostDeviceVector<float> *>(&v5, a2);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_274D805EC()
{
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr(&v1);
  JUMPOUT(0x274D8063CLL);
}

void xgboost::obj::SoftmaxMultiClassObj::EvalTransform(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 24);
  v3 = (((*a2)[1] - **a2) >> 2) / v2;
  v5 = xmmword_274E1F3B0;
  v6 = v3;
  v7 = 1;
  v4 = v2;
  v8 = 0xFFFFFFFF00000001;
  xgboost::common::Transform<false>::Evaluator<xgboost::obj::SoftmaxMultiClassObj::Transform(xgboost::HostDeviceVector<float> *,BOOL)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>)#1}>::Eval<xgboost::HostDeviceVector<float> *>(&v4, a2);
}

void xgboost::common::Transform<false>::Evaluator<xgboost::obj::SoftmaxMultiClassObj::Transform(xgboost::HostDeviceVector<float> *,BOOL)::{lambda(unsigned long,xgboost::common::Span<float,18446744073709551615ul>)#1}>::Eval<xgboost::HostDeviceVector<float> *>(int *a1, uint64_t **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1[11] < 0)
  {
    v6 = *a1;
    v7 = *(a1 + 3);
    LODWORD(v24) = a1[10];
    LODWORD(v23[0]) = 1;
    if (v24 < 1)
    {
      dmlc::LogCheckFormat<int,int>(&v24, v23);
    }

    v26.__ptr_ = 0;
    v27.__m_.__sig = 850045863;
    memset(v27.__m_.__opaque, 0, sizeof(v27.__m_.__opaque));
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = **a2;
        v9 = (*a2)[1];
        v23[0] = (v9 - v10) >> 2;
        v23[1] = v10;
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = v9 == 0;
        }

        if (!v11 || (xgboost::common::Span<float,18446744073709551615ul>::subspan(v23, i * v6, v6, &v24), (v12 = v24) == 0))
        {
LABEL_24:
          std::terminate();
        }

        v13 = v25;
        v14 = *v25;
        v15 = v24 - 1;
        if (v24 != 1)
        {
          v16 = v25 + 1;
          do
          {
            v17 = *v16++;
            v14 = fmaxf(v17, v14);
            --v15;
          }

          while (v15);
        }

        v18 = 0;
        v19 = 0.0;
        do
        {
          if (v12 == v18)
          {
            goto LABEL_24;
          }

          v20 = expf(v13[v18] - v14);
          v13[v18] = v20;
          v19 = v19 + v20;
          ++v18;
        }

        while (v12 != v18);
        do
        {
          if (!v12)
          {
            goto LABEL_24;
          }

          v21 = v19;
          *v13 = *v13 / v21;
          ++v13;
          --v12;
        }

        while (v12);
      }
    }

    dmlc::OMPException::Rethrow(&v26);
    std::mutex::~mutex(&v27);
    std::exception_ptr::~exception_ptr(&v26);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v3 = dmlc::LogMessageFatal::GetEntry(&v26);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v4, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_274D809AC()
{
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr(&v1);
  JUMPOUT(0x274D80A38);
}

void sub_274D809E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  _Unwind_Resume(a1);
}

void sub_274D80A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void sub_274D80A24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double xgboost::metric::EvalMClassBase<xgboost::metric::EvalMatchError>::Eval(rabit::engine *a1, float ***a2, uint64_t a3, int a4)
{
  v7 = a1;
  v72 = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 24) + 8) - **(a3 + 24);
  if (v8)
  {
    if (((*a2)[1] - **a2) % (v8 >> 2))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v70);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/multiclass_metric.cu", 175);
      v51 = dmlc::LogMessageFatal::GetEntry(&v70);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Check failed: preds.Size() % info.labels.Size() == 0", 52);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "label and prediction size not match", 35);
      dmlc::LogMessageFatal::~LogMessageFatal(&v70);
    }
  }

  else
  {
    v39 = **a2;
    v40 = (*a2)[1];
    LODWORD(v64) = 0;
    v41 = v40 - v39;
    __p = (v41 >> 2);
    if (v41)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&__p, &v64);
    }
  }

  v68 = 0.0;
  v69 = 0.0;
  v9 = *(*(a3 + 24) + 8) - **(a3 + 24);
  if (!v9)
  {
    v13 = 0.0;
    v12 = 0.0;
    if (!a4)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v10 = (*a2)[1] - **a2;
  v11 = v9 >> 2;
  v63 = (v10 >> 2) / v11;
  LODWORD(__p) = 1;
  if (v11 > v10 >> 2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v63, &__p);
  }

  v12 = 0.0;
  v13 = 0.0;
  if ((*(*(v7 + 1) + 24) & 0x80000000) != 0)
  {
    v14 = v63;
    v15 = *(a3 + 72);
    v16 = *(a3 + 24);
    v17 = *a2;
    v19 = *v16;
    v18 = v16[1];
    v21 = *v15;
    v20 = v15[1];
    v70.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v70.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v64, 1uLL);
    v70.__ptr_ = 0;
    v71.__m_.__sig = 850045863;
    memset(v71.__m_.__opaque, 0, sizeof(v71.__m_.__opaque));
    if (v18 == v19)
    {
      v29 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = (v18 - v19) >> 2;
      v25 = *v16;
      v26 = __p;
      v27 = v64;
      do
      {
        v28 = 1.0;
        if (v20 != v21)
        {
          v28 = *(*v15 + 4 * v23);
        }

        v29 = *(v25 + 4 * v23);
        if ((v29 & 0x80000000) == 0 && v29 < v14)
        {
          v30 = &(*v17)[v23 * v14];
          if (v14)
          {
            v31 = *v30;
            v32 = 4 * v14;
            v33 = &(*v17)[v23 * v14];
            v34 = v33;
            v35 = v33;
            do
            {
              v36 = *v35++;
              v37 = v36;
              if (v36 > v31)
              {
                v31 = v37;
                v34 = v33;
              }

              v33 = v35;
              v32 -= 4;
            }

            while (v32);
          }

          else
          {
            v34 = *v17;
          }

          if (v34 == &v30[v29])
          {
            v38 = 0.0;
          }

          else
          {
            v38 = 1.0;
          }

          *v26 = *v26 + (v28 * v38);
          *v27 = *v27 + v28;
          v29 = v22;
        }

        ++v23;
        v22 = v29;
      }

      while (v23 != v24);
    }

    dmlc::OMPException::Rethrow(&v70);
    std::mutex::~mutex(&v71);
    std::exception_ptr::~exception_ptr(&v70);
    v42 = __p;
    v13 = 0.0;
    v12 = 0.0;
    while (v42 != v67)
    {
      v43 = *v42++;
      v12 = v12 + v43;
    }

    v44 = v64;
    if (v64 != v65)
    {
      v13 = 0.0;
      v45 = v64;
      do
      {
        v46 = *v45++;
        v13 = v13 + v46;
      }

      while (v45 != v65);
    }

    if ((v29 & 0x80000000) != 0 || v29 >= v14)
    {
      v54 = dmlc::LogMessageFatal::GetEntry(&v70);
      dmlc::LogMessageFatal::Entry::Init(v54, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/multiclass_metric.cu", 35);
      v55 = dmlc::LogMessageFatal::GetEntry(&v70);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Check failed: label_error >= 0 && label_error < static_cast<int32_t>(n_class)", 77);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ": ", 2);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "MultiClassEvaluation: label must be in [0, num_class),", 54);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " num_class=", 11);
      v60 = MEMORY[0x277C68E50](v59, v14);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " but found ", 11);
      v62 = MEMORY[0x277C68E20](v61, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " in label", 9);
      dmlc::LogMessageFatal::~LogMessageFatal(&v70);
      v44 = v64;
      if (!v64)
      {
LABEL_42:
        a1 = __p;
        if (__p)
        {
          v67 = __p;
          operator delete(__p);
        }

        goto LABEL_44;
      }
    }

    else if (!v64)
    {
      goto LABEL_42;
    }

    v65 = v44;
    operator delete(v44);
    goto LABEL_42;
  }

LABEL_44:
  v68 = v12;
  v69 = v13;
  if (a4)
  {
LABEL_45:
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v68, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v12 = v68;
    v13 = v69;
  }

LABEL_46:
  v48 = *MEMORY[0x277D85DE8];
  return v12 / v13;
}

void sub_274D81280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::metric::EvalMClassBase<xgboost::metric::EvalMultiLogLoss>::Eval(rabit::engine *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v7 = a1;
  v72 = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 24) + 8) - **(a3 + 24);
  if (v8)
  {
    if ((((*a2)[1] - **a2) >> 2) % (v8 >> 2))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v70);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/multiclass_metric.cu", 175);
      v46 = dmlc::LogMessageFatal::GetEntry(&v70);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Check failed: preds.Size() % info.labels.Size() == 0", 52);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "label and prediction size not match", 35);
      dmlc::LogMessageFatal::~LogMessageFatal(&v70);
    }
  }

  else
  {
    v34 = **a2;
    v35 = (*a2)[1];
    LODWORD(v64) = 0;
    v36 = v35 - v34;
    __p = (v36 >> 2);
    if (v36)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&__p, &v64);
    }
  }

  v68 = 0.0;
  v69 = 0.0;
  v9 = *(*(a3 + 24) + 8) - **(a3 + 24);
  if (!v9)
  {
    v13 = 0.0;
    v12 = 0.0;
    if (!a4)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v10 = (*a2)[1] - **a2;
  v11 = v9 >> 2;
  v63 = (v10 >> 2) / v11;
  LODWORD(__p) = 1;
  if (v11 > v10 >> 2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v63, &__p);
  }

  v12 = 0.0;
  v13 = 0.0;
  if ((*(*(v7 + 1) + 24) & 0x80000000) != 0)
  {
    v14 = *(a3 + 72);
    v15 = *(a3 + 24);
    v61 = *a2;
    v62 = v63;
    v17 = *v15;
    v16 = v15[1];
    v18 = *v14;
    v59 = v14[1];
    v60 = v14;
    v70.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v70.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v64, 1uLL);
    v58 = a4;
    v70.__ptr_ = 0;
    v71.__m_.__sig = 850045863;
    memset(v71.__m_.__opaque, 0, sizeof(v71.__m_.__opaque));
    v20 = v59;
    v19 = v60;
    if (v16 == v17)
    {
      v30 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = (v16 - v17) >> 2;
      v25 = *v15;
      v26 = __p;
      v27 = v64;
      v28 = 4 * v63;
      do
      {
        if (v20 == v18)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = *(*v19 + 4 * v23);
        }

        v30 = *(v25 + 4 * v23);
        if ((v30 & 0x80000000) == 0 && v30 < v62)
        {
          v31 = *(*v61 + 4 * v30 + v21);
          v32 = 36.841;
          if (v31 > 1.0e-16)
          {
            v33 = logf(v31);
            v20 = v59;
            v19 = v60;
            v32 = -v33;
          }

          *v26 = *v26 + (v29 * v32);
          *v27 = *v27 + v29;
          v30 = v22;
        }

        ++v23;
        v21 += v28;
        v22 = v30;
      }

      while (v24 != v23);
    }

    dmlc::OMPException::Rethrow(&v70);
    std::mutex::~mutex(&v71);
    std::exception_ptr::~exception_ptr(&v70);
    v37 = __p;
    v13 = 0.0;
    v12 = 0.0;
    a4 = v58;
    if (__p != v67)
    {
      do
      {
        v38 = *v37++;
        v12 = v12 + v38;
      }

      while (v37 != v67);
    }

    v39 = v64;
    if (v64 != v65)
    {
      v13 = 0.0;
      v40 = v64;
      do
      {
        v41 = *v40++;
        v13 = v13 + v41;
      }

      while (v40 != v65);
    }

    if ((v30 & 0x80000000) != 0 || v30 >= v62)
    {
      v49 = dmlc::LogMessageFatal::GetEntry(&v70);
      dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/multiclass_metric.cu", 35);
      v50 = dmlc::LogMessageFatal::GetEntry(&v70);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: label_error >= 0 && label_error < static_cast<int32_t>(n_class)", 77);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "MultiClassEvaluation: label must be in [0, num_class),", 54);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " num_class=", 11);
      v55 = MEMORY[0x277C68E50](v54, v62);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " but found ", 11);
      v57 = MEMORY[0x277C68E20](v56, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " in label", 9);
      dmlc::LogMessageFatal::~LogMessageFatal(&v70);
      v39 = v64;
      if (!v64)
      {
LABEL_34:
        a1 = __p;
        if (__p)
        {
          v67 = __p;
          operator delete(__p);
        }

        goto LABEL_36;
      }
    }

    else if (!v64)
    {
      goto LABEL_34;
    }

    v65 = v39;
    operator delete(v39);
    goto LABEL_34;
  }

LABEL_36:
  v68 = v12;
  v69 = v13;
  if (a4)
  {
LABEL_37:
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v68, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v12 = v68;
    v13 = v69;
  }

LABEL_38:
  v43 = *MEMORY[0x277D85DE8];
  return v12 / v13;
}

void sub_274D81A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::exception_ptr a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::FieldEntry<xgboost::common::ProbabilityDistributionType>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::CustomLogMessage::Log()
{
  v1 = &dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst;
  if ((*v0 & 1) == 0)
  {
    *dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst(&dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst) = xgboost::LogCallbackRegistry::LogCallbackRegistry(void)::{lambda(char const*)#1}::__invoke;
    *v7(v6) = 1;
  }

  v2 = *(*v1)(v1);
  if (*(v3 + 23) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *v3;
  }

  return v2(v4);
}

void xgboost::ConsoleLogger::~ConsoleLogger(std::locale *this)
{
  locale_low = LODWORD(this[33].__locale_);
  v4 = *(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst() + 4);
  if (v3 == 4 || v4 >= v3)
  {
    std::stringbuf::str();
    v7 = &dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst;
    if ((*v6 & 1) == 0)
    {
      *dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst(&dmlc::ThreadLocalStore<xgboost::LogCallbackRegistry>::Get(void)::inst) = xgboost::LogCallbackRegistry::LogCallbackRegistry(void)::{lambda(char const*)#1}::__invoke;
      *v13(v12) = 1;
    }

    v8 = *(*v7)(v7);
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v8(p_p);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = MEMORY[0x277D82828];
  v11 = *MEMORY[0x277D82828];
  this->__locale_ = *MEMORY[0x277D82828];
  *(this + *(v11 - 24)) = v10[3];
  this[1].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&this[14]);
}

void xgboost::TrackerLogger::~TrackerLogger(std::locale *this)
{
  LOBYTE(__p[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this, __p, 1);
  v2 = std::stringbuf::str();
  Engine = rabit::engine::GetEngine(v2);
  (*(*Engine + 96))(Engine, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = MEMORY[0x277D82828];
  v5 = *MEMORY[0x277D82828];
  this->__locale_ = *MEMORY[0x277D82828];
  *(this + *(v5 - 24)) = v4[3];
  this[1].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&this[14]);
}

void xgboost::ConsoleLogger::Configure(float a1, __n128 a2)
{
  v2 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a1, a2);
  xgboost::XGBoostParameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, v3, v4);
  v5 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void xgboost::XGBoostParameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::GlobalConfiguration *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::GlobalConfiguration::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274D82150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::ConsoleLogger::GlobalVerbosity(xgboost::ConsoleLogger *this)
{
  v1 = *(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst() + 4);
  if (v1 >= 4)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

xgboost::BaseLogger *xgboost::ConsoleLogger::ConsoleLogger(xgboost::BaseLogger *a1, int a2)
{
  result = xgboost::BaseLogger::BaseLogger(a1);
  *(result + 66) = a2;
  return result;
}

{
  result = xgboost::BaseLogger::BaseLogger(a1);
  *(result + 66) = a2;
  return result;
}

xgboost::BaseLogger *xgboost::BaseLogger::BaseLogger(xgboost::BaseLogger *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "[", 1);
  v4 = dmlc::DateLogger::HumanDate(v9);
  v5 = strlen(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "] ", 2);
  v7 = *MEMORY[0x277D85DE8];
  return this;
}

xgboost::BaseLogger *xgboost::ConsoleLogger::ConsoleLogger(xgboost::BaseLogger *a1, uint64_t a2, uint64_t a3, int a4)
{
  *(xgboost::BaseLogger::BaseLogger(a1) + 66) = a4;
  if (a4 > 2)
  {
    if (a4 != 3)
    {
      v10 = a1;
      if (a4 != 4)
      {
        return a1;
      }

      goto LABEL_11;
    }

    v8 = "DEBUG: ";
    v9 = 7;
  }

  else if (a4 == 1)
  {
    v8 = "WARNING: ";
    v9 = 9;
  }

  else
  {
    if (a4 != 2)
    {
      return a1;
    }

    v8 = "INFO: ";
    v9 = 6;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, v9);
LABEL_11:
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

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
  v16 = MEMORY[0x277C68E20](v15, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
  return a1;
}

uint64_t xgboost::LogCallbackRegistry::LogCallbackRegistry(void)::{lambda(char const*)#1}::__invoke(const char *a1)
{
  v2 = strlen(a1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], a1, v2);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  return std::ostream::flush();
}

void *dmlc::Parameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::GlobalConfiguration *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::GlobalConfiguration::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274D824DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::CQHistMaker::~CQHistMaker(void **this)
{
  xgboost::tree::CQHistMaker::~CQHistMaker(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E3DF8;
  v10 = this + 92;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (*(this + 735) < 0)
  {
    operator delete(this[89]);
  }

  v10 = this + 82;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = this[79];
  if (v2)
  {
    this[80] = v2;
    operator delete(v2);
  }

  v10 = this + 76;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = this + 73;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = this + 70;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = this[67];
  if (v3)
  {
    this[68] = v3;
    operator delete(v3);
  }

  v4 = this[64];
  if (v4)
  {
    this[65] = v4;
    operator delete(v4);
  }

  v5 = this[61];
  if (v5)
  {
    this[62] = v5;
    operator delete(v5);
  }

  v6 = this[58];
  if (v6)
  {
    this[59] = v6;
    operator delete(v6);
  }

  *this = &unk_2883E3EC8;
  v7 = this[54];
  if (v7)
  {
    this[55] = v7;
    operator delete(v7);
  }

  v10 = this + 47;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v8 = this[44];
  if (v8)
  {
    this[45] = v8;
    operator delete(v8);
  }

  v9 = this[41];
  if (v9)
  {
    this[42] = v9;
    operator delete(v9);
  }

  xgboost::tree::BaseMaker::~BaseMaker(this);
}

void xgboost::tree::BaseMaker::LoadConfig(xgboost::tree::BaseMaker *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D82778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::BaseMaker::SaveConfig(xgboost::tree::BaseMaker *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 16), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::tree::BaseMaker::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

std::string *xgboost::tree::HistMaker::Update(uint64_t a1, void *a2, uint64_t (***a3)(void), void **a4)
{
  v8 = (**a3)(a3);
  result = xgboost::FeatureInteractionConstraintHost::Configure((a1 + 224), (a1 + 16), *(v8 + 8));
  v10 = *(a1 + 20);
  v13 = a4;
  v11 = *a4;
  v12 = v13[1];
  for (*(a1 + 20) = v10 / (v12 - v11); v11 != v12; result = (*(*a1 + 80))(a1, *a2, a3, v14))
  {
    v14 = *v11++;
  }

  *(a1 + 20) = v10;
  return result;
}

void xgboost::tree::BaseMaker::SetNonDefaultPositionCol(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(a4 + 160) + 20 * *v6;
      if (*(v8 + 4) != -1)
      {
        LODWORD(v14.__ptr_) = *(v8 + 12) & 0x7FFFFFFF;
        std::vector<unsigned int>::push_back[abi:ne200100](&v13.__begin_, &v14);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v9 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(v13.__begin_, v13.__end_);
  std::vector<float>::resize(&v13, (v9 - v13.__begin_) >> 2);
  (*(*a3 + 88))(&v11, a3);
  v10[2] = v11;
  v10[3] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v10, 0);
}

void sub_274D82C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, std::exception_ptr a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistMaker::UpdateTree(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v146 = *MEMORY[0x277D85DE8];
  v139 = a2;
  if (*(a1 + 28) <= 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v144);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_histmaker.cc", 111);
    v132 = dmlc::LogMessageFatal::GetEntry(&v144);
    v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "Check failed: param_.max_depth > 0", 34);
    v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, "max_depth must be larger than 0", 31);
    dmlc::LogMessageFatal::~LogMessageFatal(&v144);
    a2 = v139;
  }

  std::vector<int>::resize((a1 + 200), (a2[1] - *a2) >> 3);
  v7 = *(a1 + 200);
  v8 = *(a1 + 208);
  v9 = (v8 - v7) >> 2;
  if (v9 >= 1)
  {
    bzero(*(a1 + 200), v8 - v7);
  }

  if (v8 != v7)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v8 - v7) >> 2;
    }

    v11 = (*v139 + 4);
    do
    {
      if (*v11 < 0.0)
      {
        *v7 = ~*v7;
      }

      ++v7;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  if (*(a1 + 64) < 1.0)
  {
    v12 = *(a1 + 68);
    LODWORD(v143[0]) = 0;
    if (v12)
    {
      dmlc::LogCheckFormat<int,xgboost::tree::TrainParam::SamplingMethod>((a1 + 68), v143);
    }

    v13 = *(a1 + 64);
    v14 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v15 = *(a1 + 200);
    v16 = v139;
    if (*(a1 + 208) != v15)
    {
      v17 = v14;
      v18 = 0;
      v19 = v13;
      v20 = 4;
      do
      {
        if (*(*v16 + v20) >= 0.0)
        {
          v21 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v17);
          v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v17);
          v15 = *(a1 + 200);
          if ((v21 + v22 * 4294967300.0) * 5.42101086e-20 >= v19)
          {
            *(v15 + 4 * v18) = ~*(v15 + 4 * v18);
          }

          v16 = v139;
        }

        ++v18;
        v20 += 8;
      }

      while (v18 < (*(a1 + 208) - v15) >> 2);
    }
  }

  v140 = (a1 + 152);
  std::vector<int>::reserve((a1 + 152), 0x100uLL);
  *(a1 + 160) = *(a1 + 152);
  LODWORD(v144.__ptr_) = 0;
  std::vector<int>::push_back[abi:ne200100]((a1 + 152), &v144);
  v23 = *(a1 + 176);
  v141 = (a1 + 176);
  v24 = *(a1 + 184) - v23;
  if (v24 >= 1)
  {
    memset(v23, 255, v24);
  }

  std::vector<int>::resize(v141, *(a4 + 12));
  v25 = *(a1 + 152);
  v26 = *(a1 + 160);
  v27 = v26 - v25;
  if (v26 != v25)
  {
    v28 = 0;
    v29 = v27 >> 2;
    begin = v141->__begin_;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    do
    {
      begin[*(v25 + 4 * v28)] = v28;
      ++v28;
    }

    while (v29 != v28);
  }

  v31 = (*(*a3 + 24))(a3);
  xgboost::FeatureInteractionConstraintHost::Configure((a1 + 224), (a1 + 16), *(v31 + 8));
  (*(*a1 + 96))(a1, a3, a4, a1 + 432);
  v32 = *(a4 + 160);
  *(v32 + 16) = 0;
  *(v32 + 4) = 0xFFFFFFFFLL;
  if (*(a1 + 28) < 1)
  {
    v124 = *(a1 + 152);
    v123 = *(a1 + 160);
  }

  else
  {
    v33 = 0;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v142 = vnegq_f64(v34);
    v135 = a3;
    do
    {
      v136 = v33;
      (*(*a1 + 88))(a1, v139, a3, a1 + 432, a4);
      (*(*a1 + 112))(a1, v139, a3, a1 + 432, a4);
      v36 = *(a1 + 432);
      v35 = *(a1 + 440);
      v38 = *(a1 + 152);
      v37 = *(a1 + 160);
      memset(v143, 0, sizeof(v143));
      v144.__ptr_ = v143;
      LOBYTE(v145.__m_.__sig) = 0;
      v39 = v37 - v38;
      if (v39)
      {
        if ((v39 >> 2) < 0x333333333333334)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v138 = v37;
      v144.__ptr_ = 0;
      v145.__m_.__sig = 850045863;
      memset(v145.__m_.__opaque, 0, sizeof(v145.__m_.__opaque));
      v137 = v37;
      dmlc::OMPException::Rethrow(&v144);
      std::mutex::~mutex(&v145);
      std::exception_ptr::~exception_ptr(&v144);
      if (v137 != v138)
      {
        v44 = (*(*(a1 + 376) + 16) + 16 * *(**(a1 + 376) + v35 - v36));
        v46 = *v44;
        v45 = v44[1];
        v47 = *(a1 + 48);
        v48 = v45 <= 0.0;
        if (v45 < v47)
        {
          v48 = 1;
        }

        v41.i64[0] = 0;
        if (!v48)
        {
          v49 = *(a1 + 56);
          v50 = v49;
          v67 = v46 < -v49;
          v51 = v46 + v49;
          if (!v67)
          {
            v51 = 0.0;
          }

          v52 = v46 <= v50;
          v53 = v46 - v50;
          if (!v52)
          {
            v51 = v53;
          }

          *v41.i64 = -v51 / (v45 + *(a1 + 52));
          v54 = *(a1 + 60);
          if (v54 != 0.0)
          {
            *v42.i64 = v54;
            if (fabs(*v41.i64) > *v42.i64)
            {
              v41 = vbslq_s8(v142, v42, v41);
            }
          }
        }

        v55 = **(a1 + 152);
        v56 = v143[0];
        v57 = *v41.i64;
        v58 = *(a4 + 208) + 16 * v55;
        v59 = v45;
        *(v58 + 4) = v59;
        *(v58 + 8) = v57;
        v60 = *v56;
        *v58 = *v56;
        if (v60 <= 0.000001)
        {
          v117 = *(a4 + 160) + 20 * v55;
          *(v117 + 16) = *(a1 + 20) * v57;
          *(v117 + 4) = -1;
        }

        else
        {
          v42.i64[0] = 0;
          v41.i64[0] = 0;
          if (!v48)
          {
            v61 = *(a1 + 56);
            v62 = v61;
            v67 = v46 < -v61;
            v63 = v46 + v61;
            if (!v67)
            {
              v63 = 0.0;
            }

            v52 = v46 <= v62;
            v64 = v46 - v62;
            if (!v52)
            {
              v63 = v64;
            }

            *v41.i64 = -v63 / (v45 + *(a1 + 52));
            v65 = *(a1 + 60);
            if (v65 != 0.0)
            {
              *v43.i64 = v65;
              if (fabs(*v41.i64) > *v43.i64)
              {
                v41.i64[0] = vbslq_s8(v142, v43, v41).u64[0];
              }
            }
          }

          v66 = *(v56 + 56);
          v67 = v66 <= 0.0 || v66 < v47;
          if (!v67)
          {
            v68 = *(v56 + 48);
            v69 = *(a1 + 56);
            v70 = v69;
            v67 = v68 < -v69;
            v71 = v68 + v69;
            if (!v67)
            {
              v71 = 0.0;
            }

            v52 = v68 <= v70;
            v72 = v68 - v70;
            if (v52)
            {
              v72 = v71;
            }

            *v42.i64 = -v72 / (v66 + *(a1 + 52));
            v73 = *(a1 + 60);
            if (v73 != 0.0)
            {
              *v43.i64 = v73;
              if (fabs(*v42.i64) > *v43.i64)
              {
                v42.i64[0] = vbslq_s8(v142, v43, v42).u64[0];
              }
            }
          }

          v74 = *(v56 + 72);
          v43.i64[0] = 0;
          if (v74 > 0.0 && v74 >= v47)
          {
            v76 = *(v56 + 64);
            v77 = *(a1 + 56);
            v78 = v77;
            v67 = v76 < -v77;
            v79 = v76 + v77;
            if (!v67)
            {
              v79 = 0.0;
            }

            v52 = v76 <= v78;
            v80 = v76 - v78;
            if (v52)
            {
              v80 = v79;
            }

            *v43.i64 = -v80 / (v74 + *(a1 + 52));
            v81 = *(a1 + 60);
            if (v81 != 0.0)
            {
              *v40.i64 = v81;
              if (fabs(*v43.i64) > *v40.i64)
              {
                v43.i64[0] = vbslq_s8(v142, v40, v43).u64[0];
              }
            }
          }

          v82 = *v41.i64;
          v83 = *(a1 + 20);
          v84 = *v42.i64 * v83;
          v85 = *v43.i64 * v83;
          v86 = v66;
          v87 = v74;
          xgboost::RegTree::ExpandNode(a4, v55, *(v56 + 4) & 0x7FFFFFFF, *(v56 + 8), *(v56 + 4) >> 31, v82, v84, v85, v60, v59, v86, v87, -1);
          v89.i64[0] = MEMORY[0];
          v90 = *(a1 + 48);
          v91.i64[0] = 0;
          v92.i64[0] = 0;
          if (MEMORY[8] > 0.0)
          {
            v92.i64[0] = 0;
            if (MEMORY[8] >= v90)
            {
              v93 = *(a1 + 56);
              v94 = v93;
              v67 = MEMORY[0] < -v93;
              v95 = MEMORY[0] + v93;
              if (!v67)
              {
                v95 = 0.0;
              }

              v52 = MEMORY[0] <= v94;
              v96 = MEMORY[0] - v94;
              if (!v52)
              {
                v95 = v96;
              }

              *v92.i64 = -v95 / (MEMORY[8] + *(a1 + 52));
              v97 = *(a1 + 60);
              if (v97 != 0.0)
              {
                *v88.i64 = v97;
                if (fabs(*v92.i64) > *v88.i64)
                {
                  v92.i64[0] = vbslq_s8(v142, v88, v92).u64[0];
                }
              }
            }
          }

          v98 = *v44;
          v99 = v44[1] - MEMORY[8];
          v100 = *(a4 + 160) + 20 * v55;
          v101 = *(v100 + 4);
          v102 = *(v100 + 8);
          v103 = *v92.i64;
          v104 = *(a4 + 208);
          v105 = v104 + 16 * v101;
          v106 = MEMORY[8];
          *(v105 + 4) = v106;
          *(v105 + 8) = v103;
          if (v99 > 0.0 && v99 >= v90)
          {
            v108 = v98 - *v89.i64;
            v109 = *(a1 + 56);
            v110 = v109;
            v67 = v108 < -v109;
            v111 = v108 + v109;
            if (!v67)
            {
              v111 = 0.0;
            }

            v52 = v108 <= v110;
            v112 = v108 - v110;
            if (v52)
            {
              v112 = v111;
            }

            *v91.i64 = -v112 / (v99 + *(a1 + 52));
            v113 = *(a1 + 60);
            if (v113 != 0.0)
            {
              *v89.i64 = v113;
              if (fabs(*v91.i64) > *v89.i64)
              {
                v91.i64[0] = vbslq_s8(v142, v89, v91).u64[0];
              }
            }
          }

          v114 = *v91.i64;
          v115 = v104 + 16 * v102;
          v116 = v99;
          *(v115 + 4) = v116;
          *(v115 + 8) = v114;
          if (*(a1 + 324) == 1)
          {
            xgboost::FeatureInteractionConstraintHost::SplitImpl((a1 + 224), v55, *(v56 + 4) & 0x7FFFFFFF, v101, v102);
          }
        }
      }

      v144.__ptr_ = v143;
      std::vector<xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats>>::__destroy_vector::operator()[abi:ne200100](&v144);
      a3 = v135;
      (*(*a1 + 104))(a1, v135, a4);
      v144.__ptr_ = 0;
      v145.__m_.__sig = 0;
      *v145.__m_.__opaque = 0;
      v118 = *(a1 + 152);
      v119 = *(a1 + 160);
      while (v118 != v119)
      {
        v120 = *v118;
        if (*(*(a4 + 160) + 20 * *v118 + 4) != -1)
        {
          LODWORD(v143[0]) = *(*(a4 + 160) + 20 * v120 + 4);
          std::vector<int>::push_back[abi:ne200100](&v144.__ptr_, v143);
          LODWORD(v143[0]) = *(*(a4 + 160) + 20 * v120 + 8);
          std::vector<int>::push_back[abi:ne200100](&v144.__ptr_, v143);
        }

        ++v118;
      }

      if (v140 != &v144)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v140, v144.__ptr_, v145.__m_.__sig, (v145.__m_.__sig - v144.__ptr_) >> 2);
      }

      v121 = *(a1 + 176);
      v122 = *(a1 + 184) - v121;
      if (v122 >= 1)
      {
        memset(v121, 255, v122);
      }

      std::vector<int>::resize(v141, *(a4 + 12));
      v124 = *(a1 + 152);
      v123 = *(a1 + 160);
      if (v123 != v124)
      {
        v125 = 0;
        v126 = v123 - v124;
        v127 = v141->__begin_;
        if (v126 <= 1)
        {
          v126 = 1;
        }

        do
        {
          v127[v124[v125]] = v125;
          ++v125;
        }

        while (v126 != v125);
      }

      if (v144.__ptr_)
      {
        v145.__m_.__sig = v144.__ptr_;
        operator delete(v144.__ptr_);
        v124 = *(a1 + 152);
        v123 = *(a1 + 160);
      }

      if (v123 == v124)
      {
        break;
      }

      v33 = v136 + 1;
    }

    while (v136 + 1 < *(a1 + 28));
  }

  for (; v124 != v123; *(v129 + 4) = -1)
  {
    v128 = *v124++;
    v129 = *(a4 + 160) + 20 * v128;
    *(v129 + 16) = *(*(a4 + 208) + 16 * v128 + 8) * *(a1 + 20);
  }

  v130 = *MEMORY[0x277D85DE8];
}

void sub_274D84154(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274D84220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::CQHistMaker::ResetPosAndPropose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = (**a3)(a3);
  v55 = a5;
  std::vector<int>::resize((a1 + 488), *(a5 + 24));
  v9 = *(a1 + 488);
  v10 = *(a1 + 496) - v9;
  if (v10 >= 1)
  {
    memset(v9, 255, v10);
  }

  v54 = (a1 + 512);
  v11 = *(a1 + 512);
  *(a1 + 520) = v11;
  v12 = *a4;
  v13 = *(a4 + 8);
  if (*a4 == v13)
  {
    v14 = v11;
  }

  else
  {
    do
    {
      LODWORD(v59.__ptr_) = *v12;
      if (xgboost::tree::BaseMaker::FMetaHelper::Type((a1 + 464), v59.__ptr_) == 2)
      {
        *(*(a1 + 488) + 4 * LODWORD(v59.__ptr_)) = (*(a1 + 520) - *(a1 + 512)) >> 2;
        std::vector<unsigned int>::push_back[abi:ne200100](&v54->__begin_, &v59);
      }

      else
      {
        *(*(a1 + 488) + 4 * LODWORD(v59.__ptr_)) = -2;
      }

      ++v12;
    }

    while (v12 != v13);
    v14 = *(a1 + 520);
    v11 = *(a1 + 512);
  }

  std::vector<xgboost::common::WXQuantileSketch<float,float>>::resize((a1 + 736), ((*(a1 + 160) - *(a1 + 152)) >> 2) * ((v14 - v11) >> 2));
  v15 = *(a1 + 736);
  v16 = *(a1 + 744);
  if (v15 == v16)
  {
    v19 = *(a1 + 736);
  }

  else
  {
    v17 = v15 + 5;
    do
    {
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::LimitSizeLevel(*v8, v17 - 1, v17, *(a1 + 84));
      std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::resize(v17 - 5, 1uLL);
      *(v17 - 2) = 0;
      v17[5] = v17[4];
      v17[2] = v17[1];
      v18 = v17 + 12;
      v17 += 17;
    }

    while (v18 != v16);
    v19 = *(a1 + 744);
    v15 = *(a1 + 736);
  }

  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::resize((a1 + 656), 0xF0F0F0F0F0F0F0F1 * ((v19 - v15) >> 3));
  v52 = xgboost::tree::TrainParam::MaxSketchSize(v20, *(a1 + 84), *(a1 + 88));
  v21 = *(a1 + 744);
  v22 = *(a1 + 736);
  if (v21 != v22)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = (*(a1 + 656) + v23);
      if (v52 > ((v25[3] - v25[2]) >> 4))
      {
        std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((v25 + 2), v52);
        if (v25[3] == v25[2])
        {
          v26 = 0;
        }

        else
        {
          v26 = v25[2];
        }

        *v25 = v26;
        v21 = *(a1 + 744);
        v22 = *(a1 + 736);
      }

      ++v24;
      v23 += 40;
    }

    while (v24 < 0xF0F0F0F0F0F0F0F1 * ((v21 - v22) >> 3));
  }

  v27 = *(a1 + 568);
  v28 = *(a1 + 560);
  v29 = 0xAAAAAAAAAAAAAAABLL * (v27 - v28);
  if (v27 == v28)
  {
    v34 = 1 - v29;
    v35 = *(a1 + 576);
    if (0xAAAAAAAAAAAAAAABLL * ((v35 - v27) >> 3) < v34)
    {
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v28) >> 3);
      v37 = 0x5555555555555556 * ((v35 - v28) >> 3);
      if (v37 <= 1)
      {
        v37 = 1;
      }

      if (v36 >= 0x555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v38 = v37;
      }

      if (v38 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
    *(a1 + 568) = v27 + 3;
  }

  else if (v29 >= 2)
  {
    v30 = v28 + 3;
    if (v27 != v28 + 3)
    {
      v31 = *(a1 + 568);
      do
      {
        v33 = *(v31 - 3);
        v31 -= 3;
        v32 = v33;
        if (v33)
        {
          *(v27 - 2) = v32;
          operator delete(v32);
        }

        v27 = v31;
      }

      while (v31 != v30);
    }

    *(a1 + 568) = v30;
  }

  v39 = *(**a3)(a3);
  v59.__ptr_ = 0;
  v60.__m_.__sig = 850045863;
  memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
  if (v39)
  {
    v40 = 0;
    v41 = *(a1 + 200);
    v42 = *(v55 + 160);
    do
    {
      v43 = *(v41 + 4 * v40);
      v44 = v43 ^ (v43 >> 31);
      v45 = (v42 + 20 * v44);
      v46 = v45[1];
      if (v46 == -1)
      {
        if (v45[2] == -1)
        {
          *(v41 + 4 * v40) = ~v44;
        }
      }

      else
      {
        v47 = v43 >> 31;
        if ((v45[3] & 0x80000000) != 0)
        {
          v48 = v46 ^ v47;
        }

        else
        {
          v48 = v45[2] ^ v47;
        }

        *(v41 + 4 * v40) = v48;
      }

      ++v40;
    }

    while (v39 != v40);
  }

  dmlc::OMPException::Rethrow(&v59);
  std::mutex::~mutex(&v60);
  std::exception_ptr::~exception_ptr(&v59);
  std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(v54, *(a1 + 520), *(a1 + 536), *(a1 + 544), (*(a1 + 544) - *(a1 + 536)) >> 2);
  v49 = *(a1 + 512);
  v50 = *(a1 + 520);
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v51 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(*(a1 + 512), *(a1 + 520));
  std::vector<float>::resize(v54, (v51 - *(a1 + 512)) >> 2);
  (*(*a3 + 88))(&v57, a3);
  v56[2] = v57;
  v56[3] = v58;
  if (v58)
  {
    atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v56, 0);
}

void xgboost::tree::CQHistMaker::InitWorkSet(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<unsigned int> *a4)
{
  if (*(a1 + 456) != a2)
  {
    std::vector<float>::resize((a1 + 464), (2 * *(a3 + 24)));
    v5 = *(a1 + 464);
    v6 = *(a1 + 472) - v5;
    if (v6 >= 1)
    {
      memset_pattern16(v5, &unk_274E25140, v6);
    }

    (*(*a2 + 88))(&v34);
    v32 = *&v34.__r_.__value_.__l.__data_;
    if (v34.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v34.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(&__n, 0);
  }

  v7 = *(a1 + 472) - *(a1 + 464);
  if (v7)
  {
    v8 = *(a1 + 464);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 >> 2;
  Engine = rabit::engine::GetEngine(a1);
  (*(*Engine + 8))(Engine, v8, 4, v9, rabit::op::Reducer<rabit::op::Max,float>, 0, 0);
  v11 = *(a1 + 80);
  v12 = a4;
  begin = a4->__begin_;
  a4->__end_ = a4->__begin_;
  if (*(a1 + 472) == *(a1 + 464))
  {
    end = begin;
  }

  else
  {
    v14 = 0;
    do
    {
      LODWORD(v34.__r_.__value_.__l.__data_) = v14 >> 1;
      if (xgboost::tree::BaseMaker::FMetaHelper::Type((a1 + 464), v34.__r_.__value_.__l.__data_))
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&a4->__begin_, &v34);
      }

      v14 += 2;
    }

    while (v14 < (*(a1 + 472) - *(a1 + 464)) >> 2);
    v12 = a4;
    begin = a4->__begin_;
    end = a4->__end_;
  }

  v16 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(begin, end, v16);
  std::vector<float>::resize(v12, (v11 * ((end - begin) >> 2)));
  memset(&v34, 0, sizeof(v34));
  *&v32 = &unk_2883E1018;
  *(&v32 + 1) = &v34;
  v33 = 0;
  v18 = rabit::engine::GetEngine(v17);
  v19 = (*(*v18 + 64))(v18);
  if (!v19)
  {
    __n = a4->__end_ - a4->__begin_;
    v19 = (*(v32 + 8))(&v32, &__n, 8);
    if (__n)
    {
      v19 = (*(v32 + 8))(&v32, a4->__begin_, a4->__end_ - a4->__begin_);
    }
  }

  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  __n = size;
  v21 = rabit::engine::GetEngine(v19);
  v22 = (*(*v21 + 16))(v21, &__n, 8, 0);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v34.__r_.__value_.__l.__size_;
  }

  if (v23 != __n)
  {
    std::string::resize(&v34, __n, 0);
    v23 = __n;
  }

  if (v23)
  {
    v24 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
    v25 = v34.__r_.__value_.__r.__words[0];
    v26 = rabit::engine::GetEngine(v22);
    if (v24 >= 0)
    {
      v27 = &v34;
    }

    else
    {
      v27 = v25;
    }

    (*(*v26 + 16))(v26, v27, v23, 0);
  }

  __n = 0;
  if ((*v32)(&v32, &__n, 8) == 8)
  {
    v28 = __n;
    std::vector<float>::resize(a4, __n);
    if (__n)
    {
      (*v32)(&v32, a4->__begin_, 4 * v28);
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_274D85C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::CQHistMaker::ResetPositionAfterSplit(xgboost::tree::CQHistMaker *this, xgboost::DMatrix *a2, const xgboost::RegTree *a3)
{
  *(this + 68) = *(this + 67);
  v4 = *(this + 19);
  v5 = *(this + 20);
  if (v4 != v5)
  {
    do
    {
      v7 = *(a3 + 20) + 20 * *v4;
      if (*(v7 + 4) != -1)
      {
        v11 = *(v7 + 12) & 0x7FFFFFFF;
        std::vector<unsigned int>::push_back[abi:ne200100](this + 67, &v11);
      }

      ++v4;
    }

    while (v4 != v5);
    v8 = *(this + 67);
    v9 = *(this + 68);
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v10 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(*(this + 67), *(this + 68));
  std::vector<float>::resize((this + 536), (v10 - *(this + 67)) >> 2);
}

void xgboost::tree::CQHistMaker::CreateHist(uint64_t a1, uint64_t a2, void (***a3)(void), uint64_t *a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = a3;
  (**a3)(a3);
  std::vector<int>::resize((a1 + 488), *(a5 + 24));
  v8 = *(a1 + 488);
  v9 = *(a1 + 496) - v8;
  if (v9 >= 1)
  {
    memset(*(a1 + 488), 255, v9);
  }

  v10 = *a4;
  v11 = a4[1];
  v12 = v11 - *a4;
  if (v11 != *a4)
  {
    v13 = 0;
    v14 = v12 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      *(v8 + 4 * *(v10 + 4 * v13)) = v13;
      ++v13;
    }

    while (v14 != v13);
  }

  v15 = *(a1 + 376);
  v16 = *(a1 + 384);
  if (v16 == v15)
  {
    if (*(a1 + 392) == v16)
    {
      operator new();
    }

    *(v16 + 32) = 0;
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(a1 + 384) = v16 + 40;
  }

  else if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v15) >> 3) >= 2)
  {
    v17 = v15 + 40;
    while (v16 != v17)
    {
      v18 = *(v16 - 24);
      if (v18)
      {
        *(v16 - 16) = v18;
        operator delete(v18);
      }

      v16 -= 40;
    }

    *(a1 + 384) = v17;
  }

  v19 = *(a1 + 376);
  v20 = v19[2];
  v21 = v19[3];
  if (v20 != v21)
  {
    bzero(v20, (v21 - v20) & 0xFFFFFFFFFFFFFFF0);
    v19 = *(a1 + 376);
  }

  if (*(a1 + 336) == *(a1 + 328))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 328);
  }

  v23 = *(a1 + 352);
  v24 = *(a1 + 360) - v23;
  if (!v24)
  {
    v23 = 0;
  }

  *v19 = v22;
  v19[1] = v23;
  v27 = 0uLL;
  std::vector<xgboost::tree::GradStats>::resize(v19 + 2, v24 >> 2, &v27);
  if (*(*(a1 + 376) + 24) != *(*(a1 + 376) + 16))
  {
    v25 = *(*(a1 + 376) + 16);
  }

  operator new();
}

void sub_274D860C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::BaseMaker::~BaseMaker(void **this)
{
  *this = &unk_2883E3F50;
  v2 = this + 28;
  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  v7 = this + 34;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = this + 31;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = v2;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = this[25];
  if (v3)
  {
    this[26] = v3;
    operator delete(v3);
  }

  v4 = this[22];
  if (v4)
  {
    this[23] = v4;
    operator delete(v4);
  }

  v5 = this[19];
  if (v5)
  {
    this[20] = v5;
    operator delete(v5);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v6 = this[12];
  if (v6)
  {
    this[13] = v6;
    operator delete(v6);
  }
}

void xgboost::tree::HistMaker::InitWorkSet(int a1, int a2, uint64_t a3, std::vector<unsigned int> *this)
{
  std::vector<float>::resize(this, *(a3 + 24));
  end = this->__end_;
  v6 = end - this->__begin_;
  if (end != this->__begin_)
  {
    v7 = 0;
    v8 = v6 >> 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = vdupq_n_s64(v8 - 1);
    v10 = xmmword_274E1FC60;
    v11 = xmmword_274E1F3B0;
    v12 = vdupq_n_s64(4uLL);
    v13 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = this->__begin_ + 2;
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v15, *v9.i8).u8[0])
      {
        *(v14 - 2) = v7;
      }

      if (vuzp1_s16(v15, *&v9).i8[2])
      {
        *(v14 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v14 = v7 + 2;
        v14[1] = v7 + 3;
      }

      v7 += 4;
      v10 = vaddq_s64(v10, v12);
      v11 = vaddq_s64(v11, v12);
      v14 += 4;
    }

    while (v13 != v7);
  }
}

void rabit::SerializeReducerFuncImpl<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>(uint64_t (**a1)(void, uint64_t, uint64_t), uint64_t (**a2)(void, uint64_t, uint64_t), int a3, int *a4)
{
  if (a3 >= 1)
  {
    v6 = *a4;
    v7 = a3;
    do
    {
      v18 = 0;
      v16 = 0u;
      *v17 = 0u;
      v15 = 0;
      v13 = 0u;
      *__p = 0u;
      v12[0] = &unk_2883E11A8;
      v12[1] = a1;
      v12[2] = v6;
      v12[3] = 0;
      v10[0] = &unk_2883E11A8;
      v10[1] = a2;
      v10[2] = v6;
      v11 = 0;
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::Load<rabit::utils::MemoryFixSizeBuffer>(&v16, v12);
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::Load<rabit::utils::MemoryFixSizeBuffer>(&v13, v10);
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::Reduce(&v13, &v16, v6, v8, v9);
      v11 = 0;
      v10[0][1](v10, &v13 + 8, 8);
      if (*(&v13 + 1))
      {
        v10[0][1](v10, v13, 16 * *(&v13 + 1));
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v17[0])
      {
        v17[1] = v17[0];
        operator delete(v17[0]);
      }

      a2 = (a2 + v6);
      a1 = (a1 + v6);
      --v7;
    }

    while (v7);
  }
}

void sub_274D86440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::Load<rabit::utils::MemoryFixSizeBuffer>(uint64_t *a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = (**a2)(a2, (a1 + 1), 8);
  v8 = 8;
  v9 = v4;
  if (v4 != 8)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v9, &v8);
  }

  v5 = a1[1];
  if (v5 > (a1[3] - a1[2]) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((a1 + 2), v5);
    v5 = a1[1];
    if (a1[3] == a1[2])
    {
      v6 = 0;
    }

    else
    {
      v6 = a1[2];
    }

    *a1 = v6;
  }

  if (v5)
  {
    v7 = (**a2)(a2, *a1, 16 * v5);
    v8 = 16 * a1[1];
    v9 = v7;
    if (v7 != v8)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v9, &v8);
    }
  }
}

void sub_274D866A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 8);
        if (v6)
        {
          *(v4 - 7) = v6;
          operator delete(v6);
        }

        v4 -= 80;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t xgboost::tree::BaseMaker::FMetaHelper::Type(xgboost::tree::BaseMaker::FMetaHelper *this, int a2)
{
  v2 = (2 * a2) | 1u;
  v7 = (2 * a2) | 1;
  v6 = (*(this + 1) - *this) >> 2;
  if (v6 <= v2)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned long>(&v7, &v6);
  }

  v3 = *(*this + 4 * (2 * a2));
  if (*(*this + 4 * v2) == -v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 == -3.4028e38)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void sub_274D86A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::tree::TrainParam::MaxSketchSize(xgboost::tree::TrainParam *this, float a2, float a3)
{
  v5 = (a3 / a2);
  v4 = 0;
  if (!v5)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(&v5, &v4);
  }

  return v5;
}

void sub_274D86B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::SerializeReduceClosure<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>::Invoke(uint64_t result, uint64_t a2, const char *a3)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = v4(*(result + 32));
  }

  if (v3[2])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3[5];
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        v7 = *v7;
        v9 = *(v3[5] + 8) == 0;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (v9)
      {
        v7 = 0;
      }

      v11 = *v3;
      v10 = v3[1];
      v14 = &unk_2883E11A8;
      v15 = v7 + v10 * v6;
      v16 = v10;
      v17 = 0;
      v12 = (v11 + v5);
      result = rabit::utils::Assert(v10 > 7, "write position exceed fixed buffer size", a3);
      *(v15 + v17) = v12[1];
      v17 += 8;
      v13 = v12[1];
      if (v13)
      {
        result = v14[1](&v14, *v12, 16 * v13);
      }

      ++v6;
      v5 += 40;
    }

    while (v6 < v3[2]);
  }

  return result;
}

__n128 std::__function::__func<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1},std::allocator<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2883E3FB0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1},std::allocator<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = v2[77];
  v4 = v2[76];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 - v4);
  if (v3 == v4)
  {
    v10 = 1 - v5;
    v11 = v2[78];
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v3) >> 3) < v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v4) >> 3);
      v13 = 0x5555555555555556 * ((v11 - v4) >> 3);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      if (v12 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v2[77] = v3 + 3;
  }

  else if (v5 >= 2)
  {
    v6 = v4 + 3;
    if (v3 != v4 + 3)
    {
      v7 = v2[77];
      do
      {
        v9 = *(v7 - 3);
        v7 -= 3;
        v8 = v9;
        if (v9)
        {
          *(v3 - 2) = v8;
          operator delete(v8);
        }

        v3 = v7;
      }

      while (v7 != v6);
    }

    v2[77] = v6;
  }

  (*(***(a1 + 16) + 88))(&v16);
  v15[2] = v16;
  v15[3].__ptr_ = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v15, 0);
}

void sub_274D879F0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr(&v1);
  JUMPOUT(0x274D87A94);
}

void sub_274D879FC()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 + 8));
  std::exception_ptr::~exception_ptr(&v1);
  JUMPOUT(0x274D87A94);
}

void sub_274D87A0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::exception_ptr a36)
{
  std::mutex::~mutex((v36 + 8));
  std::exception_ptr::~exception_ptr(&a36);
  std::mutex::~mutex((v37 + 8));
  std::exception_ptr::~exception_ptr(&v38);
  JUMPOUT(0x274D87A94);
}

uint64_t std::__function::__func<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1},std::allocator<xgboost::tree::CQHistMaker::CreateHist(std::vector<xgboost::detail::GradientPairInternal<float>> const&,xgboost::DMatrix *,std::vector<unsigned int> const&,xgboost::RegTree const&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::tree::CQHistMaker::HistEntry::Add(uint64_t *a1, float a2, __n128 a3, float a4)
{
  v6 = *a1;
  v7 = *(a1 + 6);
  v8 = *(*a1 + 4 * v7);
  if (v8 <= a2)
  {
    v9 = *(a1 + 4);
    v10 = v9 - v7;
    if (v9 > v7)
    {
      while (1)
      {
        v8 = *(v6 + 4 * v7);
        if (v8 > a2)
        {
          break;
        }

        *(a1 + 6) = ++v7;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    if (v7 == v9)
    {
LABEL_8:
      v12 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v8, a3);
      if (*(v12 + 4) >= 2)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_histmaker.cc");
        xgboost::ConsoleLogger::ConsoleLogger(v25, __p, 300, 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "fv=", 3);
        v13 = std::ostream::operator<<();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", hist.size=", 12);
        MEMORY[0x277C68E30](v14, *(a1 + 4));
        xgboost::ConsoleLogger::~ConsoleLogger(v25);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = *(a1 + 4);
      }

      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          if (*(v12 + 4) >= 2)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_histmaker.cc");
            xgboost::ConsoleLogger::ConsoleLogger(v25, __p, 302, 2);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "hist[", 5);
            v17 = MEMORY[0x277C68E50](v16, i);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "]=", 2);
            v18 = *(*a1 + 4 * i);
            std::ostream::operator<<();
            xgboost::ConsoleLogger::~ConsoleLogger(v25);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }

            v11 = *(a1 + 4);
          }
        }
      }

      Entry = dmlc::LogMessageFatal::GetEntry(v25);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_histmaker.cc", 304);
      v20 = dmlc::LogMessageFatal::GetEntry(v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "fv=", 3);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", hist.last=", 12);
      v22 = *(*a1 + 4 * (*(a1 + 4) - 1));
      std::ostream::operator<<();
      dmlc::LogMessageFatal::~LogMessageFatal(v25);
    }

    else
    {
      a3.n128_f32[1] = a4;
      *(a1[1] + 16 * v7) = vaddq_f64(*(a1[1] + 16 * v7), vcvtq_f64_f32(a3.n128_u64[0]));
    }
  }

  else
  {
    a3.n128_f32[1] = a4;
    *(a1[1] + 16 * v7) = vaddq_f64(*(a1[1] + 16 * v7), vcvtq_f64_f32(a3.n128_u64[0]));
  }
}

void sub_274D87D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D880A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::data::DMatrixProxy::SetCSRData(xgboost::data::DMatrixProxy *this, const char *a2, const char *a3, const char *a4, unsigned int a5, char a6)
{
  v10[7] = *MEMORY[0x277D85DE8];
  if ((a6 & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/proxy_dmatrix.cc", 20);
    v7 = dmlc::LogMessageFatal::GetEntry(v10);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: on_host", 21);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Not implemented on device.", 26);
    dmlc::LogMessageFatal::~LogMessageFatal(v10);
  }

  operator new();
}

BOOL xgboost::data::detail::SingleBatchDataIter<xgboost::data::ArrayAdapterBatch>::Next(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    *(a1 + 8) = 1;
  }

  return v1 == 0;
}

void sub_274D885E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL xgboost::data::detail::SingleBatchDataIter<xgboost::data::CSRArrayAdapterBatch>::Next(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    *(a1 + 8) = 1;
  }

  return v1 == 0;
}

uint64_t *std::unique_ptr<xgboost::data::ArrayAdapter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<xgboost::data::ArrayAdapter *,std::shared_ptr<xgboost::data::ArrayAdapter>::__shared_ptr_default_delete<xgboost::data::ArrayAdapter,xgboost::data::ArrayAdapter>,std::allocator<xgboost::data::ArrayAdapter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::ArrayAdapter *,std::shared_ptr<xgboost::data::ArrayAdapter>::__shared_ptr_default_delete<xgboost::data::ArrayAdapter,xgboost::data::ArrayAdapter>,std::allocator<xgboost::data::ArrayAdapter>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::data::ArrayAdapter *,std::shared_ptr<xgboost::data::ArrayAdapter>::__shared_ptr_default_delete<xgboost::data::ArrayAdapter,xgboost::data::ArrayAdapter>,std::allocator<xgboost::data::ArrayAdapter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void dmlc::any::TypeOnStack<std::shared_ptr<xgboost::data::ArrayAdapter>>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *dmlc::any::TypeOnStack<std::shared_ptr<xgboost::data::ArrayAdapter>>::create_from_data(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t *std::unique_ptr<xgboost::data::CSRArrayAdapter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<xgboost::data::CSRArrayAdapter *,std::shared_ptr<xgboost::data::CSRArrayAdapter>::__shared_ptr_default_delete<xgboost::data::CSRArrayAdapter,xgboost::data::CSRArrayAdapter>,std::allocator<xgboost::data::CSRArrayAdapter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::data::CSRArrayAdapter *,std::shared_ptr<xgboost::data::CSRArrayAdapter>::__shared_ptr_default_delete<xgboost::data::CSRArrayAdapter,xgboost::data::CSRArrayAdapter>,std::allocator<xgboost::data::CSRArrayAdapter>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::data::CSRArrayAdapter *,std::shared_ptr<xgboost::data::CSRArrayAdapter>::__shared_ptr_default_delete<xgboost::data::CSRArrayAdapter,xgboost::data::CSRArrayAdapter>,std::allocator<xgboost::data::CSRArrayAdapter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void dmlc::any::TypeOnStack<std::shared_ptr<xgboost::data::CSRArrayAdapter>>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *dmlc::any::TypeOnStack<std::shared_ptr<xgboost::data::CSRArrayAdapter>>::create_from_data(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void xgboost::gbm::GBTree::Configure(uint64_t a1, std::string **a2)
{
  v4 = a1 + 336;
  if ((a1 + 336) != a2)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v5 - *a2;
    v8 = *(a1 + 336);
    if (*(a1 + 352) - v8 < v7)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      std::vector<std::pair<std::string,std::string>>::__vdeallocate((a1 + 336));
      if (v9 <= 0x555555555555555)
      {
        v10 = 0x5555555555555556 * ((*(a1 + 352) - *(a1 + 336)) >> 4);
        if (v10 <= v9)
        {
          v10 = v9;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 352) - *(a1 + 336)) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v10;
        }

        std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](v4, v11);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = *(a1 + 344) - v8;
    if (v12 >= v7)
    {
      v13 = std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(*a2, a2[1], v8);
      for (i = *(a1 + 344); i != v13; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i))
      {
        i -= 48;
      }

      *(a1 + 344) = v13;
    }

    else
    {
      std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(*a2, (v6 + v12), v8);
      *(a1 + 344) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(v4, (v6 + v12), v5, *(a1 + 344));
    }
  }

  v15 = (a1 + 288);
  if (*(a1 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(a1 + 288), *(a1 + 296));
  }

  else
  {
    *&v46.__r_.__value_.__l.__data_ = *v15;
    v46.__r_.__value_.__r.__words[2] = *(a1 + 304);
  }

  xgboost::XGBoostParameter<xgboost::gbm::GBTreeTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v45, (a1 + 280), a2);
  __p[0] = v45;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (*(a1 + 208) == *(a1 + 200))
  {
    __p[0] = 0;
    __p[1] = 0;
    v43 = 0;
    xgboost::gbm::GBTreeModelParam::__MANAGER__(v16);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6A78, a1 + 40, *a2, a2[1], 0, __p, 0);
    v40[0] = __p;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v40);
  }

  if (*(a1 + 312) == 1 && *(a1 + 232) == *(a1 + 224))
  {
    v17 = *(a1 + 200);
    v18 = *(a1 + 208);
    while (v17 != v18)
    {
      std::vector<std::unique_ptr<xgboost::RegTree>>::push_back[abi:ne200100]((a1 + 224), v17++);
    }

    std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100]((a1 + 200));
    *(a1 + 40) = 0;
    *(a1 + 256) = *(a1 + 248);
  }

  v19 = *(a1 + 384);
  if (!v19)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "cpu_predictor");
    xgboost::Predictor::Create(__p, *(a1 + 16));
    v21 = v20;
    v22 = *(a1 + 384);
    *(a1 + 384) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    v19 = *(a1 + 384);
  }

  (*(*v19 + 16))(v19, a2);
  std::string::basic_string[abi:ne200100]<0>(&__str, "GBTree");
  std::string::operator=((a1 + 392), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v25 = *a2;
  v26 = a2[1];
  if (*a2 == v26)
  {
LABEL_45:
    *(a1 + 329) = 0;
    goto LABEL_46;
  }

  while (1)
  {
    v27 = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
    if (v27 < 0)
    {
      break;
    }

    v28 = v25;
    if (v27 == 7)
    {
      goto LABEL_40;
    }

LABEL_44:
    v25 += 2;
    if (v25 == v26)
    {
      goto LABEL_45;
    }
  }

  if (v25->__r_.__value_.__l.__size_ != 7)
  {
    goto LABEL_44;
  }

  v28 = v25->__r_.__value_.__r.__words[0];
LABEL_40:
  data = v28->__r_.__value_.__l.__data_;
  v30 = *(v28->__r_.__value_.__r.__words + 3);
  if (data != 1633972341 || v30 != 1919251553)
  {
    goto LABEL_44;
  }

  *(a1 + 329) = 1;
  if ((*(a1 + 328) & 1) == 0)
  {
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v23, v24) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v40, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
      xgboost::ConsoleLogger::ConsoleLogger(__p, v40, 82, 1);
      xgboost::ConsoleLogger::~ConsoleLogger(__p);
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }
    }

    *(a1 + 328) = 1;
  }

LABEL_46:
  xgboost::gbm::GBTree::ConfigureUpdaters(a1, v23, v24);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  v33 = *(a1 + 311);
  v34 = v33;
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a1 + 296);
  }

  if (size == v33 && ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = &v46) : (v35 = v46.__r_.__value_.__r.__words[0]), (v36 = *v15, v34 >= 0) ? (v37 = (a1 + 288)) : (v37 = *v15), !memcmp(v35, v37, size)))
  {
    v38 = *(a1 + 360);
    v39 = *(a1 + 368);
    while (v38 != v39)
    {
      (*(**v38 + 32))(*v38, a2);
      ++v38;
    }
  }

  else
  {
    std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100]((a1 + 360));
    xgboost::gbm::GBTree::InitUpdater(a1, a2);
  }

  *(a1 + 330) = 1;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_274D88DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
  }

  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::gbm::GBTreeTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::gbm::GBTreeTrainParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::gbm::GBTreeTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&xmmword_280AF6AC0, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::gbm::GBTreeTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&xmmword_280AF6AC0, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274D88F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::ConfigureUpdaters(xgboost::gbm::GBTree *this, float a2, __n128 a3)
{
  if ((*(this + 329) & 1) == 0)
  {
    v4 = *(this + 80);
    if (v4 <= 1)
    {
      if (!v4)
      {
        return;
      }

      if (v4 != 1)
      {
        goto LABEL_17;
      }
    }

    else if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a2, a3) + 4) >= 2)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
          xgboost::ConsoleLogger::ConsoleLogger(v14, __p, 177, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Tree method is selected to be 'hist', which uses a single updater grow_quantile_histmaker.", 90);
          xgboost::ConsoleLogger::~ConsoleLogger(v14);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = "grow_quantile_histmaker";
        goto LABEL_16;
      }

      if (v4 == 5)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(v14);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
        v6 = dmlc::LogMessageFatal::GetEntry(v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "XGBoost version not compiled with GPU support.", 46);
        dmlc::LogMessageFatal::~LogMessageFatal(v14);
        v7 = "grow_gpu_hist";
LABEL_16:
        MEMORY[0x277C68BE0](this + 288, v7);
        return;
      }

LABEL_17:
      v8 = dmlc::LogMessageFatal::GetEntry(v14);
      dmlc::LogMessageFatal::Entry::Init(v8, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 188);
      v9 = dmlc::LogMessageFatal::GetEntry(v14);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unknown tree_method (", 21);
      v11 = MEMORY[0x277C68E20](v10, *(this + 80));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") detected", 10);
      dmlc::LogMessageFatal::~LogMessageFatal(v14);
      return;
    }

    JUMPOUT(0x277C68BE0);
  }
}

void sub_274D890E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void xgboost::gbm::GBTree::InitUpdater(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a1 + 288), *(a1 + 296));
  }

  else
  {
    v52 = *(a1 + 288);
  }

  xgboost::common::Split(&v52, 0x2Cu, &v50);
  v5 = *(a1 + 368) - *(a1 + 360);
  if (!v5)
  {
    v33 = v50;
    for (i = v51; v33 != i; v33 += 24)
    {
      v35 = v33;
      if (v33[23] < 0)
      {
        v35 = *v33;
      }

      std::string::basic_string[abi:ne200100]<0>(v43, v35);
      v2 = v2 & 0xFFFFFFFFFFFF0000 | *(*(a1 + 32) + 12);
      xgboost::TreeUpdater::Create(v43, *(a1 + 16), v2);
      v37 = v36;
      __p[0] = v36;
      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

      (*(*v37 + 32))(v37, a2);
      std::vector<std::unique_ptr<xgboost::TreeUpdater>>::push_back[abi:ne200100](a1 + 360, __p);
      if (__p[0])
      {
        (*(*__p[0] + 8))(__p[0]);
      }
    }

    goto LABEL_52;
  }

  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3));
  v49 = v5 >> 3;
  if (__p[0] != (v5 >> 3))
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &v49);
  }

  v6 = *(a1 + 360);
  v7 = *(a1 + 368);
  if (v6 == v7)
  {
    goto LABEL_52;
  }

  v8 = *(MEMORY[0x277D82818] + 64);
  v39 = v8;
  v40 = *MEMORY[0x277D82818];
  v38 = *(MEMORY[0x277D82818] + 72);
  do
  {
    v10 = v50;
    v9 = v51;
    while (v10 != v9)
    {
      v11 = (*(**v6 + 64))();
      v12 = strlen(v11);
      v13 = v12;
      v14 = *(v10 + 23);
      if (v14 < 0)
      {
        if (v12 != v10[1])
        {
          goto LABEL_18;
        }

        if (v12 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v15 = *v10;
      }

      else
      {
        v15 = v10;
        if (v13 != v14)
        {
          goto LABEL_18;
        }
      }

      if (!memcmp(v15, v11, v13))
      {
        goto LABEL_42;
      }

LABEL_18:
      v10 += 3;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v43);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Internal Error: ", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " mismatched updater sequence.\n", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Specified updaters: ", 20);
    v17 = v50;
    v18 = v51;
    while (v17 != v18)
    {
      v19 = *(v17 + 23);
      if (v19 >= 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = *v17;
      }

      if (v19 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = *(v17 + 8);
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, v20, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
      v17 += 24;
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Actual updaters: ", 17);
    v24 = *(a1 + 360);
    v25 = *(a1 + 368);
    while (v24 != v25)
    {
      v26 = (*(**v24 + 64))();
      v27 = strlen(v26);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, v26, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      v24 += 8;
    }

    Entry = dmlc::LogMessageFatal::GetEntry(&v49);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 303);
    v30 = dmlc::LogMessageFatal::GetEntry(&v49);
    std::stringbuf::str();
    if ((v42 & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    if ((v42 & 0x80u) == 0)
    {
      v32 = v42;
    }

    else
    {
      v32 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v49);
    v43[0] = v40;
    *(v43 + *(v40 - 3)) = v39;
    v44 = v38;
    v45 = MEMORY[0x277D82878] + 16;
    if (v47 < 0)
    {
      operator delete(v46[7].__locale_);
    }

    v45 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v46);
    std::iostream::~basic_iostream();
    MEMORY[0x277C690D0](&v48);
LABEL_42:
    v6 += 8;
  }

  while (v6 != v7);
LABEL_52:
  v43[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v43);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }
}

void sub_274D89758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  __p = (v24 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::ConfigureWithKnownData(uint64_t a1, uint64_t *a2, xgboost::DMatrix *a3)
{
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v29);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 109);
    v22 = dmlc::LogMessageFatal::GetEntry(v29);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: this->configured_", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v29);
  }

  v6 = (a1 + 288);
  if (*(a1 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *(a1 + 288), *(a1 + 296));
  }

  else
  {
    *&v31.__r_.__value_.__l.__data_ = *v6;
    v31.__r_.__value_.__r.__words[2] = *(a1 + 304);
  }

  if ((*(a1 + 280) & 1) == 0)
  {
    v24 = dmlc::LogMessageFatal::GetEntry(v29);
    dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 111);
    v25 = dmlc::LogMessageFatal::GetEntry(v29);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: tparam_.GetInitialised()", 38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v29);
  }

  xgboost::XGBoostParameter<xgboost::gbm::GBTreeTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v30, (a1 + 280), a2);
  v29[0].__locale_ = v30;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v29);
  xgboost::gbm::GBTree::PerformTreeMethodHeuristic(a1, a3);
  xgboost::gbm::GBTree::ConfigureUpdaters(a1, v7, v8);
  v11 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v13 = *(a1 + 311);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 296);
  }

  if (size != v13 || ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &v31) : (v15 = v31.__r_.__value_.__r.__words[0]), v14 >= 0 ? (v16 = (a1 + 288)) : (v16 = *v6), memcmp(v15, v16, size)))
  {
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, v10) + 4) >= 3)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
      xgboost::ConsoleLogger::ConsoleLogger(v29, __p, 120, 3);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Using updaters: ", 16);
      v18 = *(a1 + 311);
      v19 = v18 >= 0 ? a1 + 288 : *(a1 + 288);
      v20 = v18 >= 0 ? *(a1 + 311) : *(a1 + 296);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
      xgboost::ConsoleLogger::~ConsoleLogger(v29);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100]((a1 + 360));
    xgboost::gbm::GBTree::InitUpdater(a1, a2);
    v11 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  if (v11 < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_274D89AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a15);
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::PerformTreeMethodHeuristic(xgboost::gbm::GBTree *this, xgboost::DMatrix *a2)
{
  if ((*(this + 329) & 1) != 0 || *(this + 80))
  {
    return;
  }

  Engine = rabit::engine::GetEngine(this);
  if ((*(*Engine + 80))(Engine))
  {
    v7 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v5, v6);
    if (*(v7 + 4) >= 2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
      xgboost::ConsoleLogger::ConsoleLogger(v19, __p, 138, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Tree method is automatically selected to be 'approx' for distributed training.", 78);
      goto LABEL_12;
    }

LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  if (((*(*a2 + 40))(a2) & 1) == 0)
  {
    v7 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v8, v9);
    if (*(v7 + 4) < 2)
    {
      goto LABEL_14;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v19, __p, 142, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Tree method is automatically set to 'approx' since external-memory data matrix is used.", 87);
    goto LABEL_12;
  }

  v10 = *(**a2)(a2);
  v13 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v11, v12);
  v7 = v13;
  if (v14 >= 0x400000)
  {
    if (*(v13 + 4) < 2)
    {
      goto LABEL_14;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v19, __p, 147, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Tree method is automatically selected to be 'approx' for faster speed. To use old behavior (exact greedy algorithm on single machine), set tree_method to 'exact'.", 162);
LABEL_12:
    xgboost::ConsoleLogger::~ConsoleLogger(v19);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_14;
  }

  v15 = 2;
LABEL_15:
  *(this + 80) = v15;
  if (*(v7 + 4) > 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v19, __p, 155, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Using tree method: ", 19);
    MEMORY[0x277C68E20](v16, *(this + 80));
    xgboost::ConsoleLogger::~ConsoleLogger(v19);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274D89D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GPUCopyGradient()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

void xgboost::gbm::CopyGradient(void **a1, int a2, int a3, unsigned int a4, uint64_t **a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *a5;
  v8 = **a5;
  v7 = (*a5)[1];
  v9 = *a1;
  v12 = 1;
  v13 = a2;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v13, &v12);
  }

  v14.__ptr_ = 0;
  v15.__m_.__sig = 850045863;
  memset(v15.__m_.__opaque, 0, sizeof(v15.__m_.__opaque));
  if (((v7 - v8) >> 3))
  {
    v10 = 0;
    do
    {
      *(*v6 + v10) = *(*v9 + 8 * a4);
      v10 += 8;
      a4 += a3;
    }

    while (8 * ((v7 - v8) >> 3) != v10);
  }

  dmlc::OMPException::Rethrow(&v14);
  std::mutex::~mutex(&v15);
  std::exception_ptr::~exception_ptr(&v14);
  v11 = *MEMORY[0x277D85DE8];
}

void xgboost::gbm::GBTree::DoBoost(uint64_t a1, xgboost::DMatrix *a2, uint64_t a3, _DWORD *a4)
{
  memset(v34, 0, sizeof(v34));
  v5 = *(*(a1 + 32) + 8);
  xgboost::gbm::GBTree::ConfigureWithKnownData(a1, (a1 + 336), a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "BoostNewTrees");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 320) != 5 || (v6 = *(*(a1 + 16) + 24), v6 == -1))
  {
    v8 = **a4;
    v7 = (*(*a4 + 8) - v8) >> 2;
    v6 = -1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = *(**a2)(a2);
  v29 = v7;
  v30 = v8;
  v33 = v6;
  v27 = v9;
  v28 = v5;
  __p[0] = v5;
  __p[1] = 1;
  v10 = v9 * v5;
  if (!v7)
  {
    v10 = 0;
  }

  v31 = v8;
  v32 = v10;
  LODWORD(v35) = v5;
  v36[0] = 0;
  if (!v5)
  {
    dmlc::LogCheckFormat<int,int>(&v35, v36);
  }

  if (v5 != 1)
  {
    v35 = ((*(*a3 + 8) - **a3) >> 3) % v5;
    v36[0] = 0;
    if (v35)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v35, v36);
    }

    v16 = (*(*a3 + 8) - **a3) >> 3;
    xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostDeviceVector();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  xgboost::gbm::GBTree::BoostNewTrees(a1, a3, a2, 0, &v23);
  v12 = v23;
  v11 = v24;
  std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::push_back[abi:ne200100](v34, &v23);
  if (v29 && !v30)
  {
    std::terminate();
  }

  if (v29)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 368);
  if (v14 != *(a1 + 360) && v11 - v12 == 8 && *(*a4 + 8) != **a4)
  {
    v15 = *(v14 - 8);
    v21[0] = __p[0];
    v21[1] = v27;
    v21[2] = v29;
    v21[3] = v30;
    v21[4] = v30;
    v21[5] = v13;
    v22 = v33;
    if ((*(*v15 + 56))(v15, a2, v21))
    {
      ++a4[2];
    }
  }

  v35 = &v23;
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v35);
  std::string::basic_string[abi:ne200100]<0>(&v23, "BoostNewTrees");
  v17 = xgboost::common::Monitor::Stop();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  (*(*a1 + 176))(a1, v34, a2, a4, v17);
  __p[0] = v34;
  std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_274D8A5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v39 - 112) = &__p;
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100]((v39 - 112));
  a34 = v39 - 136;
  std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::BoostNewTrees(uint64_t a1, uint64_t a2, uint64_t (***a3)(void), int a4, uint64_t *a5)
{
  __p = 0;
  v42 = 0;
  v43 = 0;
  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](a5);
  if (*(a1 + 44) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + 312);
      if (v11 == 1)
      {
        v13 = *(a1 + 360);
        v12 = *(a1 + 368);
        while (v13 != v12)
        {
          if (((*(**v13 + 40))() & 1) == 0)
          {
            Entry = dmlc::LogMessageFatal::GetEntry(&v44);
            dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 340);
            v15 = dmlc::LogMessageFatal::GetEntry(&v44);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: up->CanModifyTree()", 33);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
            v18 = (*(**v13 + 64))();
            v19 = strlen(v18);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v18, v19);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "can not be used to modify existing trees. ", 42);
            dmlc::LogMessageFatal::~LogMessageFatal(&v44);
          }

          v13 += 8;
        }

        v40 = (*(a1 + 208) - *(a1 + 200)) >> 3;
        v39 = (*(a1 + 232) - *(a1 + 224)) >> 3;
        if (v40 >= v39)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v40, &v39);
        }

        v23 = *(a1 + 224) + *(a1 + 208) - *(a1 + 200) + 8 * *(a1 + 44) * a4;
        v24 = *(v23 + 8 * v10);
        *(v23 + 8 * v10) = 0;
        v44 = v24;
        v40 = v24;
        std::vector<xgboost::RegTree *>::push_back[abi:ne200100](&__p, &v40);
        std::vector<std::unique_ptr<xgboost::RegTree>>::push_back[abi:ne200100](a5, &v44);
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }
      }

      else if (!v11)
      {
        if ((*(***(a1 + 360) + 40))(**(a1 + 360)))
        {
          v25 = dmlc::LogMessageFatal::GetEntry(&v44);
          dmlc::LogMessageFatal::Entry::Init(v25, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 328);
          v26 = dmlc::LogMessageFatal::GetEntry(&v44);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: !updaters_.front()->CanModifyTree()", 49);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
          v30 = (*(***(a1 + 360) + 64))(**(a1 + 360));
          v31 = strlen(v30);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "can not be used to create new trees. ", 37);
          dmlc::LogMessageFatal::~LogMessageFatal(&v44);
        }

        operator new();
      }

      ++v10;
    }

    while (v10 < *(a1 + 44));
  }

  v40 = (*(*a2 + 8) - **a2) >> 3;
  v35 = (**a3)(a3);
  if (v40 != *v35)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v40, v35);
  }

  v37 = *(a1 + 360);
  v36 = *(a1 + 368);
  while (v37 != v36)
  {
    (*(**v37 + 48))(*v37, a2, a3, &__p);
    ++v37;
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_274D8ACB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

void std::vector<std::unique_ptr<xgboost::TreeUpdater>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void *std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<xgboost::RegTree *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t *std::vector<std::unique_ptr<xgboost::RegTree>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void xgboost::gbm::GBTree::CommitModel(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CommitModel");
  xgboost::common::Monitor::Start();
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(*(a1 + 32) + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      xgboost::gbm::GBTreeModel::CommitModel(a1 + 24, (*a2 + v4), v5++);
      v4 += 24;
    }

    while (v5 < *(*(a1 + 32) + 8));
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "CommitModel");
  xgboost::common::Monitor::Stop();
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D8B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTreeModel::CommitModel(uint64_t a1, uint64_t **a2, int a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v21 = *a2;
  }

  else
  {
    do
    {
      std::vector<std::unique_ptr<xgboost::RegTree>>::push_back[abi:ne200100]((a1 + 176), v4);
      v9 = *(a1 + 232);
      v8 = *(a1 + 240);
      if (v9 >= v8)
      {
        v11 = *(a1 + 224);
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 224, v16);
        }

        v17 = (v9 - v11) >> 2;
        v18 = (4 * v13);
        v19 = (4 * v13 - 4 * v17);
        *v18 = a3;
        v10 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = *(a1 + 224);
        *(a1 + 224) = v19;
        *(a1 + 232) = v10;
        *(a1 + 240) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = a3;
        v10 = v9 + 4;
      }

      *(a1 + 232) = v10;
      ++v4;
    }

    while (v4 != v5);
    v4 = *a2;
    v21 = a2[1];
  }

  *(a1 + 16) += (v21 - v4) >> 3;
}

void xgboost::gbm::GBTree::LoadConfig(xgboost::gbm::GBTree *this, const xgboost::Json *a2)
{
  v66[29] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = (v5 + 2);
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 6)
    {
      goto LABEL_10;
    }

    v8 = *v6;
  }

  else
  {
    v8 = (v5 + 2);
    if (v7 != 6)
    {
      goto LABEL_10;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  v11 = v9 == 1920229991 && v10 == 25957;
  if (!v11)
  {
LABEL_10:
    dmlc::LogCheckFormat<std::string,char [7]>(v6, "gbtree");
  }

  v60.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v60, "gbtree_train_param");
  v12 = (*(**a2 + 24))(*a2, &v60);
  v13 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v12);
  *(&__p + 1) = 0;
  v63 = 0;
  *&__p = &__p + 8;
  v14 = *(v13 + 2);
  v15 = (v13 + 24);
  if (v14 != (v13 + 24))
  {
    do
    {
      v16 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v14[7]);
      v59.__r_.__value_.__r.__words[0] = (v14 + 4);
      v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v14 + 4);
      v13 = std::string::operator=((v17 + 56), (v16 + 16));
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v11 = *v19 == v14;
          v14 = v19;
        }

        while (!v11);
      }

      v14 = v19;
    }

    while (v19 != v15);
  }

  if (*(this + 280) == 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    xgboost::gbm::GBTreeTrainParam::__MANAGER__(v13);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&xmmword_280AF6AC0, this + 280, __p, &__p + 1, 0, &v51, 0);
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    xgboost::gbm::GBTreeTrainParam::__MANAGER__(v13);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&xmmword_280AF6AC0, this + 280, __p, &__p + 1, &v51, 0);
    *(this + 280) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, *(&__p + 1));
  *&__p = &v51;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  *(this + 78) = 0;
  if (*(this + 79) == 2)
  {
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v20, v21) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v60, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&__p, &v60, 383, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading from a raw memory buffer on CPU only machine.  Changing predictor to auto.", 82);
      xgboost::ConsoleLogger::~ConsoleLogger(&__p);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "predictor");
    std::string::basic_string[abi:ne200100]<0>(v64, "auto");
    memset(&v60, 0, sizeof(v60));
    std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&v60, &__p, v66, 1uLL);
    xgboost::XGBoostParameter<xgboost::gbm::GBTreeTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v50, this + 280, &v60);
    v59.__r_.__value_.__r.__words[0] = v50;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v59);
    v59.__r_.__value_.__r.__words[0] = &v60;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v59);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 80) == 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "tree_method");
    std::string::basic_string[abi:ne200100]<0>(v64, "hist");
    memset(&v60, 0, sizeof(v60));
    std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&v60, &__p, v66, 1uLL);
    xgboost::XGBoostParameter<xgboost::gbm::GBTreeTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v49, this + 280, &v60);
    v59.__r_.__value_.__r.__words[0] = v49;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v59);
    v59.__r_.__value_.__r.__words[0] = &v60;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v59);
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p);
    }

    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v22, v23) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v60, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&__p, &v60, 390, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading from a raw memory buffer on CPU only machine.  Changing tree_method to hist.", 84);
      xgboost::ConsoleLogger::~ConsoleLogger(&__p);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "updater");
  v24 = (*(**a2 + 24))(*a2, &__p);
  v25 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v24);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p);
  }

  std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100](this + 45);
  v26 = *(v25 + 16);
  v27 = (v25 + 24);
  if (v26 != (v25 + 24))
  {
    do
    {
      v25 = v25 & 0xFFFFFFFFFFFF0000 | *(*(this + 4) + 12);
      xgboost::TreeUpdater::Create((v26 + 4), *(this + 2), v25);
      *&__p = v28;
      (*(*v28 + 16))(v28, v26 + 7);
      std::vector<std::unique_ptr<xgboost::TreeUpdater>>::push_back[abi:ne200100](this + 360, &__p);
      if (__p)
      {
        (*(*__p + 8))(__p);
      }

      v29 = v26[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v26[2];
          v11 = *v30 == v26;
          v26 = v30;
        }

        while (!v11);
      }

      v26 = v30;
    }

    while (v30 != v27);
  }

  std::string::basic_string[abi:ne200100]<0>(v47, "specified_updater");
  v31 = (*(**a2 + 24))(*a2, v47);
  v32 = *v31;
  if (*(*v31 + 12) != 5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v61);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v34 = dmlc::LogMessageFatal::GetEntry(&v61);
    xgboost::Value::TypeStr(v32, &v58);
    v35 = std::string::insert(&v58, 0, "Invalid cast, from ");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&v59, " to ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v54[1] = 0x500000000;
    v54[0] = &unk_2883E70E8;
    v55 = 0;
    xgboost::Value::TypeStr(v54, v56);
    if ((v57 & 0x80u) == 0)
    {
      v39 = v56;
    }

    else
    {
      v39 = v56[0];
    }

    if ((v57 & 0x80u) == 0)
    {
      v40 = v57;
    }

    else
    {
      v40 = v56[1];
    }

    v41 = std::string::append(&v60, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v63 = v41->__r_.__value_.__r.__words[2];
    __p = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (v63 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v63 >= 0)
    {
      v44 = HIBYTE(v63);
    }

    else
    {
      v44 = *(&__p + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, p_p, v44);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v61);
  }

  v45 = **v32;
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_274D8BD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a57);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::SaveConfig(xgboost::gbm::GBTree *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v3, "gbtree");
  v5 = &unk_2883E6F38;
  v6 = 0;
  *v7 = *v3;
  v8 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void xgboost::ToJson<xgboost::gbm::GBTreeModelParam>(xgboost::gbm::GBTreeModelParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  xgboost::gbm::GBTreeModelParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(&stru_280AF6A78, v4);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v5, v4[0], v4[1]);
  v7 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = v5;
  if (v5 != &v6)
  {
    xgboost::JsonString::JsonString(v4, (v5 + 56));
    v7 = (v3 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v3 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v5, v6);
}

void sub_274D8C9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::LoadModel(xgboost::gbm::GBTree *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = (v5 + 2);
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 6)
    {
      goto LABEL_10;
    }

    v8 = *v6;
  }

  else
  {
    v8 = (v5 + 2);
    if (v7 != 6)
    {
      goto LABEL_10;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  if (v9 != 1920229991 || v10 != 25957)
  {
LABEL_10:
    dmlc::LogCheckFormat<std::string,char [7]>(v6, "gbtree");
  }

  v24 = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 434);
    v13 = dmlc::LogMessageFatal::GetEntry(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: ", 14);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "get<String>(in[name]) == gbtree", 35);
    v16 = *(v24 + 23);
    v17 = v16 >= 0 ? v24 : *v24;
    v18 = v16 >= 0 ? *(v24 + 23) : *(v24 + 8);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
    v20 = v24;
    v24 = 0;
    if (v20)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](&v24, v20);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model");
  v21 = (*(**a2 + 24))(*a2, __p);
  xgboost::gbm::GBTreeModel::LoadModel((this + 24), v21);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D8CC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTree::SaveModel(xgboost::gbm::GBTree *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "gbtree");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274D8CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::gbm::GBTree::Slice(xgboost::gbm::GBTree *this, int a2, int a3, int a4, char **lpsrc, BOOL *a6)
{
  LODWORD(v8) = a3;
  if (*(this + 330))
  {
    if (lpsrc)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v40);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 448);
    v26 = dmlc::LogMessageFatal::GetEntry(v40);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v40);
    if (lpsrc)
    {
LABEL_3:
      v11 = **lpsrc;
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v28 = dmlc::LogMessageFatal::GetEntry(v40);
  dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 449);
  v29 = dmlc::LogMessageFatal::GetEntry(v40);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: out", 17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
  dmlc::LogMessageFatal::~LogMessageFatal(v40);
LABEL_32:
  v31 = dmlc::LogMessageFatal::GetEntry(v40);
  dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 452);
  v32 = dmlc::LogMessageFatal::GetEntry(v40);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: p_gbtree", 22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
  dmlc::LogMessageFatal::~LogMessageFatal(v40);
  v12 = 0;
LABEL_4:
  v13 = *(this + 4);
  v39 = *(this + 11) * *(v13 + 8);
  v15 = *(v13 + 4);
  v14 = (v13 + 4);
  LODWORD(v38) = 0;
  if (!v15)
  {
    dmlc::LogCheckFormat<unsigned int,int>(v14, &v38);
  }

  LODWORD(v38) = 0;
  if (!v39)
  {
    dmlc::LogCheckFormat<unsigned int,int>(&v39, &v38);
  }

  if (!v8)
  {
    v8 = ((*(this + 26) - *(this + 25)) >> 3) / v39;
  }

  LODWORD(v38) = v8;
  LODWORD(v37) = a2;
  if (v8 <= a2)
  {
    dmlc::LogCheckFormat<int,int>(&v38, &v37);
  }

  LODWORD(v38) = a4;
  LODWORD(v37) = 1;
  if (a4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v38, &v37);
  }

  v16 = (v8 - a2) / a4;
  std::vector<std::unique_ptr<xgboost::RegTree>>::resize(v12 + 25, v39 * v16);
  v36 = v16;
  std::vector<int>::resize((v12 + 248), v39 * v16);
  *(v12 + 10) = (*(v12 + 26) - *(v12 + 25)) >> 3;
  *(v12 + 11) = *(this + 11);
  v17 = *(this + 28);
  v18 = *(this + 29);
  if (v17 != v18)
  {
    v37 = (*(this + 26) - *(this + 25)) >> 3;
    v38 = (v18 - v17) >> 3;
    if (v38 != v37)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v38, &v37);
    }
  }

  result = xgboost::gbm::detail::LayerToTree((this + 24), a2, v8);
  v20 = HIDWORD(result);
  LODWORD(v38) = HIDWORD(result);
  v21 = (*(this + 26) - *(this + 25)) >> 3;
  if (v21 >= HIDWORD(result))
  {
    v34 = (*(this + 26) - *(this + 25)) >> 3;
    if (!v8)
    {
      v36 = (v34 / v39 - a2) / a4;
    }

    LODWORD(v37) = result;
    if (v36)
    {
      for (i = 0; i != v36; ++i)
      {
        if (v39)
        {
          if (result >= v20)
          {
            dmlc::LogCheckFormat<int,unsigned int>(v40, &v37, &v38);
          }

          v23 = *(this + 25);
          if (result < ((*(this + 26) - v23) >> 3))
          {
            v24 = *(v23 + 8 * result);
            operator new();
          }

          std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
        }

        result = result;
        LODWORD(v37) = result;
      }
    }

    v21 = v34;
  }

  *a6 = v21 < v20;
  return result;
}