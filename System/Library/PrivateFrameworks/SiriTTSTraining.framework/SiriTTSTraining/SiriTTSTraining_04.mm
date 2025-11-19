void sub_4B020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = off_273A60;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Clear(a1);
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
        v7 = fst::PoolAllocator<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::allocate(a1 + 9, 1uLL);
        *v7 = *v6;
        *(v7 + 1) = *(v6 + 8);
        std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>,0>(v7 + 3, *(v6 + 24), *(v6 + 32), a1 + 10);
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

void *std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::vector[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>,0>(void *a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>>(a1, a2, a3, a3 - a2);
  return a1;
}

void *std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>,std::__wrap_iter<fst::ArcTpl<fst::LogWeightTpl<float>> const*>>(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__vallocate[abi:ne200100](result, a4);
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

void *std::vector<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * a2];
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_273B08;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_4B898(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CheckSuperfinal(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 156) == 1 && (*(a1 + 44) & 1) == 0)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if ((*(*v3 + 16))(v3))
      {
        return result;
      }

      v1 = *(a1 + 8);
    }

    else if (*(a1 + 32) >= *(a1 + 24))
    {
      return result;
    }

    (*(**(v1 + 136) + 32))(*(v1 + 136), *(a1 + 40));
    return INFINITY;
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~StateIterator(void *a1)
{
  *a1 = off_273B08;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::~StateIterator(void *a1)
{
  *a1 = off_273B08;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Done(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    if (*(a1 + 32) >= *(a1 + 24))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (((*(*v2 + 16))(v2) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a1 + 44) ^ 1;
  return v3 & 1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (((*(*v2 + 16))(v2) & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CheckSuperfinal(a1);
        return;
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }
}

float fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::LogWeightTpl<float>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 92) == a2)
  {
    v4 = (v3 + 96);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 60);
  v6 = (v5 + 60);
  v7 = v8;
  v9 = *(v6 - 9);
  v10 = (*(v6 - 7) - v9) >> 4;
  if (*(v6 - 7) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(a1);

  operator delete();
}

unint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Init(uint64_t a1)
{
  boost::filesystem::path::path(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v2 = (*(**(a1 + 136) + 112))(*(a1 + 136));
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v2);
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 48) = 0;
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    v5 = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    result = fst::ProjectProperties(v5, 1);
    *(a1 + 8) = *(a1 + 8) & 4 | result & 0x3FFCFFFF0007;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_4C154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~ArcMapFstImpl(a1);

  operator delete();
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0) || (fst::ProjectProperties(0, 1) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_272640;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_273CB8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

{
  *a1 = off_272640;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = off_273CB8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  operator new();
}

void fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);

  operator delete();
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::VectorCacheStore(uint64_t a1, _BYTE *a2)
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

void sub_4C4D8(_Unwind_Exception *a1)
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

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Clear(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return std::__list_imp<int,fst::PoolAllocator<int>>::clear(a1 + 4);
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 56);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__destroy_vector::operator()[abi:ne200100](&v4);
    fst::PoolAllocator<fst::ArcTpl<fst::LogWeightTpl<float>>>::~PoolAllocator((v3 + 80));
    std::__list_imp<char *>::clear((v3 + 8));
    result = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>(*a2);
    *(v3 + 96) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__destroy_vector::operator()[abi:ne200100](uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    v5 = *a1;
    if (v3 != v2)
    {
      do
      {
        v7 = v3 - 56;
        std::__list_imp<char *>::clear((v3 - 40));
        v3 = v7;
      }

      while (v7 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::deallocate(v5 + 3, v4, 0x6DB6DB6DB6DB6DB7 * ((v5[2] - v4) >> 3));
  }
}

void fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::deallocate(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[14] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[7] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[28] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[56] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[112] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[224] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>(*a1);
    if (!__p)
    {
      return;
    }

    __p[448] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1C7)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x39uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 448))
  {
    operator new();
  }

  return *(v1 + 448);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_273CF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_273CF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273D30;
  a1[1] = a2 << 6;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4CA1C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273D30;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x387)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x71uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 896))
  {
    operator new();
  }

  return *(v1 + 896);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273D70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_273D70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273DB0;
  a1[1] = 120 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4CD84(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273DB0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x707)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0xE1uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 1792))
  {
    operator new();
  }

  return *(v1 + 1792);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_273DF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_273DF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273E30;
  a1[1] = 232 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4D0F4(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273E30;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xE07)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x1C1uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 3584))
  {
    operator new();
  }

  return *(v1 + 3584);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273E70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_273E70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273EB0;
  a1[1] = 456 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4D464(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273EB0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x380)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x381uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 7168))
  {
    operator new();
  }

  return *(v1 + 7168);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_273EF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_273EF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273F30;
  a1[1] = 904 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4D7D8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273F30;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x700)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x701uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 14336))
  {
    operator new();
  }

  return *(v1 + 14336);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273F70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_273F70;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_273FB0;
  a1[1] = 1800 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4DB4C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_273FB0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0xE00)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0xE01uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 28672))
  {
    operator new();
  }

  return *(v1 + 28672);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_273FF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_273FF0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_274030;
  a1[1] = 3592 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4DEC0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_274030;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>(uint64_t a1)
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

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_274070;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::~MemoryPool(void *a1)
{
  *a1 = off_274070;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2740B0;
  a1[1] = 104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4E228(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2740B0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>(uint64_t a1)
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

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_2740F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::~MemoryPool(void *a1)
{
  *a1 = off_2740F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_274130;
  a1[1] = 200 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4E588(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_274130;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>(uint64_t a1)
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

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_274170;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::~MemoryPool(void *a1)
{
  *a1 = off_274170;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2741B0;
  a1[1] = 392 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4E8E8(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2741B0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>(uint64_t a1)
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

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_2741F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::~MemoryPool(void *a1)
{
  *a1 = off_2741F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_274230;
  a1[1] = 776 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4EC4C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_274230;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>(uint64_t a1)
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

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_274270;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::~MemoryPool(void *a1)
{
  *a1 = off_274270;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2742B0;
  a1[1] = 1544 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4EFB0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2742B0;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0xC00)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0xC01uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 24576))
  {
    operator new();
  }

  return *(v1 + 24576);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_2742F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::~MemoryPool(void *a1)
{
  *a1 = off_2742F0;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_274330;
  a1[1] = 3080 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4F31C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_274330;
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

uint64_t fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC007)
  {
    v4 = 0;
    std::vector<fst::MemoryPoolBase *>::resize((a1 + 16), 0x1801uLL, &v4);
    v1 = *v2;
  }

  if (!*(v1 + 49152))
  {
    operator new();
  }

  return *(v1 + 49152);
}

uint64_t fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_274370;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);

  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);
}

void fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::~MemoryPool(void *a1)
{
  *a1 = off_274370;
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::~MemoryArena(a1 + 1);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1);

  operator delete();
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = off_2743B0;
  a1[1] = 6152 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_4F698(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::~MemoryArena(a1);

  operator delete();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::~MemoryArena(void *a1)
{
  *a1 = off_2743B0;
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(void *a1)
{
  *a1 = off_273CB8;
  v2 = a1[15];
  if (v2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorCacheStore(v2);
    operator delete();
  }

  v3 = a1[9];
  if (v3)
  {
    operator delete(v3);
  }

  return fst::FstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~FstImpl(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::~VectorCacheStore(uint64_t a1)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Clear(a1);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = off_273C38;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1 && *(a1 + 144))
  {
    operator delete();
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      v2 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v3 = *(a1 + 160);
      if (v3 != -1 && v3 <= v2)
      {
        v5 = v2 + 1;
      }

      else
      {
        v5 = v2;
      }

      if (v5 >= *(a1 + 164))
      {
        *(a1 + 164) = v5 + 1;
      }

      *(a1 + 64) = v5;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= v5)
      {
        *(a1 + 68) = v5 + 1;
      }
    }
  }

  return *(a1 + 64);
}

void *fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = *(a1 + 156);
    if (v6 == 1)
    {
      v8 = *(a1 + 160);
      if (v8 != a2)
      {
        v20 = *(a1 + 144);
        v22 = v8 != -1 && v8 <= a2;
        v23 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v22));
        v42 = 0;
        v43 = v23;
        v44 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v42, &v47);
        if (v47)
        {
          v25 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
          v30 = *v25;
          v24 = v31;
          std::list<int>::list(v31, (v25 + 2));
          v32 = v25[8];
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v30);
        }

        else
        {
          v33 = v48;
          v24 = v34;
          std::list<int>::list(v34, v49);
          v35 = v50;
          fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v33);
        }

        std::__list_imp<char *>::clear(v24);
        v19 = v49;
        goto LABEL_35;
      }

      v9 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v36 = *v9;
      v10 = &v36;
      std::list<int>::list(v37, (v9 + 2));
      v38 = v9[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v36);
    }

    else
    {
      if (v6 != 2)
      {
        v11 = *(a1 + 144);
        v12 = *(a1 + 160);
        v14 = v12 != -1 && v12 <= a2;
        v15 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v14));
        v42 = 0;
        v43 = v15;
        v44 = -1;
        fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v42, &v47);
        if (v47)
        {
          if (FLAGS_fst_error_fatal == 1)
          {
            boost::filesystem::path::path(&v42, "FATAL");
          }

          else
          {
            boost::filesystem::path::path(&v42, "ERROR");
          }

          v16 = fst::LogMessage::LogMessage(&v46, &v42);
          v17 = fst::cerr(v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ArcMapFst: non-zero arc labels for superfinal arc", 49);
          fst::LogMessage::~LogMessage(&v46);
          if (v45 < 0)
          {
            operator delete(v42);
          }

          *(a1 + 8) |= 4uLL;
        }

        v39 = v48;
        std::list<int>::list(v40, v49);
        v41 = v50;
        fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v39);
        std::__list_imp<char *>::clear(v40);
        v19 = v49;
        goto LABEL_35;
      }

      if (*(a1 + 160) == a2)
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      }

      else
      {
        v7 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      }

      v18 = v7;
      v27 = *v7;
      v10 = &v27;
      std::list<int>::list(v28, (v7 + 2));
      v29 = v18[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v27);
    }

    v19 = v10 + 2;
