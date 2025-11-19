void sub_5CFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_5D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v9 = *(v7 - 112);
  if (v9)
  {
    *(v7 - 104) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 24))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::FinishState(uint64_t a1, int a2, int a3)
{
  if ((*(**(a1 + 32) + 32))(*(a1 + 32)) == INFINITY)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v6) != *(v7 + 4 * v6))
  {
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * v17) |= v18;
    *(v15 + 8 * v17) &= ~v18;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    --v11;
  }

  *(v15 + 8 * v17) &= ~v18;
  if (v16 != a2)
  {
    goto LABEL_14;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v7 + 4 * v6);
    if (v20 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v20;
    }
  }
}

uint64_t fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_274D10;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_274D10;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_274D50;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_5DE0C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_274D50;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::DfsState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_5E110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetFromFst<fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v24);
  if (v24 || (a4 & 1) != 0)
  {
    v11 = (*(*a2 + 40))(a2, a3);
    v12 = a5;
    if (!a4)
    {
      v12 = 0;
    }

    v13 = v11 + v12;
    if (*(a1 + 8) < (v11 + v12))
    {
      if (*a1)
      {
        free(*a1);
      }

      v23 = 0x4000;
      if (v13 > 0x4000)
      {
        v23 = v13;
      }

      *(a1 + 8) = v23;
      v15 = malloc_type_malloc(16 * v23, 0x1000040451B5BE8uLL);
      *a1 = v15;
      *(a1 + 16) = v15;
      v14 = v15;
    }

    else
    {
      v14 = *(a1 + 16);
      v15 = *a1;
    }

    *(a1 + 24) = &v14[v13];
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    if (v27)
    {
      ++*v27;
    }

    v20 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = (*(*v16 + 24))(v16);
      v22 = *v16;
      if (v21)
      {
        break;
      }

      *v15 = *(*(v22 + 32))(v16);
      (*(*v16 + 40))(v16);
      while (1)
      {
        ++v15;
        if (v16)
        {
          break;
        }

LABEL_15:
        if (v20 >= v19)
        {
          if (v18)
          {
            --*v18;
          }

          return;
        }

        *v15 = *(v17 + 16 * v20++);
      }
    }

    (*(v22 + 8))(v16);
  }

  else
  {
    v10 = v25 + 16 * v26;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::WriteFst<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  boost::filesystem::path::path(__p, "vector");
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    boost::filesystem::path::path(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  boost::filesystem::path::path(__p, "vector");
  updated = fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_5E880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7);
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __p = 0u;
    v34 = 0u;
    v41 = a8;
    (*(*v17 + 40))(v32);
    if (v32[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v32, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }
  }

  else
  {
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      boost::filesystem::path::path(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v32, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v41 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      boost::filesystem::path::path(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v32, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v32);
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Type(void)::type;
}

uint64_t fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::WriteFile(fst *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v4 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v21);
      if ((v25[*(v21.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        boost::filesystem::path::path(&__p, "ERROR");
        v5 = fst::LogMessage::LogMessage(&v20, &__p);
        v6 = fst::cerr(v5);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Fst::Write: Can't open file: ", 29);
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        if (v8 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
        fst::LogMessage::~LogMessage(&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 = 0;
      }

      else
      {
        v14 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v17 = 257;
        v18 = 1;
        v19 = v14;
        v11 = (*(*a1 + 96))(a1, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v11;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_6;
  }

  v12 = fst::cout(a1);
  boost::filesystem::path::path(&__p, "standard output");
  v13 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __p;
  }

  v22 = 257;
  v23 = 1;
  v24 = v13;
  v11 = (*(*a1 + 96))(a1, v12, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(void *a1, int a2, float a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *v5;
  *v5 = a3;
  v7 = (*(*a1 + 24))(a1);
  result = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v7, v6, a3);
  a1[1] = a1[1] & 4 | result;
  return result;
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::AddArc(v9, a3);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~ImplToFst(void *a1)
{
  *a1 = off_274BD8;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_5F6D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ComposeFst(void *a1)
{
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(a1);

  operator delete();
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_274F18;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_2121E0;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MemoryPool((a1 + 80), 1);
}

void sub_5FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(a1);

  operator delete();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 74))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Final_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 32);

  return v1();
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_274FC0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275000;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_60180(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275000;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = off_274FC0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~SortedMatcher(void *a1)
{
  *a1 = off_274F18;
  v2 = a1[3];
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    v2[5] = a1[17];
    a1[17] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[10] = off_274FC0;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::~MemoryArena(a1 + 11);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 10);
  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_274F18;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 74) = *(a2 + 74);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MemoryPool((a1 + 80), 1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(__p, "FATAL");
      }

      else
      {
        boost::filesystem::path::path(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 74) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 136);
      if (v7)
      {
        *(v3 + 136) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::Allocate((v3 + 88), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 68) = a2;
  }

  return result;
}

void sub_60624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 48 * a2;
  v4 = a1[1];
  if (192 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 73) = 1;
  if (*(a1 + 74) == 1)
  {
    v3 = 0;
    *(a1 + 72) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 72) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 72);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v19 = *(a1 + 24);
      if (*v19)
      {
        if ((*(**v19 + 24))(*v19))
        {
          return 0;
        }
      }

      else if (v19[4] >= v19[2])
      {
        return 0;
      }

      v20 = *(a1 + 24);
      v21 = *v20;
      if (*(a1 + 32))
      {
        v22 = v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4];
        v23 = (v22 + 4);
      }

      else
      {
        v23 = (v21 ? (*(*v21 + 32))(v21) : v20[1] + 16 * v20[4]);
      }

      v24 = *(a1 + 40);
      v25 = *v23 <= v24 ? 0 : 7;
      if (*v23 == v24)
      {
        v25 = 1;
      }

      if (v25)
      {
        break;
      }

      v26 = *(a1 + 24);
      if (*v26)
      {
        (*(**v26 + 40))(*v26);
      }

      else
      {
        ++v26[4];
      }
    }

    return v25 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_68:
    v28 = *(a1 + 24);
    result = *v28;
    if (!*v28)
    {
      v28[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 16 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_68;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v14 = *(a1 + 24);
    --v7;
    if (*v14)
    {
      (*(**v14 + 64))(*v14, v7);
    }

    else
    {
      v14[4] = v7;
    }

    v15 = *(a1 + 24);
    v16 = *v15;
    if (*(a1 + 32))
    {
      if (v16)
      {
        v17 = (*(*v16 + 32))(v16);
      }

      else
      {
        v17 = v15[1] + 16 * v15[4];
      }

      v18 = (v17 + 4);
    }

    else if (v16)
    {
      v18 = (*(*v16 + 32))(v16);
    }

    else
    {
      v18 = (v15[1] + 16 * v15[4]);
    }

    if (*v18 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Done(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 73) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 16 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 16 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Value(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Next(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    *(result + 72) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFstImplBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(a1, a4);
  *v7 = off_275070;
  fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitBase(v7, a2, a3);
  return a1;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_271380;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_2750D0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  boost::filesystem::path::path(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v6 = (*(*a3 + 112))(a3);
  v7 = (*(*a2 + 120))(a2);
  if (!fst::CompatSymbols(v6, v7, (&dword_0 + 1)))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(&__str, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(&__str, "ERROR");
    }

    v8 = fst::LogMessage::LogMessage(&v14, &__str);
    v9 = fst::cerr(v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ComposeFst: output symbol table of 1st argument ", 48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "does not match input symbol table of 2nd argument", 49);
    fst::LogMessage::~LogMessage(&v14);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v11);
  v12 = (*(*a3 + 120))(a3);
  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v12);
}

void sub_61398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(void *a1)
{
  *a1 = off_2750D0;
  v2 = a1[15];
  if (v2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorCacheStore(v2);
    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    operator delete(v3);
  }

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~CacheBaseImpl(a1);

  operator delete();
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_6157C(_Unwind_Exception *a1)
{
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 80));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 72));
  std::__list_imp<int,fst::PoolAllocator<int>>::clear(v2);
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v1 + 56));
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

uint64_t fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 24);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v3 + 48));
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(*a2);
    *(v3 + 64) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x11uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275108;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275108;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275148;
  a1[1] = 24 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_61A60(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275148;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x21uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275188;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275188;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2751C8;
  a1[1] = 40 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_61DC0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2751C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x41uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275208;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275208;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275248;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_62120(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275248;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x81uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275288;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275288;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2752C8;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_62480(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2752C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x101uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275308;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275308;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275348;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_627E0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275348;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x201uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275388;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275388;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2753C8;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_62B40(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2753C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x401uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275408;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275408;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275448;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_62EA0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275448;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x41uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275488;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275488;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2754C8;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_63200(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2754C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x81uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275508;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275508;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275548;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_63560(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275548;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x101uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275588;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275588;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2755C8;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_638C0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2755C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x201uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275608;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275608;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275648;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_63C20(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275648;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x401uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275688;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275688;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2756C8;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_63F80(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2756C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x4000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x801uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275708;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275708;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275748;
  a1[1] = 2056 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_642E0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275748;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x8000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x1001uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275788;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275788;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2757C8;
  a1[1] = 4104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_64648(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2757C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

BOOL fst::CompatSymbols(fst *this, const fst::SymbolTable *a2, const fst::SymbolTable *a3)
{
  if (FLAGS_fst_compat_symbols != 1)
  {
    return 1;
  }

  v4 = 1;
  if (this && a2)
  {
    v6 = a3;
    (*(*this + 64))(v20, this);
    (*(*a2 + 64))(__p, a2);
    v7 = v21;
    if ((v21 & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v20[1];
    }

    v9 = v19;
    v10 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v8 == v9)
    {
      if ((v21 & 0x80u) == 0)
      {
        v11 = v20;
      }

      else
      {
        v11 = v20[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v4 = memcmp(v11, v12, v8) == 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = 0;
      if ((v19 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v7 & 0x80) != 0)
        {
          operator delete(v20[0]);
        }

        if (!(v4 | v6 ^ 1u))
        {
          boost::filesystem::path::path(v20, "WARNING");
          v14 = fst::LogMessage::LogMessage(__p, v20);
          v15 = fst::cerr(v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "CompatSymbols: Symbol table check sums do not match. ", 53);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Table sizes are ", 16);
          (*(*this + 120))(this);
          v17 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " and ", 5);
          (*(*a2 + 120))(a2);
          std::ostream::operator<<();
          fst::LogMessage::~LogMessage(__p);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          return 0;
        }

        return v4;
      }
    }

    operator delete(__p[0]);
    v7 = v21;
    goto LABEL_22;
  }

  return v4;
}

void sub_6496C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorCacheStore(uint64_t a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(a1);
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 80));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 72));
  std::__list_imp<int,fst::PoolAllocator<int>>::clear((a1 + 32));
  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 56));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v2);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 16));
  return a1;
}

void fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x40)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 9uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275808;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275808;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275848;
  a1[1] = 16 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_64EE8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275848;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x11uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275888;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275888;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2758C8;
  a1[1] = 24 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_65248(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2758C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x21uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275908;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275908;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275948;
  a1[1] = 40 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_655A8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275948;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x41uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275988;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275988;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2759C8;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_65908(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2759C8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x81uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275A08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275A08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275A48;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_65C68(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275A48;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x101uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275A88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275A88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275AC8;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_65FC8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275AC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x201uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275B08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275B08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275B48;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_66328(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275B48;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
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

      std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate((a1 + 16), a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 24;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>::operator()[abi:ne200100](a1 + 8, v10);
    }

    *(a1 + 8) = 0;
  }
}

void *fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            std::allocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  *(v2 + 56) = v4;
  return result;
}

void std::allocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>::TN<1>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 16 * a2;
  v4 = a1[1];
  if (v4 < a2 << 6)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((a1 + 32));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<int,void *> *> *[],std::__bucket_list_deallocator<fst::PoolAllocator<std::__hash_node_base<std::__hash_node<int,void *> *> *>>>::~unique_ptr[abi:ne200100](a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x19uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275B88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_275B88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275BC8;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_66C2C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275BC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x31uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275C08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_275C08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275C48;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_66F8C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275C48;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x61uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275C88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_275C88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275CC8;
  a1[1] = 104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_672EC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275CC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0xC1uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275D08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_275D08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275D48;
  a1[1] = 200 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_6764C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275D48;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x181uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275D88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_275D88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275DC8;
  a1[1] = 392 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_679AC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275DC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x301uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275E08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_275E08;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275E48;
  a1[1] = 776 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_67D10(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275E48;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x601uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275E88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_275E88;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_275EC8;
  a1[1] = 1544 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_68074(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_275EC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      if (v3[2])
      {
        operator delete[]();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_271380;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_2750D0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CopyStates(a1, a2);
    *(a1 + 64) = *(a1 + 40);
    *(a1 + 88) = *(a2 + 88);
    v4 = *(a2 + 92);
    *(a1 + 92) = v4;
    if (v4 == -1)
    {
      MutableState = 0;
    }

    else
    {
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void *fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v12 = 0;
    std::vector<fst::MemoryPoolBase *>::resize(v4, a2 + 1, &v12);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate((a1 + 72), 1uLL);
  *v7 = 2139095040;
  *(v7 + 1) = 0u;
  *(v7 + 3) = 0u;
  v7[5] = 0;
  v8 = *(a1 + 80);
  v7[6] = v8;
  ++*(v8 + 8);
  v7[7] = 0;
  *(*(a1 + 8) + 8 * v3) = v7;
  if (*a1 == 1)
  {
    v9 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(a1 + 32, 0, 0, &v13);
    v10 = *(a1 + 32);
    *v9 = v10;
    v9[1] = a1 + 32;
    *(v10 + 8) = v9;
    *(a1 + 32) = v9;
    ++*(a1 + 48);
  }

  return v7;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Clear(a1);
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(a1 + 1, (*(a2 + 16) - *(a2 + 8)) >> 3);
  v23 = 0;
  v4 = *(a2 + 8);
  if (*(a2 + 16) != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,0>(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
        *(v7 + 14) = *(v6 + 56);
        *(v7 + 15) = 0;
        if (*a1 == 1)
        {
          v8 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>((a1 + 4), 0, 0, &v23);
          v9 = a1[4];
          *v8 = v9;
          v8[1] = a1 + 4;
          *(v9 + 8) = v8;
          a1[4] = v8;
          ++a1[6];
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = a1[2];
      v10 = a1[3];
      if (v11 >= v10)
      {
        v13 = a1[1];
        v14 = (v11 - v13) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v13;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>((a1 + 1), v17);
        }

        v18 = (8 * v14);
        *v18 = v7;
        v12 = 8 * v14 + 8;
        v19 = a1[1];
        v20 = a1[2] - v19;
        v21 = v18 - v20;
        memcpy(v18 - v20, v19, v20);
        v22 = a1[1];
        a1[1] = v21;
        a1[2] = v12;
        a1[3] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v7;
        v12 = (v11 + 1);
      }

      a1[2] = v12;
      v5 = ++v23;
      v4 = *(a2 + 8);
    }

    while (v5 < (*(a2 + 16) - v4) >> 3);
  }
}

void *fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[16] = 0;
      return result;
    }

    v4 = result[16];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            std::allocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[512] = 0;
            return result;
          }

          v4 = result[512];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[256] = 0;
            return result;
          }

          v4 = result[256];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
          result[128] = 0;
          return result;
        }

        v4 = result[128];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
        result[64] = 0;
        return result;
      }

      v4 = result[64];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[32] = 0;
      return result;
    }

    v4 = result[32];
  }

  *(v2 + 56) = v4;
  return result;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,0>(void *a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>>(a1, a2, a3, a3 - a2);
  return a1;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::TropicalWeightTpl<float>> const*>>(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

void *fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
            result[128] = 0;
            return result;
          }

          v4 = result[128];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
          result[32] = 0;
          return result;
        }

        v4 = result[32];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
        result[16] = 0;
        return result;
      }

      v4 = result[16];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[8] = 0;
      return result;
    }

    v4 = result[8];
  }

  *(v2 + 56) = v4;
  return result;
}

void fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::CompactHashBiTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a1;
  *(a1 + 16) = a1;
  v2 = *(a2 + 64);
  std::unordered_set<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::unordered_set();
}

