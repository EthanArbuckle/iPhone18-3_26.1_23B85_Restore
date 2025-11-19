void sub_6F1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1))
  {
    fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::InitVisit(a2, a1);
  }

  fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>();
}

void sub_6FAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::InitVisit(uint64_t a1, uint64_t a2)
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

unint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::FinishState(uint64_t a1, int a2, int a3)
{
  result = (*(**(a1 + 32) + 32))(&v21);
  v24 = *(&v21 + 1);
  v25 = v21;
  v23 = 2139095040;
  v22 = INFINITY;
  if (*&v21 == INFINITY && v24 == v22)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2;
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v8 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * v7) != *(v8 + 4 * v7))
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = *(a1 + 80);
  v11 = **(a1 + 16);
  v12 = (*(v10 + 8) - 4);
  v13 = v12;
  do
  {
    v14 = *v13--;
    v9 |= *(v11 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14;
  }

  while (v14 != a2);
  v15 = *a1;
  v16 = **(a1 + 72);
  while (1)
  {
    v17 = *v12;
    if (v15)
    {
      *(*v15 + 4 * v17) = *(a1 + 48);
    }

    result = v17 >> 6;
    v18 = 1 << v17;
    if ((v9 & 1) == 0)
    {
      break;
    }

    *(v11 + 8 * result) |= v18;
    *(v16 + 8 * result) &= ~v18;
    if (v17 == a2)
    {
      *(v10 + 8) = v12;
      goto LABEL_16;
    }

LABEL_14:
    --v12;
  }

  *(v16 + 8 * result) &= ~v18;
  if (v17 != a2)
  {
    goto LABEL_14;
  }

  *(v10 + 8) = v12;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_16:
  ++*(a1 + 48);
LABEL_17:
  if (a3 != -1)
  {
    v19 = **(a1 + 16);
    if ((*(v19 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
    {
      *(v19 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v20 = *(v8 + 4 * v7);
    if (v20 < *(v8 + 4 * a3))
    {
      *(v8 + 4 * a3) = v20;
    }
  }

  return result;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (*(a3 + 16) == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

uint64_t fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_276088;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~MemoryPool(void *a1)
{
  *a1 = off_276088;
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2760C8;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_70194(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2760C8;
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

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *>>::push_back(void *result, void *a2)
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
    result = std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>>> *>>::__add_back_capacity(void *a1)
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

void sub_70498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ArcBuffer<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::SetFromFst<fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  (*(*a2 + 136))(a2, a3, &v25);
  if (!v25 && (a4 & 1) == 0)
  {
    v10 = v26 + 20 * v27;
    *(a1 + 16) = v26;
    *(a1 + 24) = v10;
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }

    *(a1 + 8) = 0;
    return;
  }

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

    v24 = 0x4000;
    if (v13 > 0x4000)
    {
      v24 = v13;
    }

    *(a1 + 8) = v24;
    v15 = malloc_type_malloc(20 * v24, 0x1000040A86A77D5uLL);
    *a1 = v15;
    *(a1 + 16) = v15;
    v14 = v15;
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *a1;
  }

  *(a1 + 24) = &v14[5 * v13];
  v16 = v25;
  v17 = v26;
  v19 = v27;
  v18 = v28;
  if (v28)
  {
    ++*v28;
  }

  v20 = 0;
LABEL_13:
  v15 += 5;
  while (v16)
  {
    v21 = (*(*v16 + 24))(v16);
    v22 = *v16;
    if (v21)
    {
      (*(v22 + 8))(v16);
      return;
    }

    v23 = (*(v22 + 32))(v16);
LABEL_18:
    *(v15 - 5) = *v23;
    *(v15 - 3) = *(v23 + 8);
    *(v15 - 1) = *(v23 + 16);
    if (!v16)
    {
      ++v20;
      goto LABEL_13;
    }

    v15 += 5;
    (*(*v16 + 40))(v16);
  }

  v23 = v17 + 20 * v20;
  if (v20 < v19)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    --*v18;
  }
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~ImplToFst(void *a1)
{
  *a1 = off_276108;
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

double fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Final@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_709E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_212100)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_212100)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t fst::LatticeWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::LatticeWeightTpl<float>::Type(void)::type;
}

uint64_t fst::LatticeWeightTpl<float>::Write(int *a1, uint64_t a2)
{
  v5 = *a1;
  std::ostream::write();
  v6 = a1[1];
  std::ostream::write();
  return a2;
}

void fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::~ImplToFst(a1);

  operator delete();
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5[1] - *v5) >> 2);
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetFinal(uint64_t a1, int a2, uint64_t *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::SetFinal(v6, a2, &v8);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_2748E0;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_274830;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_7167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v34 = 0u;
  v33 = 0u;
  *v32 = 0u;
  *v31 = 0u;
  v36 = 0;
  v37 = 0;
  v35 = -1;
  v35 = (*(*a1 + 24))(a1);
  v36 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v36 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) != 0)
  {
    v7 = 1;
    v6 = -1;
  }

  else
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v40;
    if (v40 != -1)
    {
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  boost::filesystem::path::path(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v29 = v6;
  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v7;
    v12 = 0;
    v13 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 32))(__p, a1, v12);
      data = __p[0].__r_.__value_.__l.__data_;
      std::ostream::write();
      data = HIDWORD(__p[0].__r_.__value_.__r.__words[0]);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v12);
      std::ostream::write();
      v14 = *(*(*(a1[1] + 64) + 8 * v12) + 24);
      v15 = *(*(*(a1[1] + 64) + 8 * v12) + 32) - v14;
      if (v15)
      {
        v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 2);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v14 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          fst::LatticeWeightTpl<float>::Write(v18, a2);
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[2];
          std::ostream::write();
          v18 += 5;
          --v17;
        }

        while (v17);
      }

      ++v12;
    }

    while (v12 != v13);
    v7 = v11;
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(__p, "ERROR");
    v19 = fst::LogMessage::LogMessage(&data, __p);
    v20 = fst::cerr(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "VectorFst::Write: write failed: ", 32);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
LABEL_27:
    fst::LogMessage::~LogMessage(&data);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v36 == v13)
    {
      updated = 1;
      goto LABEL_30;
    }

    boost::filesystem::path::path(__p, "ERROR");
    v27 = fst::LogMessage::LogMessage(&data, __p);
    v28 = fst::cerr(v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v36 = v13;
  boost::filesystem::path::path(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v30, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v32[0]) < 0)
  {
    operator delete(v31[0]);
  }

  return updated;
}

void sub_71B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a11);
  _Unwind_Resume(a1);
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::LatticeWeightTpl<float>>::Type();
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

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
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

uint64_t fst::ArcTpl<fst::LatticeWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::LatticeWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::WriteFile(fst *a1, uint64_t a2)
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::SetFinal(uint64_t *a1, int a2, uint64_t *a3)
{
  v5 = *(a1[8] + 8 * a2);
  v6 = *a1;
  v7 = *v5;
  *v5 = *a3;
  v8 = (*(v6 + 24))();
  v10 = *a3;
  v11 = v7;
  result = fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(v8, &v11, &v10);
  a1[1] = a1[1] & 4 | result;
  return result;
}

uint64_t fst::SetFinalProperties<fst::LatticeWeightTpl<float>>(unint64_t a1, float *a2, float *a3)
{
  if ((*a2 != INFINITY || a2[1] != INFINITY) && (*a2 != 0.0 || a2[1] != 0.0))
  {
    a1 &= ~0x100000000uLL;
  }

  if ((*a3 != INFINITY || a3[1] != INFINITY) && (*a3 != 0.0 || a3[1] != 0.0))
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 32);
  if (v6 == *(*(a1[8] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 20);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v5 = *a3;
  v4 = *(a3 + 1);
  v6 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v4)
  {
    v6 = a1;
  }

  v7 = v6 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v4)
  {
    v7 = v6 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v5 == 0.0)
  {
    v6 = v7;
  }

  if (!v4)
  {
    v6 = v6 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 > SLODWORD(v5))
    {
      v6 = v6 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v4)
    {
      v6 = v6 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }
  }

  if (a3[2] != INFINITY || a3[3] != INFINITY)
  {
    v9 = *(a3 + 3);
    if (a3[2] != 0.0 || a3[3] != 0.0)
    {
      v6 = v6 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (*(a3 + 4) <= a2)
  {
    v6 = v6 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v6 & 0x4000000000) != 0)
  {
    return v6 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v6 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 64);
  if (*(a1 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 64);
    }

    while (v11 < (*(a1 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(a1 + 64);
  if (*(a1 + 72) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v18 = *(v16 + 24);
      v17 = *(v16 + 32);
      v19 = *(v16 + 8);
      v20 = v17 - v18;
      if (v17 == v18)
      {
        v27 = 0;
        v28 = 0xCCCCCCCCCCCCCCCDLL * (v20 >> 2);
        v29 = *(v16 + 16);
        v30 = *(v16 + 8);
      }

      else
      {
        v21 = 0;
        v27 = 0;
        v22 = (v18 + 16);
        do
        {
          v23 = *(__p[0] + *v22);
          if (v23 == -1)
          {
            v25 = *(v22 - 2);
            v26.i64[0] = v25;
            v26.i64[1] = HIDWORD(v25);
            v19 = vaddq_s64(v19, vceqzq_s64(v26));
          }

          else
          {
            *v22 = v23;
            if (v21 != v27)
            {
              v24 = v18 + 20 * v27;
              *v24 = *(v22 - 2);
              *(v24 + 8) = *(v22 - 1);
              *(v24 + 16) = v23;
              v14 = *v4;
            }

            ++v27;
          }

          ++v21;
          v16 = *(v14 + 8 * v15);
          v28 = 0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 32) - *(v16 + 24)) >> 2);
          v22 += 5;
        }

        while (v21 < v28);
        v29 = v19.i64[1];
        v30 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteArcs(v16, v28 - v27);
      v14 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 8) = v30;
      *(v32 + 16) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(a1 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(a1 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_72C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -20 * a2;
    v4 = (v2 - 20);
    v5 = (v2 - 20);
    do
    {
      v6 = *v5;
      v5 -= 5;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 192))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 152))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    if (fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::CheckNumArcs(a1))
    {
      fst::Connect<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a2);
    }

    __assert_rtn("RemoveEpsLocalClass", "remove-eps-local-inl.h", 61, "CheckNumArcs()");
  }

  return a1;
}

void sub_72E1C(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 152))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    (*(**a1 + 32))(v10);
    v15 = *(v10 + 1);
    v16 = v10[0];
    v14 = 2139095040;
    v13 = INFINITY;
    v5.n128_u32[0] = v10[0];
    if (*v10 != INFINITY || (v5.n128_f32[0] = v15, v15 != v13))
    {
      ++*(a1[5] + 4 * i);
    }

    v6 = *a1;
    v12 = 0;
    (*(*v6 + 136))(v6, i, v10, v5);
    while (1)
    {
      result = v10[0];
      if (!v10[0])
      {
        if (v12 >= v10[2])
        {
          goto LABEL_18;
        }

LABEL_12:
        v9 = 0;
        v8 = v10[1] + 20 * v12;
        goto LABEL_13;
      }

      v7 = (*(*v10[0] + 24))(v10[0]);
      result = v10[0];
      if (v7)
      {
        break;
      }

      if (!v10[0])
      {
        goto LABEL_12;
      }

      v8 = (*(*v10[0] + 32))();
      v9 = v10[0];
LABEL_13:
      ++*(a1[2] + 4 * *(v8 + 16));
      ++*(a1[5] + 4 * i);
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      else
      {
        ++v12;
      }
    }

    if (v10[0])
    {
      result = (*(*v10[0] + 8))();
      continue;
    }

LABEL_18:
    if (v11)
    {
      --*v11;
    }
  }

  return result;
}