LABEL_35:
    std::__list_imp<char *>::clear(v19);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Final(a1, a2, a3);
}

void sub_4FD14(_Unwind_Exception *a1)
{
  fst::LogMessage::~LogMessage((v1 - 105));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  std::__list_imp<char *>::clear((v1 - 88));
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasFinal(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 88);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  *(v7 + 88) = v8 | 8;
  return 1;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  v7 = *a3;
  std::list<int>::list(v8, (a3 + 2));
  v5 = a3[8];
  v9 = v5;
  *MutableState = v7;
  if (MutableState != &v7)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(MutableState + 1, v8[1], v8);
    v5 = v9;
  }

  MutableState[8] = v5;
  result = std::__list_imp<char *>::clear(v8);
  MutableState[22] |= 9u;
  return result;
}

void *fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = (v4 + 96);
  }

  else
  {
    v6 = a2 + 1;
    v8 = v4 + 8;
    v7 = *(v4 + 8);
    if (v6 >= (*(v8 + 8) - v7) >> 3)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v5 = (v7 + 8 * v6);
  }

  v9 = *v5;
LABEL_7:
  *a3 = *v9;
  result = std::list<int>::list((a3 + 8), (v9 + 2));
  *(a3 + 32) = v9[8];
  return result;
}

void *fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(uint64_t a1, int a2)
{
  MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::GetMutableState(a1, a2);
  v4 = MutableState;
  if (*(a1 + 104) == 1)
  {
    v5 = *(MutableState + 22);
    if ((v5 & 4) == 0)
    {
      *(MutableState + 22) = v5 | 4;
      v6 = MutableState[8] - MutableState[7] + *(a1 + 128) + 96;
      *(a1 + 128) = v6;
      *(a1 + 120) = 1;
      if (v6 > *(a1 + 112))
      {
        fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GC(a1, MutableState, 0, 0.666);
      }
    }
  }

  return v4;
}

void *fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::GetMutableState(uint64_t a1, int a2)
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
      *(a1 + 96) = MutableState;
      *(MutableState + 22) |= 4u;
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::reserve(MutableState + 7, 0x80uLL);
      return *(a1 + 96);
    }

    v5 = *(a1 + 96);
    if (!*(v5 + 92))
    {
      *(a1 + 92) = a2;
      fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Reset(v5);
      result = *(a1 + 96);
      *(result + 22) |= 4u;
      return result;
    }

    *(v5 + 88) &= ~4u;
    *(a1 + 88) = 0;
  }

  v6 = a2 + 1;

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::GetMutableState(a1, v6);
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GC(uint64_t a1, void *a2, char a3, float a4)
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

      MutableState = fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::GetMutableState(a1, v21);
      v23 = *(a1 + 128);
      if (v23 > v18 && !*(MutableState + 23))
      {
        if (a3)
        {
          if (MutableState != a2)
          {
            v24 = *(MutableState + 22);
LABEL_19:
            if ((v24 & 4) != 0)
            {
              v25 = MutableState[8] - MutableState[7] + 96;
              FstCheck(v25 <= v23, "(size) <= (cache_size_)", "../subproject/libquasar/libkaldi/tools/openfst/src/include/fst/cache.h");
              *(a1 + 128) -= v25;
            }

            fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::Delete(a1);
            v19 = *(a1 + 64);
            continue;
          }
        }

        else
        {
          v24 = *(MutableState + 22);
          if ((v24 & 8) == 0 && MutableState != a2)
          {
            goto LABEL_19;
          }
        }
      }

      *(MutableState + 22) &= ~8u;
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
      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GC(a1, a2, 1, a4);
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

void sub_50470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  fst::LogMessage::~LogMessage(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::GetMutableState(uint64_t a1, int a2)
{
  v12 = a2;
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = (a1 + 8);
  if (a2 >= ((v6 - v5) >> 3))
  {
    v11 = 0;
    std::vector<fst::MemoryPoolBase *>::resize(v4, a2 + 1, &v11);
  }

  else
  {
    v7 = *(v5 + 8 * a2);
    if (v7)
    {
      return v7;
    }
  }

  v7 = fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::allocate((a1 + 72), 1uLL);
  *(*(a1 + 8) + 8 * v3) = fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CacheState(v7, (a1 + 80));
  if (*a1 == 1)
  {
    v8 = std::__list_imp<int,fst::PoolAllocator<int>>::__create_node[abi:ne200100]<int const&>(a1 + 32, 0, 0, &v12);
    v9 = *(a1 + 32);
    *v8 = v9;
    v8[1] = a1 + 32;
    *(v9 + 8) = v8;
    *(a1 + 32) = v8;
    ++*(a1 + 48);
  }

  return v7;
}

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Reset(uint64_t a1)
{
  result = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v3 = result;
  *a1 = *result;
  if (result != a1)
  {
    result = std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 8), *(result + 16), result + 8);
  }

  *(a1 + 32) = *(v3 + 32);
  *(a1 + 88) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      result = std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  *(a1 + 64) = v5;
  return result;
}

void *fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
      result[24] = 0;
      return result;
    }

    v4 = result[24];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[12] = 0;
      return result;
    }

    v4 = result[12];
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
            std::allocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[768] = 0;
            return result;
          }

          v4 = result[768];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[384] = 0;
            return result;
          }

          v4 = result[384];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
          result[192] = 0;
          return result;
        }

        v4 = result[192];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<8>>(*a1);
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
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<std::__list_node<int,void *>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
      result[48] = 0;
      return result;
    }

    v4 = result[48];
  }

  *(v2 + 56) = v4;
  return result;
}

void std::allocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::allocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<32>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 3080 * a2;
  v4 = a1[1];
  if (12320 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::TN<64>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 6152 * a2;
  v4 = a1[1];
  if (24608 * a2 > v4)
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CacheState(uint64_t a1, uint64_t *a2)
{
  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  *a1 = *v4;
  std::list<int>::list((a1 + 8), (v4 + 2));
  *(a1 + 32) = v4[8];
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v5 = *a2;
  *(a1 + 80) = *a2;
  ++*(v5 + 8);
  *(a1 + 88) = 0;
  return a1;
}

uint64_t *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x492492492492493)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v3 = result;
    v4 = result[1] - *result;
    v5 = (result + 3);
    v17 = result + 3;
    v6 = fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate(result + 3, a2);
    v7 = v6 + v4;
    v13 = v6;
    v14 = v7;
    v8 = &v6[7 * a2];
    v15 = v7;
    v16 = v8;
    v9 = v3[1];
    v10 = &v7[*v3 - v9];
    std::__uninitialized_allocator_relocate[abi:ne200100]<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(v5, *v3, v9, v10);
    v11 = *v3;
    *v3 = v10;
    v3[1] = v7;
    v12 = v3[2];
    v3[2] = v8;
    v15 = v11;
    v16 = v12;
    v13 = v11;
    v14 = v11;
    return std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> &>::~__split_buffer(&v13);
  }

  return result;
}

void sub_50BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::Allocate((v2 + 8), 1);
      result[14] = 0;
      return result;
    }

    v4 = result[14];
  }

  else if (a2 == 1)
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::Allocate((v2 + 8), 1);
      result[7] = 0;
      return result;
    }

    v4 = result[7];
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
            std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate[abi:ne200100](&v5, a2);
          }

          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::Allocate((v2 + 8), 1);
            result[448] = 0;
            return result;
          }

          v4 = result[448];
        }

        else
        {
          v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::Allocate((v2 + 8), 1);
            result[224] = 0;
            return result;
          }

          v4 = result[224];
        }
      }

      else
      {
        v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::Allocate((v2 + 8), 1);
          result[112] = 0;
          return result;
        }

        v4 = result[112];
      }
    }

    else
    {
      v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::Allocate((v2 + 8), 1);
        result[56] = 0;
        return result;
      }

      v4 = result[56];
    }
  }

  else
  {
    v2 = fst::MemoryPoolCollection::Pool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::Allocate((v2 + 8), 1);
      result[28] = 0;
      return result;
    }

    v4 = result[28];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<1>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = a2 << 6;
  v4 = a1[1];
  if (v4 < a2 << 8)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<2>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 120 * a2;
  v4 = a1[1];
  if (480 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<4>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 232 * a2;
  v4 = a1[1];
  if (928 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<8>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 456 * a2;
  v4 = a1[1];
  if (1824 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<16>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 904 * a2;
  v4 = a1[1];
  if (3616 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<32>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 1800 * a2;
  v4 = a1[1];
  if (7200 * a2 > v4)
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

uint64_t fst::MemoryArena<fst::MemoryPool<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::TN<64>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 3592 * a2;
  v4 = a1[1];
  if (14368 * a2 > v4)
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

void *std::__uninitialized_allocator_relocate[abi:ne200100]<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      *(v9 + 40) = *(v6 + v7 + 40);
      *(v9 + 48) = *(v6 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 56;
    }
  }

  return result;
}

void sub_515E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__list_imp<char *>::clear((i - 40));
  }

  if (*a1)
  {
    fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::deallocate(*(a1 + 32), *a1, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 24) - *a1) >> 3));
  }

  return a1;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::Delete(void *a1)
{
  v1 = *(a1[8] + 16);
  if (!v1 || v1 - 1 == *(a1 + 23))
  {
    *(a1 + 23) = -1;
    a1[12] = 0;
  }

  return fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Delete(a1);
}

