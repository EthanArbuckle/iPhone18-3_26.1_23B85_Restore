void sub_274DA2A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 8) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  result = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v7 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v17);
  return v16;
}

void sub_274DA2C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 8) = v7;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v8 = *(v6 + 48);
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 48) = v8;
      *(a4 + 64) = v9;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    do
    {
      v10 = *(v5 + 24);
      if (v10)
      {
        *(v5 + 32) = v10;
        operator delete(v10);
      }

      v5 += 88;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::tree::CPUExpandEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 88;
    v5 = *(v2 - 64);
    if (v5)
    {
      *(v2 - 56) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }
}

__n128 std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 8) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  result = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v7 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v17);
  return v16;
}

void sub_274DA3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(uint64_t *result)
{
  v1 = result[3];
  v2 = ((result[4] - v1) >> 3) - 1;
  if ((result[4] - v1) >> 3 != 1)
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = *(v1 + 8 * v3);
      v6 = v3 + 1;
      v7 = *(v1 + 8 * (v3 + 1));
      if (v5 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = (result[6] + 16 * v5);
        do
        {
          v10 = *v9;
          v9 += 2;
          v10[2] = v8;
          v8 += *v10;
          ++v5;
          v7 = *(v1 + 8 * v6);
        }

        while (v5 < v7);
        v5 = *(v1 + 8 * v3);
      }

      if (v5 >= v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = (result[6] + 16 * v5);
        do
        {
          v13 = *v12;
          v12 += 2;
          *(v13 + 24) = v11 + v8;
          v11 += *(v13 + 8);
          ++v5;
        }

        while (v5 < *(v1 + 8 * v6));
      }

      v14 = (v4 + 16 * v3);
      *v14 = v8;
      v14[1] = v11;
      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

void xgboost::common::RowSetCollection::AddSplit(xgboost::common::RowSetCollection *this, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v28 = a6;
  v10 = (this + 24);
  v11 = *(this + 3) + 24 * a2;
  v12 = *(v11 + 16);
  v26 = *v11;
  v27 = v12;
  v13 = v26;
  if (v26)
  {
    v14 = v26;
  }

  else
  {
    LODWORD(v25) = 0;
    if (a5)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v29, &v25);
    }

    LODWORD(v25) = 0;
    if (v28)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v28, &v25);
    }

    v14 = 0;
    a5 = v29;
    a6 = 0;
    v13 = v26;
  }

  v24 = (*(&v26 + 1) - v13) >> 3;
  v25 = a5 + a6;
  if (a5 + a6 != v24)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
  }

  v25 = v14 + 8 * v29;
  if (v25 > *(&v26 + 1))
  {
    dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(&v25, &v26 + 1);
  }

  v25 = v14 + 8 * v29 + 8 * v28;
  if (v25 != *(&v26 + 1))
  {
    dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(&v25, &v26 + 1);
  }

  v15 = *(this + 3);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v15) >> 3);
  if (v16 <= a3)
  {
    v22 = 0uLL;
    v23 = -1;
    std::vector<xgboost::common::RowSetCollection::Elem>::resize(v10, a3 + 1, &v22);
    v15 = *(this + 3);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v15) >> 3);
  }

  if (v16 <= a4)
  {
    v22 = 0uLL;
    v23 = -1;
    std::vector<xgboost::common::RowSetCollection::Elem>::resize(v10, a4 + 1, &v22);
    v15 = *v10;
  }

  v17 = v14 + 8 * v29;
  v18 = v15 + 24 * a3;
  *v18 = v14;
  *(v18 + 8) = v17;
  *(v18 + 16) = a3;
  v19 = *(&v26 + 1);
  v20 = *v10 + 24 * a4;
  *v20 = v17;
  *(v20 + 8) = v19;
  *(v20 + 16) = a4;
  v21 = *v10 + 24 * a2;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
}

void sub_274DA35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = a10;
  a10 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_274DA3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void sub_274DA3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void sub_274DA3640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__append(a1, v5);
  }
}

void std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__split_buffer(v16);
  }
}

void **std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 48) + 16 * a2))
  {
    operator new();
  }

  return result;
}

void sub_274DA3994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x277C69180](v1, 0x1000C402BCDB82FLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t xgboost::common::Index::operator[](uint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  if (v2 != v3)
  {
    return *(a1[3] + 4 * (a2 % ((v3 - v2) >> 2))) + (a1[7])(*a1);
  }

  v5 = a1[7];
  v6 = *a1;

  return v5(v6);
}

uint64_t xgboost::common::BinarySearchBin<xgboost::common::Index>(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a2 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  v10 = a1;
  v11 = -1;
  do
  {
    v12 = v11;
    v11 = v10 + ((v9 - v10) >> 1);
    if (v11 == v12)
    {
      break;
    }

    result = xgboost::common::Index::operator[](a3, v10 + ((v9 - v10) >> 1));
    if (result >= a4 && result < a5)
    {
      return result;
    }

    if (result < a4)
    {
      v10 += (v9 - v10) >> 1;
    }

    else
    {
      v9 = v10 + ((v9 - v10) >> 1);
    }
  }

  while (v9 != v10);
  return 0xFFFFFFFFLL;
}

void *xgboost::common::PartitionBuilder<2048ul>::MergeToArray(void *result, int a2, unint64_t a3, uint64_t a4)
{
  v5 = 16 * (*(result[3] + 8 * a2) + (a3 >> 11));
  v6 = *(result[6] + v5);
  v7 = v6[3];
  if (*v6)
  {
    v8 = result;
    result = memmove((a4 + 8 * v6[2]), v6 + 4, 8 * *v6);
    v9 = *(v8[6] + v5);
  }

  else
  {
    v9 = *(result[6] + v5);
  }

  v10 = *(v9 + 8);
  if (v10)
  {

    return memmove((a4 + 8 * v7), v6 + 2052, 8 * v10);
  }

  return result;
}

void std::vector<xgboost::common::RowSetCollection::Elem>::resize(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<xgboost::common::RowSetCollection::Elem>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68DE0](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68DE0](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274DA3E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::RowSetCollection::Elem>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t *std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v10 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v13 = v11;
    }

    v26 = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(result, v13);
    }

    v14 = 88 * v10;
    v23 = 0;
    v24 = v14;
    *(&v25 + 1) = 0;
    *v14 = *a2;
    v15 = *(a2 + 8);
    *(v14 + 16) = *(a2 + 16);
    *(v14 + 8) = v15;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 24) = 0;
    *(v14 + 24) = *(a2 + 24);
    *(v14 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    *(v14 + 80) = *(a2 + 80);
    *(v14 + 48) = v16;
    *(v14 + 64) = v17;
    *&v25 = 88 * v10 + 88;
    v18 = result[1];
    v19 = 88 * v10 + *result - v18;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(result, *result, v18, v19);
    v20 = *v3;
    *v3 = v19;
    v21 = v3[2];
    v22 = v25;
    *(v3 + 1) = v25;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v23 = v20;
    v24 = v20;
    result = std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v23);
    v9 = v22;
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 8) = v6;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = 0;
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v7;
    *(v4 + 64) = v8;
    v9 = v4 + 88;
  }

  v3[1] = v9;
  return result;
}

void sub_274DA4178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

void *std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, void *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = (*(**(*a3 + 16 * i) + 8) - ***(*a3 + 16 * i)) >> 2;
      if (v9 % a4)
      {
        v10 = v9 / a4 + 1;
      }

      else
      {
        v10 = v9 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA44FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * *(v8 + 184) * a2);
  v12 = *v9;
  v10 = (v9 + 2);
  v11 = v12;
  xgboost::common::HistCollection<float>::operator[](*(a1 + 16), v12, v46);
  if (a3 < a4)
  {
    v13 = **(**(a1 + 24) + 16 * a2);
    v14 = *v13;
    v15 = v13[1] - *v13;
    if (a3 <= v15 >> 2)
    {
      v16 = v15 >> 2;
    }

    else
    {
      v16 = a3;
    }

    v35 = vdupq_n_s64(2uLL);
    do
    {
      if (a3 == v16)
      {
LABEL_31:
        std::terminate();
      }

      v17 = *(v14 + 4 * a3);
      v18 = *(a1 + 32);
      if (*v18)
      {
        if (*v18 <= v17)
        {
          goto LABEL_31;
        }

        v19 = *(v18[1] + v17);
        if (!xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
        {
          goto LABEL_29;
        }

        if (v19 != 1)
        {
LABEL_15:
          v37[0] = 0;
          v37[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v37, v46, v17, v11, *(a1 + 56), v10);
          v24 = (*(v8 + 296) + 24 * v11);
          if (v25 != *v24 || v23 != v24[1])
          {
            v36[0] = 0;
            v36[1] = 0;
            xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v36, v46, v17, v11, *(a1 + 56), v10);
          }

          goto LABEL_29;
        }

        v20 = (v17 + 1);
        v21 = **(a1 + 40);
        if (v20 >= (*(*(a1 + 40) + 8) - v21) >> 2)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v22 = (*(v21 + 4 * v20) - *(v21 + 4 * v17));
        if (v22 >= *(v8 + 28))
        {
          std::vector<unsigned long>::vector[abi:ne200100](&__p, v22);
          v27 = __p;
          if (__p != v43)
          {
            v28 = 0;
            v29 = (v43 - __p - 8) >> 3;
            v30 = vdupq_n_s64(v29);
            v31 = xmmword_274E1F3B0;
            do
            {
              v32 = vmovn_s64(vcgeq_u64(v30, v31));
              if (v32.i8[0])
              {
                v27[v28] = v28;
              }

              if (v32.i8[4])
              {
                v27[v28 + 1] = v28 + 1;
              }

              v28 += 2;
              v31 = vaddq_s64(v31, v35);
            }

            while (((v29 + 2) & 0x3FFFFFFFFFFFFFFELL) != v28);
          }

          xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(v46, *(**(a1 + 40) + 4 * v17), v22, v41);
          v40[0] = *(a1 + 56);
          v40[1] = v8;
          v40[2] = v41;
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(__p, v43, v40, v33, v34);
          v39[0] = (v43 - __p) >> 3;
          v39[1] = __p;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v39, v46, v17, v11, *(a1 + 56), v10);
          v38[0] = (v43 - __p) >> 3;
          v38[1] = __p;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v38, v46, v17, v11, *(a1 + 56), v10);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v45[0] = 0;
          v45[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v45, v46, v17, v11, *(a1 + 56), v10);
          v44[0] = 0;
          v44[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v44, v46, v17, v11, *(a1 + 56), v10);
        }
      }

      else if (xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
      {
        goto LABEL_15;
      }

LABEL_29:
      ++a3;
    }

    while (a3 != a4);
  }
}

void sub_274DA4A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)1>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    goto LABEL_30;
  }

  v45 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v16, *(v10 + 4 * v9) - v16, v49);
  v19 = (*v8 + 4 * a5);
  LODWORD(v47[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v47);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v47[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, v47);
  }

  v21 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
LABEL_30:
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = *(v21 + 4 * a5);
  v23 = *(v21 + 4 * v9);
  if (v23 != v22)
  {
    v44 = 0;
    v24 = 0;
    v29 = v15 + 24 * a6;
    v30 = 8 * v22;
    v31 = v23 - v22;
    v28 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v26 = 0.0;
    v25 = 0;
    v27 = 0.0;
    while (1)
    {
      if (*a4 <= v22)
      {
        std::terminate();
      }

      v32 = (a4[1] + v30);
      v33 = v32[1];
      v34 = v33;
      v18.i64[0] = *(v29 + 8);
      v35 = *v18.i64 - v33;
      v18.i32[0] = *(a1 + 32);
      if (v33 < *v18.i32 || v35 < *v18.i32)
      {
        goto LABEL_19;
      }

      v37 = *v32;
      v17.i64[0] = *v29;
      v38 = *v29 - v37;
      v48[0] = v38;
      v48[1] = v35;
      v47[0] = v37;
      v47[1] = v34;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v48, v47, v17, v18);
      *v17.i32 = *v17.i64 - *(v29 + 16);
      if (fabsf(*v17.i32) == INFINITY)
      {
        goto LABEL_19;
      }

      if ((v24 & 0x7FFFFFFF) > a5)
      {
        break;
      }

      if (v28 < *v17.i32)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v22;
      v30 += 8;
      if (!--v31)
      {
        goto LABEL_20;
      }
    }

    if (v28 > *v17.i32)
    {
      goto LABEL_19;
    }

LABEL_18:
    v44 = 1;
    v42 = v37;
    v43 = v34;
    v26 = v35;
    v27 = v38;
    v25 = *(*v45 + 4 * v22);
    v28 = *v17.i32;
    v24 = a5;
    goto LABEL_19;
  }

  v44 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
LABEL_20:
  if (fabsf(v28) != INFINITY)
  {
    v39 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) > (v24 & 0x7FFFFFFF))
    {
      if (v39 > v28)
      {
        return 0.0;
      }

      goto LABEL_27;
    }

    if (v39 < v28)
    {
LABEL_27:
      *a8 = v28;
      *(a8 + 4) = v24;
      *(a8 + 8) = v25;
      *(a8 + 40) = v44;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v27;
      *(a8 + 56) = v26;
      *(a8 + 64) = v42;
      *(a8 + 72) = v43;
    }
  }

  return 0.0;
}

double xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)1>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v16, *(v10 + 4 * v9) - v16, v50);
  v19 = (*v8 + 4 * a5);
  LODWORD(v48[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v48);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v48[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, v48);
  }

  v21 = *(*v8 + 4 * v9);
  v22 = *(*v8 + 4 * a5);
  if (v22 != v21)
  {
    v45 = 0;
    v23 = 0;
    v28 = v15 + 24 * a6;
    v29 = 8 * v21;
    v30 = v22 - v21;
    v31 = v21 - 1;
    v27 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    v25 = 0.0;
    v24 = 0;
    v26 = 0.0;
    while (1)
    {
      if (*a4 <= v31)
      {
        std::terminate();
      }

      v32 = a4[1] + v29;
      v33 = *(v32 - 4);
      v34 = v33;
      v18.i64[0] = *(v28 + 8);
      v35 = *v18.i64 - v33;
      v18.i32[0] = *(a1 + 32);
      if (v33 < *v18.i32 || v35 < *v18.i32)
      {
        goto LABEL_18;
      }

      v37 = *(v32 - 8);
      v17.i64[0] = *v28;
      v38 = *v28 - v37;
      v49[0] = v37;
      v49[1] = v34;
      v48[0] = v38;
      v48[1] = v35;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v49, v48, v17, v18);
      *v17.i32 = *v17.i64 - *(v28 + 16);
      if (fabsf(*v17.i32) == INFINITY)
      {
        goto LABEL_18;
      }

      if ((v23 & 0x7FFFFFFF) > a5)
      {
        break;
      }

      if (v27 < *v17.i32)
      {
        goto LABEL_17;
      }

LABEL_18:
      v29 -= 8;
      --v31;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_20;
      }
    }

    if (v27 > *v17.i32)
    {
      goto LABEL_18;
    }

LABEL_17:
    v45 = 1;
    v43 = v38;
    v44 = v35;
    v25 = v34;
    v26 = v37;
    v24 = *(*v46 + 4 * v31);
    v27 = *v17.i32;
    v23 = a5 | 0x80000000;
    goto LABEL_18;
  }

  v45 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
LABEL_20:
  if (fabsf(v27) != INFINITY)
  {
    v40 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) > (v23 & 0x7FFFFFFF))
    {
      if (v40 > v27)
      {
        return 0.0;
      }

      goto LABEL_27;
    }

    if (v40 < v27)
    {
LABEL_27:
      *a8 = v27;
      *(a8 + 4) = v23;
      *(a8 + 8) = v24;
      *(a8 + 40) = v45;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v26;
      *(a8 + 56) = v25;
      *(a8 + 64) = v43;
      *(a8 + 72) = v44;
    }
  }

  return 0.0;
}

void *xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan@<X0>(void *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (a3 == -1)
  {
    a3 = *result - a2;
    if (*result < a2)
    {
      goto LABEL_8;
    }
  }

  else if (a3 + a2 > *result)
  {
    goto LABEL_8;
  }

  v4 = result[1];
  *a4 = a3;
  a4[1] = v4 + 8 * a2;
  if (a3 && !v4)
  {
LABEL_8:
    std::terminate();
  }

  return result;
}