uint64_t std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__init_with_size[abi:ne200100]<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_68D0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2, _DWORD *a3)
{
  v7 = *a2;
  if (*a2 < -1)
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 48);
    if (v7 == -1)
    {
      v9 = *(v8 + 120);
    }

    else
    {
      v9 = (*(v8 + 96) + 12 * v7);
    }

    v10 = *v9 + 7853 * v9[1] + 7867 * *(v9 + 8);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()((a1 + 64), *(i + 4), *a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v17 = fst::PoolAllocator<std::__hash_node<int,void *>>::allocate((a1 + 32), 1uLL);
  v29[0] = v17;
  v29[1] = a1 + 32;
  v29[2] = 1;
  *v17 = 0;
  v17[1] = v10;
  *(v17 + 4) = *a3;
  v18 = (*(a1 + 40) + 1);
  v19 = *(a1 + 56);
  if (!v11 || (v19 * v11) < v18)
  {
    v20 = 1;
    if (v11 >= 3)
    {
      v20 = (v11 & (v11 - 1)) != 0;
    }

    v21 = v20 | (2 * v11);
    v22 = vcvtps_u32_f32(v18 / v19);
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__rehash<true>(a1, v23);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v3 = v10 % v11;
      }

      else
      {
        v3 = v10;
      }
    }

    else
    {
      v3 = (v11 - 1) & v10;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v3);
  if (v25)
  {
    i = v29[0];
    *v29[0] = *v25;
    *v25 = i;
  }

  else
  {
    v26 = v29[0];
    *v29[0] = *(a1 + 24);
    *(a1 + 24) = v26;
    *(v24 + 8 * v3) = a1 + 24;
    i = v29[0];
    if (*v29[0])
    {
      v27 = *(*v29[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v27 >= v11)
        {
          v27 %= v11;
        }
      }

      else
      {
        v27 &= v11 - 1;
      }

      *(*a1 + 8 * v27) = v29[0];
      i = v29[0];
    }
  }

  v29[0] = 0;
  ++*(a1 + 40);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](v29, 0);
  return i;
}

void sub_69018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

BOOL fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 < -1 || a3 < -1)
  {
    return a2 == a3;
  }

  else
  {
    v3 = *a1;
    if (a2 == -1)
    {
      v4 = *(v3 + 120);
    }

    else
    {
      v4 = *(v3 + 96) + 12 * a2;
    }

    if (a3 == -1)
    {
      v6 = *(v3 + 120);
    }

    else
    {
      v6 = *(v3 + 96) + 12 * a3;
    }

    if (v4 == v6)
    {
      return 1;
    }

    if (*v4 != *v6 || *(v4 + 4) != *(v6 + 4))
    {
      return 0;
    }

    return *(v4 + 8) == *(v6 + 8);
  }
}

void *fst::PoolAllocator<std::__hash_node<int,void *>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Link>::Allocate((v2 + 8), 1);
      result[6] = 0;
      return result;
    }

    v4 = result[6];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[3] = 0;
      return result;
    }

    v4 = result[3];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            std::allocator<std::__hash_node<int,void *>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[192] = 0;
            return result;
          }

          v4 = result[192];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[96] = 0;
            return result;
          }

          v4 = result[96];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
          result[48] = 0;
          return result;
        }

        v4 = result[48];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
        result[24] = 0;
        return result;
      }

      v4 = result[24];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
  }

  *(v2 + 56) = v4;
  return result;
}

void std::allocator<std::__hash_node<int,void *>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::unique_ptr<std::__hash_node<int,void *>,std::__hash_node_destructor<fst::PoolAllocator<std::__hash_node<int,void *>>>>::reset[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<std::__hash_node<int,void *>>::TN<1>>(**(result + 8));
    *(v2 + 24) = *(result + 56);
    *(result + 56) = v2;
  }

  return result;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[3];
  v6 = MutableState[4] - v5;
  if (v6)
  {
    v7 = v6 >> 4;
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 12);
    do
    {
      v11 = *v9;
      v9 += 4;
      v10 = v11;
      if (v11 >= v8)
      {
        v8 = v10 + 1;
        *(a1 + 68) = v10 + 1;
      }

      --v7;
    }

    while (v7);
  }

  result = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetExpandedState(a1, a2);
  *(MutableState + 14) |= 0xAu;
  return result;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::PushArc(uint64_t a1, int a2, _OWORD *a3)
{
  result = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(a1 + 120), a2);
  v5 = result;
  v7 = result[4];
  v6 = result[5];
  if (v7 >= v6)
  {
    v9 = result[3];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v14 = result + 6;
    v23[4] = v5 + 6;
    if (v13)
    {
      v15 = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(v14, v13);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[2 * v10];
    v17 = &v15[2 * v13];
    *v16 = *a3;
    v8 = v16 + 1;
    v18 = v5[3];
    v19 = v5[4] - v18;
    v20 = v16 - v19;
    memcpy(v16 - v19, v18, v19);
    v21 = v5[3];
    v5[3] = v20;
    v5[4] = v8;
    v22 = v5[5];
    v5[5] = v17;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(v23);
  }

  else
  {
    *v7 = *a3;
    v8 = v7 + 1;
  }

  v5[4] = v8;
  return result;
}

uint64_t fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(void *a1, uint64_t *a2, int a3)
{
  a1[15] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[14];
  v11 = (v9 - v8) >> 2;
  v12 = 0xAAAAAAAAAAAAAAABLL * v11;
  v25 = -1431655765 * v11;
  if (v9 >= v10)
  {
    if (v12 + 1 > 0x1555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 2);
    v16 = 2 * v15;
    if (2 * v15 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0x1555555555555555;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>((a1 + 12), v17);
    }

    v18 = 4 * v11;
    v19 = *a2;
    *(v18 + 8) = *(a2 + 2);
    *v18 = v19;
    v14 = 4 * v11 + 12;
    v20 = a1[12];
    v21 = a1[13];
    v22 = 4 * v11 + v20 - v21;
    if (v20 != v21)
    {
      v23 = 4 * v11 + v20 - v21;
      do
      {
        v24 = *v20;
        *(v23 + 8) = *(v20 + 2);
        *v23 = v24;
        v23 += 12;
        v20 += 12;
      }

      while (v20 != v21);
      v20 = a1[12];
    }

    a1[12] = v22;
    a1[13] = v14;
    a1[14] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v13 = *a2;
    *(v9 + 8) = *(a2 + 2);
    *v9 = v13;
    v14 = v9 + 12;
  }

  a1[13] = v14;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::__emplace_unique_key_args<int,int const&>((a1 + 3), &v25, &v25);
  return v25;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual,fst::PoolAllocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (*a2 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[6];
    if (v4 == -1)
    {
      v6 = *(v5 + 120);
    }

    else
    {
      v6 = (*(v5 + 96) + 12 * v4);
    }

    v7 = *v6 + 7853 * v6[1] + 7867 * *(v6 + 8);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::HashEqual::operator()(a1 + 8, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 104) == 1)
  {
    v5 = *(MutableState + 14);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 14) = v5 | 4;
      v6 = MutableState[4] - MutableState[3] + *(a1 + 128) + 64;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  v3 = *(a1 + 92);
  if (v3 == a2)
  {
    return *(a1 + 96);
  }

  if (*(a1 + 88) == 1)
  {
    if (v3 == -1)
    {
      *(a1 + 92) = a2;
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 14) |= 4u;
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(MutableState + 3, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 60))
    {
      *(a1 + 92) = a2;
      *v5 = 2139095040;
      *(v5 + 56) = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(v5 + 32) = *(v5 + 24);
      result = *(a1 + 96);
      *(result + 14) |= 4u;
      return result;
    }

    *(v5 + 56) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(uint64_t a1, void *a2, char a3, float a4)
{
  if (*(a1 + 120) == 1)
  {
    if (FLAGS_v >= 2)
    {
      boost::filesystem::path::path(__p, "INFO");
      v8 = fst::LogMessage::LogMessage(v41, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GCCacheStore: Enter GC: object = ", 33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(", 1);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "), free recently cached = ", 26);
      v12 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", cache size = ", 15);
      v13 = *(a1 + 128);
      v14 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", cache frac = ", 15);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", cache limit = ", 16);
      v16 = *(a1 + 112);
      v17 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
      fst::LogMessage::~LogMessage(v41);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = (*(a1 + 112) * a4);
    v19 = *(a1 + 40);
    *(a1 + 64) = v19;
    while (v19 != a1 + 32)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v20 - 1;
      }

      else
      {
        v21 = *(a1 + 92);
      }

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::GetMutableState(a1, v21);
      v23 = *(a1 + 128);
      if (v23 > v18 && !*(MutableState + 15))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v24 = *(MutableState + 14);