uint64_t fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Delete(void *a1)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Destroy(*(a1[1] + 8 * *(a1[8] + 16)), a1 + 9);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(uint64_t a1, int a2)
{
  v2 = *(a1 + 120);
  if (*(v2 + 92) == a2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    v4 = a2 + 1;
    v6 = v2 + 8;
    v5 = *(v2 + 8);
    if (v4 >= (*(v6 + 8) - v5) >> 3)
    {
      return 0;
    }

    v3 = (v5 + 8 * v4);
  }

  v7 = *v3;
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 88);
  if ((v8 & 2) == 0)
  {
    return 0;
  }

  *(v7 + 88) = v8 | 8;
  return 1;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v59 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v55);
  while (1)
  {
    if (!v55)
    {
      if (v59 >= v57)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if ((*(*v55 + 24))(v55))
    {
      break;
    }

    if (v55)
    {
      v9 = (*(*v55 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (v56 + 16 * v59);
LABEL_18:
    v69 = *v9;
    v10 = HIDWORD(v69);
    v11 = *(a1 + 160);
    if (v11 != -1 && v11 <= SHIDWORD(v69))
    {
      v10 = HIDWORD(v69) + 1;
    }

    if (v10 >= *(a1 + 164))
    {
      *(a1 + 164) = v10 + 1;
    }

    HIDWORD(v69) = v10;
    v13 = *(a1 + 144);
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v69, &v62);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](MutableState + 7, &v62);
    std::__list_imp<char *>::clear(&v64);
    if (v55)
    {
      (*(*v55 + 40))(v55);
    }

    else
    {
      ++v59;
    }
  }

  if (v55)
  {
    (*(*v55 + 8))();
    goto LABEL_32;
  }

LABEL_30:
  if (v58)
  {
    --*v58;
  }

LABEL_32:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasFinal(a1, a2) & 1) == 0)
  {
LABEL_49:
    v25 = *(a1 + 156);
    if (v25 == 1)
    {
      v32 = *(a1 + 144);
      v33 = *(a1 + 160);
      v35 = v33 != -1 && v33 <= a2;
      *&v36 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v35));
      v55 = 0;
      v56 = v36 | 0xFFFFFFFF00000000;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v55, &v62);
      if (v62)
      {
        v37 = *(a1 + 160);
        if (v37 == -1)
        {
          v37 = *(a1 + 164);
          *(a1 + 160) = v37;
          *(a1 + 164) = v37 + 1;
        }

        v68 = v37;
        v38 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](v38 + 7, &v62);
      }

      v22 = &v64;
      goto LABEL_93;
    }

    if (v25 != 2)
    {
      return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a1, a2);
    }

    v26 = *(a1 + 144);
    v27 = *(a1 + 160);
    v29 = v27 != -1 && v27 <= a2;
    *&v30 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v29));
    v55 = 0;
    v56 = v30 | 0xFFFFFFFF00000000;
    fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v55, &v62);
    if (v62)
    {
      v31 = v63;
    }

    else
    {
      v39 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v31 = v63;
      if (v63)
      {
        v40 = v66 + 1;
      }

      else
      {
        v40 = 0;
      }

      if (*v39)
      {
        v41 = *(v39 + 24) + 1;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == v41)
      {
        v42 = v65;
        v43 = (v39 + 16);
        v44 = v63 && v63 == *v39;
        v45 = !v44;
        v46 = 1;
        v47 = !v45;
        while (1)
        {
          v48 = *v43;
          if ((v46 & 1) != 0 && !v47)
          {
            break;
          }

          if (v42 == &v64)
          {
            goto LABEL_90;
          }

          if (*(v42 + 16) != *(v48 + 16))
          {
            goto LABEL_91;
          }

          v46 = 0;
          v42 = *(v42 + 8);
          v43 = (v48 + 8);
        }

        if (v63)
        {
          goto LABEL_91;
        }

LABEL_90:
        *&v55 = v67;
        LODWORD(v69) = *(v39 + 32);
        if (v67 == *&v69)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v49 = v62;
    v52 = v31;
    std::list<int>::list(v53, &v64);
    v54 = v67;
    v50 = *(a1 + 160);
    v55 = v49;
    LODWORD(v56) = v52;
    std::list<int>::list(&v57, v53);
    v60 = v54;
    v61 = v50;
    v51 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](v51 + 7, &v55);
    std::__list_imp<char *>::clear(&v57);
    std::__list_imp<char *>::clear(v53);
LABEL_92:
    v22 = &v64;
    goto LABEL_93;
  }

  fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Final(a1, a2, &v62);
  v15 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  if (v62)
  {
    v16 = v65 + 1;
  }

  else
  {
    v16 = 0;
  }

  if (*v15)
  {
    v17 = *(v15 + 24) + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v16 != v17)
  {
LABEL_47:
    v22 = &v63;
LABEL_93:
    std::__list_imp<char *>::clear(v22);
    return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  }

  v18 = v64;
  v19 = (v15 + 16);
  for (i = 1; ; i = 0)
  {
    v21 = *v19;
    if (i)
    {
      if (!v62)
      {
        break;
      }

      if (v62 != *v15)
      {
        goto LABEL_47;
      }
    }

    if (v18 == &v63)
    {
      break;
    }

    if (*(v18 + 16) != *(v21 + 16))
    {
      goto LABEL_47;
    }

    v18 = *(v18 + 8);
    v19 = (v21 + 8);
  }

  LODWORD(v55) = v66;
  LODWORD(v69) = *(v15 + 32);
  v23 = *&v66;
  v24 = *&v69;
  std::__list_imp<char *>::clear(&v63);
  if (v23 == v24)
  {
    goto LABEL_49;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a1, a2);
}

void sub_51D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(uint64_t a1, int a2)
{
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
  fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::SetArcs(*(a1 + 120), MutableState);
  v5 = MutableState[7];
  v6 = MutableState[8] - v5;
  if (v6)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    v8 = *(a1 + 68);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = (v5 + 48);
    do
    {
      v11 = *v9;
      v9 += 14;
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
  *(MutableState + 22) |= 0xAu;
  return result;
}

void fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::SetArcs(uint64_t a1, uint64_t a2)
{
  fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a2);
  if (*(a1 + 120) == 1 && (*(a2 + 88) & 4) != 0)
  {
    v4 = *(a2 + 64) - *(a2 + 56) + *(a1 + 128);
    *(a1 + 128) = v4;
    if (v4 > *(a1 + 112))
    {

      fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GC(a1, a2, 0, 0.666);
    }
  }
}

void *fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(void *result)
{
  v1 = result[7];
  v2 = result[8] - v1;
  if (v2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * (v2 >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      if (!*(v4 - 1))
      {
        ++result[5];
      }

      if (!*v4)
      {
        ++result[6];
      }

      v4 += 14;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::__construct_one_at_end[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__emplace_back_slow_path<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v7 = (a1 + 3);
  v19 = a1 + 3;
  if (v6)
  {
    v8 = fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate(a1 + 3, v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[7 * v2];
  v16 = v8;
  v17 = v9;
  *&v18 = v9;
  *(&v18 + 1) = &v8[7 * v6];
  *v9 = *a2;
  *(v9 + 2) = *(a2 + 8);
  std::list<int>::list(v9 + 2, a2 + 16);
  *(v9 + 10) = *(a2 + 40);
  *(v9 + 12) = *(a2 + 48);
  *&v18 = v18 + 56;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(v7, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> &>::~__split_buffer(&v16);
  return v15;
}

void sub_52128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = off_2743F0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::CopyStates(a1, a2);
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
      MutableState = fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::GetMutableState(a1, 0);
    }

    *(a1 + 96) = MutableState;
  }

  return a1;
}

void fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::CopyStates(void *a1, uint64_t a2)
{
  fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::Clear(a1);
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
        v7 = fst::PoolAllocator<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>::allocate(a1 + 9, 1uLL);
        fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CacheState(v7, v6, a1 + 10);
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

uint64_t fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CacheState(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::vector[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>,0>((a1 + 56), *(a2 + 56), *(a2 + 64), a3);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::vector[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a4;
  a1[3] = *a4;
  ++*(v5 + 8);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>>(a1, a2, a3, 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3));
  return a1;
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__init_with_size[abi:ne200100]<std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*>>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>((v6 + 3), a2, a3, v6[1]);
    v6[1] = result;
  }

  return result;
}

void sub_528A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  *(v9 + 8) = v10;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  result = fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::allocate(a1 + 3, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[7 * a2];
  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0> const*,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = *(a2 + v7 + 8);
      std::list<int>::list((a4 + v7 + 16), a2 + v7 + 16);
      *(v9 + 40) = *(a2 + v7 + 40);
      *(v9 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (v8 + 56 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_529A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 40);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 7;
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = off_274498;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
  return a1;
}

void sub_52A68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CheckSuperfinal(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 156) == 1)
  {
    v2 = result;
    if ((*(result + 44) & 1) == 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = (*(*result + 16))(result);
        if (result)
        {
          return result;
        }

        v1 = *(v2 + 8);
      }

      else if (*(v2 + 32) >= *(v2 + 24))
      {
        return result;
      }

      v3 = *(v1 + 144);
      v4 = (*(**(v1 + 136) + 32))(*(v1 + 136), *(v2 + 40));
      v5 = 0;
      v6 = v4;
      v7 = -1;
      fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(&v5, &v8);
      if (v8)
      {
        *(v2 + 44) = 1;
      }

      return std::__list_imp<char *>::clear(v9);
    }
  }

  return result;
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~StateIterator(void *a1)
{
  *a1 = off_274498;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~StateIterator(void *a1)
{
  *a1 = off_274498;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Next(uint64_t a1)
{
  ++*(a1 + 40);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 16))(result);
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        (*(*v3 + 32))(v3);
LABEL_7:

        return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
      }

LABEL_6:
      ++*(a1 + 32);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) < *(a1 + 24))
  {
    goto LABEL_6;
  }

  if (*(a1 + 44) == 1)
  {
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;

  return fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::CheckSuperfinal(a1);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 120);
  if (*(v3 + 92) == a2)
  {
    v4 = (v3 + 96);
  }

  else
  {
    v4 = (*(v3 + 8) + 8 * a2 + 8);
  }

  v5 = *v4;
  v8 = *(v5 + 92);
  v6 = (v5 + 92);
  v7 = v8;
  v9 = *(v6 - 9);
  v10 = 0x6DB6DB6DB6DB6DB7 * ((*(v6 - 7) - v9) >> 3);
  if (*(v6 - 7) == v9)
  {
    v9 = 0;
  }

  *a3 = 0;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v6;
  *v6 = v7 + 1;
  return result;
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ToGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = off_2743F0;
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

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::RmWeightMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,fst::ArcTpl<fst::LogWeightTpl<float>>>>,fst::Fst<fst::ArcTpl<fst::LogWeightTpl<float>>>>::~ImplToFst(void *a1)
{
  *a1 = off_273A60;
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

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One(void)::one;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::One(void)::one;
}

void *fst::Divide<int>@<X0>(int *a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v5 = fst::LogMessage::LogMessage(&v12, __p);
    v6 = fst::cerr(v5);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "StringWeight::Divide: only left division is defined ", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "for the left string semiring", 28);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
    *a4 = *v9;
    return std::list<int>::list((a4 + 8), (v9 + 2));
  }

  else
  {

    return fst::DivideLeft<int,(fst::StringType)0>(a1, a2, a4);
  }
}

