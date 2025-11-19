void sub_25FE4DE7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ProGL::ContextHandle::~ContextHandle(va);
  PCLockSentry<PCMutex>::~PCLockSentry(va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ProGL::Private::TextureImpl *,anonymous namespace::TextureImplDelete,std::allocator<ProGL::Private::TextureImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::TextureImpl *,anonymous namespace::TextureImplDelete,std::allocator<ProGL::Private::TextureImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ProGL::Private::AnyMap_Template<std::pair<unsigned int,ProGL::Private::TextureImpl *>,PCSpinLock>::remove_if<ProGL::Private::PerContextAnyMap<ProGL::Private::TextureImpl *,PCSpinLock>::ContextPred>(uint64_t a1, uint64_t a2)
{
  PCSpinLock::lock(a1);
  v4 = *(a1 + 8);
  if (v4 == (a1 + 16))
  {
    goto LABEL_17;
  }

  do
  {
    v5 = v4[1];
    if (v4[5] == a2)
    {
      v8 = v4;
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v7 = *v6 == v8;
          v8 = v6;
        }

        while (!v7);
      }

      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 8), v4);
      ProGL::Private::Any::~Any((v4 + 6));
      operator delete(v4);
    }

    else if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    v4 = v6;
  }

  while (v6 != (a1 + 16));
  if (a1)
  {
LABEL_17:
    PCSpinLock::unlock(a1);
  }
}

const void **std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::push_front(const void **result, void *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 9)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      ProGL::ContextHandle::~ContextHandle((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t anonymous namespace::CompareTextureDescription::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  v5 = *(a1 + 28);
  v6 = *(a2 + 28);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 > v8)
  {
    return 0;
  }

  v9 = *(a1 + 36);
  v10 = *(a2 + 36);
  if (v9 < v10)
  {
    return 1;
  }

  if (v9 > v10)
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  if (v11 < v12)
  {
    return 1;
  }

  if (v11 > v12)
  {
    return 0;
  }

  v13 = *(a1 + 20);
  v14 = *(a2 + 20);
  if (v13 < v14)
  {
    return 1;
  }

  if (v13 > v14)
  {
    return 0;
  }

  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (v15 < v16)
  {
    return 1;
  }

  if (v15 > v16)
  {
    return 0;
  }

  v18 = *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  ProGL::ContextHandle::getShareGroup(v23, &v24);
  v19 = *(a2 + 8);
  v21[0] = *a2;
  v21[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  ProGL::ContextHandle::getShareGroup(v21, &v22);
  v20 = ProGL::operator<(&v24, &v22);
  ProGL::ContextHandle::~ContextHandle(v21);
  ProGL::ContextHandle::~ContextHandle(v23);
  return v20;
}

void sub_25FE4E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::ContextHandle::~ContextHandle(va);
  _Unwind_Resume(a1);
}

const void **std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_front<PVLoadedEffectItem *&>(a1, v11);
}

void sub_25FE4E460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__emplace_unique_key_args<std::pair<unsigned int,ProGL::ShareGroup>,std::pair<std::pair<unsigned int,ProGL::ShareGroup> const,ProGL::Private::TextureImpl *>>(uint64_t a1, unsigned int *a2)
{
  result = *std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__find_equal<std::pair<unsigned int,ProGL::ShareGroup>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__construct_node<std::pair<std::pair<unsigned int,ProGL::ShareGroup> const,ProGL::Private::TextureImpl *>>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__find_equal<std::pair<unsigned int,ProGL::ShareGroup>>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *a3;
        v9 = *(v4 + 8);
        if (*a3 >= v9)
        {
          break;
        }

LABEL_3:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v8)
      {
        if (ProGL::operator<(a3 + 1, v7 + 5))
        {
          goto LABEL_3;
        }

        v9 = *(v7 + 8);
        v8 = *a3;
      }

      if (v9 < v8 || v8 >= v9 && ProGL::operator<(v7 + 5, a3 + 1))
      {
        v5 = v7 + 1;
        v4 = v7[1];
        if (v4)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  v7 = (a1 + 8);
LABEL_14:
  *a2 = v7;
  return v5;
}

void sub_25FE4E65C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v4 = a1->i64[1];
  v5 = (v4 + 8 * (a1[2].i64[0] >> 9));
  if (a1[1].i64[0] == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (a1[2].i64[0] & 0x1FF));
  }

  v30 = (v4 + 8 * (a1[2].i64[0] >> 9));
  v31 = v6;
  if (a3 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&a3[-*a2] >> 3) + ((a2 - v5) << 6) - (&v6[-*v5] >> 3);
  }

  v8 = std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>::operator+[abi:ne200100](&v30, v7);
  v10 = v8;
  v11 = v9;
  v12 = a1[2].i64[1];
  if (v7 <= (v12 - 1) >> 1)
  {
    v17 = (v9 - *v8) >> 3;
    if (v17 < 0)
    {
      v26 = 510 - v17;
      v19 = &v8[-(v26 >> 9)];
      v20 = &(*v19)[8 * (~v26 & 0x1FF)];
    }

    else
    {
      v18 = v17 + 1;
      v19 = &v8[v18 >> 9];
      v20 = &(*v19)[8 * (v18 & 0x1FF)];
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,0>(v30, v31, v8, v9, v19, v20, v32);
    a1[2] = vaddq_s64(a1[2], xmmword_260342880);
    std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    v13 = (v9 - *v8) >> 3;
    if (v13 < 0)
    {
      v21 = 510 - v13;
      v15 = &v8[-(v21 >> 9)];
      v16 = &(*v15)[8 * (~v21 & 0x1FF)];
    }

    else
    {
      v14 = v13 + 1;
      v15 = &v8[v14 >> 9];
      v16 = &(*v15)[8 * (v14 & 0x1FF)];
    }

    v22 = a1[2].i64[0] + v12;
    v23 = a1->i64[1];
    v24 = (v23 + 8 * (v22 >> 9));
    if (a1[1].i64[0] == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = &(*v24)[8 * (v22 & 0x1FF)];
    }

    v32[0].n128_u64[0] = v10;
    v32[0].n128_u64[1] = v11;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>>>(v15, v16, v24, v25, v32);
    --a1[2].i64[1];
    std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v27 = a1->i64[1];
  if (a1[1].i64[0] == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v32[0].n128_u64[0] = v27 + 8 * (a1[2].i64[0] >> 9);
  v32[0].n128_u64[1] = v28;
  return std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>::operator+[abi:ne200100](v32, v7);
}

void std::multimap<ProGL::TextureDescription,ProGL::Private::TextureImpl *,anonymous namespace::CompareTextureDescription,std::allocator<std::pair<ProGL::TextureDescription const,ProGL::Private::TextureImpl *>>>::erase[abi:ne200100](uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  ProGL::ContextHandle::~ContextHandle((a2 + 4));

  operator delete(a2);
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__find_segment<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>,std::__identity>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      while (*a2 != *a5)
      {
        if (++a2 == a4)
        {
          a2 = a4;
          break;
        }
      }
    }

    if (a1)
    {
      if ((*a1 + 4096) == a2)
      {
        ++a1;
      }

      return a1;
    }

    return 0;
  }

  else
  {
    v5 = *a1 + 4096;
    if (v5 == a2)
    {
      goto LABEL_20;
    }

    while (*a2 != *a5)
    {
      if (++a2 == v5)
      {
        goto LABEL_20;
      }
    }

    if (a2 != v5)
    {
      return a1;
    }

LABEL_20:
    while (1)
    {
      v7 = a1[1];
      if (a1 + 1 == a3)
      {
        break;
      }

      v6 = 0;
      ++a1;
      do
      {
        if (v7[v6] == *a5)
        {
          break;
        }

        ++v6;
      }

      while (v6 != 512);
      if (v6 != 512)
      {
        return a1;
      }
    }

    if (v7 != a4)
    {
      v8 = 0;
      v9 = a1[1];
      do
      {
        if (*v9 == *a5)
        {
          break;
        }

        v8 += 8;
        ++v9;
      }

      while (v9 != a4);
      if (v8 == 4096)
      {
        a1 += 2;
        return a1;
      }
    }
  }

  return a3;
}

void *std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

uint64_t std::deque<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>*,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>**,long,512l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__deque_iterator<std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> *,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>>&,std::__map_iterator<std::__tree_iterator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__tree_node<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,void *> *,long>> **,long,512l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

void *std::vector<ProGL::Private::TextureImpl *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25FE4EE74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,std::__map_value_compare<ProGL::TextureDescription,std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>,anonymous namespace::CompareTextureDescription,true>,std::allocator<std::__value_type<ProGL::TextureDescription,ProGL::Private::TextureImpl *>>>::destroy(void *a1)
{
  if (a1)
  {
    ProGL::ContextHandle::~ContextHandle((a1 + 4));

    operator delete(a1);
  }
}

ProGL::Private::TextureImpl *ProGL::Private::TextureImpl::TextureImpl(ProGL::Private::TextureImpl *this, ProGL::GL *a2)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0;
  ProGL::GL::getPGLContextHandle(a2, v9);
  ProGL::TextureDescription::TextureDescription((this + 24), v9);
  ProGL::ContextHandle::~ContextHandle(v9);
  *(this + 23) = 0;
  *(this + 22) = this + 184;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 13) = 0x260100000000;
  *(this + 14) = 0xC47A00003F800000;
  *(this + 30) = 1148846080;
  *(this + 124) = 0x3E800000000;
  *(this + 33) = 0;
  *(this + 17) = 6409;
  *(this + 36) = 515;
  *(this + 148) = 0;
  *(this + 38) = 1065353216;
  *(this + 160) = 0;
  *(this + 41) = 1;
  *(this + 168) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  *(this + 202) = 0;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 57) = 0;
  *(this + 220) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 232) = _Q0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  glGenTextures(1, this + 5);
  return this;
}

void sub_25FE4EFF8(_Unwind_Exception *a1)
{
  v6 = v1[32];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef((v3 + 32));
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(v3, *v4);
  ProGL::ContextHandle::~ContextHandle((v1 + 3));
  PCSpinLock::~PCSpinLock(v2);
  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t ProGL::Private::TextureImpl::TextureImpl(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, ProGL::ContextHandle *a9, void *a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = a2;
  ProGL::TextureDescription::TextureDescription((a1 + 24), a9);
  *(a1 + 184) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0x260100000000;
  *(a1 + 112) = 0xC47A00003F800000;
  *(a1 + 120) = 1148846080;
  *(a1 + 124) = 0x3E800000000;
  *(a1 + 132) = 0;
  *(a1 + 136) = 6409;
  *(a1 + 144) = 515;
  *(a1 + 148) = 0;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 202) = 0;
  *(a1 + 212) = 0;
  *(a1 + 204) = 0;
  *(a1 + 228) = 0;
  *(a1 + 220) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 232) = _Q0;
  v22 = a10[1];
  *(a1 + 248) = *a10;
  *(a1 + 256) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 44) = a3;
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  *(a1 + 64) = a8;
  *(a1 + 72) = a8;
  return a1;
}

{
  return ProGL::Private::TextureImpl::TextureImpl(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_25FE4F184(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t ProGL::Private::TextureImpl::getContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

unint64_t ProGL::Private::TextureImpl::getSize(ProGL::Private::TextureImpl *this)
{
  v1 = *(this + 51);
  if (!v1)
  {
    v2 = *(this + 13);
    if (v2 <= 0x80)
    {
      v2 = 128;
    }

    v3 = 6;
    if (*(this + 11) != 34067)
    {
      v3 = 1;
    }

    v4 = ((*(this + 12) + 127) & 0xFFFFFFFFFFFFFF80) * v2 * *(this + 14) * v3;
    if ((*(this + 201) & 1) != 0 || ProGL::Private::TextureParameters::getGenerateMipmap((this + 76)))
    {
      return 16 * v4 / 3;
    }

    else
    {
      return 4 * v4;
    }
  }

  return v1;
}

uint64_t ProGL::Private::TextureImpl::setPooled(uint64_t this, char a2)
{
  if (!*(this + 248))
  {
    *(this + 200) = a2;
  }

  return this;
}

void ProGL::Private::TextureImpl::detach(ProGL::Private::TextureImpl *this)
{
  if (*(this + 5))
  {
    *(this + 5) = 0;
    ProGL::TextureDescription::reset((this + 24));
    *(this + 18) = 0;
    ProGL::Private::TextureParameters::reset((this + 76));
    *(this + 168) = 0;
    *(this + 200) = 0;
    if (!*(this + 31))
    {
      v3 = *(this + 23);
      v2 = (this + 184);
      std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy((v2 - 1), v3);
      *v2 = 0;
      v2[1] = 0;
      *(v2 - 1) = v2;
    }
  }
}

void ProGL::Private::TextureImpl::texParameter(ProGL::Private::TextureImpl *this, ProGL::GL *a2, signed int a3, GLint param)
{
  if (a3 <= 10241)
  {
    if (a3 == 10240)
    {
      v15 = *(this + 11);
      v16 = (this + 76);

      ProGL::Private::TextureParameters::setMagFilter(v16, a2, v15, param);
    }

    else
    {
      if (a3 != 10241)
      {
LABEL_22:
        v17 = MEMORY[0x277D82678];
        v18 = *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 8);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ProGL::TextureHandle::texParameter(): unknown parameter passed (", 64);
        v20 = *v19;
        *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
        *(v19 + *(v20 - 24) + 8) |= 0x4000u;
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "0x", 2);
        v27 = 48;
        v22 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, &v27);
        *(v22 + *(*v22 - 24) + 24) = 4;
        v23 = MEMORY[0x2666E9B60]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "), not saved in parameter state, ", 33);
        if (ProGL::Private::TextureParameters::isBound((this + 76)))
        {
          glTexParameteri(*(this + 11), a3, param);
          v24 = MEMORY[0x277D82678];
          v25 = "just passed on to OpenGL.\n";
          v26 = 26;
        }

        else
        {
          v24 = MEMORY[0x277D82678];
          v25 = "just discarded.\n";
          v26 = 16;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
        *(v17 + *(*v17 - 24) + 8) = v18;
        return;
      }

      v9 = *(this + 11);
      v10 = (this + 76);

      ProGL::Private::TextureParameters::setMinFilter(v10, a2, v9, param);
    }
  }

  else
  {
    switch(a3)
    {
      case 10242:
        v11 = *(this + 11);
        v12 = (this + 76);

        ProGL::Private::TextureParameters::setWrapS(v12, a2, v11, param);
        break;
      case 10243:
        v13 = *(this + 11);
        v14 = (this + 76);

        ProGL::Private::TextureParameters::setWrapT(v14, a2, v13, param);
        break;
      case 34046:
        v7 = *(this + 11);
        v8 = (this + 76);

        ProGL::Private::TextureParameters::setMaxAnisotropy(v8, a2, v7, param);
        return;
      default:
        goto LABEL_22;
    }
  }
}

void ProGL::Private::TextureImpl::texImage2D(ProGL::Private::TextureImpl *this, ProGL::GL *a2, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum a9, GLenum a10, GLvoid *pixels)
{
  if (!*(this + 31))
  {
    if (target - 34069 >= 6)
    {
      v18 = target;
    }

    else
    {
      v18 = 34067;
    }

    glTexImage2D(target, level, internalformat, width, height, border, a9, a10, pixels);
    *(this + 11) = v18;
    ProGL::GL::getPGLContextHandle(a2, v19);
    *(this + 10) = ProGL::ContextHandle::getVirtualScreen(v19);
    ProGL::ContextHandle::~ContextHandle(v19);
    *(this + 12) = width;
    *(this + 13) = height;
    *(this + 14) = 1;
    *(this + 15) = border;
    *(this + 16) = internalformat;
    *(this + 18) = internalformat;
    if (level)
    {
      *(this + 201) = 1;
    }
  }
}

void sub_25FE4F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProGL::ContextHandle::~ContextHandle(va);
  _Unwind_Resume(a1);
}

uint64_t ProGL::Private::ProgramHelper::getProgramContext@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

ProGL::Private::VariableBase *ProGL::Private::VariableBase::VariableBase(ProGL::Private::VariableBase *this, ProGL::Program *a2)
{
  *this = &unk_28723FC08;
  *(this + 1) = a2;
  ProGL::Private::VariableList::add((a2 + 168), this);
  return this;
}

void ProGL::Private::VariableBase::~VariableBase(ProGL::Private::VariableBase *this)
{
  *this = &unk_28723FC08;
  v1 = *(this + 1);
  if (v1)
  {
    ProGL::Private::VariableList::remove((v1 + 168), this);
  }
}

{
  *this = &unk_28723FC08;
  v1 = *(this + 1);
  if (v1)
  {
    ProGL::Private::VariableList::remove((v1 + 168), this);
  }
}

{
  *this = &unk_28723FC08;
  v1 = *(this + 1);
  if (v1)
  {
    ProGL::Private::VariableList::remove((v1 + 168), this);
  }

  JUMPOUT(0x2666E9F00);
}

void ProGL::Private::VariableBase::getString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void ProGL::Private::VariableList::add(ProGL::Private::VariableList *this, ProGL::Private::VariableBase *a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *this;
  if (*this != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = *(this + 2);
    if (v5 >= v7)
    {
      v9 = (v5 - v4) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(this, v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = *(this + 1) - *this;
      v15 = v13 - v14;
      memcpy(v13 - v14, *this, v14);
      v16 = *this;
      *this = v15;
      *(this + 1) = v8;
      *(this + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    v18 = *(this + 4);
    v17 = (this + 32);
    *(v17 - 3) = v8;
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy((v17 - 1), v18);
    *v17 = 0;
    v17[1] = 0;
    *(v17 - 1) = v17;
  }
}

void ProGL::Private::VariableList::remove(ProGL::Private::VariableList *this, ProGL::Private::VariableBase *a2)
{
  v4 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    v5 = *this;
    while (*v5 != a2)
    {
      ++v5;
      v4 += 8;
      if (v5 == v3)
      {
        v4 = *(this + 1);
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v6 = v3 - v4 - 8;
    if (v3 != (v4 + 8))
    {
      memmove(v4, (v4 + 8), v3 - v4 - 8);
    }

    v8 = *(this + 4);
    v7 = (this + 32);
    *(v7 - 3) = &v6[v4];
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy((v7 - 1), v8);
    *v7 = 0;
    v7[1] = 0;
    *(v7 - 1) = v7;
  }
}

uint64_t *ProGL::Private::VariableList::getString(ProGL::Private::VariableList *this, uint64_t a2)
{
  v4 = a2;
  ProGL::Private::VariableList::makeSortedString(this, a2);
  v5 = &v4;
  return std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 24, &v4) + 5;
}

void ProGL::Private::VariableList::makeSortedString(ProGL::Private::VariableList *this, uint64_t a2)
{
  v4 = this + 32;
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = this + 32;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v4 || *(v5 + 8) > a2)
  {
LABEL_9:
    __src = 0;
    v16 = 0;
    v17 = 0;
    v9 = *this;
    v10 = *(this + 1);
    if (*this == v10)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      do
      {
        if ((*(**v9 + 32))(*v9, a2))
        {
          operator new();
        }

        ++v9;
      }

      while (v9 != v10);
      v11 = __src;
      v12 = v16;
    }

    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    LODWORD(p_src) = a2;
    __p = *v13;
    v20 = 0;
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::string>>((v4 - 8), &p_src);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    p_src = &__src;
    std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&p_src);
  }
}