void sub_73104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs((v10 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::GetArc(a1, a2, a3, &v12);
  if (v14 != a2 && v14 != *(a1 + 8))
  {
    v7 = *(*(a1 + 40) + 4 * v14);
    if (*(*(a1 + 16) + 4 * v14) != 1 || v7 < 2)
    {
      if (v7 == 1)
      {
        v9 = v12;
        v10 = v13;
        v11 = v14;
        fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern2(a1, a2, a3, &v9);
      }
    }

    else
    {
      v9 = v12;
      v10 = v13;
      v11 = v14;
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern1(a1, a2, a3, &v9);
    }
  }
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::CheckNumArcs(void *a1)
{
  v2 = (*(**a1 + 24))(*a1);
  --*(a1[2] + 4 * v2);
  v3 = (*(**a1 + 152))();
  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = v3;
  do
  {
    if (v4 == *(a1 + 2))
    {
      goto LABEL_25;
    }

    (*(**a1 + 32))(&v13);
    v20 = *(&v13 + 1);
    v21 = v13;
    v19 = 2139095040;
    v18 = INFINITY;
    v6.n128_u32[0] = v13;
    if (*&v13 != INFINITY || (v6.n128_f32[0] = v20, v20 != v18))
    {
      --*(a1[5] + 4 * v4);
    }

    v7 = *a1;
    v17 = 0;
    (*(*v7 + 136))(v7, v4, &v13, v6);
    while (1)
    {
      if (!v13)
      {
        if (v17 >= v15)
        {
          goto LABEL_23;
        }

LABEL_15:
        if (*(v14 + 20 * v17 + 16) == *(a1 + 2))
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if ((*(*v13 + 24))(v13))
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_15;
      }

      v8 = (*(*v13 + 32))();
      v9 = v13;
      if (*(v8 + 16) != *(a1 + 2))
      {
        if (v13)
        {
          v10 = (*(*v13 + 32))();
          v9 = v13;
LABEL_17:
          --*(a1[2] + 4 * *(v10 + 16));
          --*(a1[5] + 4 * v4);
          goto LABEL_18;
        }

LABEL_16:
        v9 = 0;
        v10 = v14 + 20 * v17;
        goto LABEL_17;
      }

LABEL_18:
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      else
      {
LABEL_20:
        ++v17;
      }
    }

    if (v13)
    {
      (*(*v13 + 8))();
      goto LABEL_25;
    }

LABEL_23:
    if (v16)
    {
      --*v16;
    }

LABEL_25:
    ++v4;
  }

  while (v4 != v5);
  v11 = 0;
  do
  {
    if (*(a1[2] + v11))
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs();
    }

    if (*(a1[5] + v11))
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CheckNumArcs();
    }

    v11 += 4;
  }

  while (4 * v5 != v11);
  return 1;
}

void sub_73528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs((v10 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::GetArc(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v11 = 0;
  (*(*v6 + 136))(v6, a2, v9);
  if (v9[0])
  {
    (*(*v9[0] + 64))(v9[0], a3);
    if (v9[0])
    {
      v7 = (*(*v9[0] + 32))(v9[0]);
      result = v9[0];
      goto LABEL_7;
    }

    a3 = v11;
  }

  else
  {
    v11 = a3;
  }

  result = 0;
  v7 = v9[1] + 20 * a3;
LABEL_7:
  *a4 = *v7;
  *(a4 + 8) = *(v7 + 8);
  *(a4 + 16) = *(v7 + 16);
  if (result)
  {
    return (*(*result + 8))(result);
  }

  if (v10)
  {
    --*v10;
  }

  return result;
}

void sub_73684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::InitNumArcs(a10);
  }

  else
  {
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a4[2].i32[0];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  (*(**a1 + 288))();
  v9 = INFINITY;
  v10 = INFINITY;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v46 + 24))(v46))
  {
    v13 = (*(*v46 + 32))(v46);
    v14 = *v13;
    v53[0] = *v13;
    v15 = *(v13 + 8);
    v53[1] = v15;
    v16 = *(v13 + 16);
    v54 = v16;
    if (v16 != *(a1 + 2))
    {
      v17 = a4->i32[0];
      if (a4->i32[0] && v14.i32[0] || (v18 = HIDWORD(*&v14), (v19 = a4->i32[1]) != 0) && v18)
      {
        v20 = vaddv_f32(v15);
        if ((v9 + v10) >= v20)
        {
          if ((v9 + v10) > v20 || (v9 >= v15.f32[0] ? (v23 = v9 <= v15.f32[0]) : (v23 = 1), !v23))
          {
            v10 = v15.f32[1];
            v9 = v15.f32[0];
          }
        }
      }

      else
      {
        v44[1] = vadd_f32(v15, a4[1]);
        if (v17)
        {
          v14.i32[0] = v17;
        }

        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v44[0] = __PAIR64__(v21, v14.u32[0]);
        v45 = v16;
        v22 = vaddv_f32(v15);
        if ((v11 + v12) >= v22)
        {
          if ((v11 + v12) > v22 || (v11 >= v15.f32[0] ? (v24 = v11 <= v15.f32[0]) : (v24 = 1), !v24))
          {
            v12 = v15.f32[1];
            v11 = v15.f32[0];
          }
        }

        --*(a1[5] + 4 * v8);
        --*(a1[2] + 4 * v54);
        v54 = *(a1 + 2);
        (*(*v46 + 88))(v46, v53);
        std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::push_back[abi:ne200100](&v47, v44);
      }
    }

    (*(*v46 + 40))(v46);
  }

  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  (*(**a1 + 32))(v53);
  v26 = v53[0].f32[1];
  v28 = v53[0];
  LODWORD(v46) = HIDWORD(*&v28);
  LODWORD(v27) = v28;
  LODWORD(v44[0]) = v53[0].i32[0];
  v52 = INFINITY;
  v51 = INFINITY;
  if (v53[0].f32[0] == INFINITY && *&v46 == v51)
  {
    goto LABEL_54;
  }

  if (!*a4)
  {
    v25.n128_f32[0] = v11 + v12;
    if ((v11 + v12) >= (v53[0].f32[0] + v53[0].f32[1]) && ((v11 + v12) > (v53[0].f32[0] + v53[0].f32[1]) || v11 >= v53[0].f32[0] && v11 > v53[0].f32[0]))
    {
      v12 = v53[0].f32[1];
      v11 = v53[0].f32[0];
    }

    v29 = a4[1].f32[0];
    v30 = a4[1].f32[1];
    (*(**a1 + 32))(v44, v25);
    v52 = *(v44 + 1);
    LODWORD(v46) = v44[0];
    v51 = INFINITY;
    v50 = INFINITY;
    v31.n128_u32[0] = v44[0];
    if (*v44 == INFINITY)
    {
      v31.n128_f32[0] = v52;
      if (v52 == v50)
      {
        ++*(a1[5] + 4 * a2);
      }
    }

    v32 = *a1;
    (*(**a1 + 32))(&v46, *a1, a2, v31);
    v33 = v27 + v29;
    v34 = *(&v46 + 1);
    LODWORD(v35) = v46;
    v36 = (v27 + v29) + (v26 + v30);
    if ((*&v46 + *(&v46 + 1)) >= v36 && ((*&v46 + *(&v46 + 1)) > v36 || *&v46 >= v33 && *&v46 > v33))
    {
      v34 = v26 + v30;
      v35 = v27 + v29;
    }

    v44[0] = __PAIR64__(LODWORD(v34), LODWORD(v35));
    (*(*v32 + 176))(v32, a2, v44);
    --*(a1[5] + 4 * v8);
    v37 = *a1;
    v44[0] = vneg_f32(0x7F0000007FLL);
    (*(*v37 + 176))(v37, v8, v44);
    goto LABEL_54;
  }

  if ((v9 + v10) < (v53[0].f32[0] + v53[0].f32[1]) || (v9 + v10) <= (v53[0].f32[0] + v53[0].f32[1]) && v9 <= v53[0].f32[0])
  {
LABEL_54:
    v27 = v9;
    v26 = v10;
  }

  v53[0].f32[0] = v11;
  *v44 = v12;
  LODWORD(v46) = 2139095040;
  v52 = INFINITY;
  if (v11 != INFINITY || (v25.n128_u32[0] = v44[0], *v44 != v52))
  {
    v53[0].f32[0] = v27;
    *v44 = v26;
    LODWORD(v46) = 2139095040;
    v52 = INFINITY;
    if (v27 == INFINITY && (v25.n128_u32[0] = v44[0], *v44 == v52))
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * a4[2].i32[0]);
      a4[2].i32[0] = *(a1 + 2);
      (*(**a1 + 288))(v25);
      (*(**v53 + 64))(*v53, a3);
      (*(**v53 + 88))(*v53, a4);
      if (v53[0])
      {
        (*(**v53 + 8))(*v53);
      }
    }

    else
    {
      if ((v11 + v12) >= (v27 + v26) && ((v11 + v12) > (v27 + v26) || v11 > v27))
      {
        v12 = v26;
        v11 = v27;
      }

      v25.n128_f32[0] = v27 - v11;
      if ((v27 - v11) == -INFINITY || (v26 - v12) == -INFINITY)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v53, "Divide", "../subproject/libquasar/libkaldi/src/fstext/lattice-weight.h", 346);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v53);
        }

        v38 = INFINITY;
        v25.n128_u32[0] = 2139095040;
      }

      else
      {
        if (v25.n128_f32[0] == INFINITY)
        {
          v38 = INFINITY;
        }

        else
        {
          v38 = v26 - v12;
        }

        if ((v26 - v12) == INFINITY || v25.n128_f32[0] == INFINITY)
        {
          v25.n128_f32[0] = INFINITY;
        }
      }

      v53[0] = __PAIR64__(LODWORD(v38), v25.n128_u32[0]);
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::Reweight(a1, v25, a2, a3, v53);
    }
  }

  v41 = v47;
  if (v48 != v47)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v41[v42 + 16]);
      (*(**a1 + 200))(*a1, a2, v25);
      ++v43;
      v41 = v47;
      v42 += 20;
    }

    while (v43 < 0xCCCCCCCCCCCCCCCDLL * ((v48 - v47) >> 2));
  }

  if (v41)
  {
    v48 = v41;
    operator delete(v41);
  }
}