float64_t xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  v17 = *(v10 + 4 * v9) - v16;
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v16, v17, v67);
  v61 = 0;
  v62 = 0;
  memset(&__p, 0, sizeof(__p));
  v64 = 0;
  v65 = 0u;
  v66 = 0u;
  v19 = (*v8 + 4 * a5);
  LODWORD(v56[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v56);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v56[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, v56);
  }

  v21 = *v8;
  v22 = v8[1];
  v23 = *(*v8 + 4 * a5);
  v60 = v23;
  if (v9 >= (v22 - v21) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = *(v21 + 4 * v9);
  if (v23 == v24)
  {
    v25 = 0;
    v26 = 0.0;
    v27.f64[0] = 0.0;
    goto LABEL_27;
  }

  v45 = v17;
  v46 = a8;
  v28 = 0;
  v25 = 0;
  v29 = v15 + 24 * a6;
  v30 = 4 * v23;
  v27 = 0uLL;
  v47 = -1;
  v26 = 0.0;
  v44 = v23;
  v31 = v23;
  do
  {
    if (*a3 <= v28)
    {
      goto LABEL_38;
    }

    v32 = *(a3[1] + 8 * v28);
    if (v67[0] <= v32)
    {
      goto LABEL_38;
    }

    v27 = vaddq_f64(v27, vcvtq_f64_f32(*(v67[1] + 8 * v32)));
    v34 = *v29;
    v33 = vsubq_f64(*v29, v27);
    *v34.i64 = *(a1 + 32);
    v18.i64[0] = *&v33.f64[1];
    if (v33.f64[1] >= *v34.i64 && v27.f64[1] >= *v34.i64)
    {
      v51 = v33;
      v52 = v27;
      *__x = v33;
      v56[0] = v27;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, __x, v56, v34, v18);
      v37 = v36 - *(v29 + 16);
      if (fabsf(v37) == INFINITY)
      {
        v27 = v52;
        goto LABEL_21;
      }

      v38 = *(*v48 + v30);
      v27 = v52;
      if ((v25 & 0x7FFFFFFF) <= a5)
      {
        v39 = v51;
        if (v26 >= v37)
        {
          goto LABEL_21;
        }

LABEL_20:
        v61 = __PAIR64__(a5, LODWORD(v37));
        v62 = v38;
        v64 = 1;
        v26 = v37;
        v25 = a5;
        v47 = v31;
        v65 = v39;
        v66 = v52;
        goto LABEL_21;
      }

      v39 = v51;
      if (v26 <= v37)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    ++v31;
    v30 += 4;
    ++v28;
  }

  while (v24 != v31);
  a8 = v46;
  if (v47 != -1)
  {
    v53 = v27.f64[0];
    __x[0] = 0;
    std::vector<unsigned int>::resize(&__p, vcvtpd_u64_f64(vcvtd_n_f64_u64(v45, 5uLL)), __x);
    v59[0] = __p.__end_ - __p.__begin_;
    v59[1] = __p.__begin_;
    v40 = v47 - v44 + 1;
    if (*a3 < v40)
    {
LABEL_38:
      std::terminate();
    }

    *__x = v59;
    *&__x[2] = v48;
    v58 = &v60;
    std::for_each[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#1}>(a3, 0, a3, v40, __x, v56);
    v26 = *&v61;
    v25 = HIDWORD(v61);
    v27.f64[0] = v53;
  }

LABEL_27:
  if (fabsf(v26) != INFINITY)
  {
    v41 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v25 & 0x7FFFFFFF))
    {
      if (v41 >= v26)
      {
        goto LABEL_35;
      }
    }

    else if (v41 > v26)
    {
      goto LABEL_35;
    }

    *a8 = v26;
    *(a8 + 4) = v25;
    *(a8 + 8) = v62;
    *(a8 + 40) = v64;
    if (&v61 != a8)
    {
      v54 = v27.f64[0];
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
      v27.f64[0] = v54;
    }

    v42 = v66;
    *(a8 + 48) = v65;
    *(a8 + 64) = v42;
  }

LABEL_35:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    v55 = v27.f64[0];
    operator delete(__p.__begin_);
    v27.f64[0] = v55;
  }

  return v27.f64[0];
}

void sub_274DA58D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float64_t xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v69 = a5;
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v47 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  v17 = *(v10 + 4 * v9) - v16;
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v16, v17, v68);
  v62 = 0;
  v63 = 0;
  memset(&v64, 0, sizeof(v64));
  v65 = 0;
  v66 = 0u;
  v67 = 0u;
  v19 = (*v8 + 4 * a5);
  LODWORD(v57[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v57);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v57[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, v57);
  }

  v21 = *(*v8 + 4 * v9);
  v22 = *(*v8 + 4 * a5);
  if (v21 == v22)
  {
    v23 = 0;
    v24 = 0.0;
    v25.f64[0] = 0.0;
    goto LABEL_24;
  }

  v44 = v17;
  v45 = a8;
  v26 = 0;
  v23 = 0;
  v27 = v15 + 24 * a6;
  v28 = v21 - 1 - v22 + 1;
  v29 = 4 * (v21 - 1);
  v25 = 0uLL;
  v46 = -1;
  v24 = 0.0;
  v43 = v21 - 1;
  v30 = v21 - 1;
  do
  {
    if (*a3 <= v26)
    {
      goto LABEL_37;
    }

    v31 = *(a3[1] + 8 * v26);
    if (v68[0] <= v31)
    {
      goto LABEL_37;
    }

    v25 = vaddq_f64(v25, vcvtq_f64_f32(*(v68[1] + 8 * v31)));
    v33 = *v27;
    v32 = vsubq_f64(*v27, v25);
    *v33.i64 = *(a1 + 32);
    v18.i64[0] = *&v32.f64[1];
    if (v32.f64[1] >= *v33.i64 && v25.f64[1] >= *v33.i64)
    {
      v50 = v32;
      v51 = v25;
      *__x = v25;
      v57[0] = v32;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, __x, v57, v33, v18);
      v36 = v35 - *(v27 + 16);
      if (fabsf(v36) == INFINITY)
      {
        v25 = v51;
        goto LABEL_20;
      }

      v37 = *(*v47 + v29);
      v25 = v51;
      if ((v23 & 0x7FFFFFFF) <= a5)
      {
        v38 = v50;
        if (v24 >= v36)
        {
          goto LABEL_20;
        }

LABEL_19:
        *&v62 = v36;
        v23 = a5 | 0x80000000;
        HIDWORD(v62) = a5 | 0x80000000;
        v63 = v37;
        v65 = 1;
        v24 = v36;
        v46 = v30;
        v66 = v51;
        v67 = v38;
        goto LABEL_20;
      }

      v38 = v50;
      if (v24 <= v36)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    ++v26;
    --v30;
    v29 -= 4;
  }

  while (v28 != v26);
  a8 = v45;
  if (v46 != -1)
  {
    v52 = v25.f64[0];
    __x[0] = 0;
    std::vector<unsigned int>::resize(&v64, vcvtpd_u64_f64(vcvtd_n_f64_u64(v44, 5uLL)), __x);
    v61[0] = v64.__end_ - v64.__begin_;
    v61[1] = v64.__begin_;
    v39 = *a3;
    *__x = a3;
    *&__x[2] = v39;
    v59 = a3;
    v60 = v39;
    if (v39 < v43 - v46)
    {
LABEL_37:
      std::terminate();
    }

    *&v57[0] = a3;
    *(&v57[0] + 1) = v39 - (v43 - v46);
    v57[1] = __PAIR128__(*(&v57[0] + 1), a3);
    v56[0] = v61;
    v56[1] = v47;
    v56[2] = v8;
    v56[3] = &v69;
    std::for_each[abi:ne200100]<std::reverse_iterator<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#2}>(__x, v57, v56, &v55);
    v24 = *&v62;
    v23 = HIDWORD(v62);
    v25.f64[0] = v52;
  }

LABEL_24:
  if (fabsf(v24) != INFINITY)
  {
    v40 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v23 & 0x7FFFFFFF))
    {
      if (v40 >= v24)
      {
        goto LABEL_34;
      }
    }

    else if (v40 > v24)
    {
      goto LABEL_34;
    }

    *a8 = v24;
    *(a8 + 4) = v23;
    *(a8 + 8) = v63;
    *(a8 + 40) = v65;
    if (&v62 != a8)
    {
      v53 = v25.f64[0];
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), v64.__begin_, v64.__end_, v64.__end_ - v64.__begin_);
      v25.f64[0] = v53;
    }

    v41 = v67;
    *(a8 + 48) = v66;
    *(a8 + 64) = v41;
  }

LABEL_34:
  if (v64.__begin_)
  {
    v64.__end_ = v64.__begin_;
    v54 = v25.f64[0];
    operator delete(v64.__begin_);
    v25.f64[0] = v54;
  }

  return v25.f64[0];
}

void sub_274DA5E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 200);
  if (v35)
  {
    *(v33 - 192) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    goto LABEL_32;
  }

  v44 = *(a2 + 8);
  v17 = *(a1 + 296);
  v18 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v18, *(v10 + 4 * v9) - v18, v49);
  v19 = (*v8 + 4 * a5);
  LODWORD(v47.f64[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v47);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v47.f64[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, &v47);
  }

  v21 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
LABEL_32:
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = *(v21 + 4 * a5);
  v23 = *(v21 + 4 * v9);
  if (v23 == v22)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    goto LABEL_22;
  }

  v43 = a8;
  v24 = 0;
  v31 = 0uLL;
  v32 = v17 + 24 * a6;
  v33 = v23 - v22;
  v30 = 0.0;
  v28 = 0.0;
  v27 = 0.0;
  v26 = 0.0;
  v25 = 0;
  v29 = 0.0;
  do
  {
    if (*a4 <= v22)
    {
      std::terminate();
    }

    v31 = vaddq_f64(v31, vcvtq_f64_f32(*(a4[1] + 8 * v22)));
    v35 = *v32;
    v34 = vsubq_f64(*v32, v31);
    *v35.i64 = *(a1 + 32);
    v36 = v31.f64[1];
    v37 = v34.f64[1];
    if (v31.f64[1] >= *v35.i64 && v34.f64[1] >= *v35.i64)
    {
      v45 = v34.f64[0];
      v46 = v31;
      v47 = v34;
      v48 = v31;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v48.f64, v47.f64, v31, v35);
      v40 = v39 - *(v32 + 16);
      if (fabsf(v40) == INFINITY)
      {
        v31 = v46;
        goto LABEL_20;
      }

      v41 = *(*v44 + 4 * v22);
      if ((v24 & 0x7FFFFFFF) <= a5)
      {
        v31 = v46;
        if (v30 >= v40)
        {
          goto LABEL_20;
        }

LABEL_19:
        v28 = v37;
        v27 = v45;
        v26 = v36;
        v29 = v31.f64[0];
        v25 = *(*v44 + 4 * v22);
        v30 = v40;
        v24 = a5;
        goto LABEL_20;
      }

      v31 = v46;
      if (v30 <= v40)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    ++v22;
    --v33;
  }

  while (v33);
  a8 = v43;
LABEL_22:
  if (fabsf(v30) != INFINITY)
  {
    v42 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v24 & 0x7FFFFFFF))
    {
      if (v42 < v30)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v42 > v30)
      {
        return;
      }

LABEL_29:
      *a8 = v30;
      *(a8 + 4) = v24;
      *(a8 + 8) = v25;
      *(a8 + 40) = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v29;
      *(a8 + 56) = v26;
      *(a8 + 64) = v27;
      *(a8 + 72) = v28;
    }
  }
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = *(a2 + 8);
  v16 = *(a1 + 296);
  v17 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(a4, v17, *(v10 + 4 * v9) - v17, v53);
  v18 = (*v8 + 4 * a5);
  v51.i32[0] = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, &v51);
  }

  v19 = (*v8 + 4 * v9);
  v51.i32[0] = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v51);
  }

  v20 = *(*v8 + 4 * a5);
  v21 = *(*v8 + 4 * v9);
  if (v21 == v20)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0.0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    goto LABEL_26;
  }

  v45 = a2;
  v44 = a8;
  v22 = 0;
  v29 = 0uLL;
  v30 = v16 + 24 * a6;
  v31 = 4 * v21 - 8;
  v32 = v21 - 1;
  v28 = 0.0;
  v26 = 0;
  v25 = 0;
  v24 = 0.0;
  v23 = 0;
  v27 = 0.0;
  do
  {
    if (*a4 <= v32)
    {
      std::terminate();
    }

    LODWORD(v21) = v21 - 1;
    v29 = vaddq_f64(v29, vcvtq_f64_f32(*(a4[1] + 8 * v32)));
    v34 = *v30;
    v33 = vsubq_f64(*v30, v29);
    *v34.i64 = *(a1 + 32);
    v35 = v29.i64[1];
    v36 = v33.f64[1];
    if (*&v29.i64[1] < *v34.i64 || v33.f64[1] < *v34.i64)
    {
      v38 = v32;
      goto LABEL_24;
    }

    v49 = v33.f64[0];
    v50 = v29;
    v51 = v29;
    v52 = v33;
    xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v52.f64, v51.i64, v29, v34);
    if (v20 == v32)
    {
      v40 = (**(v45 + 24) + 4 * a5);
    }

    else
    {
      v40 = (*v46 + v31);
    }

    v41 = v39 - *(v30 + 16);
    if (fabsf(v41) == INFINITY)
    {
      v38 = v21;
      v29 = v50;
      goto LABEL_24;
    }

    v42 = *v40;
    v29 = v50;
    if ((v22 & 0x7FFFFFFF) <= a5)
    {
      if (v28 >= v41)
      {
LABEL_21:
        v38 = v21;
        goto LABEL_24;
      }
    }

    else if (v28 > v41)
    {
      goto LABEL_21;
    }

    v38 = v21;
    v26 = v35;
    v25 = v50.i64[0];
    v24 = v36;
    v27 = v49;
    v23 = v42;
    v28 = v41;
    v22 = a5 | 0x80000000;
LABEL_24:
    v31 -= 4;
    --v32;
  }

  while (v38 != v20);
  a8 = v44;
LABEL_26:
  if (fabsf(v28) != INFINITY)
  {
    v43 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v22 & 0x7FFFFFFF))
    {
      if (v43 < v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v43 > v28)
      {
        return;
      }

LABEL_33:
      *a8 = v28;
      *(a8 + 4) = v22;
      *(a8 + 8) = v23;
      *(a8 + 40) = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v27;
      *(a8 + 56) = v24;
      *(a8 + 64) = v25;
      *(a8 + 72) = v26;
    }
  }
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a2 - a1;
  if (v8 < 129)
  {
    v14 = 0;
    v10 = 0;
  }

  else
  {
    v9 = MEMORY[0x277D826F0];
    v10 = a2 - a1;
    while (1)
    {
      v11 = operator new(8 * v10, v9);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_8;
      }
    }

    v14 = v11;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, v8, v14, v10, a4, a5);
  if (v14)
  {

    operator delete(v14);
  }
}

void sub_274DA690C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v11 = *(a2 - 1);
      v12 = a3[2];
      if (*v12 <= v11 || (v13 = *a1, v14 = a3[1], *v15.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a7, a8, *a3, v14, (v12[1] + 8 * v11)), v17 = a3[2], *v17 <= v13))
      {
        std::terminate();
      }

      if (*v15.i64 < xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v15, v16, *a3, v14, (v17[1] + 8 * v13)))
      {
        v18 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v18;
      }
    }

    else if (a4 > 128)
    {
      v22 = a4 >> 1;
      v23 = &a1[a4 >> 1];
      v24 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v23, a3, v24, a5, a7, a8);
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v22], v27, v28);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(a5, &a5[v22], &a5[v22], &a5[a4], a1, a3, v29, v30);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v23, a3, v24, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v25, v26);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, a7, a8);
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *a1, unint64_t *a2, uint64_t *a3, int8x16_t a4, int8x16_t a5)
{
  if (a1 != a2)
  {
    v7 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v7;
        v12 = *v7;
        v13 = a3[2];
        if (*v13 <= v12 || (v14 = *v10, v15 = a3[1], *v16.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a4, a5, *a3, v15, (v13[1] + 8 * v12)), v18 = a3[2], *v18 <= v14))
        {
LABEL_17:
          std::terminate();
        }

        v19 = *v16.i64;
        *a4.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v16, v17, *a3, v15, (v18[1] + 8 * v14));
        if (v19 < *a4.i64)
        {
          v20 = *v11;
          v21 = v9;
          while (1)
          {
            *(a1 + v21 + 8) = *(a1 + v21);
            if (!v21)
            {
              break;
            }

            v22 = a3[2];
            if (*v22 <= v20)
            {
              goto LABEL_17;
            }

            v23 = *(a1 + v21 - 8);
            v24 = a3[1];
            *v25.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a4, a5, *a3, v24, (v22[1] + 8 * v20));
            v27 = a3[2];
            if (*v27 <= v23)
            {
              goto LABEL_17;
            }

            v28 = *v25.i64;
            *a4.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v25, v26, *a3, v24, (v27[1] + 8 * v23));
            v21 -= 8;
            if (v28 >= *a4.i64)
            {
              v29 = (a1 + v21 + 8);
              goto LABEL_14;
            }
          }

          v29 = a1;