void sub_25FE4FE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

double ProGL::Program::Program(ProGL::Program *this)
{
  *this = &unk_28723FC48;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 26) = 0;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = 0;
  *(this + 24) = this + 200;
  *(this + 216) = 1;
  return result;
}

void ProGL::Program::~Program(ProGL::Program *this)
{
  *this = &unk_28723FC48;
  if (*(this + 2))
  {
    operator new();
  }

  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(this + 192, *(this + 25));
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

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

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  ProGL::ContextHandle::~ContextHandle((this + 16));
}

{
  ProGL::Program::~Program(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProGL::Program::build(ProGL::Program *this, ProGL::GL *a2)
{
  v4 = *(this + 87);
  if (v4 < 0)
  {
    v4 = *(this + 9);
  }

  if (v4)
  {
    String = ProGL::Private::VariableList::getString((this + 168), 35633);
    if (*(String + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, *String, String[1]);
    }

    else
    {
      v6 = *String;
      v68.__r_.__value_.__r.__words[2] = String[2];
      *&v68.__r_.__value_.__l.__data_ = v6;
    }

    memset(&v67, 0, sizeof(v67));
    std::string::operator=(&v67, (this + 40));
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v68;
    }

    else
    {
      v8 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v68.__r_.__value_.__l.__size_;
    }

    std::string::append(&v67, v8, size);
    v10 = *(this + 135);
    if (v10 >= 0)
    {
      v11 = this + 112;
    }

    else
    {
      v11 = *(this + 14);
    }

    if (v10 >= 0)
    {
      v12 = *(this + 135);
    }

    else
    {
      v12 = *(this + 15);
    }

    std::string::append(&v67, v11, v12);
    v13 = *(this + 87);
    if (v13 >= 0)
    {
      v14 = this + 64;
    }

    else
    {
      v14 = *(this + 8);
    }

    if (v13 >= 0)
    {
      v15 = *(this + 87);
    }

    else
    {
      v15 = *(this + 9);
    }

    std::string::append(&v67, v14, v15);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v67;
    }

    else
    {
      v16 = v67.__r_.__value_.__r.__words[0];
    }

    v17 = v66;
    v66 = 0uLL;
    v18 = *(this + 18);
    *(this + 136) = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (*(&v66 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
      }
    }

    v19 = ProGL::Private::Shader::good(*(this + 17));
    if (!v19)
    {
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Error compiling vertex shader. log is:\n", 39);
      RootChannel = OZStyle::getRootChannel(*(this + 17));
      v22 = *(RootChannel + 23);
      if (v22 >= 0)
      {
        v23 = RootChannel;
      }

      else
      {
        v23 = *RootChannel;
      }

      if (v22 >= 0)
      {
        v24 = *(RootChannel + 23);
      }

      else
      {
        v24 = *(RootChannel + 8);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n", 1);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
      if (!v19)
      {
        goto LABEL_117;
      }
    }

    else if (!v19)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v7 = *(this + 18);
    *(this + 17) = 0;
    *(this + 18) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if ((*(this + 111) & 0x8000000000000000) != 0)
  {
    if (*(this + 12))
    {
LABEL_49:
      v26 = ProGL::Private::VariableList::getString((this + 168), 35632);
      if (*(v26 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, *v26, v26[1]);
      }

      else
      {
        v27 = *v26;
        v68.__r_.__value_.__r.__words[2] = v26[2];
        *&v68.__r_.__value_.__l.__data_ = v27;
      }

      memset(&v67, 0, sizeof(v67));
      std::string::operator=(&v67, (this + 40));
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v68;
      }

      else
      {
        v29 = v68.__r_.__value_.__r.__words[0];
      }

      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v68.__r_.__value_.__l.__size_;
      }

      std::string::append(&v67, v29, v30);
      v31 = *(this + 135);
      if (v31 >= 0)
      {
        v32 = this + 112;
      }

      else
      {
        v32 = *(this + 14);
      }

      if (v31 >= 0)
      {
        v33 = *(this + 135);
      }

      else
      {
        v33 = *(this + 15);
      }

      std::string::append(&v67, v32, v33);
      v34 = *(this + 111);
      if (v34 >= 0)
      {
        v35 = this + 88;
      }

      else
      {
        v35 = *(this + 11);
      }

      if (v34 >= 0)
      {
        v36 = *(this + 111);
      }

      else
      {
        v36 = *(this + 12);
      }

      std::string::append(&v67, v35, v36);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v67;
      }

      else
      {
        v37 = v67.__r_.__value_.__r.__words[0];
      }

      v38 = v66;
      v66 = 0uLL;
      v39 = *(this + 20);
      *(this + 152) = v38;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        if (*(&v66 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v66 + 1));
        }
      }

      v40 = ProGL::Private::Shader::good(*(this + 19));
      if (!v40)
      {
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Error compiling fragment shader. log is:\n", 41);
        v42 = OZStyle::getRootChannel(*(this + 19));
        v43 = *(v42 + 23);
        if (v43 >= 0)
        {
          v44 = v42;
        }

        else
        {
          v44 = *v42;
        }

        if (v43 >= 0)
        {
          v45 = *(v42 + 23);
        }

        else
        {
          v45 = *(v42 + 8);
        }

        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v44, v45);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "\n", 1);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
        if (v40)
        {
          goto LABEL_93;
        }
      }

      else if (v40)
      {
        goto LABEL_93;
      }

LABEL_117:
      v56 = 0;
      return v56 & 1;
    }
  }

  else if (*(this + 111))
  {
    goto LABEL_49;
  }

  v28 = *(this + 20);
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_93:
  ProGL::GL::getPGLContextHandle(a2, &v68);
  ProGL::ContextHandle::operator=(this + 2, &v68);
  ProGL::ContextHandle::~ContextHandle(&v68);
  *(this + 8) = ProGL::ContextHandle::getVirtualScreen((this + 16));
  Program = glCreateProgram();
  *(this + 2) = Program;
  v48 = *(this + 17);
  if (v48)
  {
    DebugQueueVerboseMask = HGRenderQueue::GetDebugQueueVerboseMask(v48);
    glAttachShader(Program, DebugQueueVerboseMask);
    Program = *(this + 2);
  }

  v50 = *(this + 19);
  if (v50)
  {
    v51 = HGRenderQueue::GetDebugQueueVerboseMask(v50);
    glAttachShader(Program, v51);
    Program = *(this + 2);
  }

  glLinkProgram(Program);
  v52 = *(this + 2);
  LODWORD(v68.__r_.__value_.__l.__data_) = 0;
  glGetProgramiv(v52, 0x8B82u, &v68);
  if (!LODWORD(v68.__r_.__value_.__l.__data_))
  {
    v61 = *(this + 2);
    LODWORD(v68.__r_.__value_.__l.__data_) = 0;
    glGetProgramiv(v61, 0x8B84u, &v68);
    LODWORD(v67.__r_.__value_.__l.__data_) = v68.__r_.__value_.__l.__data_;
    if (SLODWORD(v68.__r_.__value_.__l.__data_) < 2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Error linking program object; error unknown.", 44);
    }

    else
    {
      std::vector<char>::vector[abi:ne200100](&v68, LODWORD(v68.__r_.__value_.__l.__data_));
      glGetProgramInfoLog(*(this + 2), LODWORD(v68.__r_.__value_.__r.__words[1]) - LODWORD(v68.__r_.__value_.__l.__data_), &v67, v68.__r_.__value_.__l.__data_);
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Error linking program object. log is:\n", 38);
      v63 = strlen(v68.__r_.__value_.__l.__data_);
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v68.__r_.__value_.__l.__data_, v63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "\n", 1);
      if (v68.__r_.__value_.__r.__words[0])
      {
        v68.__r_.__value_.__l.__size_ = v68.__r_.__value_.__r.__words[0];
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_117;
  }

  v53 = *(this + 21);
  v54 = *(this + 22);
  if (v53 == v54)
  {
    v56 = 1;
  }

  else
  {
    v55 = MEMORY[0x277D82670];
    v56 = 1;
    do
    {
      if (((*(**v53 + 16))(*v53, a2) & 1) == 0)
      {
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Error setting up program variable: ", 35);
        (*(**v53 + 40))(&v68);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v68;
        }

        else
        {
          v58 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v68.__r_.__value_.__l.__size_;
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "\n", 1);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        v56 = 0;
      }

      ++v53;
    }

    while (v53 != v54);
  }

  return v56 & 1;
}

void sub_25FE5071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ProGL::Program::use(ProGL::Program *this, ProGL::GL *a2)
{
  if (*(this + 216) == 1)
  {
    glUseProgram(*(this + 2));
  }
}

void ProGL::Program::unuse(ProGL::Program *this, ProGL::GL *a2)
{
  if (*(this + 216) == 1)
  {
    glUseProgram(0);
  }
}

uint64_t ProGL::Private::ProgramHandleImpl::ProgramHandleImpl(uint64_t result, void *a2, int a3)
{
  *result = 0;
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  *(result + 8) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 16) = result + 24;
  v4 = a2[1];
  *(result + 48) = *a2;
  *(result + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ProGL::Private::ProgramHandleImpl::prepareProgram(os_unfair_lock_s *this, ProGL::GL *a2, int a3)
{
  v22 = this;
  PCSpinLock::lock(this);
  ProGL::GL::getPGLContextHandle(a2, &v20);
  v19[0] = v20;
  v19[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::find<ProGL::Private::ProgramHandleImpl::ContextKey>(&this[4], v19);
  v7 = &this[6];
  if (&this[6] == v6)
  {
    v8 = 0;
    v18 = 0uLL;
LABEL_9:
    (***&this[12]._os_unfair_lock_opaque)(&v17);
    v10 = v17;
    v17 = 0uLL;
    v18 = v10;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }
    }

    ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::add(&this[2], v19, &v18);
    v9 = v18;
    goto LABEL_13;
  }

  v8 = *&v6[14]._os_unfair_lock_opaque;
  ++*&v6[16]._os_unfair_lock_opaque;
  v9 = *&v6[12]._os_unfair_lock_opaque;
  *&v18 = v9;
  *(&v18 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (*(v9 + 216) != 1)
  {
    v11 = 0;
    goto LABEL_30;
  }

  if (*(v9 + 8))
  {
    v11 = 1;
  }

  else
  {
    v11 = ProGL::Program::build(v9, a2);
    *(v9 + 216) = v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (a3)
  {
    (*(*v18 + 16))(v18, a2);
    v12 = *&this[4]._os_unfair_lock_opaque;
    if (v12 != v7)
    {
      while (*(v12 + 6) != v18)
      {
        v13 = *(v12 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v12 + 2);
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
        if (v14 == v7)
        {
          goto LABEL_29;
        }
      }

      v12[72] = 0;
    }

LABEL_29:
    v11 = 1;
  }

LABEL_30:
  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  ProGL::ContextHandle::~ContextHandle(v19);
  ProGL::ContextHandle::~ContextHandle(&v20);
  if (this)
  {
    PCSpinLock::unlock(this);
  }

  return v11;
}

void sub_25FE50A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  ProGL::ContextHandle::~ContextHandle(va);
  ProGL::ContextHandle::~ContextHandle(va1);
  PCLockSentry<PCSpinLock>::~PCLockSentry((v6 - 56));
  _Unwind_Resume(a1);
}

void ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::add(int *a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 3) >= *a1)
  {
    v6 = a1 + 4;
    do
    {
      v7 = *(a1 + 1);
      if (v7 == v6)
      {
        break;
      }

      v8 = (a1 + 4);
      do
      {
        if (*(v7 + 72) == 1)
        {
          v9 = v7;
          if (v8 != v6)
          {
            if (v7[8] >= v8[8])
            {
              v9 = v8;
            }

            else
            {
              v9 = v7;
            }
          }
        }

        else
        {
          v9 = v8;
        }

        v10 = v7[1];
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
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v8 = v9;
        v7 = v11;
      }

      while (v11 != v6);
      if (v9 == v6)
      {
        break;
      }

      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1 + 1, v9);
      std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,0>((v9 + 4));
      operator delete(v9);
    }

    while (*(a1 + 3) >= *a1);
  }

  v13 = *(a1 + 4) + 1;
  *(a1 + 4) = v13;
  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = a2[1];
  v19[0] = *a2;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v19[2] = v15;
  v20 = v14;
  v21 = v13;
  v22 = 1;
  std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__emplace_unique_key_args<ProGL::Private::ProgramHandleImpl::ContextKey,std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>((a1 + 2), v19);
  v18 = v17;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ProGL::ContextHandle::~ContextHandle(v19);
  if ((v18 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "The inserted item is already present in the map, which shouldn't happen.\n", 73);
  }
}

void ProGL::Private::ProgramHandleImpl::unuse(ProGL::Private::ProgramHandleImpl *this, ProGL::GL *a2)
{
  lock = this;
  PCSpinLock::lock(this);
  ProGL::GL::getPGLContextHandle(a2, &v13);
  v12[0] = v13;
  v12[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::find<ProGL::Private::ProgramHandleImpl::ContextKey>(this + 16, v12);
  v5 = this + 24;
  if ((this + 24) == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v4[7];
    ++v4[8];
    v7 = v4[6];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  (*(*v7 + 24))(v7, a2);
  v8 = *(this + 2);
  if (v8 == v5)
  {
    goto LABEL_19;
  }

  while (*(v8 + 6) != v7)
  {
    v9 = *(v8 + 1);
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = *(v8 + 2);
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (!v11);
    }

    v8 = v10;
    if (v10 == v5)
    {
      goto LABEL_19;
    }
  }

  if (v8[72])
  {
LABEL_19:
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (*(this + 4) < *(this + 2))
  {
    v8[72] = 1;
    goto LABEL_19;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 2, v8);
  std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,0>((v8 + 32));
  operator delete(v8);
  if (v6)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_21:
  ProGL::ContextHandle::~ContextHandle(v12);
  ProGL::ContextHandle::~ContextHandle(&v13);
  if (lock)
  {
    PCSpinLock::unlock(lock);
  }
}

void sub_25FE50D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ProGL::ContextHandle::~ContextHandle(va);
  ProGL::ContextHandle::~ContextHandle(va1);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va2);
  _Unwind_Resume(a1);
}

void ProGL::Private::ProgramHandleImpl::getProgram(os_unfair_lock_s *this@<X0>, ProGL::GL *a2@<X1>, void *a3@<X8>)
{
  v11 = this;
  PCSpinLock::lock(this);
  ProGL::GL::getPGLContextHandle(a2, &v9);
  v8[0] = v9;
  v8[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::find<ProGL::Private::ProgramHandleImpl::ContextKey>(&this[4], v8);
  if (&this[6] == v6)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    ++*&v6[16]._os_unfair_lock_opaque;
    v7 = *&v6[14]._os_unfair_lock_opaque;
    *a3 = *&v6[12]._os_unfair_lock_opaque;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  ProGL::ContextHandle::~ContextHandle(v8);
  ProGL::ContextHandle::~ContextHandle(&v9);
  if (this)
  {
    PCSpinLock::unlock(this);
  }
}

void sub_25FE50E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  ProGL::ContextHandle::~ContextHandle(va);
  ProGL::ContextHandle::~ContextHandle(va1);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va2);
  _Unwind_Resume(a1);
}

uint64_t ProGL::ProgramHandle::use(os_unfair_lock_s **this, ProGL::GL *a2)
{
  v3 = *this;
  if (v3)
  {

    return ProGL::Private::ProgramHandleImpl::prepareProgram(v3, a2, 1);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Can't use an empty program handle.\n", 35);
    return 0;
  }
}

void ProGL::ProgramHandle::unuse(ProGL::Private::ProgramHandleImpl **this, ProGL::GL *a2)
{
  v2 = *this;
  if (v2)
  {
    ProGL::Private::ProgramHandleImpl::unuse(v2, a2);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Can't unuse an empty program handle.\n", 37);
  }
}

ProGL::UseProgramSentry *ProGL::UseProgramSentry::UseProgramSentry(ProGL::UseProgramSentry *this, ProGL::GL *a2, const ProGL::ProgramHandle *a3)
{
  v5 = ProGL::GL::GL(this, a2);
  v6 = *(a3 + 1);
  *(v5 + 40) = *a3;
  *(v5 + 48) = v6;
  v7 = (v5 + 40);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  ProGL::ProgramHandle::use(v7, this);
  return this;
}

void sub_25FE50F7C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ProGL::GL::~GL(v1);
  _Unwind_Resume(a1);
}

void ProGL::UseProgramSentry::~UseProgramSentry(ProGL::Private::ProgramHandleImpl **this)
{
  ProGL::ProgramHandle::unuse(this + 5, this);
  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ProGL::GL::~GL(this);
}

uint64_t ProGL::Private::cleanUpProgram(ProGL::Private *this)
{
  {
    PCSpinLock::~PCSpinLock(v1);
    result = MEMORY[0x2666E9F00]();
  }

  return result;
}

void anonymous namespace::DeleteProgramInstruction::~DeleteProgramInstruction(OZChannelBase *this)
{
  this->var0 = &unk_28723FC98;
  ProGL::ContextHandle::~ContextHandle(&this->var2);

  OZChannelBase::setRangeName(this, v2);
}