void sub_73E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a4[2].i32[0];
  v9 = *(a1[2] + 4 * v8);
  v10 = v8;
  result = (*(**a1 + 32))(&v34);
  LODWORD(v29[0]) = HIDWORD(v34);
  LODWORD(v31[0]) = v34;
  LODWORD(v33) = 2139095040;
  v36 = INFINITY;
  if (*&v34 != INFINITY || *v29 != v36)
  {
    if (*a4)
    {
      return result;
    }

    v12 = *&v34 + a4[1].f32[0];
    v13 = *(&v34 + 1) + a4[1].f32[1];
    (*(**a1 + 32))(v31);
    LODWORD(v33) = HIDWORD(v31[0]);
    LODWORD(v29[0]) = v31[0];
    v36 = INFINITY;
    v35 = INFINITY;
    v14.n128_u32[0] = v31[0];
    if (*v31 == INFINITY)
    {
      v14.n128_u32[0] = v33;
      if (*&v33 == v35)
      {
        ++*(a1[5] + 4 * a2);
      }
    }

    v15 = *a1;
    (*(**a1 + 32))(v29, *a1, a2, v14);
    v16 = *(v29 + 1);
    v17 = *v29;
    if ((*v29 + *(v29 + 1)) >= (v12 + v13) && ((*v29 + *(v29 + 1)) > (v12 + v13) || *v29 >= v12 && *v29 > v12))
    {
      v16 = v13;
      v17 = v12;
    }

    v31[0] = __PAIR64__(LODWORD(v16), LODWORD(v17));
    (*(*v15 + 176))(v15, a2, v31);
    if (v9 == 1)
    {
      --*(a1[5] + 4 * v10);
      v27 = *a1;
      v31[0] = vneg_f32(0x7F0000007FLL);
      (*(*v27 + 176))(v27, v10, v31);
    }

    goto LABEL_35;
  }

  (*(**a1 + 288))(*a1, v10, &v33);
  if ((*(*v33 + 24))(v33))
  {
    v18 = 259;
LABEL_14:
    __assert_rtn("RemoveEpsPattern2", "remove-eps-local-inl.h", v18, "!aiter_next.Done()");
  }

  while (*((*(*v33 + 32))(v33) + 16) == *(a1 + 2))
  {
    (*(*v33 + 40))(v33);
    if ((*(*v33 + 24))(v33))
    {
      v18 = 262;
      goto LABEL_14;
    }
  }

  v19 = (*(*v33 + 32))(v33);
  v20 = *v19;
  v31[0] = *v19;
  v21 = *(v19 + 8);
  v31[1] = v21;
  v22 = *(v19 + 16);
  v32 = v22;
  v23 = a4->i32[0];
  if (a4->i32[0] && v20 || (v24 = HIDWORD(v20), (v25 = a4->i32[1]) != 0) && v24)
  {
    v26 = 0;
  }

  else
  {
    v29[1] = vadd_f32(v21, a4[1]);
    if (v23)
    {
      LODWORD(v20) = v23;
    }

    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    v29[0] = __PAIR64__(v28, v20);
    v30 = v22;
    if (v9 == 1)
    {
      --*(a1[5] + 4 * v10);
      --*(a1[2] + 4 * v22);
      v32 = *(a1 + 2);
      (*(*v33 + 88))(v33, v31);
    }

    ++*(a1[5] + 4 * a2);
    ++*(a1[2] + 4 * v22);
    (*(**a1 + 200))(*a1, a2, v29);
    v26 = 1;
  }

  result = v33;
  if (v33)
  {
    result = (*(*v33 + 8))(v33);
  }

  if (v26)
  {
LABEL_35:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    a4[2].i32[0] = *(a1 + 2);
    (*(**a1 + 288))();
    (*(*v31[0] + 64))(v31[0], a3);
    (*(*v31[0] + 88))(v31[0], a4);
    result = v31[0];
    if (v31[0])
    {
      return (*(*v31[0] + 8))(v31[0]);
    }
  }

  return result;
}

void sub_744C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::Reweight(void *a1, __n128 a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v8 = a5->i32[1];
  LODWORD(v39.__locale_) = a5->i32[0];
  LODWORD(v33) = v8;
  LODWORD(v29) = 2139095040;
  LODWORD(v36) = 2139095040;
  a2.n128_u32[0] = v39.__locale_;
  if (*&v39.__locale_ == INFINITY)
  {
    a2.n128_u32[0] = v33;
    if (*&v33 == *&v36)
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight();
    }
  }

  v9 = *a1;
  (*(**a1 + 288))(a2);
  (*(*v36 + 64))(v36, a4);
  v10 = (*(*v36 + 32))(v36);
  v33 = *v10;
  v11 = *(v10 + 8);
  v34 = v11;
  v35 = *(v10 + 16);
  if (*(a1[2] + 4 * v35) != 1)
  {
    __assert_rtn("Reweight", "remove-eps-local-inl.h", 147, "num_arcs_in_[arc.nextstate] == 1");
  }

  v34 = vadd_f32(v11, *a5);
  (*(*v36 + 88))(v36, &v33);
  (*(**a1 + 288))(*a1, v35, &v32);
  while (!(*(*v32 + 24))(v32))
  {
    v12 = (*(*v32 + 32))(v32);
    v29 = *v12;
    v13 = *(v12 + 8);
    v30 = v13;
    v31 = *(v12 + 16);
    if (v31 != *(a1 + 2))
    {
      v14 = vsub_f32(v13, *a5);
      *v15.f32 = v14;
      *&v15.u32[2] = v14;
      v16.i32[0] = vmovn_s32(vceqq_f32(v15, xmmword_217E00)).u32[0];
      v16.i32[1] = vmovn_s32(vmvnq_s8(vceqq_f32(v15, v15))).i32[1];
      if (vmaxv_u16(v16))
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(&v39, "Divide", "../subproject/libquasar/libkaldi/src/fstext/lattice-weight.h", 346);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "[dividing by zero?]  Returning zero.", 36);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v39);
        }

        v18 = INFINITY;
        v19 = INFINITY;
      }

      else
      {
        if (v14.f32[1] == INFINITY || v14.f32[0] == INFINITY)
        {
          v18 = INFINITY;
        }

        else
        {
          v18 = v14.f32[0];
        }

        if (v14.f32[0] == INFINITY)
        {
          v19 = INFINITY;
        }

        else
        {
          v19 = v14.f32[1];
        }
      }

      v30 = __PAIR64__(LODWORD(v19), LODWORD(v18));
      (*(*v32 + 88))(v32, &v29);
    }

    (*(*v32 + 40))(v32);
  }

  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  (*(**a1 + 32))(&v29);
  LODWORD(v32) = HIDWORD(v29);
  LODWORD(v39.__locale_) = v29;
  v38 = 2139095040;
  v37 = INFINITY;
  if (*&v29 != INFINITY || *&v32 != v37)
  {
    v21 = *a1;
    v22 = v35;
    v23 = *&v29 - a5->f32[0];
    v24 = *(&v29 + 1) - a5->f32[1];
    if (v23 == -INFINITY || v24 == -INFINITY)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(&v39, "Divide", "../subproject/libquasar/libkaldi/src/fstext/lattice-weight.h", 346);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "LatticeWeightTpl::Divide, NaN or invalid number produced. ", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "[dividing by zero?]  Returning zero.", 36);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v39);
      }
    }

    else if (v23 != INFINITY && v24 != INFINITY)
    {
      *&v39.__locale_ = *&v29 - a5->f32[0];
      *(&v39.__locale_ + 1) = v24;
LABEL_39:
      (*(*v21 + 176))(v21, v22, &v39);
      goto LABEL_40;
    }

    v39.__locale_ = vneg_f32(0x7F0000007FLL);
    goto LABEL_39;
  }

LABEL_40:
  result = v36;
  if (v36)
  {
    return (*(*v36 + 8))(v36);
  }

  return result;
}

void sub_74A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<int,int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

_DWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, _DWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[2];
    v7 = *v5;
    if (v6 >= *v5 && (v7 < v6 || v5[3] >= v5[1]))
    {
      goto LABEL_18;
    }

    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[1];
    v5[2] = v7;
    v4[1] = v10;
    v11 = result;
    if (v5 == result)
    {
      goto LABEL_17;
    }

    v12 = v3;
    while (1)
    {
      v13 = *(result + v12 - 8);
      if (v13 <= v9)
      {
        break;
      }

      v14 = *(result + v12 - 4);
LABEL_11:
      v5 -= 2;
      v15 = (result + v12);
      *v15 = v13;
      v15[1] = v14;
      v12 -= 8;
      if (!v12)
      {
        v11 = result;
        goto LABEL_17;
      }
    }

    if (v13 >= v9)
    {
      v11 = (result + v12);
      v14 = *(result + v12 - 4);
      if (v14 <= v8)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v11 = v5;
LABEL_17:
    *v11 = v9;
    v11[1] = v8;
LABEL_18:
    v2 = v4 + 2;
    v3 += 8;
  }

  while (v4 + 2 != a2);
  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 < v3;
        }

        while (v13 > v3);
      }

      while (!v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

_DWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 <= v3;
        }

        while (v16 < v3);
      }

      while (v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v18);
  }
}

void *kaldi::EventMap::Write(void *a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    return (*(*a3 + 56))(a3, a1, a2);
  }

  else
  {
    return kaldi::WriteToken(a1, a2, "NULL", a4, a5);
  }
}

uint64_t kaldi::EventMap::Read(uint64_t *a1, uint64_t a2)
{
  v11 = kaldi::Peek(a1, a2);
  if (v11 > 0x52u)
  {
    if (v11 == 83)
    {

      kaldi::SplitEventMap::Read(a1, a2);
    }

    if (v11 == 84)
    {

      kaldi::TableEventMap::Read(a1, a2);
    }

LABEL_16:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 54);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "EventMap::read, was not expecting character ", 44);
    kaldi::CharToString(&v11, &__p);
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

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", at file position ", 19);
    std::istream::tellg();
    std::ostream::operator<<();
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  if (v11 == 67)
  {

    kaldi::ConstantEventMap::Read(a1, a2);
  }

  if (v11 != 78)
  {
    goto LABEL_16;
  }

  kaldi::ExpectToken(a1, a2, "NULL");
  return 0;
}

void sub_76C94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::ConstantEventMap::Read(uint64_t *a1, int a2)
{
  kaldi::ExpectToken(a1, a2, "CE");
  v6 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v6, v4, v5);
  operator new();
}

void kaldi::TableEventMap::Read(uint64_t *a1, uint64_t a2)
{
  kaldi::ExpectToken(a1, a2, "TE");
  v12 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v12, v4, v5);
  v11 = 0;
  kaldi::ReadBasicType<unsigned int>(a1, a2, &v11, v6, v7);
  std::vector<kaldi::EventMap *>::vector[abi:ne200100](&__p, v11);
  kaldi::ExpectToken(a1, a2, "(");
  if (v11)
  {
    for (i = 0; i < v11; *(__p + i++) = v9)
    {
      v9 = kaldi::EventMap::Read(a1, a2);
    }
  }

  kaldi::ExpectToken(a1, a2, ")");
  operator new();
}

void kaldi::SplitEventMap::Read(uint64_t *a1, uint64_t a2)
{
  kaldi::ExpectToken(a1, a2, "SE");
  v12 = 0;
  kaldi::ReadBasicType<int>(a1, a2, &v12, v4, v5);
  v9 = 1;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  kaldi::ReadIntegerVector<int>(a1, a2, (v11 + 8), 0, 0, 0, 0);
  kaldi::ConstIntegerSet<int>::InitInternal(&v9);
  kaldi::ExpectToken(a1, a2, "{");
  v6 = kaldi::EventMap::Read(a1, a2);
  v7 = kaldi::EventMap::Read(a1, a2);
  kaldi::ExpectToken(a1, a2, "}");
  if (v6)
  {
    if (v7)
    {
      operator new();
    }
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 225);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "SplitEventMap::Read, NULL pointers.", 35);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::ConstantEventMap::Write(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  kaldi::WriteToken(a2, a3, "CE", a4, a5);
  v8 = *(a1 + 8);
  result = kaldi::WriteBasicType<int>(a2, v5);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 65);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "ConstantEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return result;
}

uint64_t kaldi::TableEventMap::Prune(kaldi::TableEventMap *this)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(&__p, (*(this + 3) - *(this + 2)) >> 3);
  v2 = *(this + 3) - *(this + 2);
  if ((v2 >> 3) >= 1)
  {
    v3 = 0;
    v4 = (v2 >> 3) & 0x7FFFFFFF;
    do
    {
      v5 = *(*(this + 2) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        if (v6)
        {
          v8 = 0;
          std::vector<fst::MemoryPoolBase *>::resize(&__p, v3 + 1, &v8);
          *(__p + v3) = v6;
        }
      }

      ++v3;
    }

    while (v4 != v3);
  }

  if (__p != v10)
  {
    operator new();
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return 0;
}