LABEL_14:
          *v29 = v20;
        }

        v7 = v11 + 1;
        v9 += 8;
        v10 = v11;
      }

      while (v11 + 1 != a2);
    }
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, int8x16_t a6, int8x16_t a7)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v12 = *(a2 - 1);
      v13 = a3[2];
      if (*v13 <= v12 || (v14 = *a1, v15 = a3[1], *v16.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a6, a7, *a3, v15, (v13[1] + 8 * v12)), v18 = a3[2], *v18 <= v14))
      {
        std::terminate();
      }

      if (*v16.i64 >= xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v16, v17, *a3, v15, (v18[1] + 8 * v14)))
      {
        *a5 = *a1;
        v19 = *(a2 - 1);
      }

      else
      {
        *a5 = *(a2 - 1);
        v19 = *a1;
      }

      a5[1] = v19;
    }

    else if (a4 == 1)
    {
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, a3, v20, v21);
    }

    else
    {

      std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a5, a3, a6, a7);
    }
  }
}

void std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (a1 == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v22 = *a3++;
      *a5++ = v22;
    }
  }

  else
  {
    v13 = a1;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a7, a8, *a6, v16, (v14[1] + 8 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v17, v18, *a6, v16, (v19[1] + 8 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      v13 += v20 >= *a7.i64;
      a3 += v20 < *a7.i64;
      *a5++ = *v21;
      if (v13 == a2)
      {
        goto LABEL_12;
      }
    }

    while (v13 != a2)
    {
      v23 = *v13++;
      *a5++ = v23;
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if (a6)
  {
    v11 = a6;
    do
    {
      if (a5 <= a8 || v11 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, a4, a5, v11, a7, a9, a10);
        return;
      }

      if (!a5)
      {
        return;
      }

      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = a4[2];
        if (*v18 <= *a2 || (v19 = *&a1[8 * v17], v20 = a4[1], *v21.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a9, a10, *a4, v20, (v18[1] + 8 * *a2)), v23 = a4[2], *v23 <= v19))
        {
          std::terminate();
        }

        v24 = *v21.i64;
        *a9.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v21, v22, *a4, v20, (v23[1] + 8 * v19));
        if (v24 < *a9.i64)
        {
          break;
        }

        ++v17;
        v16 -= 8;
        if (a5 == v17)
        {
          return;
        }
      }

      v25 = a5 - v17;
      v39 = a8;
      v36 = &a1[-v16];
      if (a5 - v17 >= v11)
      {
        if (a5 - 1 == v17)
        {
          v34 = *&a1[8 * v17];
          *&a1[8 * v17] = *a2;
          *a2 = v34;
          return;
        }

        v38 = v25 / 2;
        v41 = *a4;
        v42 = a4[2];
        v43 = 0;
        v30 = &a1[8 * (v25 / 2) - v16];
        v27 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(a2, v30, (a3 - a2) >> 3, v41.i64, v41, a10);
        v26 = (v27 - a2) >> 3;
      }

      else
      {
        v26 = v11 / 2;
        v27 = &a2[8 * (v11 / 2)];
        v28 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(&a1[-v16], a2, v27, a4, a9, a10);
        v29 = v28 - a1;
        v30 = v28;
        v38 = (v29 + v16) >> 3;
      }

      v35 = v30;
      v31 = v11 - v26;
      v32 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v30, a2, v27);
      a1 = v32;
      if (v38 + v26 >= v11 + a5 - (v38 + v26) - v17)
      {
        v33 = v32;
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(v32, v27, a3, a4, a5 - v38 - v17, v31, a7, v39);
        v27 = v35;
        a1 = v36;
        v31 = v26;
        a5 = v38;
        a3 = v33;
      }

      else
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(v36, v35, v32, a4, v38, v26, a7, v39);
        a5 = a5 - v38 - v17;
      }

      v11 = v31;
      a2 = v27;
      a8 = v39;
    }

    while (v31);
  }
}

double xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  v5 = a5[1];
  a1.i64[0] = 0;
  if (v5 > 0.0 && *(a4 + 32) <= v5)
  {
    v7 = *a5;
    v8 = *(a4 + 40);
    if (v8 >= *a5)
    {
      v9 = 0.0;
      if (v7 < -v8)
      {
        v9 = v7 + v8;
      }
    }

    else
    {
      v9 = v7 - v8;
    }

    *a1.i32 = -v9 / (v5 + *(a4 + 36));
    a2.i32[0] = *(a4 + 44);
    v10 = fabsf(*a1.i32) <= *a2.i32 || *a2.i32 == 0.0;
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    LODWORD(v12) = vbslq_s8(v11, a2, a1).u32[0];
    if (!v10)
    {
      *a1.i32 = v12;
    }

    *a1.i64 = *a1.i32;
  }

  return *a1.i64;
}

void std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a1 != a2)
  {
    v8 = a1 + 1;
    *a3 = *a1;
    if (a1 + 1 != a2)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        v12 = a4[2];
        if (*v12 <= *v8 || (v13 = v11, v15 = *v11, ++v11, v14 = v15, v16 = a4[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a5, a6, *a4, v16, (v12[1] + 8 * *v8)), v19 = a4[2], *v19 <= v15))
        {
LABEL_17:
          std::terminate();
        }

        v20 = *v17.i64;
        *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v17, v18, *a4, v16, (v19[1] + 8 * v14));
        v21 = v11;
        if (v20 < *a5.i64)
        {
          v13[1] = *v13;
          v21 = a3;
          if (v13 != a3)
          {
            v22 = v10;
            while (1)
            {
              v23 = a4[2];
              if (*v23 <= *v8)
              {
                goto LABEL_17;
              }

              v24 = *(a3 + v22 - 8);
              v25 = a4[1];
              *v26.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a5, a6, *a4, v25, (v23[1] + 8 * *v8));
              v28 = a4[2];
              if (*v28 <= v24)
              {
                goto LABEL_17;
              }

              v29 = *v26.i64;
              *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v26, v27, *a4, v25, (v28[1] + 8 * v24));
              if (v29 >= *a5.i64)
              {
                break;
              }

              *(a3 + v22) = *(a3 + v22 - 8);
              v22 -= 8;
              if (!v22)
              {
                v21 = a3;
                goto LABEL_15;
              }
            }

            v21 = (a3 + v22);
          }
        }

LABEL_15:
        v30 = *v8++;
        *v21 = v30;
        v10 += 8;
      }

      while (v8 != a2);
    }
  }
}

void std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (a1 == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v22 = *a3++;
      *a5++ = v22;
    }
  }

  else
  {
    v13 = a1;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a7, a8, *a6, v16, (v14[1] + 8 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v17, v18, *a6, v16, (v19[1] + 8 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      a3 += v20 < *a7.i64;
      v13 += v20 >= *a7.i64;
      *a5++ = *v21;
      if (v13 == a2)
      {
        goto LABEL_12;
      }
    }

    while (v13 != a2)
    {
      v23 = *v13++;
      *a5++ = v23;
    }
  }
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(char *__dst, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *__src, int8x16_t a8, int8x16_t a9)
{
  if (a5 <= a6)
  {
    v14 = __src;
    if (__dst != a2)
    {
      v14 = __src;
      v15 = __dst;
      do
      {
        v16 = *v15;
        v15 += 8;
        *v14 = v16;
        v14 += 8;
      }

      while (v15 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(__src, v14, a2, a3, __dst, a4, a8, a9);
  }

  else
  {
    v11 = __src;
    if (a2 != a3)
    {
      v11 = __src;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        *v11 = v13;
        v11 += 8;
      }

      while (v12 != a3);
    }

    v17 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(a8, a9, v11, v11, __src, __src, a2, a2, __dst, __dst, a3, a3, &v17);
  }
}

void *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(void *a1, void *a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a2 != a1)
  {
    v8 = a1;
    v9 = a2 - a1;
    do
    {
      v10 = a4[2];
      if (*v10 <= *a3 || (v11 = &v8[v9 >> 1], v12 = *v11, v13 = a4[1], *v14.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a5, a6, *a4, v13, (v10[1] + 8 * *a3)), v16 = a4[2], *v16 <= v12))
      {
        std::terminate();
      }

      v17 = *v14.i64;
      *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v14, v15, *a4, v13, (v16[1] + 8 * v12));
      if (v17 < *a5.i64)
      {
        v9 >>= 1;
      }

      else
      {
        v8 = v11 + 1;
        v9 += ~(v9 >> 1);
      }
    }

    while (v9);
    return v8;
  }

  return a2;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3, char *a4, void *__dst, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (__src != a2)
  {
    v13 = __src;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a7, a8, *a6, v16, (v14[1] + 8 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v17, v18, *a6, v16, (v19[1] + 8 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      a3 += 8 * (v20 < *a7.i64);
      v13 += 8 * (v20 >= *a7.i64);
      *__dst++ = *v21;
      if (v13 == a2)
      {
        return;
      }
    }

    memmove(__dst, v13, a2 - v13);
  }
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t **a13)
{
  if (a4 != a6)
  {
    v15 = a4;
    while (a8 != a10)
    {
      v17 = *(v15 - 8);
      v18 = *a13;
      v19 = (*a13)[2];
      if (*v19 <= v17 || (v20 = *(a8 - 8), v21 = v18[1], *v22.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a1, a2, *v18, v21, (v19[1] + 8 * v17)), v24 = v18[2], *v24 <= v20))
      {
        std::terminate();
      }

      v25 = *v22.i64;
      *a1.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v22, v23, *v18, v21, (v24[1] + 8 * v20));
      if (v25 >= *a1.i64)
      {
        v26 = v15;
      }

      else
      {
        v26 = a8;
      }

      if (v25 >= *a1.i64)
      {
        v15 -= 8;
      }

      else
      {
        a8 -= 8;
      }

      *(a12 - 8) = *(v26 - 8);
      a12 -= 8;
      if (v15 == a6)
      {
        return;
      }
    }

    if (a6 != v15)
    {
      v27 = -8;
      do
      {
        v28 = *(v15 - 8);
        v15 -= 8;
        *(a12 + v27) = v28;
        v27 -= 8;
      }

      while (v15 != a6);
    }
  }
}

void *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(void *a1, unint64_t *a2, unint64_t a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a3)
  {
    v8 = a3;
    do
    {
      v10 = &a1[v8 >> 1];
      v11 = a4[2];
      if (*v11 <= *v10 || (v12 = *a2, v13 = a4[1], *v14.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(a5, a6, *a4, v13, (v11[1] + 8 * *v10)), v16 = a4[2], *v16 <= v12))
      {
        std::terminate();
      }

      v17 = *v14.i64;
      *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<float>>(v14, v15, *a4, v13, (v16[1] + 8 * v12));
      if (v17 >= *a5.i64)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v17 < *a5.i64)
      {
        a1 = v10 + 1;
      }
    }

    while (v8);
  }

  return a1;
}

__n128 std::for_each[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#1}>@<Q0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 != a3 || a2 != a4)
  {
    v6 = *a1;
    if (a2 > *a1)
    {
      v6 = a2;
    }

    do
    {
      if (v6 == a2 || (v7 = a2, v8 = *(**(a5 + 8) + 4 * **(a5 + 16) + 4 * *(a1[1] + 8 * a2)), **a5 <= v8 >> 5))
      {
        std::terminate();
      }

      *(*(*a5 + 8) + 4 * (v8 >> 5)) |= 1 << ~v8;
      ++a2;
    }

    while (a1 != a3 || a4 - 1 != v7);
  }

  result = *a5;
  *a6 = *a5;
  *(a6 + 16) = *(a5 + 16);
  return result;
}

__n128 std::for_each[abi:ne200100]<std::reverse_iterator<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#2}>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  if (v4 != v6 || v5 != *(a2 + 24))
  {
    v8 = v5 - 1;
    do
    {
      v9 = v8;
      v10 = __CFADD__(v8, 1);
      v11 = v8 + 1;
      if (v10 || v11 > *v4 || (v12 = *(**(a3 + 8) + 4 * *(**(a3 + 16) + 4 * **(a3 + 24)) + 4 * *(v4[1] + 8 * v9)), **a3 <= v12 >> 5))
      {
        std::terminate();
      }

      *(*(*a3 + 8) + 4 * (v12 >> 5)) |= 1 << ~v12;
      *(a1 + 24) = v9;
      v8 = v9 - 1;
    }

    while (v4 != v6 || v9 != *(a2 + 24));
  }

  result = *a3;
  v14 = *(a3 + 16);
  *a4 = *a3;
  a4[1] = v14;
  return result;
}

void std::vector<xgboost::tree::CPUExpandEntry>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::ApplyTreeSplit(uint64_t a1, int *a2, xgboost::RegTree *a3)
{
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v52);
  v6 = a2 + 14;
  v7 = *a2;
  v8 = a2 + 18;
  v9 = *(a2 + 18);
  v48 = vaddq_f64(*(a2 + 14), v9);
  *&v51.__begin_ = v48;
  v10 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v7, a1, &v51, v48, v9);
  v11 = *a2;
  *&v51.__begin_ = *(a2 + 14);
  v13 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v11, a1, &v51, *&v51.__begin_, v12);
  v14 = *a2;
  *&v51.__begin_ = *(a2 + 18);
  v17 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v14, a1, &v51, *&v51.__begin_, v15);
  if (*(a2 + 48) == 1)
  {
    memset(&v51, 0, sizeof(v51));
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    if (v18 == v19)
    {
      v25 = *(a2 + 4);
      if (v25 < 0.0 || v25 >= 16777000.0)
      {
        xgboost::common::InvalidCategory(v16);
        v25 = *(a2 + 4);
      }

      v26 = v25;
      __x = 0;
      std::vector<unsigned int>::resize(&v51, vcvtpd_u64_f64(vcvtd_n_f64_u32((v26 & ~(v26 >> 31)) + 1, 5uLL)), &__x);
      begin = v51.__begin_;
      end = v51.__end_;
      v27 = v26 >> 5;
      if (v27 >= v51.__end_ - v51.__begin_)
      {
        std::terminate();
      }

      v51.__begin_[v27] |= 1 << ~v26;
    }

    else if (&v51 == (a2 + 6))
    {
      begin = 0;
      end = 0;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v51, v18, v19, (v19 - v18) >> 2);
      begin = v51.__begin_;
      end = v51.__end_;
    }

    v28 = *a2;
    v29 = a2[3];
    v49[0] = end - begin;
    v49[1] = begin;
    v30 = *&v48.i64[1];
    v31 = *(a2 + 8);
    v32 = *(a2 + 10);
    xgboost::RegTree::ExpandCategorical(a3, v28, v29 & 0x7FFFFFFF, v49, v29 >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v30, v31, v32);
    if (v51.__begin_)
    {
      v51.__end_ = v51.__begin_;
      operator delete(v51.__begin_);
    }
  }

  else
  {
    v22 = *&v48.i64[1];
    v23 = *(a2 + 8);
    v24 = *(a2 + 10);
    xgboost::RegTree::ExpandNode(a3, *a2, a2[3] & 0x7FFFFFFF, *(a2 + 4), a2[3] >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v22, v23, v24, -1);
  }

  v33 = (*(a3 + 20) + 20 * *a2);
  v34 = v33[1];
  v35 = v33[2];
  xgboost::tree::TreeEvaluator::AddSplit<false>(a1 + 152, *a2, v34, v35, v33[3] & 0x7FFFFFFF, v13, v17);
  std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize((a1 + 296), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 21) - *(a3 + 20)) >> 2));
  v37 = *(a1 + 296);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v37) >> 3) <= v34)
  {
    goto LABEL_22;
  }

  *(v37 + 24 * v34) = *v6;
  v38 = *a2;
  *&v51.__begin_ = *v6;
  v39 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v38, a1, &v51, *&v51.__begin_, v36);
  v40 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v39);
  v42 = *(a1 + 296);
  v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v42) >> 3);
  if (v43 <= v34 || (*(v42 + 24 * v34 + 16) = v40, v43 <= v35) || (*(v42 + 24 * v35) = *v8, v44 = *a2, *&v51.__begin_ = *v8, v45 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v44, a1, &v51, *&v51.__begin_, v41), v46 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v45), v47 = *(a1 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v47) >> 3) <= v35))
  {
LABEL_22:
    std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v47 + 24 * v35 + 16) = v46;
  if (*(a1 + 292) == 1)
  {
    xgboost::FeatureInteractionConstraintHost::SplitImpl((a1 + 192), *a2, *(*(a3 + 20) + 20 * *a2 + 12) & 0x7FFFFFFF, v34, v35);
  }
}