{
  this->var0 = &unk_28723FC98;
  ProGL::ContextHandle::~ContextHandle(&this->var2);
  OZChannelBase::setRangeName(this, v2);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::DeleteProgramInstruction::execute(_anonymous_namespace_::DeleteProgramInstruction *this)
{
  ProGL::getDeletionContext(this + 2, *(this + 8), v2);
  ProGL::GL::GL(v3, v2);
  ProGL::ContextHandle::~ContextHandle(v2);
  glDeleteProgram(*(this + 2));
  ProGL::GL::~GL(v3);
}

void sub_25FE511C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>,0>(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 39) < 0)
  {
    v3 = *(a1 + 16);

    operator delete(v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

void sub_25FE51448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<std::string *,std::shared_ptr<std::string>::__shared_ptr_default_delete<std::string,std::string>,std::allocator<std::string>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x2666E9F00);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::StrPtrLess &,std::shared_ptr<std::string> *,false>(const void ***a1, const void ***a2, uint64_t a3, char a4)
{
LABEL_1:
  v348 = a2 - 4;
  v350 = a2 - 2;
  v345 = a2 - 6;
  v7 = a1;
  v352 = a2;
  while (1)
  {
    v8 = v7;
    v9 = (a2 - v7) >> 4;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:

          return;
        case 4uLL:

          return;
        case 5uLL:

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v152 = *(a2 - 2);
        v153 = *v7;
        v154 = *(*v7 + 23);
        v155 = *(v152 + 23);
        if (v155 >= 0)
        {
          v156 = *(v152 + 23);
        }

        else
        {
          v156 = v152[1];
        }

        if (v155 >= 0)
        {
          v157 = v152;
        }

        else
        {
          v157 = *v152;
        }

        if (v154 >= 0)
        {
          v158 = *(*v7 + 23);
        }

        else
        {
          v158 = (*v7)[1];
        }

        if (v154 >= 0)
        {
          v159 = *v7;
        }

        else
        {
          v159 = **v7;
        }

        if (v158 >= v156)
        {
          v160 = v156;
        }

        else
        {
          v160 = v158;
        }

        v161 = memcmp(v157, v159, v160);
        v162 = v156 < v158;
        if (v161)
        {
          v162 = v161 < 0;
        }

        if (v162)
        {
          *v7 = v152;
          *(v352 - 2) = v153;
          v163 = v7[1];
          v7[1] = *(v352 - 1);
          *(v352 - 1) = v163;
        }

        return;
      }
    }

    v361 = v7;
    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v198 = (v9 - 2) >> 1;
      v199 = v198;
      v363 = (a2 - v7) >> 4;
      v351 = v198;
      do
      {
        v200 = v199;
        if (v198 >= v199)
        {
          v201 = (2 * v199) | 1;
          v202 = &v8[2 * v201];
          v203 = 2 * v199 + 2;
          v349 = v199;
          if (v203 >= v9)
          {
            v218 = *v202;
            v217 = **v202;
          }

          else
          {
            v358 = &v8[2 * v201];
            v204 = *v202;
            v205 = v358[2];
            v206 = *(v205 + 23);
            v207 = *v205;
            v208 = *(v204 + 23);
            v346 = *v204;
            if (v208 >= 0)
            {
              v209 = *(v204 + 23);
            }

            else
            {
              v209 = v204[1];
            }

            if (v208 >= 0)
            {
              v210 = v204;
            }

            else
            {
              v210 = *v204;
            }

            if (v206 >= 0)
            {
              v211 = *(v205 + 23);
            }

            else
            {
              v211 = v205[1];
            }

            if (v206 >= 0)
            {
              v212 = v358[2];
            }

            else
            {
              v212 = *v205;
            }

            if (v211 >= v209)
            {
              v213 = v209;
            }

            else
            {
              v213 = v211;
            }

            v214 = memcmp(v210, v212, v213);
            v215 = v209 < v211;
            if (v214)
            {
              v215 = v214 < 0;
            }

            v216 = !v215;
            v217 = v346;
            if (v216)
            {
              v218 = v204;
            }

            else
            {
              v217 = v207;
              v218 = v205;
            }

            v202 = &v8[2 * v201];
            v200 = v349;
            if (!v216)
            {
              v202 = v358 + 2;
              v201 = v203;
            }
          }

          v219 = &v8[2 * v200];
          v220 = *(*v219 + 23);
          v221 = *(v218 + 23);
          if (v221 >= 0)
          {
            v222 = *(v218 + 23);
          }

          else
          {
            v222 = v218[1];
          }

          if (v221 >= 0)
          {
            v223 = v218;
          }

          else
          {
            v223 = v217;
          }

          if (v220 >= 0)
          {
            v224 = *(*v219 + 23);
          }

          else
          {
            v224 = (*v219)[1];
          }

          v355 = *v219;
          if (v220 >= 0)
          {
            v225 = *v219;
          }

          else
          {
            v225 = **v219;
          }

          if (v224 >= v222)
          {
            v226 = v222;
          }

          else
          {
            v226 = v224;
          }

          v227 = memcmp(v223, v225, v226);
          v228 = v222 < v224;
          if (v227)
          {
            v228 = v227 < 0;
          }

          a2 = v352;
          if (!v228)
          {
            v347 = v219[1];
            *v219 = 0;
            v219[1] = 0;
            v229 = *v202;
            do
            {
              v230 = v202;
              v231 = v202[1];
              *v202 = 0;
              v202[1] = 0;
              v232 = v219[1];
              *v219 = v229;
              v219[1] = v231;
              if (v232)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v232);
              }

              if (v198 < v201)
              {
                break;
              }

              v233 = (2 * v201) | 1;
              v202 = &v8[2 * v233];
              v201 = 2 * v201 + 2;
              if (v201 >= v9)
              {
                v229 = *v202;
                v248 = **v202;
                v201 = v233;
              }

              else
              {
                v234 = *v202;
                v235 = v202 + 2;
                v229 = v202[2];
                v236 = *(v229 + 23);
                v237 = *v229;
                v238 = *(*v202 + 23);
                v239 = **v202;
                if (v238 >= 0)
                {
                  v240 = *(*v202 + 23);
                }

                else
                {
                  v240 = (*v202)[1];
                }

                if (v238 >= 0)
                {
                  v241 = *v202;
                }

                else
                {
                  v241 = **v202;
                }

                v359 = v202;
                if (v236 >= 0)
                {
                  v242 = *(v229 + 23);
                }

                else
                {
                  v242 = v229[1];
                }

                if (v236 >= 0)
                {
                  v243 = v229;
                }

                else
                {
                  v243 = *v229;
                }

                if (v242 >= v240)
                {
                  v244 = v240;
                }

                else
                {
                  v244 = v242;
                }

                v245 = memcmp(v241, v243, v244);
                v84 = v240 >= v242;
                v202 = v359;
                v198 = v351;
                v246 = !v84;
                if (v245)
                {
                  v246 = v245 < 0;
                }

                v247 = !v246;
                if (v246)
                {
                  v248 = v237;
                }

                else
                {
                  v248 = v239;
                }

                if (v247)
                {
                  v229 = v234;
                }

                if (!v247)
                {
                  v202 = v235;
                }

                v8 = v361;
                v9 = v363;
                if (v247)
                {
                  v201 = v233;
                }
              }

              v249 = *(v355 + 23);
              v250 = *(v229 + 23);
              if (v250 >= 0)
              {
                v251 = *(v229 + 23);
              }

              else
              {
                v251 = v229[1];
              }

              if (v250 >= 0)
              {
                v252 = v229;
              }

              else
              {
                v252 = v248;
              }

              if (v249 >= 0)
              {
                v253 = *(v355 + 23);
              }

              else
              {
                v253 = v355[1];
              }

              if (v249 >= 0)
              {
                v254 = v355;
              }

              else
              {
                v254 = *v355;
              }

              if (v253 >= v251)
              {
                v255 = v251;
              }

              else
              {
                v255 = v253;
              }

              v256 = memcmp(v252, v254, v255);
              v257 = v251 < v253;
              if (v256)
              {
                v257 = v256 < 0;
              }

              v219 = v230;
            }

            while (!v257);
            v258 = v230[1];
            a2 = v352;
            v200 = v349;
            *v230 = v355;
            v230[1] = v347;
            if (v258)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v258);
            }
          }
        }

        v199 = v200 - 1;
      }

      while (v200);
      while (2)
      {
        v259 = 0;
        v353 = *v8;
        v356 = a2;
        v360 = v8[1];
        *v8 = 0;
        v8[1] = 0;
        v260 = (v9 - 2) >> 1;
        v364 = v9;
        do
        {
          v261 = &v8[2 * v259];
          v262 = v261 + 2;
          v263 = (2 * v259) | 1;
          v259 = 2 * v259 + 2;
          if (v259 >= v9)
          {
            v280 = *v262;
            v259 = v263;
          }

          else
          {
            v266 = v261[4];
            v265 = v261 + 4;
            v264 = v266;
            v267 = *(v265 - 2);
            v268 = *(v266 + 23);
            v269 = *v266;
            v270 = v266[1];
            v271 = *(v267 + 23);
            if (v271 >= 0)
            {
              v272 = *(v267 + 23);
            }

            else
            {
              v272 = *(v267 + 8);
            }

            if (v271 >= 0)
            {
              v273 = *(v265 - 2);
            }

            else
            {
              v273 = *v267;
            }

            if ((v268 & 0x80u) == 0)
            {
              v274 = v268;
            }

            else
            {
              v274 = v270;
            }

            if ((v268 & 0x80u) == 0)
            {
              v275 = v264;
            }

            else
            {
              v275 = v269;
            }

            if (v274 >= v272)
            {
              v276 = v272;
            }

            else
            {
              v276 = v274;
            }

            v277 = memcmp(v273, v275, v276);
            v84 = v272 >= v274;
            v9 = v364;
            v278 = !v84;
            if (v277)
            {
              v278 = v277 < 0;
            }

            v279 = !v278;
            if (v278)
            {
              v280 = v264;
            }

            else
            {
              v280 = v267;
            }

            if (v279)
            {
              v259 = v263;
            }

            else
            {
              v262 = v265;
            }
          }

          v281 = v262[1];
          *v262 = 0;
          v262[1] = 0;
          v282 = v8[1];
          *v8 = v280;
          v8[1] = v281;
          if (v282)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v282);
          }

          v8 = v262;
        }

        while (v259 <= v260);
        if (v262 != v356 - 2)
        {
          v283 = *(v356 - 1);
          *(v356 - 2) = 0;
          *(v356 - 1) = 0;
          v284 = v262[1];
          *v262 = v283;
          v8 = v361;
          if (v284)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v284);
          }

          v285 = *(v356 - 1);
          *(v356 - 2) = v353;
          *(v356 - 1) = v360;
          if (v285)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v285);
          }

          v286 = ((v262 + 2) - v361) >> 4;
          v287 = v286 < 2;
          v288 = v286 - 2;
          if (!v287)
          {
            v289 = v288 >> 1;
            v290 = &v361[2 * (v288 >> 1)];
            v291 = *v262;
            v292 = *(*v262 + 23);
            v293 = *(*v290 + 23);
            if (v293 >= 0)
            {
              v294 = *(*v290 + 23);
            }

            else
            {
              v294 = (*v290)[1];
            }

            if (v293 >= 0)
            {
              v295 = *v290;
            }

            else
            {
              v295 = **v290;
            }

            if (v292 >= 0)
            {
              v296 = *(*v262 + 23);
            }

            else
            {
              v296 = (*v262)[1];
            }

            if (v292 >= 0)
            {
              v297 = *v262;
            }

            else
            {
              v297 = **v262;
            }

            if (v296 >= v294)
            {
              v298 = v294;
            }

            else
            {
              v298 = v296;
            }

            v299 = memcmp(v295, v297, v298);
            v300 = v294 < v296;
            if (v299)
            {
              v300 = v299 < 0;
            }

            if (v300)
            {
              v301 = v262[1];
              *v262 = 0;
              v262[1] = 0;
              v302 = *v290;
              do
              {
                v303 = v290;
                v304 = v290[1];
                *v290 = 0;
                v290[1] = 0;
                v305 = v262[1];
                *v262 = v302;
                v262[1] = v304;
                if (v305)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v305);
                }

                if (!v289)
                {
                  break;
                }

                v289 = (v289 - 1) >> 1;
                v290 = &v361[2 * v289];
                v302 = *v290;
                v306 = *(v291 + 23);
                v307 = *(*v290 + 23);
                if (v307 >= 0)
                {
                  v308 = *(*v290 + 23);
                }

                else
                {
                  v308 = (*v290)[1];
                }

                if (v307 >= 0)
                {
                  v309 = *v290;
                }

                else
                {
                  v309 = **v290;
                }

                if (v306 >= 0)
                {
                  v310 = *(v291 + 23);
                }

                else
                {
                  v310 = v291[1];
                }

                if (v306 >= 0)
                {
                  v311 = v291;
                }

                else
                {
                  v311 = *v291;
                }

                if (v310 >= v308)
                {
                  v312 = v308;
                }

                else
                {
                  v312 = v310;
                }

                v313 = memcmp(v309, v311, v312);
                v314 = v308 < v310;
                if (v313)
                {
                  v314 = v313 < 0;
                }

                v262 = v303;
              }

              while (v314);
              v315 = v303[1];
              *v303 = v291;
              v303[1] = v301;