void kaldi::TableEventMap::MapValues(uint64_t a1, void *a2, void *a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(&v20, (*(a1 + 24) - *(a1 + 16)) >> 3);
  v6 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v19 = 0;
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 16) + 8 * v7);
      if (v8)
      {
        v9 = (*(*v8 + 32))(v8, a2, a3);
        if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a2, (a1 + 8)))
        {
          v11 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v19);
          if (!v11)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "MapValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 108);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Could not map value ", 20);
            v16 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for key ", 9);
            v17 = *(a1 + 8);
            std::ostream::operator<<();
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
          }

          v12 = v11 + 5;
        }

        else
        {
          v12 = &v19;
        }

        v13 = *v12;
        if ((v13 & 0x80000000) != 0)
        {
          kaldi::KaldiAssertFailure_("MapValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", &stru_68.sectname[9], "mapped_value >= 0", v10);
        }

        v14 = v20;
        if (v13 >= ((v21 - v20) >> 3))
        {
          v18[0] = 0;
          std::vector<fst::MemoryPoolBase *>::resize(&v20, v13 + 1, v18);
          v14 = v20;
        }

        if (*(v14 + 8 * v13))
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "MapValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 117);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Multiple values map to the same point: this code cannot ", 56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "handle this case.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
        }

        *(v14 + 8 * v13) = v9;
        v7 = v19;
      }

      v19 = ++v7;
    }

    while (v7 < v6);
  }

  operator new();
}

void sub_77594(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::TableEventMap::Write(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "TE", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  v9 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  kaldi::WriteBasicType<unsigned int>(a2, a3);
  kaldi::WriteToken(a2, a3, "(", v10, v11);
  v14 = v9;
  if (v9)
  {
    v15 = 0;
    v16 = 8 * v14;
    do
    {
      kaldi::EventMap::Write(a2, a3, *(*(a1 + 16) + v15), v12, v13);
      v15 += 8;
    }

    while (v16 != v15);
  }

  result = kaldi::WriteToken(a2, a3, ")", v12, v13);
  if ((a3 & 1) == 0)
  {
    LOBYTE(v18[0]) = 10;
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v18, 1);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 139);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "TableEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  return result;
}

uint64_t kaldi::WriteBasicType<unsigned int>(void *a1, int a2)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v4 = std::ostream::operator<<();
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
  }

  return result;
}

uint64_t kaldi::ReadBasicType<unsigned int>(void *a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_20.vmsize + 3, "t != NULL", a5);
  }

  if (a2)
  {
    v6 = std::istream::get();
    if (v6 == -1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 73);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    if (v6 << 24 != -67108864)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: did not get expected integer type, ", 50);
      v9 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " vs. ", 5);
      v10 = std::ostream::operator<<();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    result = std::istream::read();
  }

  else
  {
    result = std::istream::operator>>();
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 97);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
    std::istream::peek();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return result;
}

void sub_77A18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::SplitEventMap::Prune(kaldi::SplitEventMap *this)
{
  v2 = (*(**(this + 10) + 40))(*(this + 10));
  v3 = (*(**(this + 11) + 40))(*(this + 11));
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    operator new();
  }

  return v4;
}

void kaldi::SplitEventMap::MapValues(uint64_t a1, void *a2, void *a3)
{
  (*(**(a1 + 80) + 32))(*(a1 + 80));
  (*(**(a1 + 88) + 32))(*(a1 + 88), a2, a3);
  if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a2, (a1 + 8)))
  {
    v15 = 0;
    v14 = 0u;
    for (i = *(a1 + 56); i != *(a1 + 64); ++i)
    {
      v13 = *i;
      v7 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v13);
      if (!v7)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "MapValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 184);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Value ", 6);
        v9 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", for key ", 10);
        v10 = *(a1 + 8);
        v11 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", cannot be mapped.", 19);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      LODWORD(v12[0]) = *(v7 + 5);
      std::vector<int>::push_back[abi:ne200100](&v14, v12);
    }

    std::__sort<std::__less<int,int> &,int *>();
    v8 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v14, *(&v14 + 1));
    if (v8 != *(&v14 + 1))
    {
      *(&v14 + 1) = v8;
    }

    operator new();
  }

  operator new();
}

void sub_77DA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::SplitEventMap::Write(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "SE", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, (*(a1 + 64) - *(a1 + 56)) >> 2, *(a1 + 56));
  if (!*(a1 + 80) || !*(a1 + 88))
  {
    kaldi::KaldiAssertFailure_("Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", &stru_B8.sectname[15], "yes_ != NULL && no_ != NULL", v10);
  }

  kaldi::WriteToken(a2, a3, "{", v9, v10);
  (*(**(a1 + 80) + 56))(*(a1 + 80), a2, a3);
  (*(**(a1 + 88) + 56))(*(a1 + 88), a2, a3);
  result = kaldi::WriteToken(a2, a3, "}", v11, v12);
  if ((a3 & 1) == 0)
  {
    LOBYTE(v14[0]) = 10;
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v14, 1);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", 206);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "SplitEventMap::Write(), could not write to stream.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  return result;
}

void std::vector<std::pair<int,int>>::resize(void *a1, unint64_t a2)
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
    std::vector<std::pair<int,int>>::__append(a1, a2 - v2);
  }
}

void (__cdecl ***std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_78228(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *kaldi::EventMap::Check(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (result[1] - *result) >> 3;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  for (i = (*result + 8); --v5; i += 2)
  {
    v7 = *(i - 2);
    v8 = *i;
    if (v7 >= v8)
    {
      kaldi::KaldiAssertFailure_("Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/event-map.cc", &stru_108.segname[7], "event[i].first < event[i+1].first", a5);
    }
  }

  return result;
}

uint64_t kaldi::EventMap::Lookup(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v6 = a2;
  kaldi::EventMap::Check(a1, a2, a3, a4, a5);
  v8 = *a1;
  v9 = a1[1];
  if (v9 != *a1)
  {
    v10 = (v9 - *a1) >> 3;
    do
    {
      v11 = v10 >> 1;
      v12 = &v8[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 >= v6)
      {
        v10 = v11;
      }

      else
      {
        v8 = v13;
      }
    }

    while (v10);
  }

  if (v8 == v9 || *v8 != v6)
  {
    return 0;
  }

  *a3 = v8[1];
  return 1;
}

uint64_t kaldi::EventMap::MaxResult(kaldi::EventMap *this)
{
  v14 = 0uLL;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  (*(*this + 8))(this, &v11, &v14);
  v1 = v14;
  if (v14 == *(&v14 + 1))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "MaxResult", "../subproject/libquasar/libkaldi/src/tree/event-map.h", 156);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "EventMap::MaxResult(), empty result", 35);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
    }

    v8 = 0x80000000;
  }

  else
  {
    v2 = (v14 + 4);
    if (v14 + 4 != *(&v14 + 1))
    {
      v3 = *v14;
      v4 = (v14 + 4);
      do
      {
        v6 = *v4++;
        v5 = v6;
        v7 = v3 < v6;
        if (v3 <= v6)
        {
          v3 = v5;
        }

        if (v7)
        {
          v1 = v2;
        }

        v2 = v4;
      }

      while (v4 != *(&v14 + 1));
    }

    v8 = *v1;
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    *(&v14 + 1) = v14;
    operator delete(v14);
  }

  return v8;
}

void sub_78468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  v4 = *(v2 - 72);
  if (v4)
  {
    *(v2 - 64) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 48);
  if (v5)
  {
    *(v2 - 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::ConstantEventMap::Copy(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) != 0 || v2 >= ((a2[1] - *a2) >> 3) || (v3 = *(*a2 + 8 * v2)) == 0)
  {
    operator new();
  }

  return kaldi::EventMap::Copy(v3);
}

uint64_t kaldi::ConstantEventMap::Prune(kaldi::ConstantEventMap *this)
{
  if (*(this + 2) != -1)
  {
    operator new();
  }

  return 0;
}

uint64_t kaldi::TableEventMap::Map(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  v10 = 0;
  *a3 = -1;
  if (!kaldi::EventMap::Lookup(a2, *(a1 + 8), &v10, a4, a5))
  {
    return 0;
  }

  if (v10 < 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v10 >= ((*(a1 + 24) - v6) >> 3))
  {
    return 0;
  }

  v7 = *(v6 + 8 * v10);
  if (!v7)
  {
    return 0;
  }

  v8 = **v7;

  return v8();
}

uint64_t kaldi::TableEventMap::MultiMap(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v14 = 0;
  result = kaldi::EventMap::Lookup(a2, *(a1 + 8), &v14, a4, a5);
  if (result)
  {
    if ((v14 & 0x80000000) == 0)
    {
      v9 = *(a1 + 16);
      if (v14 < ((*(a1 + 24) - v9) >> 3))
      {
        result = *(v9 + 8 * v14);
        if (result)
        {
          v10 = *(*result + 8);

          return v10();
        }
      }
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    if (v11 != v12)
    {
      v13 = 0;
      do
      {
        result = *(v12 + 8 * v13);
        if (result)
        {
          result = (*(*result + 8))(result, a2, a3);
          v12 = *(a1 + 16);
          v11 = *(a1 + 24);
        }

        ++v13;
      }

      while (v13 < (v11 - v12) >> 3);
    }
  }

  return result;
}

void kaldi::TableEventMap::GetChildren(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3 != v2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v2 + v6))
      {
        std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a2, (v2 + v6));
        v2 = *(a1 + 16);
        v3 = *(a1 + 24);
      }

      ++v7;
      v6 += 8;
    }

    while (v7 < (v3 - v2) >> 3);
  }
}

void kaldi::TableEventMap::Copy(uint64_t a1, uint64_t a2)
{
  std::vector<kaldi::EventMap *>::vector[abi:ne200100](&__p, (*(a1 + 24) - *(a1 + 16)) >> 3);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        v8 = (*(*v7 + 24))(v7, a2);
        *(__p + v6) = v8;
        v5 = *(a1 + 16);
        v4 = *(a1 + 24);
      }

      ++v6;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  operator new();
}

void kaldi::TableEventMap::~TableEventMap(kaldi::TableEventMap *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::TableEventMap::~TableEventMap(this, a2, a3, a4, a5);

  operator delete();
}

{
  *this = off_276408;
  v6 = (this + 16);
  kaldi::DeletePointers<kaldi::EventMap>(this + 2, a2, a3, a4, a5);
  v7 = *v6;
  if (*v6)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }
}

uint64_t kaldi::SplitEventMap::Map(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = 0;
  result = kaldi::EventMap::Lookup(a2, *(a1 + 8), &v10, a4, a5);
  if (result)
  {
    v7 = kaldi::ConstIntegerSet<int>::count(a1 + 16, v10);
    v8 = 80;
    if (!v7)
    {
      v8 = 88;
    }

    v9 = ***(a1 + v8);

    return v9();
  }

  return result;
}

uint64_t kaldi::SplitEventMap::MultiMap(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v18 = 0;
  if (kaldi::EventMap::Lookup(a2, *(a1 + 8), &v18, a4, a5))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v9 != v8)
    {
      v10 = v9 - v8;
      do
      {
        v11 = v10 >> 1;
        v12 = &v8[v10 >> 1];
        v14 = *v12;
        v13 = v12 + 1;
        v10 += ~(v10 >> 1);
        if (v14 < v18)
        {
          v8 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      if (v8 != v9 && v18 >= *v8)
      {
        v15 = 80;
        goto LABEL_13;
      }
    }
  }

  else
  {
    (*(**(a1 + 80) + 8))(*(a1 + 80), a2, a3);
  }

  v15 = 88;
LABEL_13:
  v16 = *(**(a1 + v15) + 8);

  return v16();
}

void kaldi::SplitEventMap::GetChildren(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a2, (a1 + 80));

  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a2, (a1 + 88));
}

void kaldi::SplitEventMap::~SplitEventMap(kaldi::SplitEventMap *this)
{
  kaldi::SplitEventMap::~SplitEventMap(this);

  operator delete();
}