LABEL_19:
            if ((v24 & 4) != 0)
            {
              v25 = MutableState[4] - MutableState[3] + 64;
              FstCheck(v25 <= v23, "(size) <= (cache_size_)", "../subproject/libquasar/libkaldi/tools/openfst/src/include/fst/cache.h");
              *(a1 + 128) -= v25;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(a1);
            v19 = *(a1 + 64);
            continue;
          }
        }

        else
        {
          v24 = *(MutableState + 14);
          if ((v24 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 14) &= ~8u;
      v19 = *(*(a1 + 64) + 8);
      *(a1 + 64) = v19;
    }

    if ((a3 & 1) != 0 || *(a1 + 128) <= v18)
    {
      v26 = *(a1 + 128);
      if (v18)
      {
        if (v26 > v18)
        {
          v27 = *(a1 + 112);
          do
          {
            v27 *= 2;
            v28 = v26 > 2 * v18;
            v18 *= 2;
          }

          while (v28);
          *(a1 + 112) = v27;
        }
      }

      else if (v26)
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          boost::filesystem::path::path(__p, "FATAL");
        }

        else
        {
          boost::filesystem::path::path(__p, "ERROR");
        }

        v29 = fst::LogMessage::LogMessage(&v44, __p);
        v30 = fst::cerr(v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "GCCacheStore:GC: Unable to free all cached states", 49);
        fst::LogMessage::~LogMessage(&v44);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, a2, 1, a4);
    }

    if (FLAGS_v >= 2)
    {
      boost::filesystem::path::path(v41, "INFO");
      v31 = fst::LogMessage::LogMessage(&v43, v41);
      v32 = fst::cerr(v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "GCCacheStore: Exit GC: object = ", 32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "(", 1);
      v34 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "), free recently cached = ", 26);
      v35 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", cache size = ", 15);
      v36 = *(a1 + 128);
      v37 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", cache frac = ", 15);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", cache limit = ", 16);
      v39 = *(a1 + 112);
      v40 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\n", 1);
      fst::LogMessage::~LogMessage(&v43);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }
  }
}

void sub_69CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (a2 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = result[1] - *result;
    v12[4] = result + 3;
    v5 = fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::allocate(result + 3, a2);
    v6 = v5 + v4;
    v7 = &v5[2 * a2];
    v8 = v3[1] - *v3;
    v9 = &v6[-v8];
    memcpy(&v6[-v8], *v3, v8);
    v10 = *v3;
    *v3 = v9;
    v3[1] = v6;
    v11 = v3[2];
    v3[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(v12);
  }

  return result;
}

uint64_t std::__split_buffer<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::deallocate(*(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 4);
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::Delete(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Delete(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Delete(void *a1)
{
  fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
  *(a1[1] + 8 * *(a1[8] + 16)) = 0;
  v2 = a1[8];
  v4 = *v2;
  v3 = v2[1];
  a1[8] = v3;
  *(v4 + 8) = v3;
  *v3 = v4;
  --a1[6];

  return std::__list_imp<int,fst::PoolAllocator<int>>::__delete_node[abi:ne200100]((a1 + 4), v2);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 56) & 4) != 0)
  {
    v4 = *(a2 + 32) - *(a2 + 24) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(*a1 + 64))(a1);
      if (v2 != -1)
      {
        *(a1 + 64) = v2;
        *(a1 + 60) = 1;
        if (*(a1 + 68) <= v2)
        {
          *(a1 + 68) = v2 + 1;
        }
      }
    }
  }

  return *(a1 + 64);
}

float fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final(uint64_t *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v4 = (*(*a1 + 72))(a1, a2);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(a1[15], a2);
    *MutableState = v4;
    *(MutableState + 14) |= 9u;
  }

  v6 = a1[15];
  if (*(v6 + 92) == a2)
  {
    v7 = v6 + 96;
  }

  else
  {
    v7 = *(v6 + 8) + 8 * a2 + 8;
  }

  return **v7;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumArcs(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumInputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::NumOutputEpsilons(void *a1, uint64_t a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  v4 = a1[15];
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 16);
}

void *fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ComposeFst(void *a1, uint64_t a2, int a3)
{
  *a1 = off_274E40;
  a1[1] = 0;
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = a1[1];
    if (v6)
    {
      v7 = v6[14] - 1;
      v6[14] = v7;
      if (!v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    a1[1] = v5;
  }

  else
  {
    fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetImpl(a1, v4, 0);
  }

  return a1;
}

void *fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(void *a1)
{
  *a1 = off_275F08;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t fst::CacheStateIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 60);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

void *fst::ArcIterator<fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ArcIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 15);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    (*(**(a2 + 8) + 48))(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::InitArcIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

_DWORD **fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(_DWORD **result)
{
  if (*result)
  {
    --**result;
  }

  return result;
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    --*v1;
  }

  return result;
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs()
{
  __assert_rtn("CheckNumArcs", "remove-eps-local-inl.h", 118, "num_arcs_in_[s] == 0");
}

{
  __assert_rtn("CheckNumArcs", "remove-eps-local-inl.h", 119, "num_arcs_out_[s] == 0");
}

uint64_t *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = OUTLINED_FUNCTION_0_3(result);
    return (*(v4 + 8))(v3);
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      --*v5;
    }
  }

  return result;
}