LABEL_490:
              v8 = v361;
              if (v315)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v315);
              }
            }
          }

          v9 = v364 - 1;
          a2 = v356 - 2;
          if (v364 <= 2)
          {
            return;
          }

          continue;
        }

        break;
      }

      v315 = v262[1];
      *v262 = v353;
      v262[1] = v360;
      goto LABEL_490;
    }

    v10 = &v7[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
    }

    else
    {
      v11 = *v8;
      *v8 = *v10;
      *v10 = v11;
    }

    --a3;
    v12 = *v8;
    if (a4)
    {
      goto LABEL_33;
    }

    v13 = *(v8 - 2);
    v14 = *(v12 + 23);
    v15 = *(v13 + 23);
    if (v15 >= 0)
    {
      v16 = *(v13 + 23);
    }

    else
    {
      v16 = *(v13 + 8);
    }

    if (v15 >= 0)
    {
      v17 = *(v8 - 2);
    }

    else
    {
      v17 = *v13;
    }

    if (v14 >= 0)
    {
      v18 = *(v12 + 23);
    }

    else
    {
      v18 = v12[1];
    }

    if (v14 >= 0)
    {
      v19 = *v8;
    }

    else
    {
      v19 = *v12;
    }

    if (v18 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v18;
    }

    v21 = memcmp(v17, v19, v20);
    v22 = v16 < v18;
    if (v21)
    {
      v22 = v21 < 0;
    }

    if (v22)
    {
LABEL_33:
      v362 = a3;
      v23 = 0;
      v357 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      v24 = *(v12 + 23);
      if (v24 >= 0)
      {
        v25 = *(v12 + 23);
      }

      else
      {
        v25 = v12[1];
      }

      if (v24 >= 0)
      {
        v26 = v12;
      }

      else
      {
        v26 = *v12;
      }

      do
      {
        v27 = v8[v23 + 2];
        v28 = *(v27 + 23);
        if (v28 >= 0)
        {
          v29 = *(v27 + 23);
        }

        else
        {
          v29 = v27[1];
        }

        if (v28 >= 0)
        {
          v30 = v8[v23 + 2];
        }

        else
        {
          v30 = *v27;
        }

        if (v25 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v25;
        }

        v32 = memcmp(v30, v26, v31);
        v33 = v29 < v25;
        if (v32)
        {
          v33 = v32 < 0;
        }

        v23 += 2;
      }

      while (v33);
      v34 = &v8[v23];
      v35 = a2;
      if (v23 == 2)
      {
        v35 = a2;
        do
        {
          if (v34 >= v35)
          {
            break;
          }

          v47 = *(v35 - 2);
          v35 -= 2;
          v46 = v47;
          v48 = *(v47 + 23);
          v50 = *v47;
          v49 = v47[1];
          if ((v48 & 0x80u) == 0)
          {
            v51 = v48;
          }

          else
          {
            v51 = v49;
          }

          if ((v48 & 0x80u) == 0)
          {
            v52 = v46;
          }

          else
          {
            v52 = v50;
          }

          if (v25 >= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = v25;
          }

          v54 = memcmp(v52, v26, v53);
          v55 = v51 < v25;
          if (v54)
          {
            v55 = v54 < 0;
          }
        }

        while (!v55);
      }

      else
      {
        do
        {
          v37 = *(v35 - 2);
          v35 -= 2;
          v36 = v37;
          v38 = *(v37 + 23);
          v40 = *v37;
          v39 = v37[1];
          if ((v38 & 0x80u) == 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = v39;
          }

          if ((v38 & 0x80u) == 0)
          {
            v42 = v36;
          }

          else
          {
            v42 = v40;
          }

          if (v25 >= v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v25;
          }

          v44 = memcmp(v42, v26, v43);
          v45 = v41 < v25;
          if (v44)
          {
            v45 = v44 < 0;
          }
        }

        while (!v45);
      }

      if (v34 >= v35)
      {
        v7 = v34;
      }

      else
      {
        v56 = *v35;
        v7 = v34;
        v57 = v35;
        do
        {
          *v7 = v56;
          *v57 = v27;
          v58 = v7[1];
          v7[1] = v57[1];
          v57[1] = v58;
          v59 = *(v12 + 23);
          if (v59 >= 0)
          {
            v60 = *(v12 + 23);
          }

          else
          {
            v60 = v12[1];
          }

          if (v59 >= 0)
          {
            v61 = v12;
          }

          else
          {
            v61 = *v12;
          }

          do
          {
            v62 = v7[2];
            v7 += 2;
            v27 = v62;
            v63 = *(v62 + 23);
            v65 = *v62;
            v64 = v62[1];
            if ((v63 & 0x80u) == 0)
            {
              v66 = v63;
            }

            else
            {
              v66 = v64;
            }

            if ((v63 & 0x80u) == 0)
            {
              v67 = v27;
            }

            else
            {
              v67 = v65;
            }

            if (v60 >= v66)
            {
              v68 = v66;
            }

            else
            {
              v68 = v60;
            }

            v69 = memcmp(v67, v61, v68);
            v70 = v66 < v60;
            if (v69)
            {
              v70 = v69 < 0;
            }
          }

          while (v70);
          do
          {
            v71 = *(v57 - 2);
            v57 -= 2;
            v56 = v71;
            v72 = *(v71 + 23);
            v74 = *v71;
            v73 = *(v71 + 8);
            if ((v72 & 0x80u) == 0)
            {
              v75 = v72;
            }

            else
            {
              v75 = v73;
            }

            if ((v72 & 0x80u) == 0)
            {
              v76 = v56;
            }

            else
            {
              v76 = v74;
            }

            if (v60 >= v75)
            {
              v77 = v75;
            }

            else
            {
              v77 = v60;
            }

            v78 = memcmp(v76, v61, v77);
            v79 = v75 < v60;
            if (v78)
            {
              v79 = v78 < 0;
            }
          }

          while (!v79);
        }

        while (v7 < v57);
      }

      v80 = v7 - 2;
      if (v7 - 2 != v361)
      {
        v81 = *v80;
        *v80 = 0;
        *(v7 - 1) = 0;
        v82 = v361[1];
        *v361 = v81;
        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }
      }

      v83 = *(v7 - 1);
      *(v7 - 2) = v12;
      *(v7 - 1) = v357;
      a2 = v352;
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      v84 = v34 >= v35;
      a1 = v361;
      a3 = v362;
      if (!v84)
      {
        goto LABEL_123;
      }

      {
        a2 = v7 - 2;
        if (v85)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v85)
      {
LABEL_123:
        a4 = 0;
      }
    }

    else
    {
      v86 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      v87 = *(*v350 + 23);
      v88 = *(v12 + 23);
      if (v88 >= 0)
      {
        v89 = *(v12 + 23);
      }

      else
      {
        v89 = v12[1];
      }

      v7 = v8;
      if (v88 >= 0)
      {
        v90 = v12;
      }

      else
      {
        v90 = *v12;
      }

      if (v87 >= 0)
      {
        v91 = *(*v350 + 23);
      }

      else
      {
        v91 = (*v350)[1];
      }

      if (v87 >= 0)
      {
        v92 = *v350;
      }

      else
      {
        v92 = **v350;
      }

      if (v91 >= v89)
      {
        v93 = v89;
      }

      else
      {
        v93 = v91;
      }

      v94 = memcmp(v90, v92, v93);
      v95 = v89 < v91;
      if (v94)
      {
        v95 = v94 < 0;
      }

      if (v95)
      {
        do
        {
          v97 = v7[2];
          v7 += 2;
          v96 = v97;
          v98 = *(v97 + 23);
          v99 = *v97;
          v100 = v97[1];
          if ((v98 & 0x80u) == 0)
          {
            v101 = v98;
          }

          else
          {
            v101 = v100;
          }

          if ((v98 & 0x80u) == 0)
          {
            v102 = v96;
          }

          else
          {
            v102 = v99;
          }

          if (v101 >= v89)
          {
            v103 = v89;
          }

          else
          {
            v103 = v101;
          }

          v104 = memcmp(v90, v102, v103);
          v105 = v89 < v101;
          if (v104)
          {
            v105 = v104 < 0;
          }
        }

        while (!v105);
      }

      else
      {
        v106 = v7 + 2;
        do
        {
          v7 = v106;
          if (v106 >= a2)
          {
            break;
          }

          v106 += 2;
          v107 = *(*v7 + 23);
          if (v107 >= 0)
          {
            v108 = *(*v7 + 23);
          }

          else
          {
            v108 = (*v7)[1];
          }

          if (v107 >= 0)
          {
            v109 = *v7;
          }

          else
          {
            v109 = **v7;
          }

          if (v108 >= v89)
          {
            v110 = v89;
          }

          else
          {
            v110 = v108;
          }

          v111 = memcmp(v90, v109, v110);
          v112 = v89 < v108;
          if (v111)
          {
            v112 = v111 < 0;
          }
        }

        while (!v112);
      }

      v113 = a2;
      if (v7 < a2)
      {
        v113 = a2;
        do
        {
          v115 = *(v113 - 2);
          v113 -= 2;
          v114 = v115;
          v116 = *(v115 + 23);
          v117 = *v115;
          v118 = v115[1];
          if ((v116 & 0x80u) == 0)
          {
            v119 = v116;
          }

          else
          {
            v119 = v118;
          }

          if ((v116 & 0x80u) == 0)
          {
            v120 = v114;
          }

          else
          {
            v120 = v117;
          }

          if (v119 >= v89)
          {
            v121 = v89;
          }

          else
          {
            v121 = v119;
          }

          v122 = memcmp(v90, v120, v121);
          v123 = v89 < v119;
          if (v122)
          {
            v123 = v122 < 0;
          }
        }

        while (v123);
      }

      if (v7 < v113)
      {
        v124 = *v7;
        v125 = *v113;
        do
        {
          *v7 = v125;
          *v113 = v124;
          v126 = v7[1];
          v7[1] = v113[1];
          v113[1] = v126;
          v127 = *(v12 + 23);
          if (v127 >= 0)
          {
            v128 = *(v12 + 23);
          }

          else
          {
            v128 = v12[1];
          }

          if (v127 >= 0)
          {
            v129 = v12;
          }

          else
          {
            v129 = *v12;
          }

          do
          {
            v130 = v7[2];
            v7 += 2;
            v124 = v130;
            v131 = *(v130 + 23);
            v132 = *v130;
            v133 = v130[1];
            if ((v131 & 0x80u) == 0)
            {
              v134 = v131;
            }

            else
            {
              v134 = v133;
            }

            if ((v131 & 0x80u) == 0)
            {
              v135 = v124;
            }

            else
            {
              v135 = v132;
            }

            if (v134 >= v128)
            {
              v136 = v128;
            }

            else
            {
              v136 = v134;
            }

            v137 = memcmp(v129, v135, v136);
            v138 = v128 < v134;
            if (v137)
            {
              v138 = v137 < 0;
            }
          }

          while (!v138);
          do
          {
            v139 = *(v113 - 2);
            v113 -= 2;
            v125 = v139;
            v140 = *(v139 + 23);
            v141 = *v139;
            v142 = *(v139 + 8);
            if ((v140 & 0x80u) == 0)
            {
              v143 = v140;
            }

            else
            {
              v143 = v142;
            }

            if ((v140 & 0x80u) == 0)
            {
              v144 = v125;
            }

            else
            {
              v144 = v141;
            }

            if (v143 >= v128)
            {
              v145 = v128;
            }

            else
            {
              v145 = v143;
            }

            v146 = memcmp(v129, v144, v145);
            v147 = v128 < v143;
            if (v146)
            {
              v147 = v146 < 0;
            }
          }

          while (v147);
        }

        while (v7 < v113);
      }

      v148 = v7 - 2;
      if (v7 - 2 != v361)
      {
        v149 = *v148;
        *v148 = 0;
        *(v7 - 1) = 0;
        v150 = v361[1];
        *v361 = v149;
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v150);
        }
      }

      a4 = 0;
      v151 = *(v7 - 1);
      *(v7 - 2) = v12;
      *(v7 - 1) = v86;
      a2 = v352;
      if (v151)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v151);
        a4 = 0;
      }
    }
  }

  v164 = v7 + 2;
  v166 = v7 == a2 || v164 == a2;
  if (a4)
  {
    if (!v166)
    {
      v167 = 0;
      v168 = v7;
      do
      {
        v169 = v168;
        v168 = v164;
        v170 = v169[2];
        v171 = *v169;
        v172 = *(*v169 + 23);
        v173 = *(v170 + 23);
        if (v173 >= 0)
        {
          v174 = *(v170 + 23);
        }

        else
        {
          v174 = v170[1];
        }

        if (v173 >= 0)
        {
          v175 = v169[2];
        }

        else
        {
          v175 = *v170;
        }

        if (v172 >= 0)
        {
          v176 = *(*v169 + 23);
        }

        else
        {
          v176 = (*v169)[1];
        }

        if (v172 >= 0)
        {
          v177 = *v169;
        }

        else
        {
          v177 = **v169;
        }

        if (v176 >= v174)
        {
          v178 = v174;
        }

        else
        {
          v178 = v176;
        }

        v179 = memcmp(v175, v177, v178);
        v180 = v174 < v176;
        if (v179)
        {
          v180 = v179 < 0;
        }

        if (v180)
        {
          v181 = v169[3];
          v182 = v167;
          *v168 = 0;
          v168[1] = 0;
          v183 = v361;
          while (1)
          {
            v184 = (v183 + v182);
            v185 = *(v183 + v182 + 8);
            *v184 = 0;
            v184[1] = 0;
            v186 = *(v183 + v182 + 24);
            v184[2] = v171;
            v184[3] = v185;
            if (v186)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v186);
            }

            if (!v182)
            {
              break;
            }

            v183 = v361;
            v171 = *(v361 + v182 - 16);
            v187 = *(v171 + 23);
            v188 = *(v170 + 23);
            if (v188 >= 0)
            {
              v189 = *(v170 + 23);
            }

            else
            {
              v189 = v170[1];
            }

            if (v188 >= 0)
            {
              v190 = v170;
            }

            else
            {
              v190 = *v170;
            }

            if (v187 >= 0)
            {
              v191 = *(v171 + 23);
            }

            else
            {
              v191 = v171[1];
            }

            if (v187 >= 0)
            {
              v192 = *(v361 + v182 - 16);
            }

            else
            {
              v192 = *v171;
            }

            if (v191 >= v189)
            {
              v193 = v189;
            }

            else
            {
              v193 = v191;
            }

            v194 = memcmp(v190, v192, v193);
            v195 = v189 < v191;
            if (v194)
            {
              v195 = v194 < 0;
            }

            v182 -= 16;
            if (!v195)
            {
              v196 = (v361 + v182 + 16);
              goto LABEL_302;
            }
          }

          v196 = v361;
LABEL_302:
          v197 = v196[1];
          *v196 = v170;
          v196[1] = v181;
          if (v197)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v197);
          }
        }

        v164 = v168 + 2;
        v167 += 16;
      }

      while (v168 + 2 != v352);
    }
  }

  else if (!v166)
  {
    v316 = (v7 + 3);
    do
    {
      v317 = v8;
      v318 = v164;
      v319 = v8[2];
      v320 = *v8;
      v321 = *(*v8 + 23);
      v322 = **v8;
      shared_weak_owners_high = SHIBYTE(v319->__shared_weak_owners_);
      if (shared_weak_owners_high >= 0)
      {
        shared_owners = HIBYTE(v319->__shared_weak_owners_);
      }

      else
      {
        shared_owners = v319->__shared_owners_;
      }

      if (shared_weak_owners_high >= 0)
      {
        v325 = v8[2];
      }

      else
      {
        v325 = v319->__vftable;
      }

      if (v321 >= 0)
      {
        v326 = *(*v8 + 23);
      }

      else
      {
        v326 = (*v8)[1];
      }

      if (v321 >= 0)
      {
        v327 = v320;
      }

      else
      {
        v327 = v322;
      }

      if (v326 >= shared_owners)
      {
        v328 = shared_owners;
      }

      else
      {
        v328 = v326;
      }

      v329 = memcmp(v325, v327, v328);
      v330 = shared_owners < v326;
      if (v329)
      {
        v330 = v329 < 0;
      }

      if (v330)
      {
        v331 = v317[3];
        v332 = v316;
        *v318 = 0;
        v318[1] = 0;
        do
        {
          v333 = *(v332 - 2);
          *(v332 - 3) = 0;
          *(v332 - 2) = 0;
          v334 = *v332;
          *(v332 - 1) = v320;
          *v332 = v333;
          if (v334)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v334);
          }

          v320 = *(v332 - 5);
          v335 = *(v320 + 23);
          v336 = SHIBYTE(v319->__shared_weak_owners_);
          if (v336 >= 0)
          {
            v337 = HIBYTE(v319->__shared_weak_owners_);
          }

          else
          {
            v337 = v319->__shared_owners_;
          }

          if (v336 >= 0)
          {
            v338 = v319;
          }

          else
          {
            v338 = v319->__vftable;
          }

          if (v335 >= 0)
          {
            v339 = *(v320 + 23);
          }

          else
          {
            v339 = v320[1];
          }

          if (v335 >= 0)
          {
            v340 = *(v332 - 5);
          }

          else
          {
            v340 = *v320;
          }

          if (v339 >= v337)
          {
            v341 = v337;
          }

          else
          {
            v341 = v339;
          }

          v342 = memcmp(v338, v340, v341);
          v343 = v337 < v339;
          if (v342)
          {
            v343 = v342 < 0;
          }

          v332 -= 2;
        }

        while (v343);
        v344 = *v332;
        *(v332 - 1) = v319;
        *v332 = v331;
        if (v344)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v344);
        }
      }

      v164 = v318 + 2;
      v316 += 2;
      v8 = v318;
    }

    while (v318 + 2 != v352);
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::StrPtrLess &,std::shared_ptr<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *(*a1 + 23);
  v9 = *(*a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(*a2 + 23);
  }

  else
  {
    v10 = (*a2)[1];
  }

  if (v9 >= 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = **a2;
  }

  if (v8 >= 0)
  {
    v12 = *(*a1 + 23);
  }

  else
  {
    v12 = (*a1)[1];
  }

  if (v8 >= 0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = **a1;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  if (v15)
  {
    v16 = v15 < 0;
  }

  else
  {
    v16 = v10 < v12;
  }

  v17 = *a3;
  v18 = *(*a3 + 23);
  if (v18 >= 0)
  {
    v19 = *(*a3 + 23);
  }

  else
  {
    v19 = (*a3)[1];
  }

  if (v18 >= 0)
  {
    v20 = *a3;
  }

  else
  {
    v20 = **a3;
  }

  if (v10 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v10;
  }

  result = memcmp(v20, v11, v21);
  v23 = v19 < v10;
  if (result)
  {
    v23 = result < 0;
  }

  if (v16)
  {
    if (v23)
    {
      *a1 = v17;
      v24 = a1 + 1;
      *a3 = v7;
      v25 = a3 + 1;
LABEL_72:
      v27 = v25;
      goto LABEL_73;
    }

    *a1 = v6;
    *a2 = v7;
    v38 = a1[1];
    a1[1] = a2[1];
    a2[1] = v38;
    v39 = *a3;
    v40 = *a2;
    v41 = *(*a2 + 23);
    v42 = *(*a3 + 23);
    if (v42 >= 0)
    {
      v43 = *(*a3 + 23);
    }

    else
    {
      v43 = (*a3)[1];
    }

    if (v42 >= 0)
    {
      v44 = *a3;
    }

    else
    {
      v44 = **a3;
    }

    if (v41 >= 0)
    {
      v45 = *(*a2 + 23);
    }

    else
    {
      v45 = (*a2)[1];
    }

    if (v41 >= 0)
    {
      v46 = *a2;
    }

    else
    {
      v46 = **a2;
    }

    if (v45 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    result = memcmp(v44, v46, v47);
    v48 = v43 < v45;
    if (result)
    {
      v48 = result < 0;
    }

    if (v48)
    {
      *a2 = v39;
      *a3 = v40;
      v25 = a3 + 1;
      v24 = a2 + 1;
      goto LABEL_72;
    }
  }

  else if (v23)
  {
    *a2 = v17;
    *a3 = v6;
    v27 = a2 + 1;
    v26 = a2[1];
    a2[1] = a3[1];
    a3[1] = v26;
    v28 = *a2;
    v29 = *a1;
    v30 = *(*a1 + 23);
    v31 = *(*a2 + 23);
    if (v31 >= 0)
    {
      v32 = *(*a2 + 23);
    }

    else
    {
      v32 = (*a2)[1];
    }

    if (v31 >= 0)
    {
      v33 = *a2;
    }

    else
    {
      v33 = **a2;
    }

    if (v30 >= 0)
    {
      v34 = *(*a1 + 23);
    }

    else
    {
      v34 = (*a1)[1];
    }

    if (v30 >= 0)
    {
      v35 = *a1;
    }

    else
    {
      v35 = **a1;
    }

    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    result = memcmp(v33, v35, v36);
    v37 = v32 < v34;
    if (result)
    {
      v37 = result < 0;
    }

    if (v37)
    {
      *a1 = v28;
      v24 = a1 + 1;
      *a2 = v29;
LABEL_73:
      v49 = *v24;
      *v24 = *v27;
      *v27 = v49;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::StrPtrLess &,std::shared_ptr<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4)
{
  v8 = *a4;
  v9 = *a3;
  v10 = *(*a3 + 23);
  v11 = *(*a4 + 23);
  if (v11 >= 0)
  {
    v12 = *(*a4 + 23);
  }

  else
  {
    v12 = (*a4)[1];
  }

  if (v11 >= 0)
  {
    v13 = *a4;
  }

  else
  {
    v13 = **a4;
  }

  if (v10 >= 0)
  {
    v14 = *(*a3 + 23);
  }

  else
  {
    v14 = (*a3)[1];
  }

  if (v10 >= 0)
  {
    v15 = *a3;
  }

  else
  {
    v15 = **a3;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  result = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (result)
  {
    v18 = result < 0;
  }

  if (v18)
  {
    *a3 = v8;
    *a4 = v9;
    v19 = a3[1];
    a3[1] = a4[1];
    a4[1] = v19;
    v20 = *a3;
    v21 = *a2;
    v22 = *(*a2 + 23);
    v23 = *(*a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(*a3 + 23);
    }

    else
    {
      v24 = (*a3)[1];
    }

    if (v23 >= 0)
    {
      v25 = *a3;
    }

    else
    {
      v25 = **a3;
    }

    if (v22 >= 0)
    {
      v26 = *(*a2 + 23);
    }

    else
    {
      v26 = (*a2)[1];
    }

    if (v22 >= 0)
    {
      v27 = *a2;
    }

    else
    {
      v27 = **a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    result = memcmp(v25, v27, v28);
    v29 = v24 < v26;
    if (result)
    {
      v29 = result < 0;
    }

    if (v29)
    {
      *a2 = v20;
      *a3 = v21;
      v30 = a2[1];
      a2[1] = a3[1];
      a3[1] = v30;
      v31 = *a2;
      v32 = *a1;
      v33 = *(*a1 + 23);
      v34 = *(*a2 + 23);
      if (v34 >= 0)
      {
        v35 = *(*a2 + 23);
      }

      else
      {
        v35 = (*a2)[1];
      }

      if (v34 >= 0)
      {
        v36 = *a2;
      }

      else
      {
        v36 = **a2;
      }

      if (v33 >= 0)
      {
        v37 = *(*a1 + 23);
      }

      else
      {
        v37 = (*a1)[1];
      }

      if (v33 >= 0)
      {
        v38 = *a1;
      }

      else
      {
        v38 = **a1;
      }

      if (v37 >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = v37;
      }

      result = memcmp(v36, v38, v39);
      v40 = v35 < v37;
      if (result)
      {
        v40 = result < 0;
      }

      if (v40)
      {
        *a1 = v31;
        *a2 = v32;
        v41 = a1[1];
        a1[1] = a2[1];
        a2[1] = v41;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::StrPtrLess &,std::shared_ptr<std::string> *,0>(const void ***a1, const void ***a2, const void ***a3, const void ***a4, const void ***a5)
{
  v10 = *a5;
  v11 = *a4;
  v12 = *(*a4 + 23);
  v13 = *(*a5 + 23);
  if (v13 >= 0)
  {
    v14 = *(*a5 + 23);
  }

  else
  {
    v14 = (*a5)[1];
  }

  if (v13 >= 0)
  {
    v15 = *a5;
  }

  else
  {
    v15 = **a5;
  }

  if (v12 >= 0)
  {
    v16 = *(*a4 + 23);
  }

  else
  {
    v16 = (*a4)[1];
  }

  if (v12 >= 0)
  {
    v17 = *a4;
  }

  else
  {
    v17 = **a4;
  }

  if (v16 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  result = memcmp(v15, v17, v18);
  v20 = v14 < v16;
  if (result)
  {
    v20 = result < 0;
  }

  if (v20)
  {
    *a4 = v10;
    *a5 = v11;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a4;
    v23 = *a3;
    v24 = *(*a3 + 23);
    v25 = *(*a4 + 23);
    if (v25 >= 0)
    {
      v26 = *(*a4 + 23);
    }

    else
    {
      v26 = (*a4)[1];
    }

    if (v25 >= 0)
    {
      v27 = *a4;
    }

    else
    {
      v27 = **a4;
    }

    if (v24 >= 0)
    {
      v28 = *(*a3 + 23);
    }

    else
    {
      v28 = (*a3)[1];
    }

    if (v24 >= 0)
    {
      v29 = *a3;
    }

    else
    {
      v29 = **a3;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    result = memcmp(v27, v29, v30);
    v31 = v26 < v28;
    if (result)
    {
      v31 = result < 0;
    }

    if (v31)
    {
      *a3 = v22;
      *a4 = v23;
      v32 = a3[1];
      a3[1] = a4[1];
      a4[1] = v32;
      v33 = *a3;
      v34 = *a2;
      v35 = *(*a2 + 23);
      v36 = *(*a3 + 23);
      if (v36 >= 0)
      {
        v37 = *(*a3 + 23);
      }

      else
      {
        v37 = (*a3)[1];
      }

      if (v36 >= 0)
      {
        v38 = *a3;
      }

      else
      {
        v38 = **a3;
      }

      if (v35 >= 0)
      {
        v39 = *(*a2 + 23);
      }

      else
      {
        v39 = (*a2)[1];
      }

      if (v35 >= 0)
      {
        v40 = *a2;
      }

      else
      {
        v40 = **a2;
      }

      if (v39 >= v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = v39;
      }

      result = memcmp(v38, v40, v41);
      v42 = v37 < v39;
      if (result)
      {
        v42 = result < 0;
      }

      if (v42)
      {
        *a2 = v33;
        *a3 = v34;
        v43 = a2[1];
        a2[1] = a3[1];
        a3[1] = v43;
        v44 = *a2;
        v45 = *a1;
        v46 = *(*a1 + 23);
        v47 = *(*a2 + 23);
        if (v47 >= 0)
        {
          v48 = *(*a2 + 23);
        }

        else
        {
          v48 = (*a2)[1];
        }

        if (v47 >= 0)
        {
          v49 = *a2;
        }

        else
        {
          v49 = **a2;
        }

        if (v46 >= 0)
        {
          v50 = *(*a1 + 23);
        }

        else
        {
          v50 = (*a1)[1];
        }

        if (v46 >= 0)
        {
          v51 = *a1;
        }

        else
        {
          v51 = **a1;
        }

        if (v50 >= v48)
        {
          v52 = v48;
        }

        else
        {
          v52 = v50;
        }

        result = memcmp(v49, v51, v52);
        v53 = v48 < v50;
        if (result)
        {
          v53 = result < 0;
        }

        if (v53)
        {
          *a1 = v44;
          *a2 = v45;
          v54 = a1[1];
          a1[1] = a2[1];
          a2[1] = v54;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,anonymous namespace::StrPtrLess &,std::shared_ptr<std::string> *>(const void ***a1, const void ***a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *a1;
        v7 = *(*a1 + 23);
        v8 = *(v5 + 23);
        if (v8 >= 0)
        {
          v9 = *(v5 + 23);
        }

        else
        {
          v9 = *(v5 + 8);
        }

        if (v8 >= 0)
        {
          v10 = *(a2 - 2);
        }

        else
        {
          v10 = *v5;
        }

        if (v7 >= 0)
        {
          v11 = *(*a1 + 23);
        }

        else
        {
          v11 = (*a1)[1];
        }

        if (v7 >= 0)
        {
          v12 = *a1;
        }

        else
        {
          v12 = **a1;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(v10, v12, v13);
        v15 = v9 < v11;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          *a1 = v5;
          *(a2 - 2) = v6;
          v16 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_28:
  v17 = a1 + 4;
  v18 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v50 = a2;
  while (1)
  {
    v21 = *v18;
    v22 = *v17;
    v23 = *(v22 + 23);
    v24 = *(*v18 + 23);
    if (v24 >= 0)
    {
      v25 = *(*v18 + 23);
    }

    else
    {
      v25 = (*v18)[1];
    }

    if (v24 >= 0)
    {
      v26 = *v18;
    }

    else
    {
      v26 = **v18;
    }

    if (v23 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = v22[1];
    }

    if (v23 >= 0)
    {
      v28 = v22;
    }

    else
    {
      v28 = *v22;
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      break;
    }

    v47 = v50;
LABEL_76:
    v17 = v18;
    v19 += 16;
    v18 += 2;
    if (v18 == v47)
    {
      return 1;
    }
  }

  v32 = v18[1];
  v33 = v19;
  *v18 = 0;
  v18[1] = 0;
  while (1)
  {
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 40);
    v34[4] = 0;
    v34[5] = 0;
    v36 = *(a1 + v33 + 56);
    v34[6] = v22;
    v34[7] = v35;
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v33 == -32)
    {
      break;
    }

    v22 = *(a1 + v33 + 16);
    v37 = *(v22 + 23);
    v38 = *(v21 + 23);
    if (v38 >= 0)
    {
      v39 = *(v21 + 23);
    }

    else
    {
      v39 = v21[1];
    }

    if (v38 >= 0)
    {
      v40 = v21;
    }

    else
    {
      v40 = *v21;
    }

    if (v37 >= 0)
    {
      v41 = *(v22 + 23);
    }

    else
    {
      v41 = v22[1];
    }

    if (v37 >= 0)
    {
      v42 = *(a1 + v33 + 16);
    }

    else
    {
      v42 = *v22;
    }

    if (v41 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v41;
    }

    v44 = memcmp(v40, v42, v43);
    v45 = v39 < v41;
    if (v44)
    {
      v45 = v44 < 0;
    }

    v33 -= 16;
    if (!v45)
    {
      v46 = (a1 + v33 + 48);
      goto LABEL_73;
    }
  }

  v46 = a1;
LABEL_73:
  v48 = v46[1];
  *v46 = v21;
  v46[1] = v32;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  ++v20;
  v47 = v50;
  if (v20 != 8)
  {
    goto LABEL_76;
  }

  return v18 + 2 == v50;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::string>>(uint64_t a1, unsigned int *a2)
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

void std::__shared_ptr_pointer<anonymous namespace::DeleteProgramInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteProgramInstruction>,std::allocator<anonymous namespace::DeleteProgramInstruction>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteProgramInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteProgramInstruction>,std::allocator<anonymous namespace::DeleteProgramInstruction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteProgramInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteProgramInstruction>,std::allocator<anonymous namespace::DeleteProgramInstruction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::find<ProGL::Private::ProgramHandleImpl::ContextKey>(uint64_t a1, ProGL::ContextHandle *a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__lower_bound<ProGL::Private::ProgramHandleImpl::ContextKey>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  EAGLContext = ProGL::ContextHandle::getEAGLContext(a2);
  if (EAGLContext < ProGL::ContextHandle::getEAGLContext((v5 + 32)))
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__lower_bound<ProGL::Private::ProgramHandleImpl::ContextKey>(uint64_t a1, ProGL::ContextHandle *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      EAGLContext = ProGL::ContextHandle::getEAGLContext((v5 + 32));
      v8 = ProGL::ContextHandle::getEAGLContext(a2);
      if (EAGLContext >= v8)
      {
        a4 = v5;
      }

      v5 = *(v5 + 8 * (EAGLContext < v8));
    }

    while (v5);
  }

  return a4;
}

void std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,0>(ProGL::ContextHandle *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ProGL::ContextHandle::~ContextHandle(this);
}

uint64_t std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__emplace_unique_key_args<ProGL::Private::ProgramHandleImpl::ContextKey,std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>(uint64_t a1, ProGL::ContextHandle *this)
{
  v2 = *std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__find_equal<ProGL::Private::ProgramHandleImpl::ContextKey>(a1, &v4, this);
  if (!v2)
  {
    std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__construct_node<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::__find_equal<ProGL::Private::ProgramHandleImpl::ContextKey>(uint64_t a1, void *a2, ProGL::ContextHandle *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        EAGLContext = ProGL::ContextHandle::getEAGLContext(this);
        if (EAGLContext >= ProGL::ContextHandle::getEAGLContext((v7 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v9 = ProGL::ContextHandle::getEAGLContext((v7 + 4));
      if (v9 >= ProGL::ContextHandle::getEAGLContext(this))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,0>((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

ProGL::Private::Shader *ProGL::Private::Shader::Shader(ProGL::Private::Shader *this, ProGL::GL *a2, unsigned int a3, const char *a4)
{
  v6 = ProGL::Private::ShaderString::ShaderString(this, a3, a4);
  ProGL::GL::getPGLContextHandle(a2, (v6 + 48));
  *(this + 16) = ProGL::ContextHandle::getVirtualScreen((this + 48));
  *(this + 68) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 23) = 0;
  ProGL::Private::Shader::compile(this, v7);
  return this;
}

void sub_25FE53274(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  ProGL::ContextHandle::~ContextHandle((v1 + 48));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void ProGL::Private::Shader::compile(ProGL::Private::Shader *this, ProGL::GL *a2)
{
  Size = PVPerfStats::FrameStats::GetSize(this);
  *(this + 17) = glCreateShader(Size);
  string = ProGL::Private::ShaderString::c_str(this);
  glShaderSource(*(this + 17), 1, &string, 0);
  glCompileShader(*(this + 17));
  v4 = *(this + 17);
  params[0] = 0;
  glGetShaderiv(v4, 0x8B81u, params);
  if (!params[0])
  {
    v5 = *(this + 17);
    params[0] = 0;
    glGetShaderiv(v5, 0x8B84u, params);
    length = params[0];
    if (params[0] < 2)
    {
      MEMORY[0x2666E99D0](this + 72, "Shader compile() member function failed; error unknown.");
    }

    else
    {
      std::vector<char>::vector[abi:ne200100](params, params[0]);
      glGetShaderInfoLog(*(this + 17), v7 - params[0], &length, *params);
      std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(this + 3, *params, v7, &v7[-*params]);
      if (*params)
      {
        v7 = *params;
        operator delete(*params);
      }
    }

    operator new();
  }
}

void sub_25FE53424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FE534BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void ProGL::Private::Shader::~Shader(ProGL::Private::Shader *this)
{
  if (*(this + 17))
  {
    operator new();
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  ProGL::ContextHandle::~ContextHandle((this + 48));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

BOOL ProGL::Private::Shader::good(ProGL::Private::Shader *this)
{
  v1 = *(this + 95);
  if (v1 < 0)
  {
    v1 = *(this + 10);
  }

  return v1 == 0;
}

void anonymous namespace::DeleteShaderInstruction::~DeleteShaderInstruction(OZChannelBase *this)
{
  this->var0 = &unk_28723FDC8;
  ProGL::ContextHandle::~ContextHandle(&this->var2);

  OZChannelBase::setRangeName(this, v2);
}

{
  this->var0 = &unk_28723FDC8;
  ProGL::ContextHandle::~ContextHandle(&this->var2);
  OZChannelBase::setRangeName(this, v2);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::DeleteShaderInstruction::execute(_anonymous_namespace_::DeleteShaderInstruction *this)
{
  ProGL::getDeletionContext(this + 2, *(this + 8), v2);
  ProGL::GL::GL(v3, v2);
  ProGL::ContextHandle::~ContextHandle(v2);
  glDeleteShader(*(this + 2));
  ProGL::GL::~GL(v3);
}

void sub_25FE53778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

void std::__shared_ptr_pointer<anonymous namespace::DeleteShaderInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteShaderInstruction>,std::allocator<anonymous namespace::DeleteShaderInstruction>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteShaderInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteShaderInstruction>,std::allocator<anonymous namespace::DeleteShaderInstruction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteShaderInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteShaderInstruction>,std::allocator<anonymous namespace::DeleteShaderInstruction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<ProGL::Private::Shader>::shared_ptr[abi:ne200100]<ProGL::Private::Shader,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_25FE53994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ProGL::Private::Shader>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ProGL::Private::Shader **std::unique_ptr<ProGL::Private::Shader>::~unique_ptr[abi:ne200100](ProGL::Private::Shader **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ProGL::Private::Shader::~Shader(v2);
    MEMORY[0x2666E9F00]();
  }

  return a1;
}

ProGL::Private::Shader *std::__shared_ptr_pointer<ProGL::Private::Shader *,std::shared_ptr<ProGL::Private::Shader>::__shared_ptr_default_delete<ProGL::Private::Shader,ProGL::Private::Shader>,std::allocator<ProGL::Private::Shader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    ProGL::Private::Shader::~Shader(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::Shader *,std::shared_ptr<ProGL::Private::Shader>::__shared_ptr_default_delete<ProGL::Private::Shader,ProGL::Private::Shader>,std::allocator<ProGL::Private::Shader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ProGL::Private::ShaderCache::ShaderCache(uint64_t this)
{
  *(this + 16) = 0;
  *this = 0;
  *(this + 8) = this + 16;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

void ProGL::Private::ShaderCache::find(ProGL::Private::ShaderCache *this@<X0>, ProGL::GL *a2@<X1>, const char *a3@<X3>, ProGL::GL *a4@<X2>, void *a5@<X8>)
{
  ProGL::GL::getPGLContextHandle(a2, &v15);
  ProGL::ContextHandle::getShareGroup(&v15, &v16);
  ProGL::ShareGroup::ShareGroup(&v17, &v16);
  ProGL::Private::ShaderString::ShaderString(&v18, a4, a3);
  ProGL::ContextHandle::~ContextHandle(&v15);
  *a5 = 0;
  a5[1] = 0;
  v16.var0 = this;
  PCSpinLock::lock(this);
  v10 = std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::find<ProGL::Private::ShaderCache::Key>(this + 8, &v17);
  if ((this + 16) == v10)
  {
    ProGL::Private::makeShader(a2, a4, a3, v11);
  }

  v12 = *(this + 4);
  *(this + 4) = v12 + 1;
  v10[13] = v12;
  v14 = v10[11];
  v13 = v10[12];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *a5 = v14;
  a5[1] = v13;
  ProGL::Private::ShaderCache::maybePurge(this);
  PCSpinLock::unlock(this);
  if (v20 < 0)
  {
    operator delete(v19);
  }
}

void sub_25FE53CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_unfair_lock_s *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>::~pair(&a9);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ProGL::Private::ShaderCache::maybePurge(ProGL::Private::ShaderCache *this)
{
  v2 = *(this + 3);
  v3 = *(this + 5);
  if (v3 > v2)
  {
    v4 = *(this + 4);
    if (v4 >= 2 * v2)
    {
      v5 = *(this + 1);
      v6 = (this + 16);
      if (v5 != (this + 16))
      {
        v7 = v4 - 2 * v2;
        do
        {
          v8 = v5[12];
          if (v8 && *(v8 + 8) > 0 || v5[13] > v7)
          {
            v9 = v5[1];
            if (v9)
            {
              do
              {
                v10 = v9;
                v9 = *v9;
              }

              while (v9);
            }

            else
            {
              do
              {
                v10 = v5[2];
                v11 = *v10 == v5;
                v5 = v10;
              }

              while (!v11);
            }
          }

          else
          {
            v12 = v5[1];
            v13 = v5;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v11 = *v10 == v13;
                v13 = v10;
              }

              while (!v11);
            }

            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 1, v5);
            std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>,0>((v5 + 4));
            operator delete(v5);
          }

          v5 = v10;
        }

        while (v10 != v6);
      }
    }

    v3 = 0;
  }

  *(this + 5) = v3 + 1;
}

uint64_t std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>::~pair(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::find<ProGL::Private::ShaderCache::Key>(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__lower_bound<ProGL::Private::ShaderCache::Key>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  if (ProGL::operator<(a2, v4 + 4) || ProGL::Private::operator<((a2 + 1), (v5 + 5)))
  {
    return v3;
  }

  return v5;
}

void *std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__lower_bound<ProGL::Private::ShaderCache::Key>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (ProGL::operator<(v5 + 4, a2) || ProGL::Private::operator<((v5 + 5), (a2 + 1)))
      {
        ++v5;
      }

      else
      {
        a4 = v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__emplace_unique_key_args<ProGL::Private::ShaderCache::Key,std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__find_equal<ProGL::Private::ShaderCache::Key>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__construct_node<std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::__map_value_compare<ProGL::Private::ShaderCache::Key,std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,std::less<ProGL::Private::ShaderCache::Key>,true>,std::allocator<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>>>::__find_equal<ProGL::Private::ShaderCache::Key>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!ProGL::operator<(a3, v4 + 4) && !ProGL::Private::operator<((a3 + 1), (v7 + 5)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_11;
        }
      }

      if (!ProGL::operator<(v7 + 4, a3) && !ProGL::Private::operator<((v7 + 5), (a3 + 1)))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_11:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProGL::Private::ShaderCache::Key,ProGL::Private::ShaderCache::Value>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ShaderCache::Key const,ProGL::Private::ShaderCache::Value>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

int8x8_t *ProGL::Private::ShaderString::ShaderString(int8x8_t *this, __int32 a2, const char *__s)
{
  this->i32[0] = a2;
  v5 = this + 1;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  this[3].i8[7] = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  v5->i8[v7] = 0;
  PCWorkingColorVector::PCWorkingColorVector(&this[4]);
  std::vector<unsigned char>::vector[abi:ne200100](&__p, 4);
  *__p = this->i32[0];
  v8 = *__s;
  if (*__s)
  {
    v9 = v20;
    v10 = __s + 1;
    do
    {
      if (v9 >= v21)
      {
        v11 = __p;
        v12 = (v9 - __p);
        v13 = v9 - __p + 1;
        if (v13 < 0)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v14 = v21 - __p;
        if (2 * (v21 - __p) > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          operator new();
        }

        v16 = v9 - __p;
        *v12 = v8;
        v9 = v12 + 1;
        memcpy(0, v11, v16);
        __p = 0;
        v20 = v12 + 1;
        v21 = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v9++ = v8;
      }

      v20 = v9;
      v17 = *v10++;
      v8 = v17;
    }

    while (v17);
  }

  else
  {
    LODWORD(v9) = v20;
  }

  PCHash128::addData(this + 4, __p, (v9 - __p));
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return this;
}

void sub_25FE5438C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProGL::Private::ShaderString::c_str(ProGL::Private::ShaderString *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

ProGL::Framebuffer *ProGL::Framebuffer::Framebuffer(ProGL::Framebuffer *this)
{
  ProGL::getCurrentContext(this);
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  ProGL::GL::GL(v3, this);
  glGenFramebuffers(1, this + 4);
  ProGL::GL::~GL(v3);
  return this;
}

void sub_25FE544A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v3, *(v2 + 4));
  ProGL::ContextHandle::~ContextHandle(v2);
  _Unwind_Resume(a1);
}

ProGL::Framebuffer *ProGL::Framebuffer::Framebuffer(ProGL::Framebuffer *this, ProGL::GL *a2)
{
  ProGL::GL::getPGLContextHandle(a2, this);
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  glGenFramebuffers(1, this + 4);
  return this;
}

void sub_25FE5452C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v1 + 4));
  ProGL::ContextHandle::~ContextHandle(v1);
  _Unwind_Resume(a1);
}

void ProGL::Framebuffer::~Framebuffer(GLuint *this)
{
  ProGL::GL::GL(v2, this);
  glDeleteFramebuffers(1, this + 4);
  ProGL::GL::~GL(v2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((this + 6), *(this + 4));
  ProGL::ContextHandle::~ContextHandle(this);
}

uint64_t *ProGL::Framebuffer::attach(ProGL::Framebuffer *this, ProGL::GL *a2, GLenum a3, GLenum a4, ProGL::Private::TextureImpl **a5, GLint a6)
{
  Target = ProGL::TextureHandle::getTarget(a5);
  Name = ProGL::TextureHandle::getName(a5);

  return ProGL::Framebuffer::attach(this, v12, a3, a4, Target, Name, a6);
}

uint64_t *ProGL::Framebuffer::attach(ProGL::Framebuffer *this, ProGL::GL *a2, GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
{
  v10 = attachment;
  if (textarget - 34069 < 6 || textarget == 3553)
  {
    glFramebufferTexture2D(target, attachment, textarget, texture, level);
  }

  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 24, &v10);
  *(result + 8) = textarget;
  return result;
}

uint64_t *ProGL::Framebuffer::attach(uint64_t a1, int a2, GLenum a3, GLenum a4, HGGLBlendingInfo **this)
{
  v10 = a4;
  Name = ProGL::TextureHandle::getName(this);
  glFramebufferRenderbuffer(a3, a4, 0x8D41u, Name);
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1 + 24, &v10);
  *(result + 8) = 36161;
  return result;
}

void ProGL::Framebuffer::detach(ProGL::Framebuffer *this, ProGL::GL *a2, GLenum target, GLenum attachment)
{
  v6 = *(this + 4);
  v4 = this + 32;
  v5 = v6;
  if (v6)
  {
    v7 = (v4 - 8);
    v8 = v4;
    do
    {
      v9 = *(v5 + 7);
      v10 = v9 >= attachment;
      v11 = v9 < attachment;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[8 * v11];
    }

    while (v5);
    if (v8 != v4 && *(v8 + 7) <= attachment)
    {
      v12 = *(v8 + 8);
      if (v12 == 36161)
      {
        glFramebufferRenderbuffer(target, attachment, 0x8D41u, 0);
      }

      else if (v12 == 3553)
      {
        glFramebufferTexture2D(target, attachment, 0xDE1u, 0, 0);
      }

      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(v7, v8);

      operator delete(v8);
    }
  }
}

void ProGL::Framebuffer::detach(ProGL::Framebuffer *this, GLenum a2, GLenum a3)
{
  ProGL::GL::GL(v7);
  ProGL::Framebuffer::detach(this, v6, a2, a3);
  ProGL::GL::~GL(v7);
}

void sub_25FE5487C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void *ProGL::getPerThreadContext@<X0>(void *a1@<X8>)
{
  result = pthread_getspecific(*sPerThreadContexts);
  if (!result)
  {
    ProGL::makeSharedEAGLContext(&v5);
    operator new();
  }

  v4 = result[2];
  *a1 = result[1];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ProGL::Private::initPerThreadContext(ProGL::Private *this)
{
  if (!sPerThreadContexts)
  {
    operator new();
  }
}

uint64_t ProGL::Private::cleanUpPerThreadContext(ProGL::Private *this)
{
  result = sPerThreadContexts;
  if (sPerThreadContexts)
  {
    result = MEMORY[0x2666E9F00](sPerThreadContexts, 0x1000C4000313F17);
  }

  sPerThreadContexts = 0;
  return result;
}

uint64_t PCThreadSpecific<anonymous namespace::Holder>::destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    ProGL::ContextHandle::~ContextHandle((result + 8));
    ProGL::Init::~Init(v1);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void std::shared_ptr<ProGL::Private::RenderbufferImpl>::shared_ptr[abi:ne200100]<ProGL::Private::RenderbufferImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_25FE54C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ProGL::Private::RenderbufferImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ProGL::Private::RenderbufferImpl **std::unique_ptr<ProGL::Private::RenderbufferImpl>::~unique_ptr[abi:ne200100](ProGL::Private::RenderbufferImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ProGL::Private::RenderbufferImpl::~RenderbufferImpl(v2);
    MEMORY[0x2666E9F00]();
  }

  return a1;
}

ProGL::Private::RenderbufferImpl *std::__shared_ptr_pointer<ProGL::Private::RenderbufferImpl *,std::shared_ptr<ProGL::Private::RenderbufferImpl>::__shared_ptr_default_delete<ProGL::Private::RenderbufferImpl,ProGL::Private::RenderbufferImpl>,std::allocator<ProGL::Private::RenderbufferImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    ProGL::Private::RenderbufferImpl::~RenderbufferImpl(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::RenderbufferImpl *,std::shared_ptr<ProGL::Private::RenderbufferImpl>::__shared_ptr_default_delete<ProGL::Private::RenderbufferImpl,ProGL::Private::RenderbufferImpl>,std::allocator<ProGL::Private::RenderbufferImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void DeleteRenderbufferInstruction::~DeleteRenderbufferInstruction(OZChannelBase *this)
{
  this->var0 = &unk_28723FF70;
  ProGL::ContextHandle::~ContextHandle(&this->var2);

  OZChannelBase::setRangeName(this, v2);
}

{
  this->var0 = &unk_28723FF70;
  ProGL::ContextHandle::~ContextHandle(&this->var2);
  OZChannelBase::setRangeName(this, v2);

  JUMPOUT(0x2666E9F00);
}

void DeleteRenderbufferInstruction::execute(DeleteRenderbufferInstruction *this)
{
  ProGL::getDeletionContext(this + 2, *(this + 8), v2);
  ProGL::GL::GL(v3, v2);
  ProGL::ContextHandle::~ContextHandle(v2);
  glDeleteRenderbuffers(1, this + 2);
  ProGL::GL::~GL(v3);
}

void sub_25FE54E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

ProGL::Private::RenderbufferImpl *ProGL::Private::RenderbufferImpl::RenderbufferImpl(ProGL::Private::RenderbufferImpl *this, ProGL::GL *a2)
{
  ProGL::GL::getPGLContextHandle(a2, this);
  *(this + 4) = ProGL::ContextHandle::getVirtualScreen(this);
  glGenRenderbuffers(1, this + 5);
  glBindRenderbuffer(0x8D41u, *(this + 5));
  glRenderbufferStorageMultisampleAPPLE();
  return this;
}

void sub_25FE55000(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<DeleteRenderbufferInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,DeleteRenderbufferInstruction>,std::allocator<DeleteRenderbufferInstruction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DeleteRenderbufferInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,DeleteRenderbufferInstruction>,std::allocator<DeleteRenderbufferInstruction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ProGL::Private::Any::~Any(ProGL::Private::Any *this)
{
  v1 = *this;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

uint64_t anonymous namespace::DeletionThreadLoop::postInstruction(PCMutex *this, __int128 *a2)
{
  {
    {
      operator new();
    }

    if (v7)
    {
      PCMutex::unlock(v7);
    }
  }

  PCMutex::lock(this);
  std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::push_back(&this[1]._Mutex.__opaque[32], a2);
  result = PCConditionVariable::signal(&this[1]);
  if (this)
  {
    return PCMutex::unlock(this);
  }

  return result;
}

void sub_25FE551FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2666E9F00](v9, 0x20C4093837F09);
  PCLockSentry<PCMutex>::~PCLockSentry(&a9);
  _Unwind_Resume(a1);
}

OZChannelBase *ProGL::Private::cleanUpDeleteObjects(ProGL::Private *this, const PCString *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  {
    PCSemaphore::PCSemaphore(v7, 0);
    operator new();
  }

  {
    PCConditionVariable::~PCConditionVariable((v3 + 72));
    PCMutex::~PCMutex(v3);
    MEMORY[0x2666E9F00]();
  }

  {
    PCSpinLock::~PCSpinLock(v4);
    MEMORY[0x2666E9F00]();
  }

  {
  }

  if (result)
  {
    v6 = OZChannelBase::setRangeName(result, a2);
    result = MEMORY[0x2666E9F00](v6, 0x20C4093837F09);
  }

  return result;
}

void sub_25FE5552C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCSemaphore::~PCSemaphore(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::threadFunc(_anonymous_namespace_ *this, void *a2)
{
  do
  {
    PCMutex::lock(v2);
    while (!*(v2 + 160))
    {
      PCConditionVariable::wait((v2 + 72), v2);
    }

    v3 = (*(*(v2 + 128) + ((*(v2 + 152) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v2 + 152));
    v5 = *v3;
    v4 = v3[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::pop_front((v2 + 120));
    PCMutex::unlock(v2);
    (*(*v5 + 16))(v5);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  while ((*(v2 + 168) & 1) == 0);
}

void sub_25FE55668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<PVLoadedEffectItem>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

void *std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v7 + v3[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void *std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(a1, &v10);
}

void sub_25FE55940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<anonymous namespace::QuitInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::QuitInstruction>,std::allocator<anonymous namespace::QuitInstruction>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::QuitInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::QuitInstruction>,std::allocator<anonymous namespace::QuitInstruction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::QuitInstruction *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::QuitInstruction>,std::allocator<anonymous namespace::QuitInstruction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::deque<std::shared_ptr<ProGL::DeletionInstruction>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void PCMatrix44Tmpl<double>::rotate(uint64_t a1, double *a2, int a3, double a4)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (a3)
  {
    v8 = sqrt(v6 * v6 + v5 * v5 + v7 * v7 + a2[3] * a2[3]);
    v6 = v6 / v8;
    v5 = v5 / v8;
    v7 = v7 / v8;
  }

  sinval = 0.0;
  cosval = 1.0;
  if (a4 != 0.0)
  {
    sinval = 1.0;
    cosval = 0.0;
    if (fabs(a4 + -1.57079633) >= 0.0000001 && fabs(a4 + 4.71238898) >= 0.0000001)
    {
      sinval = -1.0;
      if (fabs(a4 + 1.57079633) >= 0.0000001 && fabs(a4 + -4.71238898) >= 0.0000001)
      {
        sinval = 0.0;
        cosval = -1.0;
        if (fabs(a4 + -3.14159265) >= 0.0000001 && fabs(a4 + 3.14159265) >= 0.0000001)
        {
          v11 = __sincos_stret(a4);
          cosval = v11.__cosval;
          sinval = v11.__sinval;
        }
      }
    }
  }

  v12 = v5 * v6 * (1.0 - cosval);
  v13 = v7 * v6 * (1.0 - cosval);
  v14 = v7 * v5 * (1.0 - cosval);
  v15 = v6 * sinval;
  v16 = v5 * sinval;
  v17 = v7 * sinval;
  v21 = 0x3FF0000000000000;
  v18[3] = 0.0;
  v18[7] = 0.0;
  v19 = 0u;
  v20 = 0u;
  v18[0] = cosval + v6 * v6 * (1.0 - cosval);
  v18[1] = v12 - v17;
  v18[2] = v13 + v16;
  v18[4] = v12 + v17;
  v18[5] = cosval + v5 * v5 * (1.0 - cosval);
  v18[6] = v14 - v15;
  v18[8] = v13 - v16;
  v18[9] = v14 + v15;
  v18[10] = cosval + v7 * v7 * (1.0 - cosval);
  PCMatrix44Tmpl<double>::rightMult(a1, v18);
}

void ProGL::MatrixState::~MatrixState(ProGL::MatrixState *this)
{
  v2 = *this;
  v4 = *(this + 1) - v2;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = *(*this + 8 * v5);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          *(v8 + 24) = v9;
          operator delete(v9);
        }

        MEMORY[0x2666E9F00](v8, 0x1020C4081634310);
      }

      ++v5;
    }

    while (v7 != v5);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t ProGL::ObjectHandle::Data::Data(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  *a1 = a2;
  v6 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = ProGL::ContextHandle::getVirtualScreen((a1 + 8));
  *(a1 + 32) = a4;
  return a1;
}

uint64_t ProGL::ObjectHandle::name(ProGL::ObjectHandle *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

void ProGL::createShaderObject(ProGL *this, GLenum type)
{
  Shader = glCreateShader(type);
  ProGL::GL::getPGLContextHandle(this, v4);
  v5 = Shader;
  v4[2] = MEMORY[0x277CD9398];
  std::allocate_shared[abi:ne200100]<ProGL::ObjectHandle::Data,std::allocator<ProGL::ObjectHandle::Data>,unsigned int &,ProGL::ContextHandle const&,void (*&),0>();
}

void ProGL::createProgramObject(ProGL *this, ProGL::GL *a2)
{
  Program = glCreateProgram();
  ProGL::GL::getPGLContextHandle(this, v4);
  v5 = Program;
  v4[2] = MEMORY[0x277CD9390];
  std::allocate_shared[abi:ne200100]<ProGL::ObjectHandle::Data,std::allocator<ProGL::ObjectHandle::Data>,unsigned int &,ProGL::ContextHandle const&,void (*&),0>();
}

void anonymous namespace::DeleteObjectInst::~DeleteObjectInst(OZChannelBase *this)
{
  this->var0 = &unk_287240108;
  ProGL::ContextHandle::~ContextHandle(&this->var2);

  OZChannelBase::setRangeName(this, v2);
}

{
  this->var0 = &unk_287240108;
  ProGL::ContextHandle::~ContextHandle(&this->var2);
  OZChannelBase::setRangeName(this, v2);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::DeleteObjectInst::execute(os_unfair_lock_s **this)
{
  ProGL::getDeletionContext(this + 2, *(this + 8), v4);
  ProGL::CurrentContextSentry::CurrentContextSentry(v3, v4);
  (this[5])(*(this + 2));
  ProGL::GL::GL(v2, v4);
  ProGL::GL::~GL(v2);
  ProGL::CurrentContextSentry::~CurrentContextSentry(v3);
  ProGL::ContextHandle::~ContextHandle(v4);
}

void sub_25FE56268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ProGL::CurrentContextSentry::~CurrentContextSentry(va);
  ProGL::ContextHandle::~ContextHandle((v7 - 32));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<anonymous namespace::DeleteObjectInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteObjectInst>,std::allocator<anonymous namespace::DeleteObjectInst>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteObjectInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteObjectInst>,std::allocator<anonymous namespace::DeleteObjectInst>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteObjectInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteObjectInst>,std::allocator<anonymous namespace::DeleteObjectInst>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<ProGL::ObjectHandle::Data>::__shared_ptr_emplace[abi:ne200100]<unsigned int &,ProGL::ContextHandle const&,void (*&)(unsigned int),std::allocator<ProGL::ObjectHandle::Data>,0>(void *a1, int *a2, void *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872401C0;
  std::allocator<ProGL::ObjectHandle::Data>::construct[abi:ne200100]<ProGL::ObjectHandle::Data,unsigned int &,ProGL::ContextHandle const&,void (*&)>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<ProGL::ObjectHandle::Data>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872401C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::allocator<ProGL::ObjectHandle::Data>::construct[abi:ne200100]<ProGL::ObjectHandle::Data,unsigned int &,ProGL::ContextHandle const&,void (*&)(unsigned int)>(uint64_t a1, uint64_t a2, int *a3, void *a4, uint64_t *a5)
{
  v6 = *a3;
  v7 = a4[1];
  v8[0] = *a4;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  ProGL::ObjectHandle::Data::Data(a2, v6, v8, *a5);
  ProGL::ContextHandle::~ContextHandle(v8);
}

uint64_t PGLMasterEAGLContext()
{
  {
    PCAutoreleasePool::PCAutoreleasePool(&v1);
    PCAutoreleasePool::~PCAutoreleasePool(&v1);
  }

  return result;
}

void sub_25FE56584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

void ProGL::Private::cleanUpContextSharing(ProGL::Private *this)
{
  {
  }
}

uint64_t PGLCreateSharedEAGLContext()
{
  PCAutoreleasePool::PCAutoreleasePool(&v3);
  v0 = objc_alloc(MEMORY[0x277CD9388]);
  PCAutoreleasePool::~PCAutoreleasePool(&v3);
  return v1;
}

void sub_25FE56630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

void ProGL::ContextHandle::~ContextHandle(ProGL::ContextHandle *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *ProGL::ContextHandle::operator=(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t ProGL::ContextHandle::makeCurrent(ProGL::ContextHandle *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t ProGL::ContextHandle::getEAGLContext(ProGL::ContextHandle *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t ProGL::ContextHandle::setVirtualScreen(ProGL::ContextHandle *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t ProGL::ContextHandle::getVirtualScreen(ProGL::ContextHandle *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t (*ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(void *a1))(ProGL::ContextHandle *this)
{
  if (*a1)
  {
    return ProGL::ContextHandle::makeCurrent;
  }

  else
  {
    return 0;
  }
}

void ProGL::ContextHandle::getShareGroup(os_unfair_lock_s **this@<X0>, PCSharedCount *a2@<X8>)
{
  v2 = *this;
  if (v2)
  {
    ProGL::Private::ContextImpl::getShareGroup(v2, a2);
  }

  else
  {
    PCSharedCount::PCSharedCount(a2);
  }
}

_anonymous_namespace_ *ProGL::getCurrentContext@<X0>(void *a1@<X8>)
{
  result = [MEMORY[0x277CD9388] currentContext];
  if (result)
  {
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_25FE56898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2666E9F00](v4, 0x1081C402D5EB2C2);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void ProGL::makeSharedEAGLContext(void *a1@<X8>)
{
  v3 = PGLCreateSharedEAGLContext();
  if (v3)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  ProCore_Impl::PCNSRefImpl::release(&v3);
}

void sub_25FE56978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void ProGL::makeEAGLContext(os_unfair_lock_s **this@<X0>, const ProGL::ContextHandle *a2@<X1>, void *a3@<X8>)
{
  v5 = *this;
  if (v5)
  {
    v6 = (*(*&v5->_os_unfair_lock_opaque + 24))(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  ProGL::ContextHandle::getShareGroup(this, &v11);
  v7 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:objc_msgSend(v6 sharegroup:{"API"), objc_msgSend(v6, "sharegroup")}];
  if (v7)
  {
    v12 = v7;
    operator new();
  }

  v8 = MEMORY[0x277D82678];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ProGL::unnamed::NewEAGLContext(EAGLContext): ", 45);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Unable to create a EAGLContext that shares with %p", 50);
  v10 = MEMORY[0x2666E9B10](v9, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ".\n", 2);
  v12 = 0;
  *a3 = 0;
  a3[1] = 0;
  ProCore_Impl::PCNSRefImpl::release(&v12);
}

void sub_25FE56B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2666E9F00](v4, 0x1081C402D5EB2C2);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

_anonymous_namespace_ *ProGL::findContext@<X0>(_anonymous_namespace_ *this@<X0>, EAGLContext *a2@<X1>, void *a3@<X8>)
{
  if (this)
  {
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

BOOL ProGL::areContextsShared(os_unfair_lock_s **this, os_unfair_lock_s **a2, const ProGL::ContextHandle *a3)
{
  ProGL::ContextHandle::getShareGroup(this, &v6);
  ProGL::ContextHandle::getShareGroup(a2, &v5);
  return ProGL::operator==(&v6, &v5);
}

void ProGL::Private::initContext(ProGL::Private *this)
{
  PCAutoreleasePool::PCAutoreleasePool(&v3);
  v1 = [MEMORY[0x277CD9388] currentContext];
  if (v1)
  {
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v3);
}

void sub_25FE56C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

void sub_25FE56CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Private::ContextImpl>::shared_ptr[abi:ne200100]<ProGL::Private::EAGLContextImpl,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::EAGLContextImpl *,std::shared_ptr<ProGL::Private::ContextImpl>::__shared_ptr_default_delete<ProGL::Private::ContextImpl,ProGL::Private::EAGLContextImpl>,std::allocator<ProGL::Private::EAGLContextImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::EAGLContextImpl *,std::shared_ptr<ProGL::Private::ContextImpl>::__shared_ptr_default_delete<ProGL::Private::ContextImpl,ProGL::Private::EAGLContextImpl>,std::allocator<ProGL::Private::EAGLContextImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ProGL::Private::ContextImpl *ProGL::Private::ContextImpl::ContextImpl(ProGL::Private::ContextImpl *this, const ProGL::ShareGroup *a2)
{
  *this = &unk_287240288;
  *(this + 2) = 0;
  ProGL::ShareGroup::ShareGroup(this + 2, a2);
  return this;
}

void ProGL::Private::ContextImpl::getShareGroup(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  v4 = this + 2;
  v10[1] = this + 2;
  PCSpinLock::lock(this + 2);
  v5 = ProGL::ShareGroup::operator void (ProGL::ShareGroup::*)(void)(&this[4]._os_unfair_lock_opaque);
  if (v6)
  {
    v7 = (v6 & 1 | v5) == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (!v5 && v8)
  {
    v9 = (*(*&this->_os_unfair_lock_opaque + 24))(this);
    ProGL::ShareGroup::findGroup(v9, v10);
    *&this[4]._os_unfair_lock_opaque = v10[0];
  }

  ProGL::ShareGroup::ShareGroup(a2, &this[4]._os_unfair_lock_opaque);
  PCSpinLock::unlock(v4);
}

void sub_25FE56E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

ProGL::Private::ContextImpl *ProGL::Private::EAGLContextImpl::EAGLContextImpl(ProGL::Private::ContextImpl *a1, void *a2)
{
  PCSharedCount::PCSharedCount(&v6);
  v4 = ProGL::Private::ContextImpl::ContextImpl(a1, &v6);
  *a1 = &unk_2872402D0;
  *(v4 + 3) = *a2;
  ProCore_Impl::PCNSRefImpl::retain(v4 + 3);
  return a1;
}

void sub_25FE56F20(_Unwind_Exception *a1)
{
  *v1 = &unk_287240288;
  PCSpinLock::~PCSpinLock((v1 + 8));
  _Unwind_Resume(a1);
}

ProGL::Private::ContextImpl *ProGL::Private::EAGLContextImpl::EAGLContextImpl(ProGL::Private::ContextImpl *a1, void *a2, ProGL::ShareGroup *a3)
{
  v5 = ProGL::Private::ContextImpl::ContextImpl(a1, a3);
  *v5 = &unk_2872402D0;
  *(v5 + 3) = *a2;
  ProCore_Impl::PCNSRefImpl::retain(v5 + 3);
  return a1;
}

void sub_25FE56FAC(_Unwind_Exception *a1)
{
  *v1 = &unk_287240288;
  PCSpinLock::~PCSpinLock((v1 + 8));
  _Unwind_Resume(a1);
}

void ProGL::Private::EAGLContextImpl::~EAGLContextImpl(ProGL::Private::EAGLContextImpl *this)
{
  *this = &unk_2872402D0;
  ProCore_Impl::PCNSRefImpl::release(this + 3);
  *this = &unk_287240288;
  PCSpinLock::~PCSpinLock(this + 2);
}

{
  ProGL::Private::EAGLContextImpl::~EAGLContextImpl(this);

  JUMPOUT(0x2666E9F00);
}

ProGL::CurrentContextSentry *ProGL::CurrentContextSentry::CurrentContextSentry(ProGL::CurrentContextSentry *this)
{
  *this = [MEMORY[0x277CD9388] currentContext];
  *(this + 1) = 0;
  return this;
}

ProGL::CurrentContextSentry *ProGL::CurrentContextSentry::CurrentContextSentry(ProGL::CurrentContextSentry *this, EAGLContext *a2)
{
  *this = [MEMORY[0x277CD9388] currentContext];
  *(this + 1) = a2;
  if (a2)
  {
    v4 = a2;
    [MEMORY[0x277CD9388] setCurrentContext:a2];
  }

  return this;
}

ProGL::CurrentContextSentry *ProGL::CurrentContextSentry::CurrentContextSentry(ProGL::CurrentContextSentry *this, const ProGL::ContextHandle *a2)
{
  *this = [MEMORY[0x277CD9388] currentContext];
  *(this + 1) = ProGL::ContextHandle::getEAGLContext(a2);
  v4 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(a2);
  if (v5)
  {
    v6 = (v5 & 1 | v4) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4 || v7)
  {
    v8 = *(this + 1);
    ProGL::ContextHandle::makeCurrent(a2);
  }

  return this;
}

uint64_t ProGL::Private::cleanUpContextInfo(ProGL::Private *this)
{
  {
    result = MEMORY[0x2666E9F00]();
  }

  {
    result = MEMORY[0x2666E9F00](v2, 0x1020C4062D53EE8);
  }

  return result;
}

void std::__tree<std::__value_type<std::pair<ProGL::ShareGroup,int>,anonymous namespace::PerGroupContextInfo>,std::__map_value_compare<std::pair<ProGL::ShareGroup,int>,std::__value_type<std::pair<ProGL::ShareGroup,int>,anonymous namespace::PerGroupContextInfo>,std::less<std::pair<ProGL::ShareGroup,int>>,true>,std::allocator<std::__value_type<std::pair<ProGL::ShareGroup,int>,anonymous namespace::PerGroupContextInfo>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

uint64_t OZFactories::getInstance(OZFactories *this)
{
  if (OZFactories::getInstance(void)::once != -1)
  {
    OZFactories::getInstance();
  }

  return OZFactories::_instance;
}

void OZFactories::OZFactories(OZFactories *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v2 = &unk_287240360;
  v2[2] = 0;
  v2[1] = v2 + 2;
  v2[3] = 0;
  OZFactories::addChannelFactories(this);
}

void sub_25FE57454(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v1 + 2));
  PCSingleton::~PCSingleton(v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::makeThreadKey(_anonymous_namespace_ *this)
{
}

{
}

uint64_t OZFactories::addChannelFactories(OZFactories *this)
{
  Instance = OZChannelBase_Factory::getInstance(this);
  v3 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (Instance + 8));
  *(v3 + 6) = Instance;
  v4 = OZChannel_Factory::getInstance(v3);
  v5 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v4 + 8));
  *(v5 + 6) = v4;
  v6 = OZChannelDouble_Factory::getInstance(v5);
  v7 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v6 + 8));
  *(v7 + 6) = v6;
  v8 = OZChannelBool_Factory::getInstance(v7);
  v9 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v8 + 8));
  *(v9 + 6) = v8;
  v10 = OZChannelUint32_Factory::getInstance(v9);
  v11 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v10 + 8));
  *(v11 + 6) = v10;
  v12 = OZChannelAngle_Factory::getInstance(v11);
  v13 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v12 + 8));
  *(v13 + 6) = v12;
  v14 = OZChannelPercent_Factory::getInstance(v13);
  v15 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v14 + 8));
  *(v15 + 6) = v14;
  v16 = OZChannelShearAngle_Factory::getInstance(v15);
  v17 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v16 + 8));
  *(v17 + 6) = v16;
  v18 = OZChannelAspectRatio_Factory::getInstance(v17);
  v19 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v18 + 8));
  *(v19 + 6) = v18;
  v20 = OZChannelAspectRatioFootage_Factory::getInstance(v19);
  v21 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v20 + 8));
  *(v21 + 6) = v20;
  v22 = OZChannelGammaFootage_Factory::getInstance(v21);
  v23 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v22 + 8));
  *(v23 + 6) = v22;
  v24 = OZChannelFolder_Factory::getInstance(v23);
  v25 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v24 + 8));
  *(v25 + 6) = v24;
  v26 = OZCompoundChannel_Factory::getInstance(v25);
  v27 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v26 + 8));
  *(v27 + 6) = v26;
  v28 = OZChannel2D_Factory::getInstance(v27);
  v29 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v28 + 8));
  *(v29 + 6) = v28;
  v30 = OZChannelBool3D_Factory::getInstance(v29);
  v31 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v30 + 8));
  *(v31 + 6) = v30;
  v32 = OZChannelPosition_Factory::getInstance(v31);
  v33 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v32 + 8));
  *(v33 + 6) = v32;
  v34 = OZChannelPositionPercent_Factory::getInstance(v33);
  v35 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v34 + 8));
  *(v35 + 6) = v34;
  v36 = OZChannelShear_Factory::getInstance(v35);
  v37 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v36 + 8));
  *(v37 + 6) = v36;
  v38 = OZChannelScale_Factory::getInstance(v37);
  v39 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v38 + 8));
  *(v39 + 6) = v38;
  v40 = OZChannel3D_Factory::getInstance(v39);
  v41 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v40 + 8));
  *(v41 + 6) = v40;
  v42 = OZChannelPosition3D_Factory::getInstance(v41);
  v43 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v42 + 8));
  *(v43 + 6) = v42;
  v44 = OZChannelRotation3D_Factory::getInstance(v43);
  v45 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v44 + 8));
  *(v45 + 6) = v44;
  v46 = OZChannelScale3D_Factory::getInstance(v45);
  v47 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v46 + 8));
  *(v47 + 6) = v46;
  v48 = OZChannelColorNoAlpha_Factory::getInstance(v47);
  v49 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v48 + 8));
  *(v49 + 6) = v48;
  v50 = OZChannelColor_Factory::getInstance(v49);
  v51 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v50 + 8));
  *(v51 + 6) = v50;
  v52 = OZChannelQuad_Factory::getInstance(v51);
  v53 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v52 + 8));
  *(v53 + 6) = v52;
  v54 = OZChannelCrop_Factory::getInstance(v53);
  v55 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v54 + 8));
  *(v55 + 6) = v54;
  v56 = OZChannelDiscreteColor_Factory::getInstance(v55);
  v57 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v56 + 8));
  *(v57 + 6) = v56;
  v58 = OZChannelGradient_Factory::getInstance(v57);
  v59 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v58 + 8));
  *(v59 + 6) = v58;
  v60 = OZChannelGradientRGBFolder_Factory::getInstance(v59);
  v61 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v60 + 8));
  *(v61 + 6) = v60;
  v62 = OZChannelGradientAlphaFolder_Factory::getInstance(v61);
  v63 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v62 + 8));
  *(v63 + 6) = v62;
  v64 = OZChannelGradientSample_Factory::getInstance(v63);
  v65 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v64 + 8));
  *(v65 + 6) = v64;
  v66 = OZChannelGradientSampleRGB_Factory::getInstance(v65);
  v67 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v66 + 8));
  *(v67 + 6) = v66;
  v68 = OZChannelGradientSampleAlpha_Factory::getInstance(v67);
  v69 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v68 + 8));
  *(v69 + 6) = v68;
  v70 = OZChannelGradientExtras_Factory::getInstance(v69);
  v71 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v70 + 8));
  *(v71 + 6) = v70;
  v72 = OZChannelGradientPositioned_Factory::getInstance(v71);
  v73 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v72 + 8));
  *(v73 + 6) = v72;
  v74 = OZChannelVaryingFolder_Factory::getInstance(v73);
  v75 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v74 + 8));
  *(v75 + 6) = v74;
  v76 = OZChannelObjectRootBase_Factory::getInstance(v75);
  v77 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v76 + 8));
  *(v77 + 6) = v76;
  v78 = OZChannelHistogram_Factory::getInstance(v77);
  v79 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v78 + 8));
  *(v79 + 6) = v78;
  v80 = OZChannelLevels_Factory::getInstance(v79);
  v81 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v80 + 8));
  *(v81 + 6) = v80;
  v82 = OZChannelButton_Factory::getInstance(v81);
  v83 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v82 + 8));
  *(v83 + 6) = v82;
  v84 = OZChannelHelpButton_Factory::getInstance(v83);
  v85 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v84 + 8));
  *(v85 + 6) = v84;
  v86 = OZChannelText_Factory::getInstance(v85);
  v87 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v86 + 8));
  *(v87 + 6) = v86;
  v88 = OZChannelDoubleOverRange_Factory::getInstance(v87);
  v89 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v88 + 8));
  *(v89 + 6) = v88;
  v90 = OZChannelScaleOverRange_Factory::getInstance(v89);
  v91 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v90 + 8));
  *(v91 + 6) = v90;
  v92 = OZChannelAngleOverRange_Factory::getInstance(v91);
  v93 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v92 + 8));
  *(v93 + 6) = v92;
  v94 = OZChannelPercentOverRange_Factory::getInstance(v93);
  v95 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v94 + 8));
  *(v95 + 6) = v94;
  v96 = OZChannel2DOverRange_Factory::getInstance(v95);
  v97 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v96 + 8));
  *(v97 + 6) = v96;
  v98 = OZChannelTransformSwitch_Factory::getInstance(v97);
  v99 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v98 + 8));
  *(v99 + 6) = v98;
  v100 = OZChannelUint16_Factory::getInstance(v99);
  v101 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v100 + 8));
  *(v101 + 6) = v100;
  v102 = OZChannelSeed_Factory::getInstance(v101);
  v103 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v102 + 8));
  *(v103 + 6) = v102;
  v104 = OZChannelDecibel_Factory::getInstance(v103);
  v105 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v104 + 8));
  *(v105 + 6) = v104;
  v106 = OZChannelFrame_Factory::getInstance(v105);
  v107 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v106 + 8));
  *(v107 + 6) = v106;
  v108 = OZChannelTimecode_Factory::getInstance(v107);
  v109 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v108 + 8));
  *(v109 + 6) = v108;
  v110 = OZChannelBlindData_Factory::getInstance(v109);
  v111 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v110 + 8));
  *(v111 + 6) = v110;
  v112 = OZChannelCurve_Factory::getInstance(v111);
  v113 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v112 + 8));
  *(v113 + 6) = v112;
  v114 = OZChannelEnum_Factory::getInstance(v113);
  v115 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v114 + 8));
  *(v115 + 6) = v114;
  v116 = OZChannelGradientWithAngle_Factory::getInstance(v115);
  v117 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v116 + 8));
  *(v117 + 6) = v116;
  v118 = OZChannelHistogramSample_Factory::getInstance(v117);
  v119 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v118 + 8));
  *(v119 + 6) = v118;
  v120 = OZChannelProgress_Factory::getInstance(v119);
  v121 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v120 + 8));
  *(v121 + 6) = v120;
  v122 = OZChannelScaleOverLife_Factory::getInstance(v121);
  v123 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v122 + 8));
  *(v123 + 6) = v122;
  v124 = OZChannelVertexFolder_Factory::getInstance(v123);
  v125 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v124 + 8));
  *(v125 + 6) = v124;
  v126 = OZChanObjectRef_Factory::getInstance(v125);
  result = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, (v126 + 8));
  *(result + 48) = v126;
  return result;
}