{
  *this = off_276508;
  kaldi::SplitEventMap::Destroy(this);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }
}

uint64_t std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_78E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t kaldi::SplitEventMap::SplitEventMap(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_276508;
  *(a1 + 8) = a2;
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(a1 + 16, a3);
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  if (!a4 || !a5)
  {
    kaldi::KaldiAssertFailure_("SplitEventMap", "../subproject/libquasar/libkaldi/src/tree/event-map.h", &stru_108.reserved2, "yes_ != NULL && no_ != NULL", v8);
  }

  return a1;
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_78F58(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  if (v4)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  if (*v2)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SplitEventMap::SplitEventMap(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_276508;
  *(a1 + 8) = a2;
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(a1 + 16, a3);
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  v10 = a3[1];
  if (*a3 != v10)
  {
    v11 = (*a3 + 4);
    v12 = "IsSorted(yes_set)";
    do
    {
      if (v11 == v10)
      {
        goto LABEL_7;
      }

      v14 = *(v11 - 1);
      v13 = *v11++;
    }

    while (v13 >= v14);
    v15 = &stru_108.nreloc + 3;
LABEL_6:
    kaldi::KaldiAssertFailure_("SplitEventMap", "../subproject/libquasar/libkaldi/src/tree/event-map.h", v15, v12, v9);
  }

LABEL_7:
  v12 = "yes_ != NULL && no_ != NULL";
  v15 = (&stru_108 + 64);
  if (!a4 || !a5)
  {
    goto LABEL_6;
  }

  return a1;
}

uint64_t kaldi::ConstIntegerSet<int>::ConstIntegerSet(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 40, *a2, a2[1], (a2[1] - *a2) >> 2);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  std::__sort<std::__less<int,int> &,int *>();
  v5 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(*(a1 + 40), *(a1 + 48));
  if (v5 != *(a1 + 48))
  {
    v6 = *(a1 + 48);
    *(a1 + 48) = v5;
  }

  kaldi::ConstIntegerSet<int>::InitInternal(a1);
  return a1;
}

void sub_79114(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t kaldi::EventMap::Copy(kaldi::EventMap *this)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v1 = (*(*this + 24))(this, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_79300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::EventMap *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<kaldi::EventMap *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_794AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::DeletePointers<kaldi::EventMap>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!result)
  {
    kaldi::KaldiAssertFailure_("DeletePointers", "../subproject/libquasar/libkaldi/src/util/stl-utils.h", stru_B8.sectname, "v != NULL", a5);
  }

  v5 = *result;
  v6 = result[1];
  while (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      result = (*(*result + 72))(result);
      *v5 = 0;
    }

    ++v5;
  }

  return result;
}

uint64_t kaldi::SplitEventMap::Destroy(kaldi::SplitEventMap *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  result = *(this + 11);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

void sub_796F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,int>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
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

void std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
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

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<std::pair<int,int>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
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

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t kaldi::ContextDependency::Compute(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2[1] - *a2;
  if (*(a1 + 8) != (v5 >> 2))
  {
    kaldi::KaldiAssertFailure_("Compute", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_20.segname[2], "static_cast<int32>(phoneseq.size()) == N_", a5);
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<std::pair<int,int>>::reserve(&__p, ((v5 << 30) + 0x100000000) >> 32);
  v15 = (a3 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&__p, &v15);
  if (*(a1 + 8) >= 1)
  {
    v11 = 0;
    v12 = *a2;
    do
    {
      v15 = v11 + (*(v12 + 4 * v11) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&__p, &v15);
      v12 = *a2;
      if (*(*a2 + 4 * v11) == -1)
      {
        kaldi::KaldiAssertFailure_("Compute", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_20.segname[12], "static_cast<EventAnswerType>(phoneseq[i]) != -1", v10);
      }

      ++v11;
    }

    while (v11 < *(a1 + 8));
  }

  if (!a4)
  {
    kaldi::KaldiAssertFailure_("Compute", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_20.segname[14], "pdf_id != NULL", v10);
  }

  v13 = (***(a1 + 16))(*(a1 + 16), &__p, a4);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_79EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<int,int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void kaldi::ContextDependency::Read(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 72))(v6);
    *(a1 + 16) = 0;
  }

  kaldi::ExpectToken(a2, a3, "ContextDependency");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 8, v7, v8);
  kaldi::ReadBasicType<int>(a2, a3, a1 + 12, v9, v10);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  kaldi::ReadToken(a2, a3, &v28, v11, v12);
  v13 = HIBYTE(v30);
  if (SHIBYTE(v30) < 0)
  {
    if (v29 != 8)
    {
      goto LABEL_15;
    }

    v14 = v28;
  }

  else
  {
    if (HIBYTE(v30) != 8)
    {
LABEL_10:
      if (v13 != 5)
      {
        goto LABEL_25;
      }

      v15 = &v28;
      goto LABEL_17;
    }

    v14 = &v28;
  }

  if (*v14 == 0x6874676E654C6F54)
  {
    v16 = kaldi::EventMap::Read(a2, a3);
    if (v16)
    {
      (*(*v16 + 72))(v16);
    }

    kaldi::ReadToken(a2, a3, &v28, v17, v18);
    v13 = HIBYTE(v30);
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v30 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v29 != 5)
  {
    goto LABEL_25;
  }

  v15 = v28;
LABEL_17:
  v19 = *v15;
  v20 = *(v15 + 4);
  if (v19 != 1682992980 || v20 != 102)
  {
LABEL_25:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", 183);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Got unexpected token ", 21);
    if (v30 >= 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28;
    }

    if (v30 >= 0)
    {
      v25 = HIBYTE(v30);
    }

    else
    {
      v25 = v29;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " reading context-dependency object.", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v22 = kaldi::EventMap::Read(a2, a3);
  kaldi::ExpectToken(a2, a3, "EndContextDependency");
  *(a1 + 16) = v22;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }
}

void sub_7A20C(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void kaldi::ContextDependency::EnumeratePairs(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *a5, a5[1], (a5[1] - *a5) >> 2);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  __p = 0;
  v43 = 0;
  v44 = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*a5 + 4 * i);
      if ((v14 & 0x80000000) == 0)
      {
        v41 = i | (v14 << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v48, &v41);
        v12 = *(a1 + 8);
      }
    }
  }

  v41 = (a4 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v48, &v41);
  v15 = 126 - 2 * __clz((v49 - v48) >> 3);
  if (v49 == v48)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v48, v49, &v41, v16, 1);
  (*(**(a1 + 16) + 8))(*(a1 + 16), &v48, &v45);
  std::__sort<std::__less<int,int> &,int *>();
  v17 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v45, v46);
  if (v17 != v46)
  {
    v46 = v17;
  }

  v49 = v48;
  v18 = *(a1 + 8);
  if (v18)
  {
    for (j = 0; j < v18; ++j)
    {
      v20 = *(*a5 + 4 * j);
      if ((v20 & 0x80000000) == 0)
      {
        v41 = j | (v20 << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v48, &v41);
        v18 = *(a1 + 8);
      }
    }
  }

  v41 = (a3 << 32) | 0xFFFFFFFFLL;
  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v48, &v41);
  v21 = 126 - 2 * __clz((v49 - v48) >> 3);
  if (v49 == v48)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v48, v49, &v41, v22, 1);
  (*(**(a1 + 16) + 8))(*(a1 + 16), &v48, &__p);
  std::__sort<std::__less<int,int> &,int *>();
  v24 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(__p, v43);
  v25 = v43;
  if (v24 != v43)
  {
    v25 = v24;
    v43 = v24;
  }

  v27 = v45;
  v26 = v46;
  if (v46 - v45 == 4 || v25 - __p == 4)
  {
    if (v46 != v45)
    {
      v28 = 0;
      v29 = __p;
      do
      {
        if (v25 == v29)
        {
          v25 = v29;
        }

        else
        {
          v30 = 0;
          do
          {
            v41 = *(v45 + v28) | (v29[v30] << 32);
            std::__hash_table<std::pair<int,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<int,int>>(a6, &v41);
            ++v30;
            v29 = __p;
            v25 = v43;
          }

          while (v30 < (v43 - __p) >> 2);
          v27 = v45;
          v26 = v46;
        }

        ++v28;
      }

      while (v28 < (v26 - v27) >> 2);
    }

    goto LABEL_47;
  }

  v31 = *(a1 + 8);
  if (v31 < 1)
  {
    v33 = 0;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = v31 - 1;
    v35 = *(a1 + 12);
    do
    {
      if (v35 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = -v35;
      }

      if (*(*a5 + 4 * v32) == -1 && v36 < v34)
      {
        v33 = v32;
        v34 = v36;
      }

      ++v32;
      --v35;
    }

    while (v31 != v32);
    if (v34 >= v31)
    {
      v37 = "min_dist < N_";
      v38 = (&stru_B8 + 54);
      goto LABEL_57;
    }
  }

  if (v33 == *(a1 + 12))
  {
    v37 = "position != P_";
    v38 = &stru_B8.align + 3;
LABEL_57:
    kaldi::KaldiAssertFailure_("EnumeratePairs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", v38, v37, v23);
  }

  *(v51 + v33) = 0;
  kaldi::ContextDependency::EnumeratePairs(a1, a2, a3, a4, &v51, a6);
  v39 = *a2;
  if (a2[1] != *a2)
  {
    v40 = 0;
    do
    {
      *(v51 + v33) = *(v39 + 4 * v40);
      kaldi::ContextDependency::EnumeratePairs(a1, a2, a3, a4, &v51, a6);
      ++v40;
      v39 = *a2;
    }

    while (v40 < (a2[1] - *a2) >> 2);
  }

LABEL_47:
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }
}

void sub_7A6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ContextDependency::GetPdfInfo(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, const char *a5)
{
  if (!a4)
  {
    kaldi::KaldiAssertFailure_("GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_B8.reserved2 + 2, "pdf_info != NULL", a5);
  }

  v6 = a2;
  v8 = *a2;
  v9 = a2[1];
  v10 = *a2 + 4;
  if (*a2 != v9 && v10 != v9)
  {
    v12 = *v8;
    v13 = (*a2 + 4);
    do
    {
      v15 = *v13++;
      v14 = v15;
      v16 = v12 < v15;
      if (v12 <= v15)
      {
        v12 = v14;
      }

      if (v16)
      {
        v8 = v10;
      }

      v10 = v13;
    }

    while (v13 != v9);
  }

  std::vector<std::vector<std::vector<std::pair<int,int>>>>::resize(a4, *v8 + 1);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 8));
  v17 = *v6;
  if (v6[1] != *v6)
  {
    v18 = 0;
    v19 = *a3;
    v48 = v6;
    do
    {
      v20 = *(v17 + 4 * v18);
      std::vector<std::vector<std::pair<int,int>>>::resize((*a4 + 24 * v20), (*(v19 + 24 * v20 + 8) - *(v19 + 24 * v20)) >> 3);
      v19 = *a3;
      v21 = *(*a3 + 24 * v20);
      if (*(*a3 + 24 * v20 + 8) != v21)
      {
        v47 = v18;
        v22 = 0;
        do
        {
          v23 = (v21 + 8 * v22);
          v25 = *v23;
          v24 = v23[1];
          v26 = __p;
          if (v54 != __p)
          {
            v27 = 0;
            v28 = (v54 - __p) >> 2;
            if (v28 <= 1)
            {
              v28 = 1;
            }

            do
            {
              if (v27 == *(a1 + 12))
              {
                v29 = v20;
              }

              else
              {
                v29 = -1;
              }

              v26[v27++] = v29;
            }

            while (v28 != v27);
          }

          v50 = 0u;
          v51 = 0u;
          v52 = 1065353216;
          kaldi::ContextDependency::EnumeratePairs(a1, v6, v24, v25, &__p, &v50);
          for (i = v51; i; i = *i)
          {
            v31 = *(*a4 + 24 * v20) + 24 * v22;
            v33 = *(v31 + 8);
            v32 = *(v31 + 16);
            if (v33 >= v32)
            {
              v35 = (v33 - *v31) >> 3;
              if ((v35 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v36 = v32 - *v31;
              v37 = v36 >> 2;
              if (v36 >> 2 <= (v35 + 1))
              {
                v37 = v35 + 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*(*a4 + 24 * v20) + 24 * v22, v38);
              }

              *(8 * v35) = i[2];
              v34 = 8 * v35 + 8;
              v39 = *(v31 + 8) - *v31;
              v40 = (8 * v35 - v39);
              memcpy(v40, *v31, v39);
              v41 = *v31;
              *v31 = v40;
              *(v31 + 8) = v34;
              *(v31 + 16) = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v33 = i[2];
              v34 = (v33 + 1);
            }

            *(v31 + 8) = v34;
          }

          v42 = *(*a4 + 24 * v20) + 24 * v22;
          v43 = *v42;
          v44 = *(v42 + 8);
          v45 = 126 - 2 * __clz((v44 - *v42) >> 3);
          if (v44 == v43)
          {
            v46 = 0;
          }

          else
          {
            v46 = v45;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v43, v44, &v55, v46, 1);
          std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(&v50);
          ++v22;
          v6 = v48;
          v19 = *a3;
          v21 = *(*a3 + 24 * v20);
        }

        while (v22 < (*(*a3 + 24 * v20 + 8) - v21) >> 3);
        v18 = v47;
      }

      ++v18;
      v17 = *v6;
    }

    while (v18 < (v6[1] - *v6) >> 2);
  }

  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }
}