uint64_t kaldi::HmmTopology::NumPdfClasses(kaldi::HmmTopology *this, int a2)
{
  v2 = kaldi::HmmTopology::TopologyForPhone(this, a2);
  v3 = v2[1];
  v4 = v3 - *v2;
  if (v3 == *v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4 >> 5;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (*v2 + 4);
  do
  {
    if (v5 <= *(v7 - 1))
    {
      v5 = *(v7 - 1);
    }

    v9 = *v7;
    v7 += 8;
    v8 = v9;
    if (v5 <= v9)
    {
      v5 = v8;
    }

    --v6;
  }

  while (v6);
  return (v5 + 1);
}

void kaldi::HmmTopology::Read(std::vector<int> *a1, uint64_t *a2, char a3)
{
  kaldi::ExpectToken(a2, a3, "<Topology>");
  if (a3)
  {
    kaldi::ReadIntegerVector<int>(a2, 1, a1, 0, 0, 0, 0);
    kaldi::ReadIntegerVector<int>(a2, 1, a1 + 1, 0, 0, 0, 0);
    __x[0] = 0;
    kaldi::ReadBasicType<int>(a2, 1, __x, v6, v7);
    v10 = __x[0];
    v11 = __x[0];
    if (__x[0] == -1)
    {
      kaldi::ReadBasicType<int>(a2, 1, __x, v8, v9);
      v11 = __x[0];
    }

    std::vector<std::vector<kaldi::HmmTopology::HmmState>>::resize(&a1[2], v11);
    if (__x[0] >= 1)
    {
      v14 = 0;
      do
      {
        LODWORD(v160) = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v160, v12, v13);
        std::vector<kaldi::HmmTopology::HmmState>::resize(&a1[2].__begin_[6 * v14], v160);
        if (v160 >= 1)
        {
          v15 = 0;
          do
          {
            kaldi::ReadBasicType<int>(a2, 1, *&a1[2].__begin_[6 * v14] + 32 * v15, v12, v13);
            v18 = (*&a1[2].__begin_[6 * v14] + 32 * v15);
            if (v10 == -1)
            {
              kaldi::ReadBasicType<int>(a2, 1, (v18 + 1), v16, v17);
            }

            else
            {
              v18[1] = *v18;
            }

            LODWORD(v153) = 0;
            kaldi::ReadBasicType<int>(a2, 1, &v153, v16, v17);
            std::vector<std::pair<int,float>>::resize((*&a1[2].__begin_[6 * v14] + 32 * v15 + 8), v153);
            if (v153 >= 1)
            {
              v19 = 0;
              v20 = 0;
              do
              {
                kaldi::ReadBasicType<int>(a2, 1, *(*&a1[2].__begin_[6 * v14] + 32 * v15 + 8) + v19, v12, v13);
                kaldi::ReadBasicType<float>(a2, 1, (*(*&a1[2].__begin_[6 * v14] + 32 * v15 + 8) + v19 + 4), v21, v22);
                ++v20;
                v19 += 8;
              }

              while (v20 < v153);
            }

            ++v15;
          }

          while (v15 < v160);
        }

        ++v14;
      }

      while (v14 < __x[0]);
    }

    kaldi::ExpectToken(a2, 1, "</Topology>");
    goto LABEL_199;
  }

  a1->__end_ = a1->__begin_;
  a1[1].__end_ = a1[1].__begin_;
  begin = a1[2].__begin_;
  v140 = a1 + 1;
  end = a1[2].__end_;
  while (end != begin)
  {
    end -= 6;
    *__x = end;
    std::vector<kaldi::HmmTopology::HmmState>::__destroy_vector::operator()[abi:ne200100](__x);
  }

  a1[2].__end_ = begin;
  v160 = 0uLL;
  v161 = 0;
LABEL_21:
  v25 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v160);
  if ((*(v25 + *(*v25 - 24) + 32) & 5) == 0)
  {
    if (SHIBYTE(v161) < 0)
    {
      if (*(&v160 + 1) == 11 && *v160 == 0x6F6C6F706F542F3CLL && *(v160 + 3) == 0x3E79676F6C6F706FLL)
      {
        goto LABEL_192;
      }

      if (*(&v160 + 1) != 15)
      {
        goto LABEL_229;
      }

      v26 = v160;
    }

    else
    {
      if (HIBYTE(v161) != 15)
      {
        if (HIBYTE(v161) != 11 || (v160 == 0x6F6C6F706F542F3CLL ? (v117 = *(&v160 + 3) == 0x3E79676F6C6F706FLL) : (v117 = 0), !v117))
        {
LABEL_229:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 59);
          v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Reading HmmTopology object, expected </Topology> or <TopologyEntry>, got ", 73);
          if (v161 >= 0)
          {
            v138 = &v160;
          }

          else
          {
            v138 = v160;
          }

          if (v161 >= 0)
          {
            v139 = HIBYTE(v161);
          }

          else
          {
            v139 = *(&v160 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, v138, v139);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
        }

        goto LABEL_192;
      }

      v26 = &v160;
    }

    v28 = *v26;
    v29 = *(v26 + 7);
    if (v28 != 0x676F6C6F706F543CLL || v29 != 0x3E7972746E457967)
    {
      goto LABEL_229;
    }

    kaldi::ExpectToken(a2, 0, "<ForPhones>");
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    while (1)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v150);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Reading HmmTopology object, unexpected end of file while expecting phones.", 74);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
      }

      if (SHIBYTE(v152) < 0)
      {
        if (v151 != 12)
        {
          goto LABEL_48;
        }

        v33 = v150;
      }

      else
      {
        if (SHIBYTE(v152) != 12)
        {
          goto LABEL_48;
        }

        v33 = &v150;
      }

      v34 = *v33;
      v35 = v33[2];
      if (v34 == 0x6F6850726F462F3CLL && v35 == 1047749998)
      {
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        kaldi::ReadToken(a2, 0, &v144, v31, v32);
        while (1)
        {
          if (SHIBYTE(v146) < 0)
          {
            if (v145 != 7)
            {
              if (v145 != 16 || (*v144 == 0x6F6C6F706F542F3CLL ? (v40 = *(v144 + 1) == 0x3E7972746E457967) : (v40 = 0), !v40))
              {
LABEL_208:
                kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 81);
                v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Expected </TopologyEntry> or <State>, got instead ", 50);
                if (v146 >= 0)
                {
                  v129 = &v144;
                }

                else
                {
                  v129 = v144;
                }

                if (v146 >= 0)
                {
                  v130 = HIBYTE(v146);
                }

                else
                {
                  v130 = v145;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, v129, v130);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
              }

LABEL_173:
              v111 = a1[2].__begin_;
              v110 = a1[2].__end_;
              std::vector<std::vector<kaldi::HmmTopology::HmmState>>::push_back[abi:ne200100](&a1[2], &v147);
              v113 = v153;
              if (v154 != v153)
              {
                v114 = 0;
                v115 = -1431655765 * ((v110 - v111) >> 3);
                do
                {
                  v116 = v113[v114];
                  v143 = v116;
                  if (v116 >= ((a1[1].__end_ - a1[1].__begin_) >> 2))
                  {
                    __x[0] = -1;
                    std::vector<int>::resize(v140, v116 + 1, __x);
                    v116 = v143;
                  }

                  if (v116 <= 0)
                  {
                    kaldi::KaldiAssertFailure_("Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", &stru_68.segname[8], "phone > 0", v112);
                  }

                  if (v140->__begin_[v116] != -1)
                  {
                    kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 130);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Phone with index ", 17);
                    v135 = std::ostream::operator<<();
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, " appears in multiple topology entries.", 38);
                    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
                  }

                  v140->__begin_[v116] = v115;
                  std::vector<int>::push_back[abi:ne200100](&a1->__begin_, &v143);
                  ++v114;
                  v113 = v153;
                }

                while (v114 < (v154 - v153) >> 2);
              }

              if (SHIBYTE(v146) < 0)
              {
                operator delete(v144);
              }

              *__x = &v147;
              std::vector<kaldi::HmmTopology::HmmState>::__destroy_vector::operator()[abi:ne200100](__x);
              if (SHIBYTE(v152) < 0)
              {
                operator delete(v150);
              }

              if (v153)
              {
                v154 = v153;
                operator delete(v153);
              }

              goto LABEL_21;
            }

            v39 = v144;
          }

          else
          {
            if (HIBYTE(v146) != 7)
            {
              if (HIBYTE(v146) != 16)
              {
                goto LABEL_208;
              }

              if (v144 != 0x6F6C6F706F542F3CLL || v145 != 0x3E7972746E457967)
              {
                goto LABEL_208;
              }

              goto LABEL_173;
            }

            v39 = &v144;
          }

          v41 = *v39;
          v42 = *(v39 + 3);
          if (v41 != 1635013436 || v42 != 1046836321)
          {
            goto LABEL_208;
          }

          v143 = 0;
          kaldi::ReadBasicType<int>(a2, 0, &v143, v37, v38);
          if (v143 != ((v148 - v147) >> 5))
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 85);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "States are expected to be in order from zero, expected ", 55);
            v134 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, ", got ", 6);
            std::ostream::operator<<();
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
          }

          kaldi::ReadToken(a2, 0, &v144, v44, v45);
          v142 = -1;
          if (v146 < 0)
          {
            if (v145 != 10 || (*v144 == 0x73616C436664503CLL ? (v49 = *(v144 + 4) == 15987) : (v49 = 0), !v49))
            {
              if (v145 != 17)
              {
                goto LABEL_94;
              }

              v48 = v144;
LABEL_79:
              v50 = *v48;
              v51 = v48[1];
              v52 = *(v48 + 16);
              v53 = v50 == 0x64726177726F463CLL && v51 == 0x7373616C43666450;
              if (!v53 || v52 != 62)
              {
LABEL_94:
                __p = 0;
                v158 = 0;
                v159 = 0;
                *__x = -1;
                std::vector<kaldi::HmmTopology::HmmState>::push_back[abi:ne200100](&v147, __x);
                if (__p)
                {
                  v158 = __p;
                  operator delete(__p);
                }

                goto LABEL_123;
              }

              v141 = -1;
              kaldi::ReadBasicType<int>(a2, 0, &v142, v46, v47);
              kaldi::ReadToken(a2, 0, &v144, v55, v56);
              if (SHIBYTE(v146) < 0)
              {
                if (v145 == 18)
                {
                  v59 = v144;
                  goto LABEL_103;
                }
              }

              else if (SHIBYTE(v146) == 18)
              {
                v59 = &v144;
LABEL_103:
                v66 = *v59;
                v67 = v59[1];
                v68 = *(v59 + 8);
                if (v66 == 0x6F6F4C666C65533CLL && v67 == 0x73616C4366645070 && v68 == 15987)
                {
                  kaldi::ReadBasicType<int>(a2, 0, &v141, v57, v58);
                  kaldi::HmmTopology::HmmState::HmmState(__x, v142, v141, v71, v72);
                  std::vector<kaldi::HmmTopology::HmmState>::push_back[abi:ne200100](&v147, __x);
                  if (__p)
                  {
                    v158 = __p;
                    operator delete(__p);
                  }

                  kaldi::ReadToken(a2, 0, &v144, v73, v74);
                  goto LABEL_123;
                }
              }

              kaldi::KaldiAssertFailure_("Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", &stru_20.flags, "token == <SelfLoopPdfClass>", v58);
            }
          }

          else
          {
            if (HIBYTE(v146) != 10)
            {
              if (HIBYTE(v146) == 17)
              {
                v48 = &v144;
                goto LABEL_79;
              }

              goto LABEL_94;
            }

            if (v144 != 0x73616C436664503CLL || v145 != 15987)
            {
              goto LABEL_94;
            }
          }

          kaldi::ReadBasicType<int>(a2, 0, &v142, v46, v47);
          v158 = 0;
          v159 = 0;
          __p = 0;
          __x[0] = v142;
          __x[1] = v142;
          std::vector<kaldi::HmmTopology::HmmState>::push_back[abi:ne200100](&v147, __x);
          if (__p)
          {
            v158 = __p;
            operator delete(__p);
          }

          kaldi::ReadToken(a2, 0, &v144, v63, v64);
          if (SHIBYTE(v146) < 0)
          {
            if (v145 != 18)
            {
              goto LABEL_123;
            }

            v65 = v144;
          }

          else
          {
            if (SHIBYTE(v146) != 18)
            {
              goto LABEL_123;
            }

            v65 = &v144;
          }

          v75 = *v65;
          v76 = v65[1];
          v77 = *(v65 + 8);
          if (v75 == 0x6F6F4C666C65533CLL && v76 == 0x73616C4366645070 && v77 == 15987)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 94);
            v136 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "pdf classes should be defined using <PdfClass> ", 47);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, "or <ForwardPdfClass>/<SelfLoopPdfClass> pair", 44);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
          }

          while (1)
          {
LABEL_123:
            if (SHIBYTE(v146) < 0)
            {
              v81 = v145;
              if (v145 != 12)
              {
                goto LABEL_153;
              }

              v80 = v144;
            }

            else
            {
              if (HIBYTE(v146) != 12)
              {
                if (HIBYTE(v146) == 7)
                {
                  v104 = 0;
                  v105 = &v144;
                  goto LABEL_156;
                }

                goto LABEL_163;
              }

              v80 = &v144;
            }

            v82 = *v80;
            v83 = v80[2];
            if (v82 != 0x7469736E6172543CLL || v83 != 1047424873)
            {
              break;
            }

            __x[0] = 0;
            v141 = 0;
            kaldi::ReadBasicType<int>(a2, 0, __x, v61, v62);
            kaldi::ReadBasicType<float>(a2, 0, &v141, v85, v86);
            v89 = v148;
            v90 = __x[0] | (v141 << 32);
            v92 = *(v148 - 16);
            v91 = *(v148 - 8);
            if (v92 >= v91)
            {
              v94 = *(v148 - 24);
              v95 = (v92 - v94) >> 3;
              if ((v95 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v96 = v91 - v94;
              v97 = v96 >> 2;
              if (v96 >> 2 <= (v95 + 1))
              {
                v97 = v95 + 1;
              }

              if (v96 >= 0x7FFFFFFFFFFFFFF8)
              {
                v98 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v97;
              }

              if (v98)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v148 - 24, v98);
              }

              v99 = (8 * v95);
              *v99 = v90;
              v93 = 8 * v95 + 8;
              v100 = *(v89 - 24);
              v101 = *(v89 - 16) - v100;
              v102 = v99 - v101;
              memcpy(v99 - v101, v100, v101);
              v103 = *(v89 - 24);
              *(v89 - 24) = v102;
              *(v89 - 16) = v93;
              *(v89 - 8) = 0;
              if (v103)
              {
                operator delete(v103);
              }
            }

            else
            {
              *v92 = v90;
              v93 = (v92 + 1);
            }

            *(v89 - 16) = v93;
            kaldi::ReadToken(a2, 0, &v144, v87, v88);
          }

          if (v146 < 0)
          {
            v81 = v145;
LABEL_153:
            if (v81 == 7)
            {
              v104 = 1;
              v105 = v144;
              goto LABEL_156;
            }

LABEL_161:
            if (v145 != 8)
            {
              goto LABEL_200;
            }

            v105 = v144;
            goto LABEL_165;
          }

          v105 = &v144;
          if (HIBYTE(v146) == 7)
          {
            v104 = 0;
LABEL_156:
            v106 = *v105;
            v107 = *(v105 + 3);
            if (v106 == 1852393020 && v107 == 1047290222)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 116);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "You are trying to read old-format topology with new Kaldi.", 58);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
            }

            if (v104)
            {
              goto LABEL_161;
            }