void sub_53274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::DivideLeft<int,(fst::StringType)0>@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 3) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
    goto LABEL_26;
  }

  v8 = fst::StringWeight<int,(fst::StringType)0>::Zero();
  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 3) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (*v8)
  {
    v11 = *(v8 + 24) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != v11)
  {
LABEL_29:
    result = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v19 = *a1;
    if (*a1)
    {
      v20 = *(a1 + 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (*result)
    {
      v21 = result[3] + 1;
    }

    else
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      v22 = *(a1 + 2);
LABEL_44:
      v27 = 0;
      *(a3 + 8) = a3 + 8;
      *(a3 + 16) = a3 + 8;
      *(a3 + 24) = 0;
      *a3 = 0;
      v28 = 1;
      if (*a1)
      {
        do
        {
          if (!*a2 || *(a2 + 3) + 1 <= v27)
          {
            v29 = (v22 + 16);
            if (v28)
            {
              v29 = a1;
            }

            result = fst::StringWeight<int,(fst::StringType)0>::PushBack(a3, *v29);
          }

          if ((v28 & 1) == 0)
          {
            v22 = *(v22 + 8);
          }

          v28 = 0;
          ++v27;
        }

        while (v22 != a1 + 2);
      }

      return result;
    }

    v22 = *(a1 + 2);
    v23 = result + 2;
    v24 = 1;
    v25 = v22;
    while (1)
    {
      v26 = *v23;
      if (v24)
      {
        if (!v19)
        {
          break;
        }

        if (v19 != *result)
        {
          goto LABEL_44;
        }
      }

      if (v25 == a1 + 2)
      {
        break;
      }

      if (*(v25 + 16) != *(v26 + 16))
      {
        goto LABEL_44;
      }

      v24 = 0;
      v25 = *(v25 + 8);
      v23 = (v26 + 8);
    }

    v17 = fst::StringWeight<int,(fst::StringType)0>::Zero();
LABEL_26:
    *a3 = *v17;

    return std::list<int>::list((a3 + 8), (v17 + 2));
  }

  v12 = (a2 + 4);
  v13 = (v8 + 16);
  for (i = 1; ; i = 0)
  {
    v15 = *v12;
    v16 = *v13;
    if (i)
    {
      if (!v9)
      {
        break;
      }

      if (v9 != *v8)
      {
        goto LABEL_29;
      }
    }

    if (v15 == a2 + 2)
    {
      break;
    }

    if (*(v15 + 16) != *(v16 + 16))
    {
      goto LABEL_29;
    }

    v12 = (v15 + 8);
    v13 = (v16 + 8);
  }

  return fst::StringWeight<int,(fst::StringType)0>::StringWeight(a3, -2);
}

void fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFst(void *a1)
{
  fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(a1);

  operator delete();
}

void sub_539CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v21 = v19;
  v22 = (v19 - 5);
  v23 = *v21;
  if (*v21)
  {
    v18[30] = v23;
    operator delete(v23);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::~__hash_table(v22);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

void fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(a1);

  operator delete();
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__list_imp<char *>::clear(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__list_imp<char *>::clear(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::~FactorWeightFstImpl(uint64_t a1)
{
  *a1 = off_2745D8;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    *(a1 + 240) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::~__hash_table(a1 + 192);
  v5 = (a1 + 168);
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      result = (*(**(a1 + 136) + 24))(*(a1 + 136));
      if (result == -1)
      {
        return result;
      }

      v3 = (*(**(a1 + 136) + 24))(*(a1 + 136));
      v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v6 = *v4;
      std::list<int>::list(v7, (v4 + 2));
      v8 = v4[8];
      v9[0] = v3;
      v9[2] = v6;
      std::list<int>::list(v10, v7);
      v11 = v8;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, v9);
      std::__list_imp<char *>::clear(v10);
      std::__list_imp<char *>::clear(v7);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }
    }
  }

  return *(a1 + 64);
}

void sub_53E04(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(uint64_t a1, int *a2)
{
  if ((*(a1 + 148) & 2) != 0)
  {
    goto LABEL_21;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_21;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_21;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_21;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  v24[0] = a2[10];
  v28 = *(v4 + 32);
  v13 = *a2;
  if (*v24 != v28 || v13 == -1)
  {
LABEL_21:
    v15 = std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>((a1 + 192), a2);
    if (v15)
    {
      return *(v15 + 16);
    }

    else
    {
      v16 = -1431655765 * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100]((a1 + 168), a2);
      v17 = a2[2];
      v24[0] = *a2;
      v24[2] = v17;
      std::list<int>::list(v25, (a2 + 4));
      v26 = a2[10];
      v27 = v16;
      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const,int>>((a1 + 192), v24);
      std::__list_imp<char *>::clear(v25);
    }
  }

  else
  {
    v19 = v13;
    v20 = *(a1 + 232);
    if (v13 >= ((*(a1 + 240) - v20) >> 2))
    {
      do
      {
        std::vector<int>::push_back[abi:ne200100]((a1 + 232), &fst::kNoStateId);
        v20 = *(a1 + 232);
        v13 = *a2;
        v19 = *a2;
      }

      while (v19 >= (*(a1 + 240) - v20) >> 2);
    }

    if (*(v20 + 4 * v19) == -1)
    {
      v21 = *(a1 + 168);
      v22 = *(a1 + 176);
      v23 = (a1 + 168);
      *(v20 + 4 * v19) = -1431655765 * ((v22 - v21) >> 4);
      std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](v23, a2);
      v13 = *a2;
      v20 = v23[8];
    }

    return *(v20 + 4 * v13);
  }

  return v16;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
  }

  else
  {
    std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void *std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__construct_one_at_end[abi:ne200100]<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = a2[2];
  result = std::list<int>::list((v4 + 16), (a2 + 4));
  *(v4 + 40) = a2[10];
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__emplace_back_slow_path<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 8) = a2[2];
  std::list<int>::list((v7 + 16), (a2 + 4));
  *(v7 + 40) = a2[10];
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element> &>::~__split_buffer(&v14);
  return v13;
}

void sub_54200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[2] = *(v6 + v7 + 8);
      result = std::list<int>::list((a4 + v7 + 16), v6 + v7 + 16);
      v9[10] = *(v6 + v7 + 40);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 16));
      v6 += 48;
    }
  }

  return result;
}