void sub_7A9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<std::pair<int,int>>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<std::vector<std::pair<int,int>>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void kaldi::ContextDependency::GetPdfInfo(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, const char *a5)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if (!a4)
  {
    kaldi::KaldiAssertFailure_("GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_108.segname[13], "pdf_info != NULL", a5);
  }

  v7 = (*(*a1 + 40))(a1);
  std::vector<std::vector<std::pair<int,int>>>::resize(a4, v7);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 4 * v9);
      v49 = v48;
      v44[0] = *(a1 + 12) | (v10 << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v48, v44);
      if (v10 >= ((a3[1] - *a3) >> 2))
      {
        kaldi::KaldiAssertFailure_("GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_108.addr + 5, "static_cast<size_t>(phone) < num_pdf_classes.size()", v11);
      }

      v12 = *(*a3 + 4 * v10);
      if (v12 >= 1)
      {
        for (i = 0; i != v12; ++i)
        {
          std::vector<std::pair<int,int>>::resize(&v48, 2uLL);
          v14 = v48;
          v15 = v49;
          v16 = 126 - 2 * __clz((v49 - v48) >> 3);
          *v48 = *(a1 + 12);
          v14[1] = v10;
          v14[2] = -1;
          v14[3] = i;
          if (v15 == v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = v16;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v14, v15, v44, v17, 1);
          v45 = 0;
          v46 = 0;
          v47 = 0;
          (*(**(a1 + 16) + 8))(*(a1 + 16), &v48, &v45);
          std::__sort<std::__less<int,int> &,int *>();
          v19 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(v45, v46);
          v20 = v45;
          v21 = v46;
          if (v19 != v46)
          {
            v21 = v19;
            v46 = v19;
          }

          if (v45 == v21 && kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v44, "GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", 314);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "ContextDependency::GetPdfInfo, no pdfs returned for position ", 61);
            v22 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " of phone ", 10);
            v23 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ".   Continuing but this is a serious error.", 43);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(v44);
            v20 = v45;
            v21 = v46;
          }

          if (v21 != v20)
          {
            v24 = 0;
            do
            {
              v25 = v20[v24];
              if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v25)
              {
                kaldi::KaldiAssertFailure_("GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_108.align + 1, "static_cast<size_t>(pdfs[j]) < pdf_info->size()", v18);
              }

              v26 = *a4 + 24 * v25;
              v44[0] = (i << 32) | v10;
              std::vector<std::pair<int,int>>::push_back[abi:ne200100](v26, v44);
              ++v24;
              v20 = v45;
            }

            while (v24 < v46 - v45);
          }

          if (v20)
          {
            v46 = v20;
            operator delete(v20);
          }
        }
      }

      ++v9;
      v8 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 2);
  }

  v27 = *a4;
  if (a4[1] != *a4)
  {
    v28 = 0;
    do
    {
      v29 = (v27 + 24 * v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = 126 - 2 * __clz((v31 - *v29) >> 3);
      if (v31 == v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v30, v31, v44, v33, 1);
      v27 = *a4;
      v35 = (*a4 + 24 * v28);
      v37 = *v35;
      v36 = v35[1];
      v38 = v37 + 2;
      if (v37 != v36 && v38 != v36)
      {
        v40 = *v37;
        do
        {
          v41 = *v38;
          if (v40 >= *v38 && (v41 < v40 || *(v38 - 1) >= v38[1]))
          {
            kaldi::KaldiAssertFailure_("GetPdfInfo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/tree/context-dep.cc", &stru_108.nreloc, "IsSortedAndUniq( ((*pdf_info)[i]))", v34);
          }

          v38 += 2;
          v40 = v41;
        }

        while (v38 != v36);
      }

      ++v28;
    }

    while (v28 < 0xAAAAAAAAAAAAAAABLL * ((a4[1] - v27) >> 3));
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_7AF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 112);
  if (v14)
  {
    *(v12 - 104) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ContextDependency::NumPdfs(kaldi::ContextDependency *this)
{
  result = *(this + 2);
  if (result)
  {
    v2 = (*(*result + 48))(result);
    if (v2 >= 0)
    {
      return (v2 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void kaldi::ContextDependency::~ContextDependency(kaldi::ContextDependency *this)
{
  kaldi::ContextDependency::~ContextDependency(this);

  operator delete();
}

{
  *this = off_276580;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

uint64_t *std::__hash_table<std::pair<int,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<int,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<int,int>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 + 7853 * v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 + 7853 * v3;
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void std::vector<std::vector<std::vector<std::pair<int,int>>>>::__append(const void **a1, unint64_t a2)
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
    std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(v18);
  }
}

void **std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void kaldi::PrintableRxfilename(uint64_t a1@<X0>, boost::filesystem::path *a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      v2 = a1;
      if (*(a1 + 23) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_9:
    boost::filesystem::path::path(a2, "standard input");
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  v2 = *a1;
LABEL_8:
  if (*v2 == 45)
  {
    goto LABEL_9;
  }

LABEL_10:
  kaldi::ParseOptions::Escape(a1, a2);
}

uint64_t kaldi::ClassifyRxfilename(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 2;
  }

  if (v2 == 124)
  {
    return 0;
  }

  if (v2 == 45)
  {
    if (v1[1])
    {
      v4 = 45;
      goto LABEL_11;
    }

    return 2;
  }

  v4 = v2;
  if ((v2 & 0x80000000) == 0)
  {
LABEL_11:
    if ((_DefaultRuneLocale.__runetype[v4] & 0x4000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (__maskrune(v2, 0x4000uLL))
  {
    goto LABEL_18;
  }

LABEL_14:
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  v7 = v1[v6 - 1];
  if (v7 < 0)
  {
    if (__maskrune(v7, 0x4000uLL))
    {
LABEL_18:
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 123);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Cannot have leading or trailing space in filename ", 51);
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

LABEL_25:
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 2);
LABEL_26:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
      }

      return 0;
    }
  }

  else if ((_DefaultRuneLocale.__runetype[v7] & 0x4000) != 0)
  {
    goto LABEL_18;
  }

  v13 = *v1;
  if (v13 == 98 || v13 == 116)
  {
    if (v1[1] == 44)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 131);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found what looks like an rspecifier instead of a filename ", 59);
      v19 = *(a1 + 23);
      if (v19 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v19 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      goto LABEL_25;
    }
  }

  else if (v13 == 126)
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 134);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Found ~ at the beginning of filename ", 38);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ". Shell like path expansions not supported.", 44);
    goto LABEL_26;
  }

  v20 = v1 - 1;
  do
  {
    v21 = v20[2];
    ++v20;
  }

  while (v21);
  v22 = *v20;
  if (v22 == 124)
  {
    return 4;
  }

  if (v22 < 0)
  {
    v23 = __maskrune(v22, 0x4000uLL);
  }

  else
  {
    v23 = _DefaultRuneLocale.__runetype[v22] & 0x4000;
  }

  if (v23)
  {
    return 0;
  }

  if ((*v20 & 0x80000000) == 0 && (v24 = *v20, (_DefaultRuneLocale.__runetype[v24] & 0x400) != 0))
  {
    do
    {
      if (v20 <= v1)
      {
        break;
      }

      if ((_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
      {
        break;
      }

      v29 = *--v20;
      v24 = v29;
    }

    while ((v29 & 0x80000000) == 0);
    if (v24 == 58)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (strchr(v1, 124))
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
        return 0;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30, "ClassifyRxfilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 153);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Trying to classify rxfilename with pipe symbol in the wrong place (pipe without | at the end?): ", 96);
      v26 = *(a1 + 23);
      if (v26 >= 0)
      {
        v27 = a1;
      }

      else
      {
        v27 = *a1;
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 23);
      }

      else
      {
        v28 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
      goto LABEL_26;
    }

    return 1;
  }
}

void kaldi::FileInputImpl::~FileInputImpl(kaldi::FileInputImpl *this)
{
  *this = &off_2765F0;
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
}

{
  kaldi::FileInputImpl::~FileInputImpl(this);

  operator delete();
}

void kaldi::PipeInputImpl::~PipeInputImpl(void **this)
{
  *this = &off_276630;
  if (this[6])
  {
    kaldi::PipeInputImpl::Close(this);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  kaldi::PipeInputImpl::~PipeInputImpl(this);

  operator delete();
}

void kaldi::OffsetFileInputImpl::~OffsetFileInputImpl(kaldi::OffsetFileInputImpl *this)
{
  *this = &off_276670;
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  kaldi::OffsetFileInputImpl::~OffsetFileInputImpl(this);

  operator delete();
}

void *kaldi::Input::Input(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = 0;
  if ((kaldi::Input::OpenInternal(a1, a2, 1, a3) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Input", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 711);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Error opening input stream ", 27);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    kaldi::PrintableRxfilename(&__p, &v8);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v8);
    std::string::~string(&v8);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return a1;
}

uint64_t kaldi::Input::Close(kaldi::Input *this)
{
  result = *this;
  if (result)
  {
    result = (*(*result + 40))(result);
    *this = 0;
  }

  return result;
}

uint64_t kaldi::Input::OpenInternal(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = kaldi::ClassifyRxfilename(a2);
  v9 = *a1;
  if (*a1)
  {
    if (v8 == 3)
    {
      v10 = (*(*v9 + 24))(v9);
      v9 = *a1;
      if (v10 == 3)
      {
        if ((**v9)(v9, a2, a3))
        {
          if (a4)
          {
            v13 = (*(**a1 + 8))();

            return kaldi::InitKaldiInputStream(v13, a4);
          }

          else
          {
            return 1;
          }
        }

        else
        {
          if (*a1)
          {
            (*(**a1 + 40))(*a1);
          }

          result = 0;
          *a1 = 0;
        }

        return result;
      }

      if (!v9)
      {
        goto LABEL_16;
      }
    }

    (*(*v9 + 40))(v9);
    *a1 = 0;
  }

  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        operator new();
      }

      goto LABEL_17;
    }

LABEL_16:
    operator new();
  }

  if (v8 == 1)
  {
    operator new();
  }

  if (v8 == 2)
  {
    operator new();
  }

LABEL_17:
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19, "OpenInternal", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 755);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Invalid input filename format ", 30);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
    }

    else
    {
      v16 = *a2;
    }

    kaldi::PrintableRxfilename(&v16, __p);
    if ((v18 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v19);
  }

  return 0;
}