LABEL_163:
            if (HIBYTE(v146) != 8)
            {
              goto LABEL_200;
            }

            v105 = &v144;
            goto LABEL_165;
          }

          if (HIBYTE(v146) != 8)
          {
LABEL_200:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 118);
            v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Reading HmmTopology,  unexpected token ", 39);
            if (v146 >= 0)
            {
              v126 = &v144;
            }

            else
            {
              v126 = v144;
            }

            if (v146 >= 0)
            {
              v127 = HIBYTE(v146);
            }

            else
            {
              v127 = v145;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, v126, v127);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
          }

LABEL_165:
          if (*v105 != 0x3E65746174532F3CLL)
          {
            goto LABEL_200;
          }

          kaldi::ReadToken(a2, 0, &v144, v61, v62);
        }
      }

LABEL_48:
      LODWORD(v147) = 0;
      if ((kaldi::ConvertStringToInteger<int>(&v150, &v147) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(__x, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 71);
        v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__x, "Reading HmmTopology object, expected integer, got instead ", 58);
        if (v152 >= 0)
        {
          v132 = &v150;
        }

        else
        {
          v132 = v150;
        }

        if (v152 >= 0)
        {
          v133 = HIBYTE(v152);
        }

        else
        {
          v133 = v151;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, v132, v133);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(__x);
      }

      std::vector<int>::push_back[abi:ne200100](&v153, &v147);
    }
  }

LABEL_192:
  v118 = a1->__begin_;
  v119 = a1->__end_;
  std::__sort<std::__less<int,int> &,int *>();
  v121 = a1->__end_;
  if (a1->__begin_ != v121)
  {
    for (i = a1->__begin_ + 1; i != v121; ++i)
    {
      v124 = *(i - 1);
      v123 = *i;
      if (v123 <= v124)
      {
        kaldi::KaldiAssertFailure_("Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", &stru_68.addr + 1, "IsSortedAndUniq(phones_)", v120);
      }
    }
  }

  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160);
  }

LABEL_199:
  kaldi::HmmTopology::Check(a1);
}

void sub_6B9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, char *a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  a33 = &a21;
  std::vector<kaldi::HmmTopology::HmmState>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (*(v34 - 89) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
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
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
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

void sub_6BC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x6BC24);
  }

  __cxa_rethrow();
}

uint64_t kaldi::ConvertStringToInteger<int>(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  __endptr = 0;
  *__error() = 0;
  v4 = strtoll(v3, &__endptr, 10);
  v5 = __endptr;
  if (__endptr != v3)
  {
    v5 = __endptr - 1;
    do
    {
      v6 = v5[1];
      if (v6 < 0)
      {
        v7 = __maskrune(v6, 0x4000uLL);
      }

      else
      {
        v7 = _DefaultRuneLocale.__runetype[v6] & 0x4000;
      }

      ++v5;
    }

    while (v7);
    __endptr = v5;
  }

  if (v5 == v3 || *v5)
  {
    return 0;
  }

  v9 = __error();
  result = 0;
  if (!*v9 && !((v4 + 0x80000000) >> 32))
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t std::vector<kaldi::HmmTopology::HmmState>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::HmmTopology::HmmState>::__emplace_back_slow_path<kaldi::HmmTopology::HmmState>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    *(v3 + 1) = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::vector<kaldi::HmmTopology::HmmState>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__emplace_back_slow_path<std::vector<kaldi::HmmTopology::HmmState> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::HmmTopology::HmmState> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void kaldi::ReadIntegerVector<int>(void *a1, int a2, std::vector<int> *a3, uint64_t a4, char *a5, void *a6, void *a7)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_108.segname[2], "v != NULL", a5);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    if (std::istream::peek() != 4)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 291);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: expected to see type of size ", 48);
      v20 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", saw instead ", 14);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", at file position ", 19);
      std::istream::tellg();
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
    }

    std::istream::get();
    LODWORD(__sz) = 0;
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      v13 = __sz;
      v14 = __sz;
      if (a7)
      {
        *a7 = __sz;
      }

      if (a4 && (a5 ? (v15 = v13 < 0) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), a6 || v16))
      {
        if (v16)
        {
          std::istream::tellg();
          *a5 = a4 + v28;
        }

        else if (a6)
        {
          std::istream::tellg();
          *a6 = a4 + v28;
        }

        std::istream::seekg();
        a3->__end_ = a3->__begin_;
        std::vector<int>::shrink_to_fit(a3);
      }

      else
      {
        std::vector<int>::resize(a3, v14);
        if (__sz >= 1)
        {
          begin = a3->__begin_;
          std::istream::read();
        }
      }

      goto LABEL_38;
    }