void sub_274DA7F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::vector[abi:ne200100](v67, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3));
  v9 = a6[1];
  if (v9 == *a6)
  {
    v18 = a6[1];
  }

  else
  {
    v10 = 0;
    v9 = *a6;
    do
    {
      v11 = *(v9 + 88 * v10);
      v12 = *(a5 + 160);
      v13 = *(v12 + 20 * v11);
      if (v13 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          ++v14;
          v13 = *(v12 + 20 * (v13 & 0x7FFFFFFF));
        }

        while (v13 != -1);
      }

      xgboost::common::ColumnSampler::GetFeatureSet(*(a1 + 136), v14, &v55);
      v15 = v67[0] + 16 * v10;
      v16 = v55;
      v55 = 0uLL;
      v17 = *(v15 + 8);
      *v15 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (*(&v55 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
      }

      ++v10;
      v9 = *a6;
      v18 = a6[1];
    }

    while (v10 < 0x2E8BA2E8BA2E8BA3 * ((v18 - *a6) >> 3));
  }

  v19 = v67[0];
  if (v67[0] == v67[1])
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 214);
    v50 = dmlc::LogMessageFatal::GetEntry(&v55);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: !features.empty()", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v19 = v67[0];
    v9 = *a6;
    v18 = a6[1];
  }

  v20 = ((*(**v19 + 8) - ***v19) >> 2) / *(a1 + 184);
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(v64, 0x2E8BA2E8BA2E8BA3 * ((v18 - v9) >> 3), v67, v21);
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v63, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3) * *(a1 + 184));
  v23 = *a6;
  v22 = a6[1];
  if (v22 != *a6)
  {
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = *(a1 + 184);
    do
    {
      if (v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *a6 + 88 * v25;
          v30 = v63[0] + v24 * v26 + v27;
          *v30 = *v29;
          v31 = *(v29 + 8);
          *(v30 + 16) = *(v29 + 16);
          *(v30 + 8) = v31;
          if (v30 != v29)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v30 + 24), *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 2);
          }

          v32 = *(v29 + 48);
          v33 = *(v29 + 64);
          *(v30 + 80) = *(v29 + 80);
          *(v30 + 48) = v32;
          *(v30 + 64) = v33;
          ++v28;
          v26 = *(a1 + 184);
          v27 += 88;
        }

        while (v28 < v26);
        v23 = *a6;
        v22 = a6[1];
      }

      ++v25;
      v24 += 88;
    }

    while (v25 < 0x2E8BA2E8BA2E8BA3 * ((v22 - v23) >> 3));
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v62);
  v34 = *(a3 + 16);
  v35 = *(a1 + 184);
  *&v55 = v63;
  *(&v55 + 1) = a1;
  v56 = a2;
  v57 = v67;
  v58 = a4;
  v59 = v34;
  v60 = a3;
  v61 = v62;
  xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v64, v35, &v55);
  v37 = *a6;
  v36 = a6[1];
  if (v36 == *a6)
  {
    goto LABEL_44;
  }

  v38 = 0;
  v39 = 0;
  v40 = *(a1 + 184);
  do
  {
    if (v40 < 1)
    {
      goto LABEL_43;
    }

    for (i = 0; i < v40; ++i)
    {
      v42 = v63[0] + 88 * (i + v39 * v40);
      v44 = *(v42 + 8);
      v43 = v42 + 8;
      v45 = v44;
      if (fabsf(v44) == INFINITY)
      {
        continue;
      }

      v46 = *a6 + 88 * v38 + 8;
      v47 = *(v43 + 4);
      v48 = *v46;
      if ((*(*a6 + 88 * v38 + 12) & 0x7FFFFFFFu) <= (v47 & 0x7FFFFFFFu))
      {
        if (v48 >= v45)
        {
          continue;
        }
      }

      else if (v48 > v45)
      {
        continue;
      }

      *v46 = v45;
      *(v46 + 4) = v47;
      *(v46 + 8) = *(v43 + 8);
      *(v46 + 40) = *(v43 + 40);
      if (v46 != v43)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v46 + 16), *(v43 + 16), *(v43 + 24), (*(v43 + 24) - *(v43 + 16)) >> 2);
      }

      *(v46 + 48) = *(v43 + 48);
      *(v46 + 64) = *(v43 + 64);
      v40 = *(a1 + 184);
    }

    v37 = *a6;
    v36 = a6[1];
LABEL_43:
    v38 = ++v39;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((v36 - v37) >> 3) > v39);
LABEL_44:
  *&v55 = v63;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  *&v55 = v67;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v55);
}

void sub_274DA83C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 112);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::Reset(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v9 = 1;
  v10 = a4;
  if (a4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v10, &v9);
  }

  *(a1 + 392) = a4;
  *(a1 + 400) = a5;
  *(a1 + 352) = *a3;
  *(a1 + 360) = *(a3 + 8);
  *(a1 + 368) = *(a3 + 16);
  *(a1 + 376) = *(a3 + 24);
  if (*a1 != a2)
  {
    *a1 = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 16));
  }

  *(a1 + 48) = *(a1 + 40);
  *(a1 + 4) = 0;
  if (*(a1 + 64) != a2)
  {
    *(a1 + 64) = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 80));
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 68) = 0;
  xgboost::common::ParallelGHistBuilder<float>::Init(a1 + 136, a2);
  *(a1 + 128) = a2;
  *(a1 + 408) = a6;
}

void sub_274DA85BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildHist(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int **a7, int **a8, uint64_t a9)
{
  v28 = 0;
  v29 = 0x7FFFFFFF;
  if (!a2)
  {
    xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRows(a1, &v29, &v28, a7, a8, a5);
  }

  if (*(a4 + 192) == 1)
  {
    memset(v24, 0, sizeof(v24));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v24, *a3, a3[1], (a3[1] - *a3) >> 4);
    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, a3[3], a3[4], (a3[4] - a3[3]) >> 3);
    xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(a1, a2, v24, a4, a7, a6, a9);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    v17 = v24[0];
    if (v24[0])
    {
      v18 = v24;
LABEL_12:
      v18[1] = v17;
      operator delete(v17);
    }
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v20, *a3, a3[1], (a3[1] - *a3) >> 4);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v21, a3[3], a3[4], (a3[4] - a3[3]) >> 3);
    xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(a1, a2, v20, a4, a7, a6, a9);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    v17 = v20[0];
    if (v20[0])
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  v19 = 1;
  if (!*(a1 + 400))
  {
    dmlc::LogCheckFormat<unsigned long,int>((a1 + 400), &v19);
  }

  if (*(a1 + 400) - 1 == a2)
  {
    if (*(a1 + 408) == 1)
    {
      xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(a1, a5, a7, a8, v29, v28);
    }

    else
    {
      xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(a1, a5, a7, a8);
    }
  }
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRows(unsigned int *a1, unsigned int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  if (*(a1 + 408) == 1)
  {
    xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(a1, a2, a3, a4, a5);
  }
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<double>::operator[](a1, *(*a5 + v17), &v23);
      v20 = __p[0] + v18;
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<double>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274DA8AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<double>::operator[](a1, *(*a5 + v17), &v23);
      v20 = __p[0] + v18;
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<double>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274DA8D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(unsigned int *a1, uint64_t a2, void *a3, void *a4, unsigned int a5, int a6)
{
  v23 = a2;
  v22 = a1[32];
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v19, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v22, 0x400uLL);
  v11 = a1[98];
  v14 = a3;
  v15 = a1;
  v16 = &v23;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v11, &v14);
  xgboost::common::HistCollection<double>::operator[](a1, a5, &v14);
  rabit::engine::ReduceHandle::Allreduce((a1 + 80), v15, 0x10, a1[32] * a6, 0, 0);
  v24[0] = v23;
  v12 = a1[98];
  v14 = a3;
  v15 = v24;
  v16 = a1;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v12, &v14);
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(&v14, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3), &v22, 0x400uLL);
  v24[3] = a3;
  v25 = v23;
  v13 = a1[98];
  v24[0] = a4;
  v24[1] = &v25;
  v24[2] = a1;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(&v14, v13, v24);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_274DA8EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  xgboost::common::Index::~Index(va);
  xgboost::common::Index::~Index(va1);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = *(a1 + 128);
  v13 = a2;
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v9, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v12, 0x400uLL);
  v7 = *(a1 + 392);
  v8[0] = a3;
  v8[1] = a1;
  v8[2] = &v13;
  v8[3] = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v9, v7, v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_274DA8FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  xgboost::common::Index::~Index(va);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(unsigned int *a1, unsigned int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a4) >> 3);
  v14 = *a5;
  v31 = a5[1];
  v15 = 0x2E8BA2E8BA2E8BA3 * ((v31 - *a5) >> 3);
  std::vector<int>::vector[abi:ne200100](&__p, v15 + v13);
  v16 = __p;
  if (v11 != v12)
  {
    v17 = *a4;
    if (v13 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    v19 = __p;
    do
    {
      v20 = *v17;
      v17 += 22;
      *v19++ = v20;
      --v18;
    }

    while (v18);
  }

  if (v31 != v14)
  {
    v21 = *a5;
    v22 = &v16[4 * v13];
    if (v15 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v15;
    }

    do
    {
      v24 = *v21;
      v21 += 22;
      *v22 = v24;
      v22 += 4;
      --v23;
    }

    while (v23);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v25 = __p;
  v26 = v33;
  if (__p == v33)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) != 0)
      {
        xgboost::common::HistCollection<double>::AddHistRow(a1, *v25);
        v28 = *a2;
        if (*a2 >= *v25)
        {
          v28 = *v25;
        }

        *a2 = v28;
        xgboost::common::HistCollection<double>::AddHistRow((a1 + 16), *v25);
        ++v27;
      }

      ++v25;
    }

    while (v25 != v26);
    v25 = __p;
    v26 = v33;
  }

  for (; v25 != v26; ++v25)
  {
    if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) == 0)
    {
      xgboost::common::HistCollection<double>::AddHistRow(a1, *v25);
      xgboost::common::HistCollection<double>::AddHistRow((a1 + 16), *v25);
    }
  }

  xgboost::common::HistCollection<double>::AllocateAllData(a1);
  xgboost::common::HistCollection<double>::AllocateAllData(a1 + 16);
  if (v27 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  *a3 = v29;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_274DA91BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(unsigned int *a1, signed int *a2, _DWORD *a3, signed int **a4, unsigned int **a5)
{
  v8 = *a4;
  v9 = a4[1];
  if (*a4 == v9)
  {
    v15 = *a4;
  }

  else
  {
    do
    {
      v13 = *v8;
      v8 += 22;
      v12 = v13;
      xgboost::common::HistCollection<double>::AddHistRow(a1, v13);
      v14 = *a2;
      if (*a2 >= v13)
      {
        v14 = v12;
      }

      *a2 = v14;
    }

    while (v8 != v9);
    v8 = *a4;
    v15 = a4[1];
  }

  *a3 = -1171354717 * ((v15 - v8) >> 3);
  v17 = *a5;
  v16 = a5[1];
  while (v17 != v16)
  {
    v18 = *v17;
    v17 += 22;
    xgboost::common::HistCollection<double>::AddHistRow(a1, v18);
  }

  xgboost::common::HistCollection<double>::AllocateAllData(a1);
}

void xgboost::common::HistCollection<double>::AddHistRow(uint64_t a1, unsigned int a2)
{
  v11 = -1;
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = (a1 + 40);
  if (a2 >= ((*(a1 + 48) - v5) >> 3))
  {
    v10 = 0xFFFFFFFFLL;
    std::vector<unsigned long>::resize((a1 + 40), a2 + 1, &v10);
    v5 = *v6;
  }

  v7 = (v5 + 8 * v4);
  if (*v7 != 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(v7, &v11);
  }

  v8 = a2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3) < v8)
  {
    std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::resize((a1 + 16), v8);
  }

  v9 = *(a1 + 4);
  *(*(a1 + 40) + 8 * v4) = v9;
  *(a1 + 4) = v9 + 1;
}

void sub_274DA9418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::HistCollection<double>::AllocateAllData(unsigned int *a1)
{
  v2 = *a1;
  v4 = a1 + 4;
  v3 = *(a1 + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 1) - v3) >> 3) * v2;
  *(a1 + 8) = 1;
  if (v5 != (v3[1] - *v3) >> 4)
  {
    std::vector<xgboost::detail::GradientPairInternal<double>>::resize(v3, v5);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<double>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<double>>::__append(a1, a2 - v2);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<double>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

unsigned int *xgboost::common::HistCollection<double>::operator[]@<X0>(unsigned int *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = -1;
  v4 = *(result + 5);
  if (a2 >= ((*(result + 6) - v4) >> 3))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(v4 + 8 * a2);
  if (v7 == 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v8);
  }

  if (*(result + 8) == 1)
  {
    v5 = *result;
    v6 = **(result + 2) + 16 * v7 * v5;
  }

  else
  {
    v6 = *(*(result + 2) + 24 * v7);
    v5 = *result;
  }

  *a3 = v5;
  a3[1] = v6;
  if (v5)
  {
    if (!v6)
    {
      std::terminate();
    }
  }

  return result;
}

void sub_274DA9728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<double>::Reset(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::common::BlockedSpace2d *a4, uint64_t **a5)
{
  v15 = a3;
  if (*(a1 + 24) != *a1)
  {
    *(a1 + 24) = *a1;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 40));
  }

  v10 = *(a1 + 168);
  *(a1 + 72) = *(a1 + 64);
  *(a1 + 28) = 0;
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 160, v10);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 120) = 0;
  if ((a1 + 136) != a5)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__assign_with_size[abi:ne200100]<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*>((a1 + 136), *a5, a5[1], (a5[1] - *a5) >> 4);
  }

  v14 = (a5[1] - *a5) >> 4;
  if (v14 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v15, &v14);
  }

  v11 = v15;
  *(a1 + 8) = a2;
  *(a1 + 16) = v11;
  xgboost::common::ParallelGHistBuilder<float>::MatchThreadsToNodes(a1, a4);
  xgboost::common::ParallelGHistBuilder<double>::AllocateAdditionalHistograms(a1);
  xgboost::common::ParallelGHistBuilder<float>::MatchNodeNidPairToHist(a1);
  std::vector<int>::resize((a1 + 88), *(a1 + 16) * a2);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }
}

void sub_274DA990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

void *std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274DA9B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<double>::AllocateAdditionalHistograms(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = 0;
      if (a1[1])
      {
        v7 = v3;
        v8 = a1[1];
        do
        {
          v6 += (*(a1[14] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
          v7 += v1;
          --v8;
        }

        while (v8);
      }

      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v4 = v5 + (v9 - 1);
      ++v3;
    }

    while (v3 != v1);
    if (v4)
    {
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      v12 = v5 + (v11 - 1);
      do
      {
        xgboost::common::HistCollection<double>::AddHistRow((a1 + 3), v10++);
      }

      while (v12 != v10);
    }
  }
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<double>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v18);
      if (8 * v15 != 8 * v14)
      {
        v16 = *(v8 + 24);
        v17 = *(v8 + 32);
        xgboost::common::GHistBuilder<double>::BuildHist<false>();
      }
    }
  }
}