void sub_54304(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 6;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__list_imp<char *>::clear((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::find<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Hash(a2 + 2);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 + 7853 * v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 + 7853 * v4;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>::operator()[abi:ne200100](a1, (v12 + 2), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

BOOL std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 ? *(a2 + 32) + 1 : 0;
  v5 = *(a3 + 8);
  v6 = v5 ? *(a3 + 32) + 1 : 0;
  if (v4 != v6)
  {
    return 0;
  }

  v7 = (a2 + 24);
  v8 = (a3 + 24);
  for (i = 1; ; i = 0)
  {
    v10 = *v7;
    v11 = *v8;
    if (i)
    {
      if (!v3)
      {
        return *(a2 + 40) == *(a3 + 40);
      }

      if (v3 != v5)
      {
        break;
      }
    }

    if (v10 == a2 + 16)
    {
      return *(a2 + 40) == *(a3 + 40);
    }

    if (*(v10 + 16) != *(v11 + 16))
    {
      break;
    }

    v7 = (v10 + 8);
    v8 = (v11 + 8);
  }

  return 0;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Hash(int *a1)
{
  v1 = 0;
  v2 = *(a1 + 2);
  if (*a1)
  {
    v3 = *a1;
    while (1)
    {
      v1 ^= v3;
      if (v2 == a1 + 2)
      {
        break;
      }

      v3 = *(v2 + 16) ^ (2 * v1);
      v2 = *(v2 + 8);
    }
  }

  return a1[8] ^ __ROR8__(v1, 59);
}

void *std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__emplace_unique_key_args<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const,int>>(void *a1, int *a2)
{
  v4 = *a2;
  v5 = fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Hash(a2 + 2) + 7853 * v4;
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
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__construct_node_hash<std::pair<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element const,int>>();
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

  if (!std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>::operator()[abi:ne200100](a1, (v11 + 2), a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_547F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<char *>::clear(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasFinal(a1, a2) & 1) == 0)
  {
    v6 = (*(a1 + 168) + 48 * a2);
    if (*v6 == -1)
    {
      v26 = v6[2];
      std::list<int>::list(v27, (v6 + 4));
      v28 = *(v6 + 10);
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v22);
      fst::Times<int,(fst::StringType)0>(v6 + 2, &v22, &v29);
      v7 = *(v6 + 10);
      v8 = NAN;
      if (v7 != -INFINITY)
      {
        v8 = NAN;
        if (v24 != -INFINITY)
        {
          v8 = INFINITY;
          v9 = v24 == INFINITY || v7 == INFINITY;
          v10 = v7 + v24;
          if (!v9)
          {
            v8 = v10;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v26, &v29, v8);
      std::__list_imp<char *>::clear(v30);
      std::__list_imp<char *>::clear(v23);
    }

    LODWORD(v22) = v26;
    std::list<int>::list(v23, v27);
    v24 = v28;
    if (v26)
    {
      v11 = (v27[2] + 1) >= 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = !v11;
    v25 = v12;
    if ((*(a1 + 148) & 1) == 0 || v12)
    {
      v19 = v26;
      v14 = v20;
      std::list<int>::list(v20, v27);
      v21 = v28;
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v19);
    }

    else
    {
      v13 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
      v16 = *v13;
      v14 = v17;
      std::list<int>::list(v17, (v13 + 2));
      v18 = v13[8];
      fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetFinal(a1, a2, &v16);
    }

    std::__list_imp<char *>::clear(v14);
    std::__list_imp<char *>::clear(v23);
    std::__list_imp<char *>::clear(v27);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::Final(a1, a2, a3);
}

void sub_54D84(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v1);
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return 0x6DB6DB6DB6DB6DB7 * ((*(*v5 + 64) - *(*v5 + 56)) >> 3);
}

void *fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(uint64_t a1, int a2)
{
  v3 = *(a1 + 168) + 48 * a2;
  v80 = *v3;
  v81 = *(v3 + 8);
  std::list<int>::list(v82, v3 + 16);
  v83 = *(v3 + 40);
  if (v80 == -1)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 136);
  v79 = 0;
  (*(*v4 + 136))(v4);
  while (1)
  {
    if (!v76)
    {
      if (v79 >= v77[1])
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    if ((*(*v76 + 24))(v76))
    {
      break;
    }

    if (v76)
    {
      v5 = (*(*v76 + 32))(v76);
      goto LABEL_9;
    }

LABEL_8:
    v5 = v77[0] + 56 * v79;
LABEL_9:
    fst::Times<int,(fst::StringType)0>(&v81, v5 + 8, &v57);
    v6 = NAN;
    if (v83 != -INFINITY)
    {
      v7 = *(v5 + 40);
      v6 = NAN;
      if (v7 != -INFINITY)
      {
        v6 = INFINITY;
        if (v7 != INFINITY && v83 != INFINITY)
        {
          v6 = v83 + v7;
        }
      }
    }

    fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v73, &v57, v6);
    std::__list_imp<char *>::clear(&v58);
    v69 = *&v73;
    std::list<int>::list(v70, v74);
    v71 = v75;
    v10 = *&v73 == 0.0 || (v74[2] + 1) < 2;
    v72 = v10;
    if (*(a1 + 148) & 2) == 0 || (v10)
    {
      v15 = *(v5 + 48);
      v16 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::One();
      v66 = *v16;
      std::list<int>::list(v67, (v16 + 2));
      v68 = v16[8];
      LODWORD(v57) = v15;
      LODWORD(v58) = v66;
      std::list<int>::list(v59, v67);
      v61 = v68;
      LODWORD(v16) = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v67);
      v17 = *v5;
      v63 = v73;
      std::list<int>::list(v64, v74);
      v65 = v75;
      v57 = v17;
      LODWORD(v58) = v63;
      std::list<int>::list(v59, v64);
      v61 = v65;
      LODWORD(v62[0]) = v16;
      MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](MutableState + 7, &v57);
      std::__list_imp<char *>::clear(v59);
      std::__list_imp<char *>::clear(v64);
    }

    else
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      v11 = *(v5 + 48);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v54, *(a1 + 144));
      LODWORD(v49) = v11;
      LODWORD(v50) = v54;
      std::list<int>::list(v51, v55);
      v52 = v56;
      State = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v55);
      v13 = *v5;
      v46 = v57;
      std::list<int>::list(v47, &v58);
      v48 = v60;
      v49 = v13;
      LODWORD(v50) = v46;
      std::list<int>::list(v51, v47);
      v52 = v48;
      v53 = State;
      v14 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](v14 + 7, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v47);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v74);
    if (v76)
    {
      (*(*v76 + 40))(v76);
    }

    else
    {
      ++v79;
    }
  }

  if (v76)
  {
    (*(*v76 + 8))(v76);
    goto LABEL_33;
  }

LABEL_31:
  if (v78)
  {
    --*v78;
  }

LABEL_33:
  if (*(a1 + 148))
  {
    if (v80 == -1)
    {
      goto LABEL_65;
    }

    (*(**(a1 + 136) + 32))(&v57);
    v19 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
    v20 = v57 ? v59[1] + 1 : 0;
    v21 = *v19 ? *(v19 + 24) + 1 : 0;
    if (v20 == v21)
    {
      v22 = v59[0];
      v23 = (v19 + 16);
      if (v57)
      {
        v24 = v57 == *v19;
      }

      else
      {
        v24 = 0;
      }

      v25 = !v24;
      v26 = 1;
      v27 = v25 ^ 1;
      while (1)
      {
        v28 = *v23;
        if ((v26 & 1) != 0 && !v27)
        {
          break;
        }

        if (v22 == &v58)
        {
          goto LABEL_77;
        }

        if (*(v22 + 16) != *(v28 + 16))
        {
          goto LABEL_55;
        }

        v26 = 0;
        v22 = *(v22 + 8);
        v23 = (v28 + 8);
      }

      if (v57)
      {
        goto LABEL_55;
      }

LABEL_77:
      *&v49 = v60;
      v69 = *(v19 + 32);
      v37 = v60;
      v38 = v69;
      std::__list_imp<char *>::clear(&v58);
      if (v37 == v38)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_55:
      std::__list_imp<char *>::clear(&v58);
    }

    if (v80 == -1)
    {
LABEL_65:
      LODWORD(v76) = v81;
      std::list<int>::list(v77, v82);
      *&v79 = v83;
    }

    else
    {
      (*(**(a1 + 136) + 32))(&v57);
      fst::Times<int,(fst::StringType)0>(&v81, &v57, &v49);
      v29 = NAN;
      if (v83 != -INFINITY)
      {
        v29 = NAN;
        if (v60 != -INFINITY)
        {
          v29 = INFINITY;
          if (v60 != INFINITY && v83 != INFINITY)
          {
            v29 = v83 + v60;
          }
        }
      }

      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v76, &v49, v29);
      std::__list_imp<char *>::clear(&v50);
      std::__list_imp<char *>::clear(&v58);
    }

    v31 = *(a1 + 152);
    v69 = *&v76;
    std::list<int>::list(v70, v77);
    v71 = v79;
    if (v76)
    {
      v32 = v78 + 1 >= 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = !v32;
    v72 = v33;
    if (v32)
    {
      fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value(&v69, &v57);
      fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize(&v61, &v43, *(a1 + 144));
      LODWORD(v49) = -1;
      LODWORD(v50) = v43;
      std::list<int>::list(v51, v44);
      v52 = v45;
      v34 = fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::FindState(a1, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v44);
      v40 = v57;
      std::list<int>::list(v41, &v58);
      v42 = v60;
      v49 = v31;
      LODWORD(v50) = v40;
      std::list<int>::list(v51, v41);
      v52 = v42;
      v53 = v34;
      v35 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::push_back[abi:ne200100](v35 + 7, &v49);
      std::__list_imp<char *>::clear(v51);
      std::__list_imp<char *>::clear(v41);
      std::__list_imp<char *>::clear(v62);
      std::__list_imp<char *>::clear(&v58);
      v72 = 1;
    }

    std::__list_imp<char *>::clear(v70);
    std::__list_imp<char *>::clear(v77);
  }

LABEL_76:
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::SetArcs(a1, a2);
  return std::__list_imp<char *>::clear(v82);
}

void sub_55624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::__list_imp<char *>::clear((v39 + 8));
  std::__list_imp<char *>::clear(&a39);
  std::__list_imp<char *>::clear((v40 - 136));
  _Unwind_Resume(a1);
}

void *fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Value@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *a1;
  std::list<int>::list(v38, (a1 + 2));
  if (*a1)
  {
    v4 = (*(a1 + 3) + 1) >= 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v39 = v5;
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v32 = v24;
  v33[0] = v33;
  v33[1] = v33;
  v34 = 0;
  v6 = v27;
  if (v27)
  {
    v8 = v25;
    v7 = v26;
    v9 = *(v25 + 8);
    v10 = *v26;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = v33[0];
    *(v33[0] + 8) = v7;
    *v7 = v11;
    v33[0] = v8;
    *(v8 + 8) = v33;
    v34 = v6;
    v27 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v35, &v32, *(a1 + 8));
  std::__list_imp<char *>::clear(v33);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  fst::StringFactor<int,(fst::StringType)0>::Value(&v37, &v24);
  v19 = v28;
  v20[0] = v20;
  v20[1] = v20;
  v21 = 0;
  v12 = v31;
  if (v31)
  {
    v14 = v29;
    v13 = v30;
    v15 = *(v29 + 8);
    v16 = *v30;
    *(v16 + 8) = v15;
    *v15 = v16;
    v17 = v20[0];
    *(v20[0] + 8) = v13;
    *v13 = v17;
    v20[0] = v14;
    *(v14 + 8) = v20;
    v21 = v12;
    v31 = 0;
  }

  fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v22, &v19, 0.0);
  std::__list_imp<char *>::clear(v20);
  std::__list_imp<char *>::clear(&v29);
  std::__list_imp<char *>::clear(&v25);
  std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,0>(a2, &v35, &v22);
  std::__list_imp<char *>::clear(v23);
  std::__list_imp<char *>::clear(v36);
  return std::__list_imp<char *>::clear(v38);
}