LABEL_39:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 358);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 329);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "ReadIntegerVector: expected to see [, saw ", 42);
    std::istream::peek();
    v22 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", at file position ", 19);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  while (1)
  {
    v18 = std::istream::peek();
    if (v18 == 93)
    {
      break;
    }

    LODWORD(v27[0]) = 0;
    v19 = std::istream::operator>>();
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v19);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      goto LABEL_29;
    }

    std::vector<int>::push_back[abi:ne200100](&__p, v27);
  }

  std::istream::get();
  if (&__p != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v24, (v24 - __p) >> 2);
  }

  if (a7)
  {
    *a7 = a3->__end_ - a3->__begin_;
  }

LABEL_29:
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v18 != 93)
  {
    goto LABEL_39;
  }

LABEL_38:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_39;
  }
}

void sub_6C318(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x6C34CLL);
}

void sub_6C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<kaldi::HmmTopology::HmmState>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<kaldi::HmmTopology::HmmState>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void std::vector<kaldi::HmmTopology::HmmState>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<kaldi::HmmTopology::HmmState>::__append(a1, v5);
  }
}

void std::vector<std::pair<int,float>>::resize(void *a1, unint64_t a2)
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
    std::vector<std::pair<int,float>>::__append(a1, a2 - v2);
  }
}

void kaldi::HmmTopology::Check(kaldi::HmmTopology *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  if (v1 == v2 || *this == *(this + 1) || *(this + 3) == *(this + 4))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 243);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v54, "HmmTopology::Check(), empty object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
  }

  LOBYTE(v54[0]) = 0;
  std::vector<BOOL>::vector(&v53, 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3));
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5)
  {
    v6 = v5 >> 2;
    v7 = *(this + 3);
    v8 = (*(this + 4) - v7) >> 2;
    v9 = v53;
    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    do
    {
      v12 = *v4++;
      v11 = v12;
      if (v8 <= v12 || (v13 = *(v7 + 4 * v11), v14 = *(this + 6), v15 = *(this + 7), 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3) <= v13))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 249);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), phone has no valid index.", 47);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      *&v9[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v14 = *(this + 6);
    v15 = *(this + 7);
  }

  if (v15 != v14)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v14) >> 3); ++i)
    {
      if (((*(v53 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 254);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopoloy::Check(), entry with no corresponding phones.", 56);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      v17 = (v14 + 24 * i);
      v18 = *v17;
      v19 = v17[1] - *v17;
      v20 = v19 >> 5;
      v21 = (v19 >> 5) - 1;
      if ((v19 >> 5) <= 1)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 257);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), cannot only have one state (i.e., must have at least one emitting state).", 95);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      v22 = v18 + 32 * v21;
      if (*(v22 + 8) != *(v22 + 16))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 260);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), last state must have no transitions.", 58);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      if (*v22 != -1)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 263);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), last state must not be emitting.", 54);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      v23 = (v19 >> 5) & 0x7FFFFFFF;
      LOBYTE(v54[0]) = 0;
      std::vector<BOOL>::vector(&v52, v23);
      v25 = 0;
      __p = 0;
      v50 = 0;
      v51 = 0;
      do
      {
        v26 = *(this + 6);
        v27 = (*(v26 + 24 * i) + 32 * v25);
        if (*v27 != -1)
        {
          std::vector<int>::push_back[abi:ne200100](&__p, v27);
          std::vector<int>::push_back[abi:ne200100](&__p, (*(*(this + 6) + 24 * i) + 32 * v25 + 4));
          v26 = *(this + 6);
        }

        v48[0] = 0;
        v48[1] = 0;
        v47 = v48;
        v28 = *(v26 + 24 * i) + 32 * v25;
        v29 = *(v28 + 8);
        if (*(v28 + 16) == v29)
        {
          v37 = v25 + 1;
          if (v25 + 1 < v23)
          {
LABEL_66:
            v44 = (&stru_108 + 41);
            v45 = "tot_prob > 0.0 && Non-final state must have transitions out. (with nonzero probability)";
            goto LABEL_68;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0.0;
          do
          {
            v32 = (v29 + 8 * v30);
            v33 = v32[1];
            if (v33 <= 0.0)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 280);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), negative or zero transition prob.", 55);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
            }

            v34 = *v32;
            v46 = v34;
            if (v34 == v21 && *v28 == -1)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 288);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "We do not allow any state to be nonemitting and have a transition to the final-state (this would stop the SplitToPhones function from identifying the last state of a phone.", 172);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
            }

            if (v34 >= v20)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 293);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), invalid dest state ", 41);
              std::ostream::operator<<();
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
            }

            for (j = v48[0]; j; j = *j)
            {
              v36 = *(j + 7);
              if (v34 >= v36)
              {
                if (v36 >= v34)
                {
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 295);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), duplicate transition found.", 49);
                  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
                }

                ++j;
              }
            }

            if (v30 == v34 && *(v28 + 4) == -1)
            {
              kaldi::KaldiAssertFailure_("Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", &stru_108.addr + 2, "entries_[i][j].self_loop_pdf_class != kNoPdf && Nonemitting states cannot have self-loops.", v24);
            }

            std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v47, &v46);
            v31 = v31 + v33;
            *(v52 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
            ++v30;
            v28 = *(*(this + 6) + 24 * i) + 32 * v25;
            v29 = *(v28 + 8);
          }

          while (v30 < (*(v28 + 16) - v29) >> 3);
          v37 = v25 + 1;
          if (v25 + 1 >= v23)
          {
            if (v31 != 0.0)
            {
              v44 = &stru_108.size + 6;
              v45 = "tot_prob == 0.0";
LABEL_68:
              kaldi::KaldiAssertFailure_("Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", v44, v45, v24);
            }
          }

          else
          {
            if (v31 <= 0.0)
            {
              goto LABEL_66;
            }

            if (fabs(v31 + -1.0) > 0.01 && kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 307);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Total probability for state ", 28);
              v39 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " in topology entry is ", 22);
              std::ostream::operator<<();
              kaldi::KaldiWarnMessage::~KaldiWarnMessage(v54);
            }
          }
        }

        std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v47, v48[0]);
        v25 = v37;
      }

      while (v37 != v23);
      v40 = 1;
      do
      {
        if (((*(v52 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 315);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check, state ", 26);
          v43 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " has no input transitions.", 26);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
        }

        ++v40;
      }

      while (v23 != v40);
      std::__sort<std::__less<int,int> &,int *>();
      v41 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(__p, v50);
      v42 = v50;
      if (v41 != v50)
      {
        v42 = v41;
        v50 = v41;
      }

      if (*__p || *(v42 - 1) != ((v42 - __p) >> 2) - 1)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v54, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 319);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "HmmTopology::Check(), pdf_classes are expected to be contiguous and start from zero.", 84);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v54);
      }

      v50 = __p;
      operator delete(__p);
      if (v52)
      {
        operator delete(v52);
      }

      v14 = *(this + 6);
    }
  }

  if (v53)
  {
    operator delete(v53);
  }
}

uint64_t kaldi::HmmTopology::TopologyForPhone(kaldi::HmmTopology *this, int a2)
{
  v2 = *(this + 3);
  if (a2 >= ((*(this + 4) - v2) >> 2) || (v3 = *(v2 + 4 * a2), v3 == -1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "TopologyForPhone", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/hmm/hmm-topology.cc", 343);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "TopologyForPhone(), phone ", 26);
    v5 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, " not covered.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return *(this + 6) + 24 * v3;
}

void (__cdecl ***std::istringstream::basic_istringstream[abi:ne200100](void (__cdecl ***a1)(std::istringstream *__hidden this), const std::string *a2, int a3))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v7;
  *(*(v7 - 3) + a1) = v6;
  a1[1] = 0;
  v8 = (*(*a1 - 3) + a1);
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_6CF6C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t kaldi::HmmTopology::HmmState::HmmState(uint64_t this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  v5 = a3 == -1 || a2 == -1;
  if (v5 && (a3 & a2) != 0xFFFFFFFF)
  {
    kaldi::KaldiAssertFailure_("HmmState", "../subproject/libquasar/libkaldi/src/hmm/hmm-topology.h", &stru_68.segname[4], "(forward_pdf_class != kNoPdf && self_loop_pdf_class != kNoPdf) || (forward_pdf_class == kNoPdf && self_loop_pdf_class == kNoPdf)", a5);
  }

  *this = a2;
  *(this + 4) = a3;
  return this;
}

void sub_6D010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = *a10;
  if (*a10)
  {
    *(v10 + 16) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::vector<kaldi::HmmTopology::HmmState>::__emplace_back_slow_path<kaldi::HmmTopology::HmmState>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = (32 * v2 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<kaldi::HmmTopology::HmmState>::~__split_buffer(&v15);
  return v14;
}

void sub_6D25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::HmmTopology::HmmState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<kaldi::HmmTopology::HmmState>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::HmmTopology::HmmState>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::HmmTopology::HmmState>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::HmmTopology::HmmState> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<kaldi::HmmTopology::HmmState>::__init_with_size[abi:ne200100]<kaldi::HmmTopology::HmmState*,kaldi::HmmTopology::HmmState*>(v3, *a2, a2[1], (a2[1] - *a2) >> 5);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__emplace_back_slow_path<std::vector<kaldi::HmmTopology::HmmState> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<kaldi::HmmTopology::HmmState>::__init_with_size[abi:ne200100]<kaldi::HmmTopology::HmmState*,kaldi::HmmTopology::HmmState*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 5);
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
  std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::~__split_buffer(&v14);
  return v8;
}

void sub_6D538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<kaldi::HmmTopology::HmmState>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<int>::shrink_to_fit(std::vector<int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::ws[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::istream::sentry::sentry();
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, &std::ctype<char>::id);
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

void sub_6D82C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x6D7E8);
  }

  __cxa_rethrow();
}