void xgboost::common::ParallelGHistBuilder<double>::GetInitializedHist(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a3;
  v11 = a2;
  if (*(a1 + 16) <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, (a1 + 16));
  }

  if (*(a1 + 8) <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v11, (a1 + 8));
  }

  v9[0] = v11;
  v9[1] = v10;
  v6 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, v9);
  if ((v6 & 0x80000000) == 0)
  {
    xgboost::common::HistCollection<double>::AllocateData((a1 + 24), v6);
LABEL_8:
    xgboost::common::HistCollection<double>::operator[]((a1 + 24), v6, a4);
    v7 = v10;
    goto LABEL_9;
  }

  if (v6 != -1)
  {
    goto LABEL_8;
  }

  v7 = v10;
  v8 = (*(a1 + 136) + 16 * v10);
  *a4 = *v8;
  *(a4 + 8) = v8[1];
LABEL_9:
  if (!*(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v7))
  {
    bzero(*(a4 + 8), 16 * *a4);
    *(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v10) = 1;
  }
}

void sub_274DAA080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v16);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::HistCollection<double>::AllocateData(unsigned int *a1, unsigned int a2)
{
  v5 = (*(a1 + 2) + 24 * *(*(a1 + 5) + 8 * a2));
  if (v5[1] == *v5)
  {
    v8 = v2;
    v9 = v3;
    v6 = *a1;
    v7 = 0uLL;
    std::vector<xgboost::detail::GradientPairInternal<double>>::resize(v5, v6, &v7);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<double>>::resize(void *a1, unint64_t a2, _OWORD *a3)
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
    std::vector<xgboost::detail::GradientPairInternal<double>>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<double>>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
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
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
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

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<double>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v18);
      if (8 * v15 != 8 * v14)
      {
        v16 = *(v8 + 24);
        v17 = *(v8 + 32);
        xgboost::common::GHistBuilder<double>::BuildHist<true>();
      }
    }
  }
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DAA8C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

unsigned int *xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * a2);
  xgboost::common::HistCollection<double>::operator[](v8, *v9, &v35);
  xgboost::common::ParallelGHistBuilder<double>::ReduceHist((v8 + 34), a2, a3, a4);
  result = xgboost::common::HistCollection<double>::operator[](v8 + 16, *v9, v34);
  v11 = 2 * a3;
  v12 = 2 * a4;
  if (v12 > 2 * a3)
  {
    v13 = v12 - v11;
    v14 = (v34[1] + 16 * a3);
    v15 = (v36 + 16 * a3);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v13;
    }

    while (v13);
  }

  v17 = *(*(**(a1 + 16) + 160) + 20 * *v9);
  if (v17 != -1)
  {
    v18 = *(**(a1 + 24) + 88 * a2);
    xgboost::common::HistCollection<double>::operator[](v8 + 16, v17 & 0x7FFFFFFF, v33);
    xgboost::common::HistCollection<double>::operator[](v8, v18, &v31);
    v19 = v12 - v11;
    if (v12 <= v11)
    {
      return xgboost::common::HistCollection<double>::operator[](v8 + 16, v18, v30);
    }

    else
    {
      v20 = (v32 + 16 * a3);
      v21 = (v36 + 16 * a3);
      v22 = (v33[1] + 16 * a3);
      v23 = v12 - v11;
      do
      {
        v24 = *v22++;
        v25 = v24;
        v26 = *v21++;
        *v20++ = v25 - v26;
        --v23;
      }

      while (v23);
      result = xgboost::common::HistCollection<double>::operator[](v8 + 16, v18, v30);
      v27 = (v30[1] + 16 * a3);
      v28 = (v32 + 16 * a3);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

void xgboost::common::ParallelGHistBuilder<double>::ReduceHist(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v22 = a3;
  v23 = a2;
  v21 = a4;
  if (a4 <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v21, &v22);
  }

  if (v23 >= *(a1 + 16))
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, (a1 + 16));
  }

  v5 = *(*(a1 + 136) + 16 * v23 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (2)
    {
      v9 = *(a1 + 16);
      v10 = (*(a1 + 88) + 4 * v8 * v9 + 4 * v23);
      v11 = 4 * v9;
      while (!*v10)
      {
        v10 = (v10 + v11);
        if (++v8 >= v6)
        {
          if (v7)
          {
            return;
          }

          goto LABEL_21;
        }
      }

      v19 = v8;
      v20 = v23;
      v12 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, &v19);
      if (v12 == -1)
      {
        v13 = (*(a1 + 136) + 16 * v23 + 8);
      }

      else
      {
        xgboost::common::HistCollection<double>::operator[]((a1 + 24), v12, &v19);
        v13 = &v20;
      }

      v14 = *v13;
      if (v5 != *v13 && 2 * v21 > 2 * v22)
      {
        v15 = 2 * v21 - 2 * v22;
        v16 = (v5 + 16 * v22);
        v17 = (v14 + 16 * v22);
        do
        {
          v18 = *v17++;
          *v16 = v18 + *v16;
          ++v16;
          --v15;
        }

        while (v15);
      }

      v6 = *(a1 + 8);
      ++v8;
      v7 = 1;
      if (v8 < v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_21:
    bzero((v5 + 16 * v22), 16 * (v21 - v22));
  }
}

void sub_274DAAE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = a9;
  a9 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

unsigned int *dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(unsigned int *result, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      result = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v11 = v10;
      v12 = (**v8 + 88 * FirstDimension);
      if ((*(*(**(v8 + 8) + 160) + 20 * *v12) & 0x80000000) == 0)
      {
        v13 = result;
        v14 = *(v8 + 16);
        result = xgboost::common::HistCollection<double>::operator[](v14, *v12, v26);
        v15 = *(*(**(v8 + 8) + 160) + 20 * *v12);
        if (v15 != -1)
        {
          v16 = *(**(v8 + 24) + 88 * FirstDimension);
          xgboost::common::HistCollection<double>::operator[](v14, v15 & 0x7FFFFFFF, v25);
          result = xgboost::common::HistCollection<double>::operator[](v14, v16, v24);
          if (2 * v11 > (2 * v13))
          {
            v17 = 2 * v11 - 2 * v13;
            v18 = (v26[1] + 16 * v13);
            v19 = (v24[1] + 16 * v13);
            v20 = (v25[1] + 16 * v13);
            do
            {
              v21 = *v20++;
              v22 = v21;
              v23 = *v19++;
              *v18++ = v22 - v23;
              --v17;
            }

            while (v17);
          }
        }
      }
    }
  }

  return result;
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DAB378(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DAB640(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = v11;
      v13 = *(v8 + 8);
      v14 = (**v8 + 88 * FirstDimension);
      xgboost::common::HistCollection<double>::operator[](v13, *v14, v26);
      xgboost::common::ParallelGHistBuilder<double>::ReduceHist((v13 + 34), FirstDimension, Range, v12);
      v15 = *(*(**(v8 + 16) + 160) + 20 * *v14);
      if (v15 != -1)
      {
        v16 = *(**(v8 + 24) + 88 * FirstDimension);
        xgboost::common::HistCollection<double>::operator[](v13, v15 & 0x7FFFFFFF, v25);
        xgboost::common::HistCollection<double>::operator[](v13, v16, v24);
        if (2 * v12 > 2 * Range)
        {
          v17 = 2 * v12 - 2 * Range;
          v18 = (v24[1] + 16 * Range);
          v19 = (v26[1] + 16 * Range);
          v20 = (v25[1] + 16 * Range);
          do
          {
            v21 = *v20++;
            v22 = v21;
            v23 = *v19++;
            *v18++ = v22 - v23;
            --v17;
          }

          while (v17);
        }
      }
    }
  }
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, void *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = (*(**(*a3 + 16 * i) + 8) - ***(*a3 + 16 * i)) >> 2;
      if (v9 % a4)
      {
        v10 = v9 / a4 + 1;
      }

      else
      {
        v10 = v9 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DABB38(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * *(v8 + 184) * a2);
  v12 = *v9;
  v10 = (v9 + 2);
  v11 = v12;
  xgboost::common::HistCollection<double>::operator[](*(a1 + 16), v12, v46);
  if (a3 < a4)
  {
    v13 = **(**(a1 + 24) + 16 * a2);
    v14 = *v13;
    v15 = v13[1] - *v13;
    if (a3 <= v15 >> 2)
    {
      v16 = v15 >> 2;
    }

    else
    {
      v16 = a3;
    }

    v35 = vdupq_n_s64(2uLL);
    do
    {
      if (a3 == v16)
      {
LABEL_31:
        std::terminate();
      }

      v17 = *(v14 + 4 * a3);
      v18 = *(a1 + 32);
      if (*v18)
      {
        if (*v18 <= v17)
        {
          goto LABEL_31;
        }

        v19 = *(v18[1] + v17);
        if (!xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
        {
          goto LABEL_29;
        }

        if (v19 != 1)
        {
LABEL_15:
          v37[0] = 0;
          v37[1] = 0;
          xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v37, v46, v17, v11, *(a1 + 56), v10);
          v24 = (*(v8 + 296) + 24 * v11);
          if (v25 != *v24 || v23 != v24[1])
          {
            v36[0] = 0;
            v36[1] = 0;
            xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v36, v46, v17, v11, *(a1 + 56), v10);
          }

          goto LABEL_29;
        }

        v20 = (v17 + 1);
        v21 = **(a1 + 40);
        if (v20 >= (*(*(a1 + 40) + 8) - v21) >> 2)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v22 = (*(v21 + 4 * v20) - *(v21 + 4 * v17));
        if (v22 >= *(v8 + 28))
        {
          std::vector<unsigned long>::vector[abi:ne200100](&__p, v22);
          v27 = __p;
          if (__p != v43)
          {
            v28 = 0;
            v29 = (v43 - __p - 8) >> 3;
            v30 = vdupq_n_s64(v29);
            v31 = xmmword_274E1F3B0;
            do
            {
              v32 = vmovn_s64(vcgeq_u64(v30, v31));
              if (v32.i8[0])
              {
                v27[v28] = v28;
              }

              if (v32.i8[4])
              {
                v27[v28 + 1] = v28 + 1;
              }

              v28 += 2;
              v31 = vaddq_s64(v31, v35);
            }

            while (((v29 + 2) & 0x3FFFFFFFFFFFFFFELL) != v28);
          }

          xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(v46, *(**(a1 + 40) + 4 * v17), v22, v41);
          v40[0] = *(a1 + 56);
          v40[1] = v8;
          v40[2] = v41;
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(__p, v43, v40, v33, v34);
          v39[0] = (v43 - __p) >> 3;
          v39[1] = __p;
          xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v39, v46, v17, v11, *(a1 + 56), v10);
          v38[0] = (v43 - __p) >> 3;
          v38[1] = __p;
          xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v38, v46, v17, v11, *(a1 + 56), v10);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v45[0] = 0;
          v45[1] = 0;
          xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v45, v46, v17, v11, *(a1 + 56), v10);
          v44[0] = 0;
          v44[1] = 0;
          xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v44, v46, v17, v11, *(a1 + 56), v10);
        }
      }

      else if (xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
      {
        goto LABEL_15;
      }

LABEL_29:
      ++a3;
    }

    while (a3 != a4);
  }
}

void sub_274DABFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)1>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    goto LABEL_30;
  }

  v45 = *(a2 + 8);
  v16 = *(a1 + 296);
  v17 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v17, *(v10 + 4 * v9) - v17, v50);
  v18 = (*v8 + 4 * a5);
  LODWORD(v48) = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, &v48);
  }

  v19 = (*v8 + 4 * v9);
  LODWORD(v48) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v48);
  }

  v20 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
LABEL_30:
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(v20 + 4 * a5);
  v22 = *(v20 + 4 * v9);
  if (v22 != v21)
  {
    v44 = 0;
    v23 = 0;
    v30 = v16 + 24 * a6;
    v31 = v22 - v21;
    v29 = 0.0;
    v27 = 0.0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v28 = 0;
    while (1)
    {
      if (*a4 <= v21)
      {
        std::terminate();
      }

      v32 = a4[1];
      v34 = *v30;
      v33 = vsubq_f64(*v30, *(v32 + 16 * v21));
      *v34.i64 = *(a1 + 32);
      v35 = v33.i64[1];
      v36 = *(v32 + 16 * v21 + 8);
      if (*&v33.i64[1] < *v34.i64 || v36 < *v34.i64)
      {
        goto LABEL_19;
      }

      v46 = v33.i64[0];
      v47 = *(v32 + 16 * v21);
      v48 = v47;
      v49 = v33;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v49.i64, &v48, v34, v33);
      v39 = v38 - *(v30 + 16);
      if (fabsf(v39) == INFINITY)
      {
        goto LABEL_19;
      }

      if ((v23 & 0x7FFFFFFF) > a5)
      {
        break;
      }

      v40 = v47;
      if (v29 < v39)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v21;
      if (!--v31)
      {
        goto LABEL_20;
      }
    }

    v40 = v47;
    if (v29 > v39)
    {
      goto LABEL_19;
    }

LABEL_18:
    v44 = 1;
    v27 = v36;
    v26 = v40;
    v25 = v35;
    v28 = v46;
    v24 = *(*v45 + 4 * v21);
    v29 = v39;
    v23 = a5;
    goto LABEL_19;
  }

  v44 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0.0;
  v28 = 0;
  v29 = 0.0;
LABEL_20:
  if (fabsf(v29) != INFINITY)
  {
    v41 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) > (v23 & 0x7FFFFFFF))
    {
      if (v41 > v29)
      {
        return 0.0;
      }

      goto LABEL_27;
    }

    if (v41 < v29)
    {
LABEL_27:
      *a8 = v29;
      *(a8 + 4) = v23;
      *(a8 + 8) = v24;
      *(a8 + 40) = v44;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v28;
      *(a8 + 56) = v25;
      *(a8 + 64) = v26;
      *(a8 + 72) = v27;
    }
  }

  return 0.0;
}

double xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)1>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v47 = *(a2 + 8);
  v16 = *(a1 + 296);
  v17 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v17, *(v10 + 4 * v9) - v17, v52);
  v18 = (*v8 + 4 * a5);
  LODWORD(v50.f64[0]) = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, &v50);
  }

  v19 = (*v8 + 4 * v9);
  LODWORD(v50.f64[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v50);
  }

  v20 = *(*v8 + 4 * v9);
  v21 = *(*v8 + 4 * a5);
  if (v21 != v20)
  {
    v22 = 0;
    v29 = v16 + 24 * a6;
    v46 = 0;
    v30 = v20 - 1;
    v31 = v21 - v20;
    v28 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
    v23 = 0;
    v27 = 0;
    while (1)
    {
      if (*a4 <= v30)
      {
        std::terminate();
      }

      v32 = a4[1];
      v33 = *(v32 + 16 * v30);
      v35 = *v29;
      v34 = vsubq_f64(*v29, v33);
      *v35.i64 = *(a1 + 32);
      v36 = v34.f64[1];
      v37 = *(v32 + 16 * v30 + 8);
      if (v34.f64[1] < *v35.i64 || v37 < *v35.i64)
      {
        goto LABEL_18;
      }

      v48 = *(v32 + 16 * v30);
      v49 = v34.f64[0];
      v50 = v34;
      v51 = v33;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v51.i64, v50.f64, v35, v33);
      v40 = v39 - *(v29 + 16);
      if (fabsf(v40) == INFINITY)
      {
        goto LABEL_18;
      }

      if ((v22 & 0x7FFFFFFF) > a5)
      {
        break;
      }

      v41 = v49;
      if (v28 < v40)
      {
        goto LABEL_17;
      }

LABEL_18:
      --v30;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_20;
      }
    }

    v41 = v49;
    if (v28 > v40)
    {
      goto LABEL_18;
    }

LABEL_17:
    v46 = 1;
    v26 = v36;
    v25 = v41;
    v24 = v37;
    v27 = v48;
    v23 = *(*v47 + 4 * v30);
    v28 = v40;
    v22 = a5 | 0x80000000;
    goto LABEL_18;
  }

  v46 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0;
  v28 = 0.0;