void sub_559DC(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 8));
  std::__list_imp<char *>::clear((v3 - 120));
  std::__list_imp<char *>::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void *fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::StringFactor<int,(fst::StringType)0>::Value@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 8;
  v4 = *(a1 + 16);
  fst::StringWeight<int,(fst::StringType)0>::StringWeight(&v9, *a1);
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v7 = 0;
  if (v4 != v3)
  {
    for (i = 0; ; i = v7)
    {
      if (i)
      {
        operator new();
      }

      v7 = *(v4 + 16);
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        break;
      }
    }
  }

  std::pair<fst::StringWeight<int,(fst::StringType)0>,fst::StringWeight<int,(fst::StringType)0>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)0>&,fst::StringWeight<int,(fst::StringType)0>&,0>(a2, &v9, &v7);
  std::__list_imp<char *>::clear(v8);
  return std::__list_imp<char *>::clear(v10);
}

void sub_55BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<char *>::clear(v6);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<fst::StringWeight<int,(fst::StringType)0>,fst::StringWeight<int,(fst::StringType)0>>::pair[abi:ne200100]<fst::StringWeight<int,(fst::StringType)0>&,fst::StringWeight<int,(fst::StringType)0>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = *a3;
  std::list<int>::list((a1 + 40), (a3 + 2));
  return a1;
}

uint64_t std::pair<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::pair[abi:ne200100]<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>&,0>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *a1 = *a2;
  std::list<int>::list((a1 + 8), (a2 + 2));
  *(a1 + 32) = a2[8];
  *(a1 + 40) = *a3;
  std::list<int>::list((a1 + 48), (a3 + 2));
  *(a1 + 72) = a3[8];
  return a1;
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::LogWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = *a1;
  std::list<int>::list(v9, (a1 + 2));
  v6 = a1[8];
  if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = floorf((v6 / a3) + 0.5) * a3;
  }

  *a2 = v8;
  std::list<int>::list((a2 + 8), v9);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 40);
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 92) == a2)
  {
    v5 = v4 + 96;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 48);
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = off_274628;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_56094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    v15[30] = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,std::__unordered_map_hasher<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,true>,std::__unordered_map_equal<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementEqual,fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::ElementKey,true>,std::allocator<std::__hash_value_type<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,int>>>::~__hash_table(v16 + 24);
  __p = v16;
  std::vector<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element,std::allocator<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Element>>::__destroy_vector::operator()[abi:ne200100](&__p);
  fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~CacheBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::Done(uint64_t a1)
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
    fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 56);
    v8 = 0x6DB6DB6DB6DB6DB7 * ((*(v19 + 64) - v7) >> 3);
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 56 * v20 + 48);
      do
      {
        v14 = *v12;
        v12 += 14;
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
    --*(v19 + 92);
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

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::MinUnexpandedState(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 <= *(a1 + 100))
  {
    while (1)
    {
      v3 = fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ExpandedState(a1, v1);
      v4 = *(a1 + 96);
      if (!v3)
      {
        break;
      }

      v1 = (v4 + 1);
      *(a1 + 96) = v1;
      if (v4 >= *(a1 + 100))
      {
        return v1;
      }
    }

    return *(a1 + 96);
  }

  return v1;
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::ExpandedState(uint64_t a1, int a2)
{
  if ((*(a1 + 104) & 1) != 0 || !*(a1 + 112))
  {
    return (*(*(a1 + 72) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }

  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 120);
    if (*(v2 + 92) == a2)
    {
      v3 = (v2 + 96);
      return *v3 != 0;
    }

    v5 = a2 + 1;
    v7 = v2 + 8;
    v6 = *(v2 + 8);
    if (v5 < (*(v7 + 8) - v6) >> 3)
    {
      v3 = (v6 + 8 * v5);
      return *v3 != 0;
    }
  }

  return 0;
}

void *fst::ArcIterator<fst::FactorWeightFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>>::ArcIterator(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 23);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::PoolAllocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>,fst::DefaultCacheStore<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::ArcTpl<fst::LogWeightTpl<float>>,fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a2 + 216))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v6);
  (*(*a2 + 280))(a2, 0);
  v7 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    if ((v7 & 4) != 0)
    {
      v18 = *(*a2 + 184);

      return v18(a2, 4, 4);
    }

    return result;
  }

  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v9 = fst::CountStates<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>(a1) != -1;
    (*(*a2 + 240))(a2, v9);
  }

  LODWORD(v24) = 0;
  (*(*a1 + 128))(a1, &v22);
  while (!v22)
  {
    if (v24 >= v23)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(*a2 + 192))(a2);
    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      LODWORD(v24) = v24 + 1;
    }
  }

  if (!(*(*v22 + 16))(v22))
  {
    goto LABEL_9;
  }

  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_14:
  v33 = 0;
  (*(*a1 + 128))(a1, &v31);
  LODWORD(v10) = -1;
  while (2)
  {
    if (!v31)
    {
      if (v33 >= v32)
      {
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (!(*(*v31 + 16))(v31))
    {
      if (v31)
      {
        v11 = (*(*v31 + 24))(v31);
        goto LABEL_21;
      }

LABEL_20:
      v11 = v33;
LABEL_21:
      if (v11 == (*(*a1 + 24))(a1))
      {
        (*(*a2 + 168))(a2, v11);
      }

      v12 = (*(*a1 + 40))(a1, v11);
      (*(*a2 + 248))(a2, v11, v12);
      v26 = 0;
      (*(*a1 + 136))(a1, v11, &v22);
LABEL_24:
      if (v22)
      {
        if ((*(*v22 + 24))(v22))
        {
          if (v22)
          {
            (*(*v22 + 8))();
            goto LABEL_37;
          }

LABEL_35:
          if (v25)
          {
            --*v25;
          }

LABEL_37:
          (*(*a1 + 32))(&v19, a1, v11);
          v22 = 0;
          LODWORD(v23) = v19;
          std::list<int>::list(&v24, v20);
          v27 = v21;
          v28 = -1;
          v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(a3, &v22);
          v30 = v15;
          std::__list_imp<char *>::clear(&v24);
          std::__list_imp<char *>::clear(v20);
          if (v29)
          {
            if (v10 == -1)
            {
              v10 = (*(*a2 + 192))(a2);
              (*(*a2 + 176))(a2, v10, 0.0);
            }

            HIDWORD(v30) = v10;
            (*(*a2 + 200))(a2, v11, &v29);
            (*(*a2 + 176))(a2, v11, INFINITY);
          }

          else
          {
            (*(*a2 + 176))(a2, v11, *&v30);
          }

          if (v31)
          {
            (*(*v31 + 32))(v31);
          }

          else
          {
            ++v33;
          }

          continue;
        }

        if (v22)
        {
          v13 = (*(*v22 + 32))();
          goto LABEL_30;
        }
      }

      else if (v26 >= v24)
      {
        goto LABEL_35;
      }

      v13 = (v23 + 56 * v26);
LABEL_30:
      v29 = fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(a3, v13);
      v30 = v14;
      (*(*a2 + 200))(a2, v11, &v29);
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      else
      {
        ++v26;
      }

      goto LABEL_24;
    }

    break;
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

LABEL_47:
  v16 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v17 = v7 & 0x2EBC21080007;
  if (*(a3 + 4))
  {
    v17 = v7 & 0x2EBC21080003 | 4;
  }

  return (*(*a2 + 184))(a2, v17 | v16, 0x3FFFFFFF0007);
}

void sub_56D04(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 16));
  std::__list_imp<char *>::clear((v1 + 8));
  v5 = *(v3 - 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::operator()(int *a1, unsigned int *a2)
{
  if (a2[12] != -1)
  {
    goto LABEL_18;
  }

  v4 = fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)0>::Zero();
  v5 = a2[2];
  v6 = v5 ? *(a2 + 4) + 1 : 0;
  v7 = *v4 ? *(v4 + 24) + 1 : 0;
  if (v6 != v7)
  {
    goto LABEL_18;
  }

  v8 = (a2 + 6);
  v9 = (v4 + 16);
  for (i = 1; ; i = 0)
  {
    v11 = *v8;
    v12 = *v9;
    if (i)
    {
      if (!v5)
      {
        break;
      }

      if (v5 != *v4)
      {
        goto LABEL_18;
      }
    }

    if (v11 == a2 + 4)
    {
      break;
    }

    if (*(v11 + 16) != *(v12 + 16))
    {
      goto LABEL_18;
    }

    v8 = (v11 + 8);
    v9 = (v12 + 8);
  }

  LODWORD(__p[0]) = a2[10];
  v29[0] = *(v4 + 32);
  if (*__p == v29[0])
  {
    v13 = 0;
    v14 = *a2;
  }

  else
  {
LABEL_18:
    v28 = -1;
    if (!fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::Extract<(fst::GallicType)0>(a2 + 2, &v27, &v28) || (v14 = *a2, *a2 != a2[1]))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        boost::filesystem::path::path(__p, "FATAL");
      }

      else
      {
        boost::filesystem::path::path(__p, "ERROR");
      }

      v15 = fst::LogMessage::LogMessage(&v26, __p);
      v16 = fst::cerr(v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "FromGallicMapper: unrepresentable weight: ", 42);
      fst::CompositeWeightWriter::CompositeWeightWriter(v29, v17);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *FLAGS_fst_weight_parentheses;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)0>>(v29, a2 + 2);
      fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(v29, a2 + 10);
      if (*FLAGS_fst_weight_parentheses)
      {
        v30 = *(&dword_0 + FLAGS_fst_weight_parentheses + 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*v29, &v30, 1);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for arc with ilabel = ", 23);
      v18 = *a2;
      v19 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", olabel = ", 11);
      v20 = a2[1];
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", nextstate = ", 14);
      v22 = a2[12];
      std::ostream::operator<<();
      fst::LogMessage::~LogMessage(&v26);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 4) = 1;
      v14 = *a2;
    }

    if (!v14 && v28 && a2[12] == -1)
    {
      v14 = *a1;
    }

    v13 = v28 << 32;
  }

  return v13 | v14;
}