void kaldi::Input::~Input(kaldi::Input *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 40))(v2);
    *this = 0;
  }
}

uint64_t kaldi::Input::Stream(kaldi::Input *this)
{
  v1 = *this;
  if (!v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 774);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Input::Stream(), not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = *(*v1 + 8);

  return v2();
}

BOOL kaldi::FileInputImpl::Open(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 144))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 355);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "FileInputImpl::Open(), ", 23);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  std::ifstream::open();
  return *(a1 + 144) != 0;
}

uint64_t kaldi::FileInputImpl::Stream(kaldi::FileInputImpl *this)
{
  if (!*(this + 18))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 363);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "FileInputImpl::Stream(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return this + 8;
}

void kaldi::FileInputImpl::Close(kaldi::FileInputImpl *this)
{
  if (!*(this + 18))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 369);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "FileInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (!std::filebuf::close())
  {
    v2 = (this + *(*(this + 1) - 24) + 8);
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

uint64_t kaldi::StandardInputImpl::Open(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 392);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "StandardInputImpl::Open(), open called on already open file.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  *(a1 + 8) = 1;
  return 1;
}

std::istream *kaldi::StandardInputImpl::Stream(kaldi::StandardInputImpl *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 403);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "StandardInputImpl::Stream(), object not initialized.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return fst::cin(this);
}

uint64_t kaldi::StandardInputImpl::Close(uint64_t this)
{
  if ((*(this + 8) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 411);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "StandardInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
  }

  *(this + 8) = 0;
  return this;
}

uint64_t kaldi::PipeInputImpl::Open(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  if (*(a1 + 32))
  {
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", &stru_1A8.sectname[3], "f_ == NULL", v4);
  }

  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_27;
    }

    v6 = *(a2 + 23);
  }

  v7 = v6 - 1;
  if ((v5 & 0x80000000) != 0)
  {
    if (*(*a2 + v7) != 124)
    {
      goto LABEL_27;
    }

    v5 = *(a2 + 8);
  }

  else if (*(a2 + v7) != 124)
  {
LABEL_27:
    kaldi::KaldiAssertFailure_("Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", &stru_1A8.sectname[5], "rxfilename.length() != 0 && rxfilename[rxfilename.length()-1] == '|'", v4);
  }

  std::string::basic_string(&v20, a2, 0, v5 - 1, v19);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v20;
  }

  else
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  v9 = popen(v8, "r");
  *(a1 + 32) = v9;
  if (v9)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19, "Open", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 438);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Failed opening pipe for reading, command is: ", 45);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v20;
    }

    else
    {
      v11 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, size);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", errno is ", 11);
    v15 = __error();
    v16 = strerror(*v15);
    v17 = strlen(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v19);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_7CD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a22);
  if (*(v22 - 49) < 0)
  {
    operator delete(*(v22 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::PipeInputImpl::Stream(kaldi::PipeInputImpl *this)
{
  result = *(this + 6);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 464);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "PipeInputImpl::Stream(), object not initialized.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::PipeInputImpl::Close(kaldi::PipeInputImpl *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 470);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "PipeInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  (*(*v2 + 8))(v2);
  *(this + 6) = 0;
  if (pclose(*(this + 4)))
  {
    v3 = kaldi::g_kaldi_verbose_level < -1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 480);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Pipe ", 5);
    v5 = *(this + 31);
    if (v5 >= 0)
    {
      v6 = this + 8;
    }

    else
    {
      v6 = *(this + 1);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 31);
    }

    else
    {
      v7 = *(this + 2);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " had nonzero return status ", 27);
    std::ostream::operator<<();
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  *(this + 4) = 0;
  result = *(this + 5);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 5) = 0;
  return result;
}

BOOL kaldi::OffsetFileInputImpl::Open(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a1 + 40);
  if (*(a1 + 176))
  {
    memset(&__str, 0, sizeof(__str));
    v18 = 0;
    kaldi::OffsetFileInputImpl::SplitFilename(a2, &__str, &v18);
    v6 = (a1 + 8);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v8 = *(a1 + 31);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a1 + 16);
    }

    if (size == v8 && ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), (v11 = *v6, v9 >= 0) ? (v12 = (a1 + 8)) : (v12 = *v6), !memcmp(p_str, v12, size) && *(a1 + 32) == a3))
    {
      std::ios_base::clear((v5 + *(*v5 - 24)), 0);
    }

    else
    {
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v5 + *(*v5 - 24)), *(v5 + *(*v5 - 24) + 32) | 4);
      }

      std::string::operator=((a1 + 8), &__str);
      if (*(a1 + 31) < 0)
      {
        v13 = *v6;
      }

      std::ifstream::open();
      if (!*(a1 + 176))
      {
        v14 = 0;
LABEL_28:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return v14;
      }
    }

    v14 = kaldi::OffsetFileInputImpl::Seek(a1, v18);
    goto LABEL_28;
  }

  __str.__r_.__value_.__r.__words[0] = 0;
  v15 = (a1 + 8);
  kaldi::OffsetFileInputImpl::SplitFilename(a2, a1 + 8, &__str);
  *(a1 + 32) = a3;
  if (*(a1 + 31) < 0)
  {
    v16 = *v15;
  }

  std::ifstream::open();
  return *(a1 + 176) && kaldi::OffsetFileInputImpl::Seek(a1, __str.__r_.__value_.__r.__words[0]);
}