LABEL_20:
  if (fabsf(v28) != INFINITY)
  {
    v43 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) > (v22 & 0x7FFFFFFF))
    {
      if (v43 > v28)
      {
        return 0.0;
      }

      goto LABEL_27;
    }

    if (v43 < v28)
    {
LABEL_27:
      *a8 = v28;
      *(a8 + 4) = v22;
      *(a8 + 8) = v23;
      *(a8 + 40) = v46;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v27;
      *(a8 + 56) = v24;
      *(a8 + 64) = v25;
      *(a8 + 72) = v26;
    }
  }

  return 0.0;
}

void *xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan@<X0>(void *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (a3 == -1)
  {
    a3 = *result - a2;
    if (*result < a2)
    {
      goto LABEL_8;
    }
  }

  else if (a3 + a2 > *result)
  {
    goto LABEL_8;
  }

  v4 = result[1];
  *a4 = a3;
  a4[1] = v4 + 16 * a2;
  if (a3 && !v4)
  {
LABEL_8:
    std::terminate();
  }

  return result;
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  v17 = *(v10 + 4 * v9) - v16;
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v16, v17, v62);
  v56 = 0;
  v57 = 0;
  memset(&__p, 0, sizeof(__p));
  v59 = 0;
  v60 = 0u;
  v61 = 0u;
  v18 = (*v8 + 4 * a5);
  LODWORD(v51[0]) = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, v51);
  }

  v19 = (*v8 + 4 * v9);
  LODWORD(v51[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v51);
  }

  v20 = *v8;
  v21 = v8[1];
  v22 = *(*v8 + 4 * a5);
  v55 = v22;
  if (v9 >= (v21 - v20) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v23 = *(v20 + 4 * v9);
  if (v22 == v23)
  {
    v24 = 0;
    v25 = 0.0;
    goto LABEL_27;
  }

  v43 = v17;
  v44 = a8;
  v26 = 0;
  v24 = 0;
  v27 = v15 + 24 * a6;
  v28 = 4 * v22;
  v29 = 0uLL;
  v45 = -1;
  v25 = 0.0;
  v42 = v22;
  v30 = v22;
  do
  {
    if (*a3 <= v26)
    {
      goto LABEL_38;
    }

    v31 = *(a3[1] + 8 * v26);
    if (v62[0] <= v31)
    {
      goto LABEL_38;
    }

    v29 = vaddq_f64(v29, *(v62[1] + 16 * v31));
    v34 = *v27;
    v32 = vsubq_f64(*v27, v29);
    v33 = *(a1 + 32);
    v34.i64[0] = *&v32.f64[1];
    if (v32.f64[1] >= v33 && *&v29.i64[1] >= v33)
    {
      v49 = v32;
      v50 = v29;
      *__x = v32;
      v51[0] = v29;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, __x, v51, v29, v34);
      v37 = v36 - *(v27 + 16);
      if (fabsf(v37) == INFINITY)
      {
        v29 = v50;
        goto LABEL_21;
      }

      v38 = *(*v46 + v28);
      v29 = v50;
      if ((v24 & 0x7FFFFFFF) <= a5)
      {
        if (v25 >= v37)
        {
          goto LABEL_21;
        }

LABEL_20:
        v56 = __PAIR64__(a5, LODWORD(v37));
        v57 = v38;
        v59 = 1;
        v25 = v37;
        v24 = a5;
        v45 = v30;
        v60 = v49;
        v61 = v50;
        goto LABEL_21;
      }

      if (v25 <= v37)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    ++v30;
    v28 += 4;
    ++v26;
  }

  while (v23 != v30);
  a8 = v44;
  if (v45 != -1)
  {
    __x[0] = 0;
    std::vector<unsigned int>::resize(&__p, vcvtpd_u64_f64(vcvtd_n_f64_u64(v43, 5uLL)), __x);
    v54[0] = __p.__end_ - __p.__begin_;
    v54[1] = __p.__begin_;
    v39 = v45 - v42 + 1;
    if (*a3 < v39)
    {
LABEL_38:
      std::terminate();
    }

    *__x = v54;
    *&__x[2] = v46;
    v53 = &v55;
    std::for_each[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#1}>(a3, 0, a3, v39, __x, v51);
    v25 = *&v56;
    v24 = HIDWORD(v56);
  }

LABEL_27:
  if (fabsf(v25) != INFINITY)
  {
    v40 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v24 & 0x7FFFFFFF))
    {
      if (v40 >= v25)
      {
        goto LABEL_35;
      }
    }

    else if (v40 > v25)
    {
      goto LABEL_35;
    }

    *a8 = v25;
    *(a8 + 4) = v24;
    *(a8 + 8) = v57;
    *(a8 + 40) = v59;
    if (&v56 != a8)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
    }

    v41 = v61;
    *(a8 + 48) = v60;
    *(a8 + 64) = v41;
  }

LABEL_35:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_274DACE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v64 = a5;
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v45 = *(a2 + 8);
  v15 = *(a1 + 296);
  v16 = *(v10 + 4 * a5);
  v17 = *(v10 + 4 * v9) - v16;
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v16, v17, v63);
  v57 = 0;
  v58 = 0;
  memset(&v59, 0, sizeof(v59));
  v60 = 0;
  v61 = 0u;
  v62 = 0u;
  v18 = (*v8 + 4 * a5);
  LODWORD(v52[0]) = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, v52);
  }

  v19 = (*v8 + 4 * v9);
  LODWORD(v52[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, v52);
  }

  v20 = *(*v8 + 4 * v9);
  v21 = *(*v8 + 4 * a5);
  if (v20 == v21)
  {
    v22 = 0;
    v23 = 0.0;
    goto LABEL_24;
  }

  v42 = v17;
  v43 = a8;
  v24 = 0;
  v22 = 0;
  v25 = v15 + 24 * a6;
  v26 = v20 - 1 - v21 + 1;
  v27 = 4 * (v20 - 1);
  v28 = 0uLL;
  v44 = -1;
  v23 = 0.0;
  v41 = v20 - 1;
  v29 = v20 - 1;
  do
  {
    if (*a3 <= v24)
    {
      goto LABEL_37;
    }

    v30 = *(a3[1] + 8 * v24);
    if (v63[0] <= v30)
    {
      goto LABEL_37;
    }

    v28 = vaddq_f64(v28, *(v63[1] + 16 * v30));
    v33 = *v25;
    v31 = vsubq_f64(*v25, v28);
    v32 = *(a1 + 32);
    v33.i64[0] = *&v31.f64[1];
    if (v31.f64[1] >= v32 && *&v28.i64[1] >= v32)
    {
      v48 = v31;
      v49 = v28;
      *__x = v28;
      v52[0] = v31;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, __x, v52, v28, v33);
      v36 = v35 - *(v25 + 16);
      if (fabsf(v36) == INFINITY)
      {
        v28 = v49;
        goto LABEL_20;
      }

      v37 = *(*v45 + v27);
      v28 = v49;
      if ((v22 & 0x7FFFFFFF) <= a5)
      {
        if (v23 >= v36)
        {
          goto LABEL_20;
        }

LABEL_19:
        *&v57 = v36;
        v22 = a5 | 0x80000000;
        HIDWORD(v57) = a5 | 0x80000000;
        v58 = v37;
        v60 = 1;
        v23 = v36;
        v44 = v29;
        v61 = v49;
        v62 = v48;
        goto LABEL_20;
      }

      if (v23 <= v36)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    ++v24;
    --v29;
    v27 -= 4;
  }

  while (v26 != v24);
  a8 = v43;
  if (v44 != -1)
  {
    __x[0] = 0;
    std::vector<unsigned int>::resize(&v59, vcvtpd_u64_f64(vcvtd_n_f64_u64(v42, 5uLL)), __x);
    v56[0] = v59.__end_ - v59.__begin_;
    v56[1] = v59.__begin_;
    v38 = *a3;
    *__x = a3;
    *&__x[2] = v38;
    v54 = a3;
    v55 = v38;
    if (v38 < v41 - v44)
    {
LABEL_37:
      std::terminate();
    }

    *&v52[0] = a3;
    *(&v52[0] + 1) = v38 - (v41 - v44);
    v52[1] = __PAIR128__(*(&v52[0] + 1), a3);
    v51[0] = v56;
    v51[1] = v45;
    v51[2] = v8;
    v51[3] = &v64;
    std::for_each[abi:ne200100]<std::reverse_iterator<xgboost::common::detail::SpanIterator<xgboost::common::Span<unsigned long const,18446744073709551615ul>,false>>,xgboost::tree::GradStats xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(xgboost::common::HistogramCuts const&,xgboost::common::Span<unsigned long const,18446744073709551615ul>,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul> const&,unsigned int,int,xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam> const&,xgboost::tree::SplitEntryContainer<xgboost::tree::GradStats> *)::{lambda(unsigned long)#2}>(__x, v52, v51, &v50);
    v23 = *&v57;
    v22 = HIDWORD(v57);
  }

LABEL_24:
  if (fabsf(v23) != INFINITY)
  {
    v39 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v22 & 0x7FFFFFFF))
    {
      if (v39 >= v23)
      {
        goto LABEL_34;
      }
    }

    else if (v39 > v23)
    {
      goto LABEL_34;
    }

    *a8 = v23;
    *(a8 + 4) = v22;
    *(a8 + 8) = v58;
    *(a8 + 40) = v60;
    if (&v57 != a8)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), v59.__begin_, v59.__end_, v59.__end_ - v59.__begin_);
    }

    v40 = v62;
    *(a8 + 48) = v61;
    *(a8 + 64) = v40;
  }

LABEL_34:
  if (v59.__begin_)
  {
    v59.__end_ = v59.__begin_;
    operator delete(v59.__begin_);
  }
}

void sub_274DAD3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 200);
  if (v35)
  {
    *(v33 - 192) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    goto LABEL_32;
  }

  v44 = *(a2 + 8);
  v17 = *(a1 + 296);
  v18 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v18, *(v10 + 4 * v9) - v18, v49);
  v19 = (*v8 + 4 * a5);
  LODWORD(v47.f64[0]) = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v47);
  }

  v20 = (*v8 + 4 * v9);
  LODWORD(v47.f64[0]) = 0x7FFFFFFF;
  if ((*v20 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v20, &v47);
  }

  v21 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
LABEL_32:
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = *(v21 + 4 * a5);
  v23 = *(v21 + 4 * v9);
  if (v23 == v22)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0;
    v30 = 0.0;
    goto LABEL_22;
  }

  v43 = a8;
  v24 = 0;
  v31 = 0uLL;
  v32 = v17 + 24 * a6;
  v33 = v23 - v22;
  v30 = 0.0;
  v28 = 0.0;
  v27 = 0.0;
  v26 = 0;
  v25 = 0;
  v29 = 0;
  do
  {
    if (*a4 <= v22)
    {
      std::terminate();
    }

    v31 = vaddq_f64(v31, *(a4[1] + 16 * v22));
    v35 = *v32;
    v34 = vsubq_f64(*v32, v31);
    *v35.i64 = *(a1 + 32);
    v36 = v31.i64[1];
    v37 = v34.f64[1];
    if (*&v31.i64[1] >= *v35.i64 && v34.f64[1] >= *v35.i64)
    {
      v45 = v34.f64[0];
      v46 = v31;
      v47 = v34;
      v48 = v31;
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v48.i64, v47.f64, v31, v35);
      v40 = v39 - *(v32 + 16);
      if (fabsf(v40) == INFINITY)
      {
        v31 = v46;
        goto LABEL_20;
      }

      v41 = *(*v44 + 4 * v22);
      if ((v24 & 0x7FFFFFFF) <= a5)
      {
        v31 = v46;
        if (v30 >= v40)
        {
          goto LABEL_20;
        }

LABEL_19:
        v28 = v37;
        v27 = v45;
        v26 = v36;
        v29 = v31.i64[0];
        v25 = *(*v44 + 4 * v22);
        v30 = v40;
        v24 = a5;
        goto LABEL_20;
      }

      v31 = v46;
      if (v30 <= v40)
      {
        goto LABEL_19;
      }
    }

LABEL_20:
    ++v22;
    --v33;
  }

  while (v33);
  a8 = v43;
LABEL_22:
  if (fabsf(v30) != INFINITY)
  {
    v42 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v24 & 0x7FFFFFFF))
    {
      if (v42 < v30)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v42 > v30)
      {
        return;
      }

LABEL_29:
      *a8 = v30;
      *(a8 + 4) = v24;
      *(a8 + 8) = v25;
      *(a8 + 40) = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v29;
      *(a8 + 56) = v26;
      *(a8 + 64) = v27;
      *(a8 + 72) = v28;
    }
  }
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, int a6, void *a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = a5 + 1;
  v10 = *v8;
  if (v9 >= (v8[1] - *v8) >> 2)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = *(a2 + 8);
  v16 = *(a1 + 296);
  v17 = *(v10 + 4 * a5);
  xgboost::common::Span<xgboost::detail::GradientPairInternal<double>,18446744073709551615ul>::subspan(a4, v17, *(v10 + 4 * v9) - v17, v53);
  v18 = (*v8 + 4 * a5);
  v51.i32[0] = 0x7FFFFFFF;
  if ((*v18 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v18, &v51);
  }

  v19 = (*v8 + 4 * v9);
  v51.i32[0] = 0x7FFFFFFF;
  if ((*v19 & 0x80000000) != 0)
  {
    dmlc::LogCheckFormat<unsigned int,unsigned int>(v19, &v51);
  }

  v20 = *(*v8 + 4 * a5);
  v21 = *(*v8 + 4 * v9);
  if (v21 == v20)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0.0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    goto LABEL_26;
  }

  v45 = a2;
  v44 = a8;
  v22 = 0;
  v29 = 0uLL;
  v30 = v16 + 24 * a6;
  v31 = 4 * v21 - 8;
  v32 = v21 - 1;
  v28 = 0.0;
  v26 = 0;
  v25 = 0;
  v24 = 0.0;
  v23 = 0;
  v27 = 0.0;
  do
  {
    if (*a4 <= v32)
    {
      std::terminate();
    }

    LODWORD(v21) = v21 - 1;
    v29 = vaddq_f64(v29, *(a4[1] + 16 * v32));
    v34 = *v30;
    v33 = vsubq_f64(*v30, v29);
    *v34.i64 = *(a1 + 32);
    v35 = v29.i64[1];
    v36 = v33.f64[1];
    if (*&v29.i64[1] < *v34.i64 || v33.f64[1] < *v34.i64)
    {
      v38 = v32;
      goto LABEL_24;
    }

    v49 = v33.f64[0];
    v50 = v29;
    v51 = v29;
    v52 = v33;
    xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, a1, a6, a5, v52.f64, v51.i64, v29, v34);
    if (v20 == v32)
    {
      v40 = (**(v45 + 24) + 4 * a5);
    }

    else
    {
      v40 = (*v46 + v31);
    }

    v41 = v39 - *(v30 + 16);
    if (fabsf(v41) == INFINITY)
    {
      v38 = v21;
      v29 = v50;
      goto LABEL_24;
    }

    v42 = *v40;
    v29 = v50;
    if ((v22 & 0x7FFFFFFF) <= a5)
    {
      if (v28 >= v41)
      {
LABEL_21:
        v38 = v21;
        goto LABEL_24;
      }
    }

    else if (v28 > v41)
    {
      goto LABEL_21;
    }

    v38 = v21;
    v26 = v35;
    v25 = v50.i64[0];
    v24 = v36;
    v27 = v49;
    v23 = v42;
    v28 = v41;
    v22 = a5 | 0x80000000;
LABEL_24:
    v31 -= 4;
    --v32;
  }

  while (v38 != v20);
  a8 = v44;