void sub_57078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FromGallicMapper<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>::Extract<(fst::GallicType)0>(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v10 = *a1;
  std::list<int>::list(v11, (a1 + 2));
  v6 = a1[8];
  v7 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (v12 == -1)
  {
    v7 = 0;
LABEL_7:
    *a3 = v7;
    *a2 = v6;
    v8 = 1;
    goto LABEL_8;
  }

  if (!v12 && v10 <= 0xFFFFFFFD)
  {
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  std::__list_imp<char *>::clear(v11);
  return v8;
}

void *fst::CompositeWeightWriter::WriteElement<fst::StringWeight<int,(fst::StringType)0>>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = v4 + 1;
  if (v4 >= 1)
  {
    v5 = *a1;
    v7 = *FLAGS_fst_weight_separator;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  }

  return fst::operator<<<int,(fst::StringType)0>(*a1, a2);
}

void *fst::CompositeWeightWriter::WriteElement<fst::LogWeightTpl<float>>(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = v4 + 1;
  if (v4 >= 1)
  {
    v5 = *a1;
    v9 = *FLAGS_fst_weight_separator;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v9, 1);
  }

  if (*a2 == INFINITY)
  {
    v6 = "Infinity";
    v7 = 8;
  }

  else
  {
    if (*a2 != -INFINITY)
    {
      return std::ostream::operator<<();
    }

    v6 = "-Infinity";
    v7 = 9;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v6, v7);
}

uint64_t fst::CompositeWeightWriter::CompositeWeightWriter(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  if (strlen(FLAGS_fst_weight_separator) == 1)
  {
    if ((strlen(FLAGS_fst_weight_parentheses) | 2) == 2)
    {
      return a1;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(&v13, __p);
    v5 = fst::cerr(v4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "CompositeWeightWriter: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "FLAGS_fst_weight_parentheses.size() is not equal to 2", 53);
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      boost::filesystem::path::path(__p, "FATAL");
    }

    else
    {
      boost::filesystem::path::path(__p, "ERROR");
    }

    v6 = fst::LogMessage::LogMessage(&v13, __p);
    v7 = fst::cerr(v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "CompositeWeightWriter: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "FLAGS_fst_weight_separator.size() is not equal to 1", 51);
  }

  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  std::ios_base::clear((a2 + *(*a2 - 24)), 1u);
  return a1;
}

void sub_57420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::operator<<<int,(fst::StringType)0>(void *a1, unsigned int *a2)
{
  v4 = a2 + 2;
  v3 = *a2;
  if (*a2 == -2)
  {
    v5 = "BadString";
    v6 = 9;
    goto LABEL_7;
  }

  if (v3 == -1)
  {
    v5 = "Infinity";
    v6 = 8;
    goto LABEL_7;
  }

  if (!v3)
  {
    v5 = "Epsilon";
    v6 = 7;
LABEL_7:

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, v6);
  }

  v9 = 0;
  v10 = *(a2 + 2);
  v11 = 1;
  if (*a2)
  {
    do
    {
      if (v9)
      {
        v14 = 95;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v14, 1);
      }

      if (v11)
      {
        v12 = *a2;
        std::ostream::operator<<();
      }

      else
      {
        v13 = *(v10 + 16);
        std::ostream::operator<<();
        v10 = *(v10 + 8);
      }

      v11 = 0;
      --v9;
    }

    while (v10 != v4);
  }

  return a1;
}

void *fst::ImplToFst<fst::FactorWeightFstImpl<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,fst::GallicFactor<int,fst::LogWeightTpl<float>,(fst::GallicType)0>>,fst::Fst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = off_274628;
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

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>>,fst::MutableFst<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>>,(fst::GallicType)0>>>::~ImplToFst(void *a1)
{
  *a1 = off_272678;
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

void *std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::__emplace_unique_key_args<std::pair<int,std::vector<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<int,std::vector<int>> const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7 + 7853 * v6;
    }

    while (v4 != v5);
  }

  v8 = v6 + 103049 * *a2;
  v9 = v8;
  v10 = a1[1];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v10 <= v8)
    {
      v13 = v8 % v10;
    }
  }

  else
  {
    v13 = (v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::pair<int,std::vector<int>> const&>,std::tuple<>>();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= v10)
      {
        v16 %= v10;
      }
    }

    else
    {
      v16 &= v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (!std::equal_to<std::pair<int,std::vector<int>>>::operator()[abi:ne200100](a1, (v15 + 2), a2))
  {
    goto LABEL_22;
  }

  return v15;
}

void sub_57924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_579E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::__unordered_map_hasher<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,kaldi::HmmCacheHash,std::equal_to<std::pair<int,std::vector<int>>>,true>,std::__unordered_map_equal<std::pair<int,std::vector<int>>,std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>,std::equal_to<std::pair<int,std::vector<int>>>,kaldi::HmmCacheHash,true>,std::allocator<std::__hash_value_type<std::pair<int,std::vector<int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::vector<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_57BA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::find<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::__emplace_unique_key_args<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::piecewise_construct_t const&,std::tuple<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const* const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::__unordered_map_hasher<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::__unordered_map_equal<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::equal_to<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,std::hash<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*>,true>,std::allocator<std::__hash_value_type<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = (v9 + 1);
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = (v9 + 2);
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = (v9 + 2);
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = (v9 + 1);
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = (v9 + 2);
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = (v9 + 2);
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,std::__less<void,void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
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
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>,std::__wrap_iter<fst::ExpandedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const**>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
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

uint64_t kaldi::WriteIntegerByteArray<int>(void *a1, int a2, int a3, uint64_t a4, int *a5)
{
  if (a2)
  {
    v17 = 4;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_B8.addr + 5, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v16 = v10;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && (fst::AlignOutput(a1) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 227);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v12 = *a5++;
      v13 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
  }

  return result;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_2748E0;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_274830;
  boost::filesystem::path::path(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_59A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::LatticeWeightTpl<float>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_2748A8;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_2748E0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_59DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 16) = *(v2 + 16);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightTpl<float>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::LatticeWeightTpl<float>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>(a1, v6);
  }

  v7 = 20 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  v12 = 20 * v2 + 20;
  std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 20) % 0x14uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5A094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>::SetArc(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3] + 20 * a3;
  if (!*v3)
  {
    --a1[1];
  }

  if (!*(v3 + 4))
  {
    --a1[2];
  }

  if (!*a2)
  {
    ++a1[1];
  }

  if (!*(a2 + 4))
  {
    ++a1[2];
  }

  *v3 = *a2;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 16) = *(a2 + 16);
  return result;
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
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
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_5A2CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t fst::TropicalWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::TropicalWeightTpl<float>::Type(void)::type;
}

void sub_5A3AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t fst::Reverse<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 216))(a2);
  v6 = (*(*a1 + 112))(a1);
  (*(*a2 + 272))(a2, v6);
  v7 = (*(*a1 + 120))(a1);
  (*(*a2 + 280))(a2, v7);
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v8 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    (*(*a2 + 240))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 24))(a1);
  v52 = 0;
  v40 = v9;
  if (a3)
  {
LABEL_29:
    v10 = (*(*a2 + 192))(a2);
    v17 = 1;
    v18 = 1;
    goto LABEL_31;
  }

  LODWORD(v46) = 0;
  (*(*a1 + 128))(a1, &v44);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v44)
    {
      v11 = (*(*v44 + 16))(v44);
      v12 = v44;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v44)
      {
        v13 = (*(*v44 + 24))();
        goto LABEL_11;
      }
    }

    else if (v46 >= v45)
    {
      goto LABEL_26;
    }

    v13 = v46;
LABEL_11:
    v14 = (*(*a1 + 32))(a1, v13);
    *&v41 = v14;
    LODWORD(v49) = 2139095040;
    v15 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = -1;
    }

    if (*&v41 == INFINITY)
    {
      v15 = 4;
    }

    v10 = v14 == INFINITY ? v10 : v16;
    if ((v15 | 4) != 4)
    {
      break;
    }

    if (v44)
    {
      (*(*v44 + 32))(v44);
    }

    else
    {
      LODWORD(v46) = v46 + 1;
    }
  }

  v12 = v44;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_29;
  }

  LODWORD(v44) = (*(*a1 + 32))(a1, v10);
  LODWORD(v41) = 0;
  if (*&v44 != 0.0)
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v44 = &v49;
    v45 = 0;
    v46 = 0;
    v47 = &v52;
    fst::DfsVisit<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v44);
  }

  v17 = 0;
  v18 = 0;