void std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::HmmTopology::HmmState>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<kaldi::HmmTopology::HmmState>>::~__split_buffer(v18);
  }
}

uint64_t *std::vector<kaldi::HmmTopology::HmmState>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = &v4[4 * a2];
      do
      {
        *v4 = -1;
        v4[2] = 0;
        v4[3] = 0;
        v4[1] = 0;
        v4 += 4;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21 = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>>(result, v10);
    }

    v12 = 32 * v8;
    v18 = 0;
    v19 = 32 * v8;
    *(&v20 + 1) = 0;
    v13 = (32 * v8);
    do
    {
      *v13 = -1;
      v13[2] = 0;
      v13[3] = 0;
      v13[1] = 0;
      v13 += 4;
    }

    while (v13 != (32 * v8 + 32 * a2));
    *&v20 = v12 + 32 * a2;
    v14 = result[1];
    v15 = (v12 + *result - v14);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::HmmTopology::HmmState>,kaldi::HmmTopology::HmmState*>(result, *result, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v17 = v3[2];
    *(v3 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<kaldi::HmmTopology::HmmState>::~__split_buffer(&v18);
  }

  return result;
}

void sub_6DB7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::HmmTopology::HmmState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<int,float>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
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

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_6DD50(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t kaldi::InitKaldiInputStream(uint64_t a1, _BYTE *a2)
{
  if (std::istream::peek())
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    std::istream::get();
    if (std::istream::peek() << 24 == 1107296256)
    {
      std::istream::get();
      result = 1;
      *a2 = 1;
    }

    else
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v5, "InitKaldiInputStream", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 402);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Was looking for B, but got ", 27);
        v4 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v5);
      }

      return 0;
    }
  }

  return result;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
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

void sub_6DFD8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x6DF98);
  }

  __cxa_rethrow();
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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

void fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(a1, v1);
}

void sub_6E49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KaldiVlogMessage::~KaldiVlogMessage(std::locale *this)
{
  v2 = kaldi::KaldiVlogMessage::g_logger;
  std::stringbuf::str();
  locale_low = LODWORD(this[33].__locale_);
  locale = this[34].__locale_;
  v2(&__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  std::ios::~ios();
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::Write(uint64_t a1)
{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  boost::filesystem::path::path(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_6E72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6E828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      boost::filesystem::path::path(__p, "FATAL");
      v8 = fst::LogMessage::LogMessage(&v14, __p);
      v9 = fst::cerr(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TestProperties: stored Fst properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (stored: props1, computed: props2)", 35);
      fst::LogMessage::~LogMessage(&v14);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a1, a2, a3, 1);
  }
}

void sub_6E990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = a1;
  v8 = 0x155555550000;
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v10 = v9;
  if (!a4 || (v11 = v9 & 0x3FFFFFFF0000 | (2 * v9) & 0x2AAAAAAA0000 | (v9 >> 1) & 0x155555550000 | 7, (a2 & ~v11) != 0))
  {
    v10 = v9 & 7;
    v48 = v10;
    v12 = (*(*v7 + 16))(v7);
    if ((a2 & 0xF3C00000000) != 0 && v12)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(v7, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v13 = a2 & 0xC0000;
      v14 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v14 = 0x10425A850000;
      }

      v15 = v10 | v14;
      v16 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v15 |= 0x100000uLL;
      }

      v48 = v15;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*v7 + 128))(v7, &v38);
      v17 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v18 = (*(*v38 + 24))();
LABEL_18:
            v19 = (*(*v7 + 40))(v7, v18);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v13)
            {
              std::vector<int>::reserve(&v42, v19);
            }

            if (v16)
            {
              std::vector<int>::reserve(&v41, v19);
            }

            v47 = 0;
            v20 = v7;
            (*(*v7 + 136))(v7, v18, &v43);
            v22 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_64;
                  }

LABEL_62:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_64:
                  v7 = v20;
                  if (v13 && (std::__sort<std::__less<int,int> &,int *>(), v30 = v42.__end_ - v42.__begin_, v30 >= 2))
                  {
                    v31 = v30 - 1;
                    v32 = v42.__begin_ + 1;
                    while (*v32 != *(v32 - 1))
                    {
                      ++v32;
                      if (!--v31)
                      {
                        goto LABEL_69;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v16)
                    {
LABEL_78:
                      if (v17 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      (*(*v20 + 32))(&v43, v20, v18);
                      v51 = *(&v43 + 1);
                      v52 = v43;
                      v50 = 2139095040;
                      v49 = INFINITY;
                      if (*&v43 == INFINITY && v51 == v49)
                      {
                        if ((*(*v20 + 40))(v20, v18) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        v51 = *(&v43 + 1);
                        v52 = v43;
                        v50 = 0;
                        v49 = 0.0;
                        if (*&v43 != 0.0 || v51 != v49)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v17;
                      }

                      if (v38)
                      {
                        (*(*v38 + 32))(v38);
                      }

                      else
                      {
                        ++v40;
                      }

                      goto LABEL_12;
                    }
                  }

                  else
                  {
LABEL_69:
                    if (!v16)
                    {
                      goto LABEL_78;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v33 = v41.__end_ - v41.__begin_;
                  if (v33 >= 2)
                  {
                    v34 = v33 - 1;
                    v35 = v41.__begin_ + 1;
                    while (*v35 != *(v35 - 1))
                    {
                      ++v35;
                      if (!--v34)
                      {
                        goto LABEL_78;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_78;
                }

                if (v43)
                {
                  v23 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_62;
              }

              v23 = (v44 + 20 * v47);
LABEL_29:
              v24 = *v23;
              v25 = v23 + 1;
              v26 = *v23;
              if (*v23 != v23[1])
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v26 = *v25;
              }

              if (v24 | v26)
              {
                if (v24)
                {
                  if (v26)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }

                v27 = v48;
              }

              else
              {
                v27 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v27 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (v26)
              {
LABEL_35:
                if (v22)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_39:
              v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
              if (v22)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v24 < v8)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v26 < SHIDWORD(v8))
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v21.n128_u32[0] = v23[2];
              v28 = *(v23 + 3);
              v52 = v21.n128_u32[0];
              v51 = v28;
              v50 = 0;
              v49 = 0.0;
              if (v21.n128_f32[0] != 0.0 || v51 != v49)
              {
                v52 = v21.n128_u32[0];
                v51 = v28;
                v50 = 2139095040;
                v49 = INFINITY;
                if (v21.n128_f32[0] != INFINITY || (v21.n128_f32[0] = v51, v51 != v49))
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v29 = v23[4];
              if (v29 <= v18)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v29 != v18 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v8 = *v23;
              if (v13)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v23);
              }

              if (v16)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v25);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43, v21);
                v22 = 0;
              }

              else
              {
                v22 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v18 = v40;
          goto LABEL_18;
        }

        if (v38)
        {
          (*(*v38 + 8))();
        }
      }

      else if (v40 < v39)
      {
        goto LABEL_17;
      }

      a3 = v37;
      if ((*(*v7 + 24))(v7) != -1 && (*(*v7 + 24))(v7))
      {
        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
      }

      if (v41.__begin_)
      {
        v41.__end_ = v41.__begin_;
        operator delete(v41.__begin_);
      }

      if (v42.__begin_)
      {
        v42.__end_ = v42.__begin_;
        operator delete(v42.__begin_);
      }

      v10 = v48;
    }

    v11 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v11;
  return v10;
}