void OZFactories::~OZFactories(OZFactories *this)
{
  *this = &unk_287240360;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 8, *(this + 2));

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_287240360;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 8, *(this + 2));
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZFactories::addFactory(OZFactories *this, OZFactory *a2)
{
  result = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(this + 8, a2 + 2);
  *(result + 48) = a2;
  return result;
}

uint64_t OZChannelBase_Factory::getInstance(OZChannelBase_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBase_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBase_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBase_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBase_Factory::_instance;
}

uint64_t OZChannel_Factory::getInstance(OZChannel_Factory *this)
{
  if (atomic_load_explicit(&OZChannel_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannel_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannel_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannel_Factory::_instance;
}

uint64_t OZChannelDouble_Factory::getInstance(OZChannelDouble_Factory *this)
{
  if (atomic_load_explicit(&OZChannelDouble_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDouble_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDouble_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDouble_Factory::_instance;
}

uint64_t OZChannelBool_Factory::getInstance(OZChannelBool_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBool_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBool_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBool_Factory::_instance;
}

uint64_t OZChannelUint32_Factory::getInstance(OZChannelUint32_Factory *this)
{
  if (atomic_load_explicit(&OZChannelUint32_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint32_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint32_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint32_Factory::_instance;
}

uint64_t OZChannelAngle_Factory::getInstance(OZChannelAngle_Factory *this)
{
  if (atomic_load_explicit(&OZChannelAngle_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAngle_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngle_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAngle_Factory::_instance;
}

uint64_t OZChannelPercent_Factory::getInstance(OZChannelPercent_Factory *this)
{
  if (atomic_load_explicit(&OZChannelPercent_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercent_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercent_Factory::_instance;
}

uint64_t OZChannelShearAngle_Factory::getInstance(OZChannelShearAngle_Factory *this)
{
  if (atomic_load_explicit(&OZChannelShearAngle_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelShearAngle_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShearAngle_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelShearAngle_Factory::_instance;
}

uint64_t OZChannelAspectRatio_Factory::getInstance(OZChannelAspectRatio_Factory *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatio_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatio_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatio_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatio_Factory::_instance;
}

uint64_t OZChannelAspectRatioFootage_Factory::getInstance(OZChannelAspectRatioFootage_Factory *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatioFootage_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatioFootage_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatioFootage_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatioFootage_Factory::_instance;
}

uint64_t OZChannelGammaFootage_Factory::getInstance(OZChannelGammaFootage_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGammaFootage_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGammaFootage_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGammaFootage_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGammaFootage_Factory::_instance;
}

uint64_t OZChannelFolder_Factory::getInstance(OZChannelFolder_Factory *this)
{
  if (atomic_load_explicit(&OZChannelFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelFolder_Factory::_instance;
}

uint64_t OZCompoundChannel_Factory::getInstance(OZCompoundChannel_Factory *this)
{
  if (atomic_load_explicit(&OZCompoundChannel_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCompoundChannel_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCompoundChannel_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCompoundChannel_Factory::_instance;
}

uint64_t OZChannel2D_Factory::getInstance(OZChannel2D_Factory *this)
{
  if (atomic_load_explicit(&OZChannel2D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannel2D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannel2D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannel2D_Factory::_instance;
}

uint64_t OZChannelBool3D_Factory::getInstance(OZChannelBool3D_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBool3D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBool3D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool3D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBool3D_Factory::_instance;
}

uint64_t OZChannelPosition_Factory::getInstance(OZChannelPosition_Factory *this)
{
  if (atomic_load_explicit(&OZChannelPosition_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPosition_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPosition_Factory::_instance;
}

uint64_t OZChannelPositionPercent_Factory::getInstance(OZChannelPositionPercent_Factory *this)
{
  if (atomic_load_explicit(&OZChannelPositionPercent_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPositionPercent_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPositionPercent_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPositionPercent_Factory::_instance;
}

uint64_t OZChannelShear_Factory::getInstance(OZChannelShear_Factory *this)
{
  if (atomic_load_explicit(&OZChannelShear_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelShear_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShear_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelShear_Factory::_instance;
}

uint64_t OZChannelScale_Factory::getInstance(OZChannelScale_Factory *this)
{
  if (atomic_load_explicit(&OZChannelScale_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScale_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScale_Factory::_instance;
}

uint64_t OZChannel3D_Factory::getInstance(OZChannel3D_Factory *this)
{
  if (atomic_load_explicit(&OZChannel3D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannel3D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannel3D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannel3D_Factory::_instance;
}

uint64_t OZChannelPosition3D_Factory::getInstance(OZChannelPosition3D_Factory *this)
{
  if (atomic_load_explicit(&OZChannelPosition3D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPosition3D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition3D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPosition3D_Factory::_instance;
}

uint64_t OZChannelRotation3D_Factory::getInstance(OZChannelRotation3D_Factory *this)
{
  if (atomic_load_explicit(&OZChannelRotation3D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelRotation3D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelRotation3D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelRotation3D_Factory::_instance;
}

uint64_t OZChannelScale3D_Factory::getInstance(OZChannelScale3D_Factory *this)
{
  if (atomic_load_explicit(&OZChannelScale3D_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScale3D_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale3D_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScale3D_Factory::_instance;
}

uint64_t OZChannelColorNoAlpha_Factory::getInstance(OZChannelColorNoAlpha_Factory *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha_Factory::_instance;
}

uint64_t OZChannelColor_Factory::getInstance(OZChannelColor_Factory *this)
{
  if (atomic_load_explicit(&OZChannelColor_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColor_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColor_Factory::_instance;
}

uint64_t OZChannelQuad_Factory::getInstance(OZChannelQuad_Factory *this)
{
  if (atomic_load_explicit(&OZChannelQuad_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelQuad_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelQuad_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelQuad_Factory::_instance;
}

uint64_t OZChannelCrop_Factory::getInstance(OZChannelCrop_Factory *this)
{
  if (atomic_load_explicit(&OZChannelCrop_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelCrop_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCrop_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelCrop_Factory::_instance;
}

uint64_t OZChannelDiscreteColor_Factory::getInstance(OZChannelDiscreteColor_Factory *this)
{
  if (atomic_load_explicit(&OZChannelDiscreteColor_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDiscreteColor_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDiscreteColor_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDiscreteColor_Factory::_instance;
}

uint64_t OZChannelGradient_Factory::getInstance(OZChannelGradient_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradient_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradient_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradient_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradient_Factory::_instance;
}

uint64_t OZChannelGradientRGBFolder_Factory::getInstance(OZChannelGradientRGBFolder_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientRGBFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientRGBFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientRGBFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientRGBFolder_Factory::_instance;
}

uint64_t OZChannelGradientAlphaFolder_Factory::getInstance(OZChannelGradientAlphaFolder_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientAlphaFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientAlphaFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientAlphaFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientAlphaFolder_Factory::_instance;
}

uint64_t OZChannelGradientSample_Factory::getInstance(OZChannelGradientSample_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientSample_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientSample_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientSample_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientSample_Factory::_instance;
}

uint64_t OZChannelGradientSampleRGB_Factory::getInstance(OZChannelGradientSampleRGB_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientSampleRGB_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientSampleRGB_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientSampleRGB_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientSampleRGB_Factory::_instance;
}

uint64_t OZChannelGradientSampleAlpha_Factory::getInstance(OZChannelGradientSampleAlpha_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientSampleAlpha_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientSampleAlpha_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientSampleAlpha_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientSampleAlpha_Factory::_instance;
}

uint64_t OZChannelGradientExtras_Factory::getInstance(OZChannelGradientExtras_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientExtras_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientExtras_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientExtras_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientExtras_Factory::_instance;
}

uint64_t OZChannelGradientPositioned_Factory::getInstance(OZChannelGradientPositioned_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientPositioned_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientPositioned_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientPositioned_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientPositioned_Factory::_instance;
}

uint64_t OZChannelVaryingFolder_Factory::getInstance(OZChannelVaryingFolder_Factory *this)
{
  if (atomic_load_explicit(&OZChannelVaryingFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelVaryingFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelVaryingFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelVaryingFolder_Factory::_instance;
}

uint64_t OZChannelObjectRootBase_Factory::getInstance(OZChannelObjectRootBase_Factory *this)
{
  if (atomic_load_explicit(&OZChannelObjectRootBase_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelObjectRootBase_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelObjectRootBase_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelObjectRootBase_Factory::_instance;
}

uint64_t OZChannelHistogram_Factory::getInstance(OZChannelHistogram_Factory *this)
{
  if (atomic_load_explicit(&OZChannelHistogram_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelHistogram_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelHistogram_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelHistogram_Factory::_instance;
}

uint64_t OZChannelLevels_Factory::getInstance(OZChannelLevels_Factory *this)
{
  if (atomic_load_explicit(&OZChannelLevels_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelLevels_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelLevels_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelLevels_Factory::_instance;
}

uint64_t OZChannelButton_Factory::getInstance(OZChannelButton_Factory *this)
{
  if (atomic_load_explicit(&OZChannelButton_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelButton_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelButton_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelButton_Factory::_instance;
}

uint64_t OZChannelHelpButton_Factory::getInstance(OZChannelHelpButton_Factory *this)
{
  if (atomic_load_explicit(&OZChannelHelpButton_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelHelpButton_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelHelpButton_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelHelpButton_Factory::_instance;
}

uint64_t OZChannelText_Factory::getInstance(OZChannelText_Factory *this)
{
  if (atomic_load_explicit(&OZChannelText_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelText_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelText_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelText_Factory::_instance;
}

uint64_t OZChannelDoubleOverRange_Factory::getInstance(OZChannelDoubleOverRange_Factory *this)
{
  if (atomic_load_explicit(&OZChannelDoubleOverRange_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDoubleOverRange_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDoubleOverRange_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDoubleOverRange_Factory::_instance;
}

uint64_t OZChannelScaleOverRange_Factory::getInstance(OZChannelScaleOverRange_Factory *this)
{
  if (atomic_load_explicit(&OZChannelScaleOverRange_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScaleOverRange_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScaleOverRange_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScaleOverRange_Factory::_instance;
}

uint64_t OZChannelAngleOverRange_Factory::getInstance(OZChannelAngleOverRange_Factory *this)
{
  if (atomic_load_explicit(&OZChannelAngleOverRange_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAngleOverRange_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAngleOverRange_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAngleOverRange_Factory::_instance;
}

uint64_t OZChannelPercentOverRange_Factory::getInstance(OZChannelPercentOverRange_Factory *this)
{
  if (atomic_load_explicit(&OZChannelPercentOverRange_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercentOverRange_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercentOverRange_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercentOverRange_Factory::_instance;
}

uint64_t OZChannel2DOverRange_Factory::getInstance(OZChannel2DOverRange_Factory *this)
{
  if (atomic_load_explicit(&OZChannel2DOverRange_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannel2DOverRange_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannel2DOverRange_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannel2DOverRange_Factory::_instance;
}

uint64_t OZChannelTransformSwitch_Factory::getInstance(OZChannelTransformSwitch_Factory *this)
{
  if (atomic_load_explicit(&OZChannelTransformSwitch_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelTransformSwitch_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTransformSwitch_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelTransformSwitch_Factory::_instance;
}

uint64_t OZChannelUint16_Factory::getInstance(OZChannelUint16_Factory *this)
{
  if (atomic_load_explicit(&OZChannelUint16_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint16_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint16_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint16_Factory::_instance;
}

uint64_t OZChannelSeed_Factory::getInstance(OZChannelSeed_Factory *this)
{
  if (atomic_load_explicit(&OZChannelSeed_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelSeed_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSeed_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelSeed_Factory::_instance;
}

uint64_t OZChannelDecibel_Factory::getInstance(OZChannelDecibel_Factory *this)
{
  if (atomic_load_explicit(&OZChannelDecibel_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDecibel_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDecibel_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDecibel_Factory::_instance;
}

uint64_t OZChannelFrame_Factory::getInstance(OZChannelFrame_Factory *this)
{
  if (atomic_load_explicit(&OZChannelFrame_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelFrame_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFrame_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelFrame_Factory::_instance;
}

uint64_t OZChannelTimecode_Factory::getInstance(OZChannelTimecode_Factory *this)
{
  if (atomic_load_explicit(&OZChannelTimecode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelTimecode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTimecode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelTimecode_Factory::_instance;
}

uint64_t OZChannelBlindData_Factory::getInstance(OZChannelBlindData_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBlindData_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBlindData_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBlindData_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBlindData_Factory::_instance;
}

uint64_t OZChannelCurve_Factory::getInstance(OZChannelCurve_Factory *this)
{
  if (atomic_load_explicit(&OZChannelCurve_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelCurve_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCurve_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelCurve_Factory::_instance;
}

uint64_t OZChannelEnum_Factory::getInstance(OZChannelEnum_Factory *this)
{
  if (atomic_load_explicit(&OZChannelEnum_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnum_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnum_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnum_Factory::_instance;
}

uint64_t OZChannelGradientWithAngle_Factory::getInstance(OZChannelGradientWithAngle_Factory *this)
{
  if (atomic_load_explicit(&OZChannelGradientWithAngle_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGradientWithAngle_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGradientWithAngle_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGradientWithAngle_Factory::_instance;
}

uint64_t OZChannelHistogramSample_Factory::getInstance(OZChannelHistogramSample_Factory *this)
{
  if (atomic_load_explicit(&OZChannelHistogramSample_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelHistogramSample_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelHistogramSample_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelHistogramSample_Factory::_instance;
}

uint64_t OZChannelProgress_Factory::getInstance(OZChannelProgress_Factory *this)
{
  if (atomic_load_explicit(&OZChannelProgress_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelProgress_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelProgress_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelProgress_Factory::_instance;
}

uint64_t OZChannelScaleOverLife_Factory::getInstance(OZChannelScaleOverLife_Factory *this)
{
  if (atomic_load_explicit(&OZChannelScaleOverLife_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScaleOverLife_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScaleOverLife_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScaleOverLife_Factory::_instance;
}

uint64_t OZChannelVertexFolder_Factory::getInstance(OZChannelVertexFolder_Factory *this)
{
  if (atomic_load_explicit(&OZChannelVertexFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelVertexFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelVertexFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelVertexFolder_Factory::_instance;
}

uint64_t OZChanObjectRef_Factory::getInstance(OZChanObjectRef_Factory *this)
{
  if (atomic_load_explicit(&OZChanObjectRef_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanObjectRef_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRef_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanObjectRef_Factory::_instance;
}

void *OZFactories::getFactoryLoadMap(OZFactories *this)
{
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t *OZFactories::setFactoryLoadID(OZFactories *this, unsigned int a2, OZFactory *a3)
{
  v6 = a2;
  FactoryLoadMap = OZFactories::getFactoryLoadMap(this);
  v7 = &v6;
  result = std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(FactoryLoadMap, &v6);
  result[5] = a3;
  return result;
}

void OZFactories::clearFactoryLoadIDs(OZFactories *this)
{
  FactoryLoadMap = OZFactories::getFactoryLoadMap(this);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(FactoryLoadMap, *(FactoryLoadMap + 1));
  *FactoryLoadMap = FactoryLoadMap + 8;
  *(FactoryLoadMap + 2) = 0;
  *(FactoryLoadMap + 1) = 0;
}

uint64_t OZFactories::lookupFactory(OZFactories *this, unsigned int a2)
{
  FactoryLoadMap = OZFactories::getFactoryLoadMap(this);
  v6 = FactoryLoadMap[1];
  v4 = (FactoryLoadMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= a2)
  {
    return *(v7 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t OZFactories::findFactory(uint64_t a1, unsigned int *a2)
{
  v3 = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::find<PCUUID>(a1 + 8, a2);
  if ((a1 + 16) == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 6);
  }
}

uint64_t OZFactories::saveFactories(OZFactories *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZFactoryScope);
  v4 = *(this + 1);
  v5 = this + 16;
  if (v4 != this + 16)
  {
    v6 = 1;
    do
    {
      v7 = *(v4 + 6);
      OZFactory::setFileRefID(v7, 0);
      if (OZFactory::needsSaving(v7, v8))
      {
        v9 = (*(*v7 + 64))(v7);
        v10 = (*(*v7 + 72))(v7);
        (*(*a2 + 16))(a2, 92);
        (*(*a2 + 144))(a2, 111, v6);
        (*(*a2 + 192))(a2, 117, v7 + 8);
        (*(*v7 + 40))(&v16, v7);
        (*(*a2 + 16))(a2, 93);
        (*(*a2 + 104))(a2, &v16);
        (*(*a2 + 24))(a2);
        PCString::~PCString(&v16);
        (*(*v7 + 56))(&v15, v7);
        (*(*a2 + 16))(a2, 95);
        (*(*a2 + 104))(a2, &v15);
        (*(*a2 + 24))(a2);
        PCString::~PCString(&v15);
        (*(*a2 + 16))(a2, 94);
        (*(*a2 + 88))(a2, v10 * 0.1 + v9);
        (*(*a2 + 24))(a2);
        (*(*a2 + 24))(a2);
        (*(*a2 + 224))(a2);
        OZFactory::setNeedsSaving(v7, 0);
        OZFactory::setFileRefID(v7, v6);
        v6 = (v6 + 1);
      }

      v11 = *(v4 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v4 + 2);
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  (*(*a2 + 224))(a2);
  PCSerializerWriteStream::popScope(a2);
  return 1;
}

void sub_25FE5A134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCString::~PCString(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::freeThreadSpecific(_anonymous_namespace_ *this, void *a2)
{
  v3 = (this + 8);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this, *(this + 1));
  *this = v3;
  *(this + 2) = 0;
  *v3 = 0;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this, 0);
  MEMORY[0x2666E9F00](this, 0x1020C4062D53EE8);

  return pthread_setspecific(v4, 0);
}

void OZChannelBase_Factory::OZChannelBase_Factory(OZChannelBase_Factory *this)
{
  v4 = xmmword_260848360;
  v3 = 0uLL;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240398;
  *(this + 16) = &unk_287240468;
}

void OZChannel_Factory::OZChannel_Factory(OZChannel_Factory *this)
{
  v3 = xmmword_260848360;
  v4 = xmmword_260848370;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872404C0;
  *(this + 16) = &unk_287240590;
}

void OZChannelDouble_Factory::OZChannelDouble_Factory(OZChannelDouble_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848380;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872405E8;
  *(this + 16) = &unk_2872406B8;
}

void OZChannelDouble::OZChannelDouble(OZChannelDouble *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  *v9 = &unk_287245C60;
  *(v9 + 2) = &unk_287245FC0;
  OZChannelDoubleInfo = OZChannelDouble::createOZChannelDoubleInfo(v9);
  if (a6)
  {
    v11 = *(this + 17);
  }

  else
  {
    v11 = OZChannelDouble::_OZChannelDoubleInfo;
    *(this + 17) = OZChannelDouble::_OZChannelDoubleInfo;
  }

  *(this + 16) = v11;
  OZChannelDouble::createOZChannelDoubleImpl(OZChannelDoubleInfo);
  if (a5)
  {
    v12 = *(this + 15);
  }

  else
  {
    v12 = OZChannelDouble::_OZChannelDoubleImpl;
    *(this + 15) = OZChannelDouble::_OZChannelDoubleImpl;
  }

  *(this + 14) = v12;
}

void OZChannelBool_Factory::OZChannelBool_Factory(OZChannelBool_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848390;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240710;
  *(this + 16) = &unk_2872407E0;
}

void OZChannelUint32_Factory::OZChannelUint32_Factory(OZChannelUint32_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240838;
  *(this + 16) = &unk_287240908;
}

void OZChannelUint32::OZChannelUint32(OZChannelUint32 *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287246400;
  v9->var2 = &unk_287246760;
  OZChannelUint32Info = OZChannelUint32::createOZChannelUint32Info(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint32::_OZChannelUint32Info;
    this->var17 = OZChannelUint32::_OZChannelUint32Info;
  }

  this->var16 = var17;
  OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32Info);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint32::_OZChannelUint32Impl;
    this->var15 = OZChannelUint32::_OZChannelUint32Impl;
  }

  this->var14 = var15;
}

void OZChannelAngle_Factory::OZChannelAngle_Factory(OZChannelAngle_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240960;
  *(this + 16) = &unk_287240A30;
}

void OZChannelAngle::OZChannelAngle(OZChannelAngle *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287246030;
  v9->var2 = &unk_287246390;
  OZChannelAngleInfo = OZChannelAngle::createOZChannelAngleInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAngle::_OZChannelAngleInfo;
    this->var17 = OZChannelAngle::_OZChannelAngleInfo;
  }

  this->var16 = var17;
  OZChannelAngle::createOZChannelAngleImpl(OZChannelAngleInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAngle::_OZChannelAngleImpl;
    this->var15 = OZChannelAngle::_OZChannelAngleImpl;
  }

  this->var14 = var15;
}

void OZChannelPercent_Factory::OZChannelPercent_Factory(OZChannelPercent_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240A88;
  *(this + 16) = &unk_287240B58;
}

void OZChannelShearAngle_Factory::OZChannelShearAngle_Factory(OZChannelShearAngle_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240BB0;
  *(this + 16) = &unk_287240C80;
}

void OZChannelShearAngle::OZChannelShearAngle(OZChannelShearAngle *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287246BA0;
  v9->var2 = &unk_287246F00;
  OZChannelShearAngleInfo = OZChannelShearAngle::createOZChannelShearAngleInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelShearAngle::_OZChannelShearAngleInfo;
    this->var17 = OZChannelShearAngle::_OZChannelShearAngleInfo;
  }

  this->var16 = var17;
  OZChannelShearAngle::createOZChannelShearAngleImpl(OZChannelShearAngleInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelShearAngle::_OZChannelShearAngleImpl;
    this->var15 = OZChannelShearAngle::_OZChannelShearAngleImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelShearAngle::createOZChannelShearAngleInfo(OZChannelShearAngle *this)
{
  if (atomic_load_explicit(&OZChannelShearAngle::createOZChannelShearAngleInfo(void)::_OZChannelShearAngleInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelShearAngle::createOZChannelShearAngleInfo(void)::_OZChannelShearAngleInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShearAngle::createOZChannelShearAngleInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelShearAngle::_OZChannelShearAngleInfo;
}

uint64_t OZChannelShearAngle::createOZChannelShearAngleImpl(OZChannelShearAngle *this)
{
  if (atomic_load_explicit(&OZChannelShearAngle::createOZChannelShearAngleImpl(void)::_OZChannelShearAngleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelShearAngle::createOZChannelShearAngleImpl(void)::_OZChannelShearAngleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShearAngle::createOZChannelShearAngleImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelShearAngle::_OZChannelShearAngleImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShearAngle::createOZChannelShearAngleInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelShearAngle::_OZChannelShearAngleInfo)
  {
    operator new();
  }
}

void OZChannelShearAngleInfo::OZChannelShearAngleInfo(OZChannelShearAngleInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, -1.57079633, 1.57079633, 0.0174532925, 0.000174532925, 57.2957795, "°");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287240CD8;
  *(this + 10) = &unk_287240CF8;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelShearAngle::createOZChannelShearAngleImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelShearAngle::_OZChannelShearAngleImpl)
  {
    operator new();
  }
}

void sub_25FE5C108(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelAspectRatio_Factory::OZChannelAspectRatio_Factory(OZChannelAspectRatio_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483E0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240DC8;
  *(this + 16) = &unk_287240E98;
}

void OZChannelAspectRatio::OZChannelAspectRatio(OZChannelAspectRatio *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287246F70;
  v9->var2 = &unk_2872472D0;
  OZChannelAspectRatioInfo = OZChannelAspectRatio::createOZChannelAspectRatioInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAspectRatio::_OZChannelAspectRatioInfo;
    this->var17 = OZChannelAspectRatio::_OZChannelAspectRatioInfo;
  }

  this->var16 = var17;
  OZChannelAspectRatio::createOZChannelAspectRatioImpl(OZChannelAspectRatioInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAspectRatio::_OZChannelAspectRatioImpl;
    this->var15 = OZChannelAspectRatio::_OZChannelAspectRatioImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelAspectRatio::createOZChannelAspectRatioInfo(OZChannelAspectRatio *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatio::createOZChannelAspectRatioInfo(void)::_OZChannelAspectRatioInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatio::createOZChannelAspectRatioInfo(void)::_OZChannelAspectRatioInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatio::createOZChannelAspectRatioInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatio::_OZChannelAspectRatioInfo;
}

uint64_t OZChannelAspectRatio::createOZChannelAspectRatioImpl(OZChannelAspectRatio *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatio::createOZChannelAspectRatioImpl(void)::_OZChannelAspectRatioImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatio::createOZChannelAspectRatioImpl(void)::_OZChannelAspectRatioImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatio::createOZChannelAspectRatioImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatio::_OZChannelAspectRatioImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatio::createOZChannelAspectRatioInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAspectRatio::_OZChannelAspectRatioInfo)
  {
    operator new();
  }
}

void OZChannelAspectRatioInfo::OZChannelAspectRatioInfo(OZChannelAspectRatioInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 3.0, 0.0001, 0.1, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287240EF0;
  *(this + 10) = &unk_287240F10;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatio::createOZChannelAspectRatioImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAspectRatio::_OZChannelAspectRatioImpl)
  {
    operator new();
  }
}