LABEL_31:
  LODWORD(v43) = 0;
  (*(*a1 + 128))(a1, &v41);
  while (2)
  {
    if (!v41)
    {
      if (v43 >= v42)
      {
        goto LABEL_81;
      }

      goto LABEL_37;
    }

    if (!(*(*v41 + 16))(v41))
    {
      if (v41)
      {
        v19 = (*(*v41 + 24))();
LABEL_38:
        v20 = v19 + v18;
        while ((*(*a2 + 152))(a2) <= v20)
        {
          (*(*a2 + 192))(a2);
        }

        if (v19 == v40)
        {
          (*(*a2 + 176))(a2, (v19 + v18), 0.0);
        }

        v21.n128_f32[0] = (*(*a1 + 32))(a1, v19);
        LODWORD(v44) = v21.n128_u32[0];
        LODWORD(v49) = 2139095040;
        v22.n128_u32[0] = v21.n128_u32[0];
        v23 = v17 ^ 1;
        if (v21.n128_f32[0] == INFINITY)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v44 = 0;
          LODWORD(v45) = v21.n128_u32[0];
          HIDWORD(v45) = v19 + v18;
          v21.n128_f64[0] = (*(*a2 + 200))(a2, 0, &v44);
        }

        v48 = 0;
        (*(*a1 + 136))(a1, v19, &v44, v21, v22);
LABEL_48:
        if (v44)
        {
          if ((*(*v44 + 24))(v44))
          {
            if (v44)
            {
              (*(*v44 + 8))();
              goto LABEL_76;
            }

LABEL_74:
            if (v47)
            {
              --*v47;
            }

LABEL_76:
            if (v41)
            {
              (*(*v41 + 32))(v41);
            }

            else
            {
              LODWORD(v43) = v43 + 1;
            }

            continue;
          }

          if (v44)
          {
            v24 = (*(*v44 + 32))();
LABEL_54:
            v25 = (*(v24 + 12) + v18);
            v26 = *(v24 + 8);
            if (v25 == v10)
            {
              v27 = v17;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              v28 = *(v24 + 8);
            }

            else
            {
              v29 = (*(*a1 + 32))(a1, v10);
              v28 = 2143289344;
              if (v29 != -INFINITY && v26 != -INFINITY)
              {
                v28 = 2139095040;
                v30 = v29 == INFINITY || v26 == INFINITY;
                v31 = v26 + v29;
                if (!v30)
                {
                  *&v28 = v31;
                }
              }
            }

            v49 = *v24;
            v50 = __PAIR64__(v20, v28);
            while (1)
            {
              v32 = (*(*a2 + 152))(a2);
              v33 = *a2;
              if (v32 > v25)
              {
                break;
              }

              (*(v33 + 192))(a2);
            }

            (*(v33 + 200))(a2, v25, &v49);
            if (v44)
            {
              (*(*v44 + 40))(v44);
            }

            else
            {
              ++v48;
            }

            goto LABEL_48;
          }
        }

        else if (v48 >= v46)
        {
          goto LABEL_74;
        }

        v24 = v45 + 16 * v48;
        goto LABEL_54;
      }

LABEL_37:
      v19 = v43;
      goto LABEL_38;
    }

    break;
  }

  if (v41)
  {
    (*(*v41 + 8))();
  }

LABEL_81:
  (*(*a2 + 168))(a2, v10);
  if (v10 == v40)
  {
    v34 = v17;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    (*(*a1 + 32))(a1, v40);
    (*(*a2 + 176))(a2, v40);
  }

  v35 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  v36 = v52;
  v37 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v38 = fst::ReverseProperties(v36 | v35, v17);
  return (*(*a2 + 184))(a2, v37 | v38, 0x3FFFFFFF0007);
}

void sub_5AFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 136);
  if (v22)
  {
    *(v20 - 128) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~ImplToFst(a1);

  operator delete();
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_274BA0;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_274AF0;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_5BB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = off_274B68;
  v3 = a1 + 8;
  v2 = a1[8];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[8];
    }

    while (v4 < (a1[9] - v2) >> 3);
  }

  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  return fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);
}

void fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstImpl(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~VectorFstBaseImpl(a1);

  operator delete();
}

void fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(a1);

  operator delete();
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~FstImpl(uint64_t a1)
{
  *a1 = off_274BA0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Write(uint64_t a1)
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

void sub_5BDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5BEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::MutateCheck(uint64_t result)
{
  if (*(*(result + 8) + 56) >= 2)
  {
    operator new();
  }

  return result;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = off_274BA0;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = off_274AF0;
  boost::filesystem::path::path(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 112))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 120))(a2);
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 88) = (*(*a2 + 24))(a2);
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 64), v6);
  }

  v11 = 0;
  (*(*a2 + 128))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 64))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1)
{
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v2 = *(*a1 + 152);

    return v2(a1);
  }

  v7 = 0;
  (*(*a1 + 128))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_5C694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    fst::CountStates<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 0);
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

    return fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, a2, a3, 1);
  }
}

void sub_5C7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = -1431699456;
  v9 = 1431633920;
  v10 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
  v11 = v10;
  if (!a4 || (v12 = v10 & 0x3FFFFFFF0000 | (2 * v10) & 0x2AAAAAAA0000 | (v10 >> 1) & 0x155555550000 | 7, (a2 & ~v12) != 0))
  {
    v11 = v10 & 7;
    v48 = v11;
    v13 = (*(*a1 + 16))(a1);
    if ((a2 & 0xF3C00000000) != 0 && v13)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &v48;
      fst::DfsVisit<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>,fst::AnyArcFilter<fst::ReverseArc<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>(a1, &v43);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) != 0)
    {
      v37 = a3;
      v14 = a2 & 0xC0000;
      v15 = 0x10425A810000;
      if ((a2 & 0xC0000) != 0)
      {
        v15 = 0x10425A850000;
      }

      v16 = v11 | v15;
      v17 = a2 & 0x300000;
      if ((a2 & 0x300000) != 0)
      {
        v16 |= 0x100000uLL;
      }

      v48 = v16;
      memset(&v42, 0, sizeof(v42));
      memset(&v41, 0, sizeof(v41));
      v40 = 0;
      (*(*a1 + 128))(a1, &v38);
      v18 = 0;
LABEL_12:
      if (v38)
      {
        if (!(*(*v38 + 16))(v38))
        {
          if (v38)
          {
            v19 = (*(*v38 + 24))();
LABEL_18:
            v20 = (*(*a1 + 40))(a1, v19);
            v42.__end_ = v42.__begin_;
            v41.__end_ = v41.__begin_;
            if (v14)
            {
              std::vector<int>::reserve(&v42, v20);
            }

            if (v17)
            {
              std::vector<int>::reserve(&v41, v20);
            }

            v47 = 0;
            (*(*a1 + 136))(a1, v19, &v43);
            v21 = 1;
            while (1)
            {
              if (v43)
              {
                if ((*(*v43 + 24))(v43))
                {
                  if (v43)
                  {
                    (*(*v43 + 8))();
                    goto LABEL_62;
                  }

LABEL_60:
                  if (v46)
                  {
                    --*v46;
                  }

LABEL_62:
                  if (v14 && (std::__sort<std::__less<int,int> &,int *>(), v29 = v42.__end_ - v42.__begin_, v29 >= 2))
                  {
                    v30 = v29 - 1;
                    v31 = v42.__begin_ + 1;
                    while (*v31 != *(v31 - 1))
                    {
                      ++v31;
                      if (!--v30)
                      {
                        goto LABEL_67;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
                    if (!v17)
                    {
LABEL_76:
                      if (v18 >= 1)
                      {
                        v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                      }

                      v35 = (*(*a1 + 32))(a1, v19);
                      *&v43 = v35;
                      v50 = 2139095040;
                      if (v35 == INFINITY)
                      {
                        if ((*(*a1 + 40))(a1, v19, INFINITY, v35) != 1)
                        {
                          v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
                        }
                      }

                      else
                      {
                        *&v43 = v35;
                        v50 = 0;
                        if (v35 != 0.0)
                        {
                          v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                        }

                        ++v18;
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
LABEL_67:
                    if (!v17)
                    {
                      goto LABEL_76;
                    }
                  }

                  std::__sort<std::__less<int,int> &,int *>();
                  v32 = v41.__end_ - v41.__begin_;
                  if (v32 >= 2)
                  {
                    v33 = v32 - 1;
                    v34 = v41.__begin_ + 1;
                    while (*v34 != *(v34 - 1))
                    {
                      ++v34;
                      if (!--v33)
                      {
                        goto LABEL_76;
                      }
                    }

                    v48 = v48 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
                  }

                  goto LABEL_76;
                }

                if (v43)
                {
                  v22 = (*(*v43 + 32))();
                  goto LABEL_29;
                }
              }

              else if (v47 >= v45)
              {
                goto LABEL_60;
              }

              v22 = v44 + 16 * v47;
LABEL_29:
              v23 = *v22;
              v24 = (v22 + 4);
              v25 = *v22;
              if (*v22 != *(v22 + 4))
              {
                v48 = v48 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
                v25 = *v24;
              }

              if (v23 | v25)
              {
                if (v23)
                {
                  if (!v25)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_35;
                }

                v26 = v48;
              }

              else
              {
                v26 = v48 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
              }

              v48 = v26 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
              if (!v25)
              {
LABEL_39:
                v48 = v48 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_40;
              }

LABEL_35:
              if (v21)
              {
                goto LABEL_44;
              }

LABEL_40:
              if (v23 < v9)
              {
                v48 = v48 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
              }

              if (v25 < v8)
              {
                v48 = v48 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
              }

LABEL_44:
              v27 = *(v22 + 8);
              v50 = LODWORD(v27);
              v49 = 0;
              if (v27 != 0.0)
              {
                v50 = LODWORD(v27);
                v49 = 2139095040;
                if (v27 != INFINITY)
                {
                  v48 = v48 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
                }
              }

              v28 = *(v22 + 12);
              if (v28 <= v19)
              {
                v48 = v48 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
              }

              if (v28 != v19 + 1)
              {
                v48 = v48 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }

              v9 = *v22;
              v8 = *(v22 + 4);
              if (v14)
              {
                std::vector<int>::push_back[abi:ne200100](&v42.__begin_, v22);
              }

              if (v17)
              {
                std::vector<int>::push_back[abi:ne200100](&v41.__begin_, v24);
              }

              if (v43)
              {
                (*(*v43 + 40))(v43);
                v21 = 0;
              }

              else
              {
                v21 = 0;
                ++v47;
              }
            }
          }

LABEL_17:
          v19 = v40;
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
      if ((*(*a1 + 24))(a1) != -1 && (*(*a1 + 24))(a1))
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

      v11 = v48;
    }

    v12 = v11 & 0x3FFFFFFF0000 | (2 * v11) & 0x2AAAAAAA0000 | (v11 >> 1) & 0x155555550000 | 7;
  }

  *a3 = v12;
  return v11;
}