LABEL_26:
  if (fabsf(v28) != INFINITY)
  {
    v43 = *a8;
    if ((*(a8 + 4) & 0x7FFFFFFFu) <= (v22 & 0x7FFFFFFF))
    {
      if (v43 < v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v43 > v28)
      {
        return;
      }

LABEL_33:
      *a8 = v28;
      *(a8 + 4) = v22;
      *(a8 + 8) = v23;
      *(a8 + 40) = 0;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a8 + 16), 0, 0, 0);
      *(a8 + 48) = v27;
      *(a8 + 56) = v24;
      *(a8 + 64) = v25;
      *(a8 + 72) = v26;
    }
  }
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a2 - a1;
  if (v8 < 129)
  {
    v14 = 0;
    v10 = 0;
  }

  else
  {
    v9 = MEMORY[0x277D826F0];
    v10 = a2 - a1;
    while (1)
    {
      v11 = operator new(8 * v10, v9);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_8;
      }
    }

    v14 = v11;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, v8, v14, v10, a4, a5);
  if (v14)
  {

    operator delete(v14);
  }
}

void sub_274DADE60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v11 = *(a2 - 1);
      v12 = a3[2];
      if (*v12 <= v11 || (v13 = *a1, v14 = a3[1], *v15.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a7, a8, *a3, v14, (v12[1] + 16 * v11)), v17 = a3[2], *v17 <= v13))
      {
        std::terminate();
      }

      if (*v15.i64 < xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v15, v16, *a3, v14, (v17[1] + 16 * v13)))
      {
        v18 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v18;
      }
    }

    else if (a4 > 128)
    {
      v22 = a4 >> 1;
      v23 = &a1[a4 >> 1];
      v24 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v23, a3, v24, a5, a7, a8);
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v22], v27, v28);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(a5, &a5[v22], &a5[v22], &a5[a4], a1, a3, v29, v30);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v23, a3, v24, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v25, v26);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, a7, a8);
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *a1, unint64_t *a2, uint64_t *a3, int8x16_t a4, int8x16_t a5)
{
  if (a1 != a2)
  {
    v7 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v7;
        v12 = *v7;
        v13 = a3[2];
        if (*v13 <= v12 || (v14 = *v10, v15 = a3[1], *v16.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a4, a5, *a3, v15, (v13[1] + 16 * v12)), v18 = a3[2], *v18 <= v14))
        {
LABEL_17:
          std::terminate();
        }

        v19 = *v16.i64;
        *a4.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v16, v17, *a3, v15, (v18[1] + 16 * v14));
        if (v19 < *a4.i64)
        {
          v20 = *v11;
          v21 = v9;
          while (1)
          {
            *(a1 + v21 + 8) = *(a1 + v21);
            if (!v21)
            {
              break;
            }

            v22 = a3[2];
            if (*v22 <= v20)
            {
              goto LABEL_17;
            }

            v23 = *(a1 + v21 - 8);
            v24 = a3[1];
            *v25.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a4, a5, *a3, v24, (v22[1] + 16 * v20));
            v27 = a3[2];
            if (*v27 <= v23)
            {
              goto LABEL_17;
            }

            v28 = *v25.i64;
            *a4.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v25, v26, *a3, v24, (v27[1] + 16 * v23));
            v21 -= 8;
            if (v28 >= *a4.i64)
            {
              v29 = (a1 + v21 + 8);
              goto LABEL_14;
            }
          }

          v29 = a1;
LABEL_14:
          *v29 = v20;
        }

        v7 = v11 + 1;
        v9 += 8;
        v10 = v11;
      }

      while (v11 + 1 != a2);
    }
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, int8x16_t a6, int8x16_t a7)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v12 = *(a2 - 1);
      v13 = a3[2];
      if (*v13 <= v12 || (v14 = *a1, v15 = a3[1], *v16.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a6, a7, *a3, v15, (v13[1] + 16 * v12)), v18 = a3[2], *v18 <= v14))
      {
        std::terminate();
      }

      if (*v16.i64 >= xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v16, v17, *a3, v15, (v18[1] + 16 * v14)))
      {
        *a5 = *a1;
        v19 = *(a2 - 1);
      }

      else
      {
        *a5 = *(a2 - 1);
        v19 = *a1;
      }

      a5[1] = v19;
    }

    else if (a4 == 1)
    {
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, a3, v20, v21);
    }

    else
    {

      std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a5, a3, a6, a7);
    }
  }
}

void std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (a1 == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v22 = *a3++;
      *a5++ = v22;
    }
  }

  else
  {
    v13 = a1;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a7, a8, *a6, v16, (v14[1] + 16 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v17, v18, *a6, v16, (v19[1] + 16 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      v13 += v20 >= *a7.i64;
      a3 += v20 < *a7.i64;
      *a5++ = *v21;
      if (v13 == a2)
      {
        goto LABEL_12;
      }
    }

    while (v13 != a2)
    {
      v23 = *v13++;
      *a5++ = v23;
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if (a6)
  {
    v11 = a6;
    do
    {
      if (a5 <= a8 || v11 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, a4, a5, v11, a7, a9, a10);
        return;
      }

      if (!a5)
      {
        return;
      }

      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = a4[2];
        if (*v18 <= *a2 || (v19 = *&a1[8 * v17], v20 = a4[1], *v21.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a9, a10, *a4, v20, (v18[1] + 16 * *a2)), v23 = a4[2], *v23 <= v19))
        {
          std::terminate();
        }

        v24 = *v21.i64;
        *a9.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v21, v22, *a4, v20, (v23[1] + 16 * v19));
        if (v24 < *a9.i64)
        {
          break;
        }

        ++v17;
        v16 -= 8;
        if (a5 == v17)
        {
          return;
        }
      }

      v25 = a5 - v17;
      v39 = a8;
      v36 = &a1[-v16];
      if (a5 - v17 >= v11)
      {
        if (a5 - 1 == v17)
        {
          v34 = *&a1[8 * v17];
          *&a1[8 * v17] = *a2;
          *a2 = v34;
          return;
        }

        v38 = v25 / 2;
        v41 = *a4;
        v42 = a4[2];
        v43 = 0;
        v30 = &a1[8 * (v25 / 2) - v16];
        v27 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(a2, v30, (a3 - a2) >> 3, v41.i64, v41, a10);
        v26 = (v27 - a2) >> 3;
      }

      else
      {
        v26 = v11 / 2;
        v27 = &a2[8 * (v11 / 2)];
        v28 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(&a1[-v16], a2, v27, a4, a9, a10);
        v29 = v28 - a1;
        v30 = v28;
        v38 = (v29 + v16) >> 3;
      }

      v35 = v30;
      v31 = v11 - v26;
      v32 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v30, a2, v27);
      a1 = v32;
      if (v38 + v26 >= v11 + a5 - (v38 + v26) - v17)
      {
        v33 = v32;
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(v32, v27, a3, a4, a5 - v38 - v17, v31, a7, v39);
        v27 = v35;
        a1 = v36;
        v31 = v26;
        a5 = v38;
        a3 = v33;
      }

      else
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(v36, v35, v32, a4, v38, v26, a7, v39);
        a5 = a5 - v38 - v17;
      }

      v11 = v31;
      a2 = v27;
      a8 = v39;
    }

    while (v31);
  }
}

double xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(int8x16_t a1, int8x16_t a2, uint64_t a3, float *a4, double *a5)
{
  v5 = a5[1];
  a2.i64[0] = 0;
  v6 = v5 <= 0.0 || v5 < a4[8];
  if (!v6)
  {
    v7 = *a5;
    v8 = a4[10];
    v9 = v8;
    v6 = *a5 < -v8;
    v10 = *a5 + v8;
    if (!v6)
    {
      v10 = 0.0;
    }

    v11 = v7 <= v9;
    v12 = v7 - v9;
    if (v11)
    {
      v12 = v10;
    }

    *a2.i64 = -v12 / (v5 + a4[9]);
    v13 = a4[11];
    if (v13 != 0.0)
    {
      *a1.i64 = v13;
      if (fabs(*a2.i64) > *a1.i64)
      {
        v14.f64[0] = NAN;
        v14.f64[1] = NAN;
        a2.i64[0] = vbslq_s8(vnegq_f64(v14), a1, a2).u64[0];
      }
    }
  }

  return *a2.i64;
}

void std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a1 != a2)
  {
    v8 = a1 + 1;
    *a3 = *a1;
    if (a1 + 1 != a2)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        v12 = a4[2];
        if (*v12 <= *v8 || (v13 = v11, v15 = *v11, ++v11, v14 = v15, v16 = a4[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a5, a6, *a4, v16, (v12[1] + 16 * *v8)), v19 = a4[2], *v19 <= v15))
        {
LABEL_17:
          std::terminate();
        }

        v20 = *v17.i64;
        *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v17, v18, *a4, v16, (v19[1] + 16 * v14));
        v21 = v11;
        if (v20 < *a5.i64)
        {
          v13[1] = *v13;
          v21 = a3;
          if (v13 != a3)
          {
            v22 = v10;
            while (1)
            {
              v23 = a4[2];
              if (*v23 <= *v8)
              {
                goto LABEL_17;
              }

              v24 = *(a3 + v22 - 8);
              v25 = a4[1];
              *v26.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a5, a6, *a4, v25, (v23[1] + 16 * *v8));
              v28 = a4[2];
              if (*v28 <= v24)
              {
                goto LABEL_17;
              }

              v29 = *v26.i64;
              *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v26, v27, *a4, v25, (v28[1] + 16 * v24));
              if (v29 >= *a5.i64)
              {
                break;
              }

              *(a3 + v22) = *(a3 + v22 - 8);
              v22 -= 8;
              if (!v22)
              {
                v21 = a3;
                goto LABEL_15;
              }
            }

            v21 = (a3 + v22);
          }
        }

LABEL_15:
        v30 = *v8++;
        *v21 = v30;
        v10 += 8;
      }

      while (v8 != a2);
    }
  }
}

void std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (a1 == a2)
  {
LABEL_12:
    while (a3 != a4)
    {
      v22 = *a3++;
      *a5++ = v22;
    }
  }

  else
  {
    v13 = a1;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a7, a8, *a6, v16, (v14[1] + 16 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v17, v18, *a6, v16, (v19[1] + 16 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      a3 += v20 < *a7.i64;
      v13 += v20 >= *a7.i64;
      *a5++ = *v21;
      if (v13 == a2)
      {
        goto LABEL_12;
      }
    }

    while (v13 != a2)
    {
      v23 = *v13++;
      *a5++ = v23;
    }
  }
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(char *__dst, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *__src, int8x16_t a8, int8x16_t a9)
{
  if (a5 <= a6)
  {
    v14 = __src;
    if (__dst != a2)
    {
      v14 = __src;
      v15 = __dst;
      do
      {
        v16 = *v15;
        v15 += 8;
        *v14 = v16;
        v14 += 8;
      }

      while (v15 != a2);
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(__src, v14, a2, a3, __dst, a4, a8, a9);
  }

  else
  {
    v11 = __src;
    if (a2 != a3)
    {
      v11 = __src;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        *v11 = v13;
        v11 += 8;
      }

      while (v12 != a3);
    }

    v17 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(a8, a9, v11, v11, __src, __src, a2, a2, __dst, __dst, a3, a3, &v17);
  }
}

void *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(void *a1, void *a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a2 != a1)
  {
    v8 = a1;
    v9 = a2 - a1;
    do
    {
      v10 = a4[2];
      if (*v10 <= *a3 || (v11 = &v8[v9 >> 1], v12 = *v11, v13 = a4[1], *v14.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a5, a6, *a4, v13, (v10[1] + 16 * *a3)), v16 = a4[2], *v16 <= v12))
      {
        std::terminate();
      }

      v17 = *v14.i64;
      *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v14, v15, *a4, v13, (v16[1] + 16 * v12));
      if (v17 < *a5.i64)
      {
        v9 >>= 1;
      }

      else
      {
        v8 = v11 + 1;
        v9 += ~(v9 >> 1);
      }
    }

    while (v9);
    return v8;
  }

  return a2;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3, char *a4, void *__dst, uint64_t *a6, int8x16_t a7, int8x16_t a8)
{
  if (__src != a2)
  {
    v13 = __src;
    while (a3 != a4)
    {
      v14 = a6[2];
      if (*v14 <= *a3 || (v15 = *v13, v16 = a6[1], *v17.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a7, a8, *a6, v16, (v14[1] + 16 * *a3)), v19 = a6[2], *v19 <= v15))
      {
        std::terminate();
      }

      v20 = *v17.i64;
      *a7.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v17, v18, *a6, v16, (v19[1] + 16 * v15));
      if (v20 >= *a7.i64)
      {
        v21 = v13;
      }

      else
      {
        v21 = a3;
      }

      a3 += 8 * (v20 < *a7.i64);
      v13 += 8 * (v20 >= *a7.i64);
      *__dst++ = *v21;
      if (v13 == a2)
      {
        return;
      }
    }

    memmove(__dst, v13, a2 - v13);
  }
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t **a13)
{
  if (a4 != a6)
  {
    v15 = a4;
    while (a8 != a10)
    {
      v17 = *(v15 - 8);
      v18 = *a13;
      v19 = (*a13)[2];
      if (*v19 <= v17 || (v20 = *(a8 - 8), v21 = v18[1], *v22.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a1, a2, *v18, v21, (v19[1] + 16 * v17)), v24 = v18[2], *v24 <= v20))
      {
        std::terminate();
      }

      v25 = *v22.i64;
      *a1.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v22, v23, *v18, v21, (v24[1] + 16 * v20));
      if (v25 >= *a1.i64)
      {
        v26 = v15;
      }

      else
      {
        v26 = a8;
      }

      if (v25 >= *a1.i64)
      {
        v15 -= 8;
      }

      else
      {
        a8 -= 8;
      }

      *(a12 - 8) = *(v26 - 8);
      a12 -= 8;
      if (v15 == a6)
      {
        return;
      }
    }

    if (a6 != v15)
    {
      v27 = -8;
      do
      {
        v28 = *(v15 - 8);
        v15 -= 8;
        *(a12 + v27) = v28;
        v27 -= 8;
      }

      while (v15 != a6);
    }
  }
}

void *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity,xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<double> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(void *a1, unint64_t *a2, unint64_t a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  if (a3)
  {
    v8 = a3;
    do
    {
      v10 = &a1[v8 >> 1];
      v11 = a4[2];
      if (*v11 <= *v10 || (v12 = *a2, v13 = a4[1], *v14.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(a5, a6, *a4, v13, (v11[1] + 16 * *v10)), v16 = a4[2], *v16 <= v12))
      {
        std::terminate();
      }

      v17 = *v14.i64;
      *a5.i64 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeightCat<xgboost::detail::GradientPairInternal<double>>(v14, v15, *a4, v13, (v16[1] + 16 * v12));
      if (v17 >= *a5.i64)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v17 < *a5.i64)
      {
        a1 = v10 + 1;
      }
    }

    while (v8);
  }

  return a1;
}