void sub_7D1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::OffsetFileInputImpl::Stream(kaldi::OffsetFileInputImpl *this)
{
  if (!*(this + 22))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Stream", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 598);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "FileInputImpl::Stream(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return this + 40;
}

void kaldi::OffsetFileInputImpl::Close(kaldi::OffsetFileInputImpl *this)
{
  if (!*(this + 22))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Close", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 604);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "FileInputImpl::Close(), file is not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (!std::filebuf::close())
  {
    v2 = (this + *(*(this + 5) - 24) + 40);
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

std::locale *kaldi::basic_pipebuf<char>::~basic_pipebuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void kaldi::basic_pipebuf<char>::~basic_pipebuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

uint64_t kaldi::basic_pipebuf<char>::sync(uint64_t a1)
{
  if (fflush(*(a1 + 64)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t kaldi::basic_pipebuf<char>::uflow(uint64_t a1)
{
  if (*(a1 + 76))
  {
    result = *(a1 + 72);
    *(a1 + 72) = -1;
    *(a1 + 76) = 0;
  }

  else
  {
    result = getc(*(a1 + 64));
    if (result != -1)
    {
      result = result;
      *(a1 + 72) = result;
    }
  }

  return result;
}

uint64_t kaldi::basic_pipebuf<char>::pbackfail(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    if (*(a1 + 76))
    {
      v8 = *(a1 + 72);
      v4 = v9;
      while (v4 > &v8)
      {
        v5 = *--v4;
        if (ungetc(v5, *(a1 + 64)) == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    *(a1 + 72) = v3;
    v6 = 1;
    goto LABEL_11;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v3 = *(a1 + 72);
    v6 = v3 != -1;
LABEL_11:
    *(a1 + 76) = v6;
    return v3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t kaldi::basic_pipebuf<char>::overflow(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  *(a1 + 40) = &__ptr;
  v3 = (a1 + 40);
  __ptr = a2;
  *(a1 + 48) = &v6;
  *(a1 + 56) = &v6;
  if (fwrite(&__ptr, 1uLL, 1uLL, *(a1 + 64)) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return v2;
}

uint64_t kaldi::basic_pipebuf<char>::__getchar(uint64_t a1, int a2)
{
  v2 = a2;
  if ((*(a1 + 76) & 1) == 0)
  {
    v5 = getc(*(a1 + 64));
    if (v5 != -1)
    {
      v4 = v5;
      if (v2)
      {
        *(a1 + 72) = v5;
        return v4;
      }

      if (ungetc(v5, *(a1 + 64)) != -1)
      {
        return v4;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 72);
  if (a2)
  {
    *(a1 + 72) = -1;
    *(a1 + 76) = 0;
  }

  return v4;
}

void kaldi::OffsetFileInputImpl::SplitFilename(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = std::string::rfind(a1, 58, 0xFFFFFFFFFFFFFFFFLL);
  if (v6 == -1)
  {
    kaldi::KaldiAssertFailure_("SplitFilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", &stru_1F8.segname[11], "pos != std::string::npos", v7);
  }

  v8 = v6;
  std::string::basic_string(&v16, a1, 0, v6, __dst);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v16;
  v9 = std::string::basic_string[abi:ne200100](__dst, a1, v8 + 1);
  if ((kaldi::ConvertStringToInteger<unsigned long>(v9, a3) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v16, "SplitFilename", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/util/kaldi-io.cc", 538);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Cannot get offset from filename ", 32);
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

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " (possibly you compiled in 32-bit and have a >32-bit", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " byte offset into a file; you'll have to compile 64-bit.", 56);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v16);
  }

  if (v18 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_7D854(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::OffsetFileInputImpl::Seek(kaldi::OffsetFileInputImpl *this, unint64_t a2)
{
  v3 = (this + 40);
  std::istream::tellg();
  v4 = a2 - v8;
  if (a2 == v8)
  {
    return 1;
  }

  if (a2 > v8 && v8 + 100 > a2)
  {
    do
    {
      std::istream::get();
      --v4;
    }

    while (v4);
    std::istream::tellg();
    return v8 == a2;
  }

  else
  {
    std::istream::seekg();
    v7 = (v3 + *(*v3 - 24));
    if ((v7->__rdstate_ & 5) == 0)
    {
      std::ios_base::clear(v7, 0);
      return 1;
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
    }

    return 0;
  }
}

uint64_t kaldi::ConvertStringToInteger<unsigned long>(uint64_t a1, uint64_t *a2)
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
  if (!*v9 && (v4 & 0x8000000000000000) == 0)
  {
    *a2 = v4;
    return 1;
  }

  return result;
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

void kaldi::ParseOptions::Escape(unsigned __int8 *a1@<X0>, boost::filesystem::path *a2@<X8>)
{
  v4 = a1[23];
  v5 = *a1;
  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  if (!*v6)
  {
LABEL_15:
    if ((v4 & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = v5;
    }

    v12 = 39;
    v13 = "'\\''";
    if (strchr(v11, 39))
    {
      {
        v12 = 39;
      }

      else
      {
        v13 = "\\"";
        v12 = 34;
      }
    }

    __s[1] = 0;
    __s[0] = v12;
    boost::filesystem::path::path(a2, __s);
    v14 = *a1;
    if ((a1[23] & 0x80u) == 0)
    {
      v14 = a1;
    }

    v15 = *v14;
    if (*v14)
    {
      v16 = v14 + 1;
      do
      {
        v17 = v13;
        if (v15 != v12)
        {
          __s[0] = v15;
          v17 = __s;
        }

        std::string::append(a2, v17);
        v18 = *v16++;
        v15 = v18;
      }

      while (v18);
    }

    __s[0] = v12;
    std::string::append(a2, __s);
    return;
  }

  do
  {
    if (v7 < 0)
    {
      if (__maskrune(v7, 0x500uLL))
      {
        goto LABEL_9;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v7] & 0x500) != 0)
    {
      goto LABEL_9;
    }

    v9 = 91;
    v10 = 1;
    while (*v6 != v9)
    {
      v9 = asc_22698C[v10++];
      if (v10 == 14)
      {
        LOBYTE(v4) = a1[23];
        v5 = *a1;
        goto LABEL_15;
      }
    }

LABEL_9:
    v8 = *++v6;
    v7 = v8;
  }

  while (v8);
  if (a1[23] < 0)
  {
    v19 = *a1;
    v20 = *(a1 + 1);

    std::string::__init_copy_ctor_external(a2, v19, v20);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 2);
  }
}

void sub_7DCF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
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

uint64_t kaldi::SplitStringToIntegers<int>(uint64_t a1, const char *a2, int a3, std::vector<int> *a4, const char *a5)
{
  if (!a4)
  {
    kaldi::KaldiAssertFailure_("SplitStringToIntegers", "../subproject/libquasar/libkaldi/src/util/text-utils.h", &stru_20.flags, "out != NULL", a5);
  }

  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (*v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    kaldi::SplitStringToVector(a1, a2, a3, &v15);
    std::vector<int>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
    v7 = v15;
    if (v16 == v15)
    {
LABEL_14:
      v13 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = (v7 + v8);
        if (*(v7 + v8 + 23) < 0)
        {
          v10 = *v10;
        }

        __endptr = 0;
        v11 = strtoll(v10, &__endptr, 10);
        if (__endptr == v10 || *__endptr)
        {
          v13 = 0;
          begin = a4->__begin_;
          goto LABEL_18;
        }

        begin = a4->__begin_;
        if (v11 != v11)
        {
          break;
        }

        begin[v9++] = v11;
        v7 = v15;
        v8 += 24;
        if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3))
        {
          goto LABEL_14;
        }
      }

      v13 = 0;
LABEL_18:
      a4->__end_ = begin;
    }

    __endptr = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__endptr);
  }

  else
  {
    a4->__end_ = a4->__begin_;
    return 1;
  }

  return v13;
}

void sub_7E068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::SplitStringToVector(const std::string *a1, const char *a2, int a3, uint64_t a4)
{
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v35 = size;
  std::vector<std::string>::clear[abi:ne200100](a4);
  v9 = 0;
  do
  {
    v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    v13 = strlen(a2);
    if (v12 <= v9 || v13 == 0)
    {
      v15 = -1;
      if (a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = (v11 + v12);
      v17 = (v11 + v9);
LABEL_17:
      v18 = v13;
      v19 = a2;
      while (*v17 != *v19)
      {
        ++v19;
        if (!--v18)
        {
          if (++v17 != v16)
          {
            goto LABEL_17;
          }

          v17 = (v11 + v12);
          break;
        }
      }

      if (v17 == v16)
      {
        v15 = -1;
      }

      else
      {
        v15 = &v17[-v11];
      }

      if (a3)
      {
LABEL_26:
        if (v15 == v9 || v9 == v35)
        {
          goto LABEL_40;
        }
      }
    }

    std::string::basic_string(&v36, a1, v9, v15 - v9, &v37);
    v21 = *(a4 + 8);
    v20 = *(a4 + 16);
    if (v21 >= v20)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a4) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      v37.__end_cap_.__value_ = a4;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4, v26);
      }

      v27 = 24 * v23;
      v28 = *&v36.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v27 = v28;
      memset(&v36, 0, sizeof(v36));
      v29 = 24 * v23 + 24;
      v30 = *(a4 + 8) - *a4;
      v31 = 24 * v23 - v30;
      memcpy((v27 - v30), *a4, v30);
      v32 = *a4;
      *a4 = v31;
      *(a4 + 8) = v29;
      v33 = *(a4 + 16);
      *(a4 + 16) = 0;
      v37.__end_ = v32;
      v37.__end_cap_.__value_ = v33;
      v37.__first_ = v32;
      v37.__begin_ = v32;
      std::__split_buffer<std::string>::~__split_buffer(&v37);
      v34 = SHIBYTE(v36.__r_.__value_.__r.__words[2]);
      *(a4 + 8) = v29;
      if (v34 < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v22 = *&v36.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&v36.__r_.__value_.__l + 2);
      *v21 = v22;
      *(a4 + 8) = v21 + 24;
    }

LABEL_40:
    v9 = v15 + 1;
  }

  while (v15 != -1);
}

void sub_7E2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
    *&dword_10[6 * v2] = *(a2 + 2);
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

__int128 **kaldi::TrainingGraphCompiler::TrainingGraphCompiler(__int128 **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t *a5, __int128 **a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = 0;
  v9 = a1 + 3;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a5, a5[1], (a5[1] - *a5) >> 2);
  a1[6] = 0;
  a1[7] = 0x43E800000;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0x100000002;
  v11 = *a6;
  *(a1 + 22) = *(a6 + 2);
  a1[10] = v11;
  v12 = *a1;
  v13 = **a1;
  v14 = *(*a1 + 1);
  v15 = **a1;
  if (v15 == v14)
  {
    v17 = "!phone_syms.empty()";
    v20 = (&stru_20 + 22);
LABEL_6:
    kaldi::KaldiAssertFailure_("TrainingGraphCompiler", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/training-graph-compiler.cc", v20, v17, v10);
  }

  v16 = v15 + 1;
  v17 = "IsSortedAndUniq(phone_syms)";
  while (v16 != v14)
  {
    v19 = *(v16 - 1);
    v18 = *v16++;
    if (v18 <= v19)
    {
      v20 = &stru_20.segname[15];
      goto LABEL_6;
    }
  }

  v21 = a1[3];
  v22 = a1[4];
  std::__sort<std::__less<int,int> &,int *>();
  v24 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(a1[3], a1[4]);
  v25 = a1[3];
  v26 = a1[4];
  if (v24 != v26)
  {
    v23 = a1[4];
    v26 = v24;
    a1[4] = v24;
  }

  v27 = *(v12 + 1);
  if (v26 == v25)
  {
    v37 = *(v27 - 1);
  }

  else
  {
    v28 = 0;
    v29 = v26 - v25;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    do
    {
      if (v27 != *v12)
      {
        v30 = v25[v28];
        v31 = *v12;
        v32 = (v27 - *v12) >> 2;
        do
        {
          v33 = v32 >> 1;
          v34 = &v31[v32 >> 1];
          v35 = *v34;
          v23 = (v34 + 1);
          v32 += ~(v32 >> 1);
          if (v35 < v30)
          {
            v31 = v23;
          }

          else
          {
            v32 = v33;
          }
        }

        while (v32);
        if (v31 != v27 && v30 >= *v31)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v42, "TrainingGraphCompiler", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/training-graph-compiler.cc", 60);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Disambiguation symbol ", 22);
          v40 = *(*v9 + 4 * v28);
          v41 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " is also a phone.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v42);
        }
      }

      ++v28;
    }

    while (v28 != v29);
    v36 = *(v26 - 1);
    if (*(v27 - 1) <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = *(v27 - 1);
    }
  }

  v38 = (**a3)(a3, v23);
  if ((*(*a3 + 8))(a3) != v38 - 1)
  {
    fst::AddSubsequentialLoop<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v37 + 1, a1[2]);
  }

  fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1[2]);
  return a1;
}

void sub_7E7A8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void fst::AddSubsequentialLoop<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(unsigned int a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  (*(*a2 + 128))(a2, &v12);
  while (1)
  {
    if (!v12)
    {
      if (v15 >= v13)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    if ((*(*v12 + 16))(v12))
    {
      break;
    }

    if (v12)
    {
      v4 = (*(*v12 + 24))();
      goto LABEL_8;
    }

LABEL_7:
    v4 = v15;
LABEL_8:
    v11 = v4;
    v10[0] = (*(*a2 + 32))(a2);
    v19 = 2139095040;
    if (v10[0] != INFINITY)
    {
      std::vector<int>::push_back[abi:ne200100](&v16, &v11);
    }

    if (v12)
    {
      (*(*v12 + 32))(v12);
    }

    else
    {
      ++v15;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))();
  }

LABEL_15:
  v5 = (*(*a2 + 192))(a2);
  v12 = a1;
  v13 = 0;
  v14 = v5;
  (*(*a2 + 200))(a2, v5, &v12);
  (*(*a2 + 176))(a2, v5, 0.0);
  v6 = v16;
  if (v17 == v16)
  {
    if (v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v6[v7];
      v9 = (*(*a2 + 32))(a2, v8);
      LODWORD(v10[0]) = a1;
      v10[1] = 0.0;
      v10[2] = v9;
      LODWORD(v10[3]) = v5;
      (*(*a2 + 200))(a2, v8, v10);
      v6 = v16;
      v14 = v16[v7++];
    }

    while (v7 < v17 - v16);
LABEL_20:
    v17 = v6;
    operator delete(v6);
  }
}

void sub_7EADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_7EB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::MakeLinearAcceptor<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>(void *a1, uint64_t a2)
{
  (*(*a2 + 216))(a2);
  v4 = (*(*a2 + 192))(a2);
  (*(*a2 + 168))(a2, v4);
  if (a1[1] == *a1)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = (*(*a2 + 192))(a2);
      v8[0] = *(*a1 + 4 * v5);
      v8[1] = v8[0];
      v8[2] = 0;
      v8[3] = v6;
      (*(*a2 + 200))(a2, v4, v8);
      ++v5;
      v4 = v6;
    }

    while (v5 < (a1[1] - *a1) >> 2);
  }

  return (*(*a2 + 176))(a2, v6, 0.0);
}

void kaldi::TrainingGraphCompiler::CompileGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16))
  {
    if (a3)
    {
      fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst();
    }

    kaldi::KaldiAssertFailure_("CompileGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/training-graph-compiler.cc", &stru_20.initprot + 3, "out_fst != NULL", a5);
  }

  kaldi::KaldiAssertFailure_("CompileGraph", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/decoder/training-graph-compiler.cc", &stru_20.initprot + 2, "lex_fst_ !=NULL", a5);
}

void sub_7F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(&a15);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(&a17);
  _Unwind_Resume(a1);
}

void fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    v4 = a4[6];
    if (v4 == 1)
    {
      if (!*a4)
      {
        operator new();
      }

      (*(**a4 + 16))(*a4, 0);
      fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CreateBase2<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }

    if (!v4)
    {
      if (!*a4)
      {
        operator new();
      }

      (*(**a4 + 16))(*a4, 0);
      fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CreateBase2<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
    }

    fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>();
  }

  fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>();
}

void fst::ComposeContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>()
{
  v0 = FLAGS_fst_default_cache_gc;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0;
  fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::CreateBase2<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
}

void fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 == 1)
  {
    v5 = FLAGS_fst_default_cache_gc;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
    operator new();
  }

  if (!v4)
  {
    v5 = FLAGS_fst_default_cache_gc;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
    operator new();
  }

  fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>>>();
}

void fst::RemoveSomeInputSymbols<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>(uint64_t *a1, uint64_t a2)
{
  fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>::RemoveSomeInputSymbolsMapper(v7, a1);
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, v7);
  fst::Map<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,int>>(a2, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v8)
  {
    operator delete(v8);
  }
}

void sub_7F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a9);
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a17);
  _Unwind_Resume(a1);
}

void fst::MinimizeEncoded<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, float a2)
{
  v3 = a2;
  fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::QuantizeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v3);
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::EncodeMapper(&v2, 3, 1);
}

void sub_7F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~EncodeMapper(&a12);
  fst::EncodeMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~EncodeMapper(&a9);
  _Unwind_Resume(a1);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_7FA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeStar<fst::ArcTpl<fst::LogWeightTpl<float>>>(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, char a5, float a6)
{
  v12 = (*(*a1 + 120))(a1);
  (*(*a2 + 280))(a2, v12);
  v13 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v13);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::DeterminizerStar(v16, a1, a4, a5, a6);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Determinize(v16, a3);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::Output(v16, a2, 1);
  v14 = v16[90];
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::~DeterminizerStar(v16);
  return v14;
}

void sub_7FBDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>>>::~DeterminizerStar(va);
  _Unwind_Resume(a1);
}