uint64_t std::__function::__func<xgboost::data::$_0,std::allocator<xgboost::data::$_0>,xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL xgboost::data::GHistIndexRawFormat::Read(uint64_t a1, void *a2, uint64_t (***a3)(void, unint64_t *, uint64_t))
{
  v5 = a2[15];
  __sz.__begin_ = 0;
  if ((**a3)(a3, &__sz, 8) != 8)
  {
    return 0;
  }

  begin = __sz.__begin_;
  std::vector<float>::resize(v5, __sz.__begin_);
  if (__sz.__begin_)
  {
    if ((**a3)(a3, v5->__begin_, 4 * begin) != 4 * begin)
    {
      return 0;
    }
  }

  v7 = a2[16];
  __sz.__begin_ = 0;
  if ((**a3)(a3, &__sz, 8) != 8)
  {
    return 0;
  }

  v8 = __sz.__begin_;
  std::vector<float>::resize(v7, __sz.__begin_);
  if (__sz.__begin_)
  {
    if ((**a3)(a3, v7->__begin_, 4 * v8) != 4 * v8)
    {
      return 0;
    }
  }

  v9 = a2[17];
  __sz.__begin_ = 0;
  if ((**a3)(a3, &__sz, 8) != 8)
  {
    return 0;
  }

  v10 = __sz.__begin_;
  std::vector<float>::resize(v9, __sz.__begin_);
  if (__sz.__begin_)
  {
    if ((**a3)(a3, v9->__begin_, 4 * v10) != 4 * v10)
    {
      return 0;
    }
  }

  __sz.__begin_ = 0;
  if ((**a3)(a3, &__sz, 8) == 8)
  {
    v11 = __sz.__begin_;
    std::vector<unsigned long>::resize(a2, __sz.__begin_);
    if (__sz.__begin_)
    {
      (**a3)(a3, *a2, 8 * v11);
    }
  }

  memset(&__sz, 0, sizeof(__sz));
  v32 = 0;
  if ((**a3)(a3, &v32, 8) != 8)
  {
    goto LABEL_47;
  }

  v12 = v32;
  if (v32 <= __sz.__end_ - __sz.__begin_)
  {
    v13 = v32;
    if (v32 < __sz.__end_ - __sz.__begin_)
    {
      __sz.__end_ = &__sz.__begin_[v32];
      v13 = v32;
    }
  }

  else
  {
    std::vector<char>::__append(&__sz, v32 - (__sz.__end_ - __sz.__begin_));
    v13 = v32;
  }

  if (v13 && (**a3)(a3, __sz.__begin_, v12) != v12)
  {
    goto LABEL_47;
  }

  v16 = a2[3];
  v17 = __sz.__begin_;
  end = __sz.__end_;
  v19 = a2[4] - v16;
  v20 = __sz.__end_ - __sz.__begin_ >= v19;
  v21 = __sz.__end_ - __sz.__begin_ - v19;
  if (v21 != 0 && v20)
  {
    std::vector<char>::__append(a2 + 1, v21);
    v17 = __sz.__begin_;
    end = __sz.__end_;
    v16 = a2[3];
  }

  else if (!v20)
  {
    a2[4] = &v16[(__sz.__end_ - __sz.__begin_)];
  }

  if (end != v17)
  {
    memmove(v16, v17, end - v17);
  }

  v30 = 0;
  if ((**a3)(a3, &v30, 4) != 4)
  {
    goto LABEL_47;
  }

  v22 = v30;
  *(a2 + 18) = v30;
  switch(v22)
  {
    case 4:
      v23 = xgboost::common::Index::GetValueFromUint32;
      goto LABEL_36;
    case 2:
      v23 = xgboost::common::Index::GetValueFromUint16;
      goto LABEL_36;
    case 1:
      v23 = xgboost::common::Index::GetValueFromUint8;
LABEL_36:
      a2[10] = v23;
      goto LABEL_38;
  }

  Entry = dmlc::LogMessageFatal::GetEntry(&v32);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../common/hist_util.h", 237);
  v25 = dmlc::LogMessageFatal::GetEntry(&v32);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: binTypeSize == kUint8BinsTypeSize || binTypeSize == kUint16BinsTypeSize || binTypeSize == kUint32BinsTypeSize", 123);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
  dmlc::LogMessageFatal::~LogMessageFatal(&v32);
LABEL_38:
  v32 = 0;
  if ((**a3)(a3, &v32, 8) == 8)
  {
    v27 = v32;
    std::vector<unsigned long>::resize(a2 + 11, v32);
    if ((!v32 || (**a3)(a3, a2[11], 8 * v27) == 8 * v27) && (**a3)(a3, a2 + 18, 8) == 8 && (**a3)(a3, a2 + 19, 8) == 8)
    {
      LOBYTE(v32) = 0;
      v28 = (**a3)(a3, &v32, 1);
      v14 = v28 == 1;
      if (v28 == 1)
      {
        v29 = v32;
        *(a2 + 192) = v32;
        if (v29 == 1)
        {
          xgboost::common::Index::SetBinOffset(a2 + 1, a2[16]);
        }

        xgboost::common::ColumnMatrix::Read(a2[20], a3, *a2[16]);
      }

      goto LABEL_48;
    }
  }

LABEL_47:
  v14 = 0;
LABEL_48:
  if (__sz.__begin_)
  {
    __sz.__end_ = __sz.__begin_;
    operator delete(__sz.__begin_);
  }

  return v14;
}

void sub_274DAF638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::data::GHistIndexRawFormat::Write(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[15];
  v23 = (v5[1] - *v5) >> 2;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v6 = a2[16];
  v20 = *a2[15];
  v21 = *(a2[15] + 8);
  v23 = (v6[1] - *v6) >> 2;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, *v6, v6[1] - *v6);
  }

  v7 = a2[17];
  v18 = *a2[16];
  v19 = *(a2[16] + 8);
  v23 = (v7[1] - *v7) >> 2;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, *v7, v7[1] - *v7);
  }

  v8 = a2[17];
  v9 = *v8;
  v10 = v8[1];
  v23 = (a2[1] - *a2) >> 3;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, *a2, a2[1] - *a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  v14 = a2[4];
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v23 = 0;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, 0, 0);
  }

  v22 = *(a2 + 18);
  (*(*a3 + 8))(a3, &v22, 4);
  v23 = (a2[12] - a2[11]) >> 3;
  (*(*a3 + 8))(a3, &v23, 8);
  if (v23)
  {
    (*(*a3 + 8))(a3, a2[11], a2[12] - a2[11]);
  }

  v15 = a2[11];
  v16 = a2[12];
  (*(*a3 + 8))(a3, a2 + 18, 8);
  (*(*a3 + 8))(a3, a2 + 19, 8);
  LOBYTE(v23) = *(a2 + 192);
  (*(*a3 + 8))(a3, &v23, 1);
  return v21 + v19 + v10 + v12 + v16 - (v20 + v18 + v9 + v11 + v15) + xgboost::common::ColumnMatrix::Write(a2[20], a3) + 69;
}

void sub_274DAFB34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<float>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DAFC84(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<float>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x80C40D6874129);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<float>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<float>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<float>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<float>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<float>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<float>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<float>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<float>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<float>::Fill(uint64_t **result, int16x4_t a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = (v2 + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1F3B0)));
      if (vuzp1_s16(v8, a2).u8[0])
      {
        *(v6 - 2) = a2.i32[0];
      }

      if (vuzp1_s16(v8, a2).i8[2])
      {
        *(v6 - 1) = a2.i32[0];
      }

      if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1FC60)))).i32[1])
      {
        *v6 = a2.i32[0];
        v6[1] = a2.i32[0];
      }

      v4 += 4;
      v6 += 4;
    }

    while (((v3 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  return result;
}

void ***xgboost::HostDeviceVector<float>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 2;
  v5 = ((*a2)[1] - **a2) >> 2;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB01BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<float>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 2;
  v4 = (*(a2 + 8) - *a2) >> 2;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB0300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<float>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 2;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 4 * a3);
  }

  return result;
}

void sub_274DB0444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<float>::Extend(std::vector<unsigned int> **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4->__end_ - v4->__begin_;
  std::vector<float>::resize(v4, (((*a2)[1] - **a2) >> 2) + (v5 >> 2));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (*a1)->__begin_ + v5;

    memmove(v8, v6, v7 - v6);
  }
}

void xgboost::HostDeviceVector<double>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB068C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

void sub_274DB0778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x277C69180](v11, v12);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<double>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x80C40D6874129);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<double>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<double>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<double>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<double>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<double>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<double>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<double>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<double>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<double>::Fill(uint64_t **result, double a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 3;
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = (v3 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v7 = vdupq_n_s64(v4);
    v8 = (v2 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_274E1F3B0)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v8 = a2;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  return result;
}

void ***xgboost::HostDeviceVector<double>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 3;
  v5 = ((*a2)[1] - **a2) >> 3;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<double>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 3;
  v4 = (*(a2 + 8) - *a2) >> 3;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB0D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<double>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 3;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 8 * a3);
  }

  return result;
}

void sub_274DB0E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<double>::Extend(uint64_t *a1, const void ***a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = v6 - v5;
  v8 = (v6 - v5) >> 3;
  v9 = (*a2)[1] - **a2;
  v10 = (v9 >> 3) + v8;
  if (v8 >= v10)
  {
    if (v8 <= v10)
    {
      goto LABEL_14;
    }

    v14 = v5 + 8 * v10;
  }

  else
  {
    v11 = v4[2];
    if (v11 - v6 < v9)
    {
      if (!(v10 >> 61))
      {
        v12 = v11 - v5;
        if (v12 >> 2 > v10)
        {
          v10 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*a1, v13);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(*a1 + 8), (*a2)[1] - **a2);
    v14 = v6 + v9;
  }

  v4[1] = v14;
LABEL_14:
  v15 = **a2;
  v16 = (*a2)[1];
  if (v16 != v15)
  {
    v17 = (v7 + **a1);

    memmove(v17, v15, v16 - v15);
  }
}

uint64_t *xgboost::HostDeviceVector<double>::Resize(uint64_t *result, unint64_t a2, double a3)
{
  v3 = *result;
  v4 = **result;
  v5 = *(*result + 8);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (a2 <= v7)
  {
    if (a2 >= v7)
    {
      return result;
    }

    v14 = v4 + 8 * a2;
  }

  else
  {
    v9 = a2 - v7;
    v10 = v3[2];
    if (v9 > (v10 - v5) >> 3)
    {
      if (!(a2 >> 61))
      {
        v11 = v10 - v4;
        v12 = v11 >> 2;
        if (v11 >> 2 <= a2)
        {
          v12 = a2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*result, v13);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0;
    v14 = v5 + 8 * v9;
    v16 = (8 * a2 - v6 - 8) >> 3;
    v17 = vdupq_n_s64(v16);
    v18 = (v5 + 8);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v15), xmmword_274E1F3B0)));
      if (v19.i8[0])
      {
        *(v18 - 1) = a3;
      }

      if (v19.i8[4])
      {
        *v18 = a3;
      }

      v15 += 2;
      v18 += 2;
    }

    while (((v16 + 2) & 0x3FFFFFFFFFFFFFFELL) != v15);
  }

  v3[1] = v14;
  return result;
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB131C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

void sub_274DB1408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x277C69180](v11, v12);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x20C40960023A9);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

float ***xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::Fill(float ***result, float a2, float a3)
{
  v3 = **result;
  v4 = ((*result)[1] - v3) >> 3;
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    do
    {
      *v3 = a2;
      v3[1] = a3;
      v3 += 2;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

void ***xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 3;
  v5 = ((*a2)[1] - **a2) >> 3;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB181C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 3;
  v4 = (*(a2 + 8) - *a2) >> 3;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB1960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 3;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 8 * a3);
  }

  return result;
}

void sub_274DB1AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::Extend(void **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4[1] - *v4;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v4, (((*a2)[1] - **a2) >> 3) + (v5 >> 3));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (v5 + **a1);

    memmove(v8, v6, v7 - v6);
  }
}

void xgboost::HostDeviceVector<int>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB1CEC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<int>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<int>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<int>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<int>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<int>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<int>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<int>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<int>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<int>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<int>::Fill(uint64_t **result, int a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = (v2 + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1F3B0)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a2;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a2;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1FC60)))).i32[1])
      {
        *v6 = a2;
        v6[1] = a2;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((v3 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  return result;
}

void ***xgboost::HostDeviceVector<int>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 2;
  v5 = ((*a2)[1] - **a2) >> 2;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB2224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<int>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 2;
  v4 = (*(a2 + 8) - *a2) >> 2;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB2368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<int>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 2;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 4 * a3);
  }

  return result;
}

void sub_274DB24AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<int>::Extend(std::vector<int> **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4->__end_ - v4->__begin_;
  std::vector<int>::resize(v4, (((*a2)[1] - **a2) >> 2) + (v5 >> 2));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (*a1)->__begin_ + v5;

    memmove(v8, v6, v7 - v6);
  }
}

void xgboost::HostDeviceVector<unsigned char>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB265C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

void sub_274DB271C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<unsigned char>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<unsigned char>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<unsigned char>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<unsigned char>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<unsigned char>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<unsigned char>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<unsigned char>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<unsigned char>::HostSpan@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned char>::ConstHostSpan@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

_BYTE *xgboost::HostDeviceVector<unsigned char>::Fill(void ***a1, int a2)
{
  v2 = *a1;
  result = **a1;
  v4 = v2[1] - result;
  if (v4 >= 1)
  {
    return memset(result, a2, v4);
  }

  return result;
}

void ***xgboost::HostDeviceVector<unsigned char>::Copy(void ***result, const void ***a2)
{
  v6 = (*result)[1] - **result;
  v5 = (*a2)[1] - **a2;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB2BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned char>::Copy(void ***result, uint64_t a2)
{
  v2 = (*result)[1] - **result;
  v4 = *(a2 + 8) - *a2;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB2D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned char>::Copy(void ***result, void *__src, size_t __len)
{
  v3 = (*result)[1] - **result;
  v4 = __len;
  v5 = v3;
  if (v3 != __len)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (__len)
  {
    return memmove(**result, __src, __len);
  }

  return result;
}

void sub_274DB2E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<unsigned char>::Extend(std::vector<char> **a1, const void ***a2)
{
  v4 = *a1;
  begin = v4->__begin_;
  v6 = v4->__end_ - v4->__begin_;
  v7 = *a2;
  v8 = **a2;
  v9 = v7[1] - v8;
  if (v6 >= v9 + v6)
  {
    if (v6 > v9 + v6)
    {
      v4->__end_ = &begin[v9 + v6];
    }
  }

  else
  {
    std::vector<char>::__append(v4, v7[1] - v8);
    v7 = *a2;
    v8 = **a2;
    begin = (*a1)->__begin_;
  }

  v10 = v7[1];
  if (v10 != v8)
  {

    memmove(&begin[v6], v8, v10 - v8);
  }
}

void xgboost::HostDeviceVector<unsigned char>::Resize(uint64_t *a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = a3;
  v3 = *a1;
  v4 = *(v3 + 8) - *v3;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    std::vector<unsigned char>::__append(v3, v6, &v7);
  }

  else if (!v5)
  {
    *(v3 + 8) = *v3 + a2;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB30D8(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<xgboost::FeatureType>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x80C40D6874129);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<xgboost::FeatureType>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::FeatureType>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::FeatureType>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<xgboost::FeatureType>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<xgboost::FeatureType>::HostSpan@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<xgboost::FeatureType>::ConstHostSpan@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  *a2 = (*result)[1] - v2;
  a2[1] = v2;
  return result;
}

_BYTE *xgboost::HostDeviceVector<xgboost::FeatureType>::Fill(void ***a1, int a2)
{
  v2 = *a1;
  result = **a1;
  v4 = v2[1] - result;
  if (v4 >= 1)
  {
    return memset(result, a2, v4);
  }

  return result;
}

void ***xgboost::HostDeviceVector<xgboost::FeatureType>::Copy(void ***result, const void ***a2)
{
  v6 = (*result)[1] - **result;
  v5 = (*a2)[1] - **a2;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB3564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::FeatureType>::Copy(void ***result, uint64_t a2)
{
  v2 = (*result)[1] - **result;
  v4 = *(a2 + 8) - *a2;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB36A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::FeatureType>::Copy(void ***result, void *__src, size_t __len)
{
  v3 = (*result)[1] - **result;
  v4 = __len;
  v5 = v3;
  if (v3 != __len)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (__len)
  {
    return memmove(**result, __src, __len);
  }

  return result;
}

void sub_274DB37E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

char *xgboost::HostDeviceVector<xgboost::FeatureType>::Extend(uint64_t **a1, const void ***a2)
{
  v4 = *a1;
  v6 = **a1;
  result = (*a1)[1];
  v7 = &result[-v6];
  v8 = *a2;
  v9 = **a2;
  v10 = v8[1];
  v11 = v10 - v9;
  v12 = &result[v10 - v9 - v6];
  if (&result[-v6] >= v12)
  {
    if (&result[-v6] > v12)
    {
      v4[1] = &result[v10 - v9];
    }
  }

  else
  {
    v13 = v4[2];
    if (v13 - result < v11)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    if (v10 != v9)
    {
      v14 = &result[v11];
      bzero(result, v10 - v9);
      result = v14;
    }

    v4[1] = result;
    v8 = *a2;
    v9 = **a2;
    v6 = **a1;
  }

  v15 = v8[1];
  if (v15 != v9)
  {

    return memmove(&v7[v6], v9, v15 - v9);
  }

  return result;
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::Resize(uint64_t *a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = a3;
  v3 = *a1;
  v4 = *(v3 + 8) - *v3;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    std::vector<xgboost::FeatureType>::__append(v3, v6, &v7);
  }

  else if (!v5)
  {
    *(v3 + 8) = *v3 + a2;
  }
}

void xgboost::HostDeviceVector<xgboost::Entry>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB3B54(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

void sub_274DB3C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x277C69180](v11, v12);
  _Unwind_Resume(a1);
}