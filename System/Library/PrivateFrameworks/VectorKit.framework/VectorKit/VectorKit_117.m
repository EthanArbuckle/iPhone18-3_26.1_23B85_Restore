void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedPositionCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AEC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelImageLoader>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2AFB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelImageLoader::enqueueIconForRendering(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 140))
  {
    return;
  }

  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  do
  {
    v8 = atomic_load((*v5 + 142));
    if ((v8 & 1) == 0)
    {
      ++v7;
      if ((*(*v5 + 140) & 1) == 0)
      {
        md::LabelImageLoader::enqueueIconForRendering(a1, v5);
      }
    }

    v5 += 16;
  }

  while (v5 != v6);
  if (!v7)
  {
    v2 = *a2;
LABEL_10:
    *(v2 + 140) = 1;
    v9 = atomic_load((v2 + 142));
    if ((v9 & 1) == 0)
    {
      v10 = *(a1 + 112);
      v11 = *(v10 + 256);
      if (*(v11 + 184) == 1)
      {
        v12 = *(v11 + 16);
      }

      else
      {
        v12 = 0;
      }

      gdc::ServiceLocator::resolveWeak<mre::GraphicsResourceStore>(&v21, **(v10 + 112), *(*(v10 + 112) + 8));
      if (*(*(a1 + 112) + 3417) != 1)
      {
        atomic_fetch_add((a1 + 140), 1u);
        v15 = a2[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(a1 + 128);
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v17, *(*(a1 + 112) + 8), *(*(a1 + 112) + 16));
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = 0;
        operator new();
      }

      v13 = *a2;
      v14 = v22;
      v19 = v21;
      v20 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 16))(v13, 0, v12, &v19);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }
}

void sub_1B308D6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a20);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
    if (!v22)
    {
LABEL_3:
      if (!v21)
      {
LABEL_8:
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (!v21)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[5];
  v8 = a1[4];
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, 1, v3, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v5 = a1[7];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[2];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[9];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  std::recursive_mutex::lock((v2 + 24));
  v3 = a1[3];
  if (*(v3 + 16))
  {
    atomic_store(1u, (v3 + 143));
    atomic_store(1u, (v3 + 144));
  }

  atomic_store(1u, (v3 + 142));
  v4 = a1[5];
  std::mutex::lock(v4);
  sig = v4[1].__m_.__sig;
  if (sig)
  {
    atomic_fetch_add((sig + 140), 0xFFFFFFFF);
    v6 = (sig + 136);
    atomic_fetch_add((sig + 136), 1u);
    v7 = atomic_load((sig + 140));
    if (!v7 || (v8 = atomic_load(v6), v8 >= 0x14))
    {
      atomic_store(0, v6);
      v9 = a1[1];
      *(v9 + 3038) = 1;
      *(v9 + 3040) = 1;
      v10 = atomic_load((v9 + 3053));
      if (v10)
      {
        v11 = *(v9 + 136);
        if (v11)
        {
          v12 = *(v11 + 56);
          if (v12)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v12, v9, 9);
          }
        }
      }
    }
  }

  std::mutex::unlock(v4);

  std::recursive_mutex::unlock((v2 + 24));
}

void sub_1B308DA9C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A2B030;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2B030;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2B030;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = __p[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

uint64_t std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A2AFE8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v4 = *(result + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 72);
  *(a2 + 64) = *(result + 64);
  *(a2 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2AFE8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0,std::allocator<md::LabelImageLoader::enqueueIconForRendering(std::shared_ptr<md::LabelIcon> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2AFE8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,true>,std::__unordered_map_equal<std::shared_ptr<md::LabelImageKey const>,std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(a2 + 16);
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::LabelImageKey const>,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::ListEntry,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x60040F4D52C6FuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B308E3F0(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[7].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  md::LabelIcon::~LabelIcon(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

double md::LabelIcon::LabelIcon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F2A43D38;
  *(a1 + 8) = &unk_1F2A43EB8;
  *(a1 + 16) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result = 1.40444743e306;
  *(a1 + 48) = xmmword_1B33B0730;
  *(a1 + 64) = xmmword_1B33B0730;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a5;
  *(a1 + 104) = a4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  return result;
}

void std::__shared_ptr_emplace<md::ShieldLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::PointLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B0B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::pair<unsigned int,unsigned int>,std::less<std::pair<unsigned int,unsigned int>>,geo::allocator_adapter<std::pair<unsigned int,unsigned int>,mdm::zone_mallocator>>::destroy(a1[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void md::HighlightHelper::debugTileToString(std::string *this, const geo::QuadTile *a2)
{
  std::to_string(&v17, *(a2 + 2));
  v4 = std::string::append(&v17, ".", 1uLL);
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v16, *(a2 + 1));
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v18, v6, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, ".", 1uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v15, *(a2 + 1));
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v15.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v20, v12, v13);
  *this = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B308E91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::debugTileToString(std::string *a1, uint64_t a2)
{
  std::to_string(&v17, *(a2 + 1) >> 6);
  v4 = std::string::append(&v17, ".", 1uLL);
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v16, *(a2 + 5) & 0x3FFFFFF);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v18, v6, size);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v19, ".", 1uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v15, *(a2 + 1) & 0x3F);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v15;
  }

  else
  {
    v12 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v15.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v20, v12, v13);
  *a1 = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B308EB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::tileToScreenPoints(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v8 = *(*a1 + 169);
  v9 = *(*a1 + 172);
  v10 = *(*a1 + 176);
  std::vector<gm::Matrix<double,2,1>>::reserve(&v51, a3);
  v11 = v52;
  if (a3)
  {
    v12 = 0;
    v13 = 1.0 / (1 << v8);
    v14 = v13 * v10;
    v15 = v13 * ((1 << v8) + ~v9);
    v16 = fmax(v13, 0.0);
    do
    {
      v17 = (a2 + 8 * v12);
      v18 = v14 + v16 * *v17;
      v19 = v15 + v16 * v17[1];
      if (v11 >= v53)
      {
        v20 = v51;
        v21 = (v11 - v51) >> 4;
        v22 = v21 + 1;
        if ((v21 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = v53 - v51;
        if ((v53 - v51) >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v24);
        }

        v25 = (16 * v21);
        *v25 = v18;
        v25[1] = v19;
        if (v20 != v11)
        {
          v26 = v20;
          v27 = 0;
          do
          {
            v28 = *v26;
            v26 += 2;
            *v27++ = v28;
          }

          while (v26 != v11);
        }

        v11 = v25 + 2;
        v51 = 0;
        v53 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = v18;
        v11[1] = v19;
        v11 += 2;
      }

      ++v12;
    }

    while (v12 != a3);
  }

  v29 = v51;
  std::vector<gm::Matrix<float,2,1>>::reserve(a4, ((v11 - v51) >> 4) + ((a4[1] - *a4) >> 3));
  if (v29 != v11)
  {
    v30 = v29;
    do
    {
      if (*(a1 + 16) == 1)
      {
        v31 = *(a1 + 8);
        *__p = *v30;
        v55 = 0.0;
      }

      else
      {
        v32 = *v30 * 6.28318531;
        v33 = exp(v30[1] * 6.28318531 + -3.14159265);
        v34 = atan(v33) * 2.0 + -1.57079633;
        v35 = fmod(v32, 6.28318531);
        v36 = fmod(v35 + 6.28318531, 6.28318531) + -3.14159265;
        v37 = __sincos_stret(v34);
        v38 = 6378137.0 / sqrt(v37.__sinval * v37.__sinval * -0.00669437999 + 1.0);
        v39 = __sincos_stret(v36);
        v31 = *(a1 + 8);
        *__p = v38 * v37.__cosval * v39.__cosval;
        *&__p[1] = v38 * v37.__cosval * v39.__sinval;
        v55 = v37.__sinval * 0.99330562 * v38;
      }

      v40 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v31, __p);
      v42 = v41;
      v44 = a4[1];
      v43 = a4[2];
      if (v44 >= v43)
      {
        v46 = (v44 - *a4) >> 3;
        v47 = v46 + 1;
        if ((v46 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v48 = v43 - *a4;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        v57 = a4;
        if (v49)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v49);
        }

        v50 = (8 * v46);
        __p[0] = 0;
        __p[1] = v50;
        *v50 = v40;
        v50[1] = v42;
        *&v55 = 8 * v46 + 8;
        v56 = 0;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a4, __p);
        v45 = a4[1];
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v44 = v40;
        v44[1] = v42;
        v45 = v44 + 2;
      }

      a4[1] = v45;
      v30 += 2;
    }

    while (v30 != v11);
  }

  if (v29)
  {

    operator delete(v29);
  }
}

void sub_1B308EF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::HighlightHelper::hitTest(float32x2_t *a1, float32x2_t *a2, float *a3, float a4, float a5, float a6)
{
  v12 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  if (a1 == a2)
  {
    return 0;
  }

  v8 = a2 - a1 == 8 ? ((a4 - a1->f32[0]) * (a4 - a1->f32[0])) + ((a5 - a1->f32[1]) * (a5 - a1->f32[1])) : gm::Matrix<float,2,1>::distanceSquaredToPolyline<int,void>(&v12, a2 - a1, a1, &v11, &v10);
  if (v8 >= a6)
  {
    return 0;
  }

  *a3 = v8;
  return 1;
}

id md::HighlightHelper::debugAttributesToString(int **this, const gss::FeatureAttributeSet *a2)
{
  gss::attributesToString(__p, this, 0, 0, 0x1000uLL);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1B308F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id md::HighlightHelper::debugAttributesToString(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(*a1 + 33);
  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (v2)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v15, v2);
    v4 = v16;
    v5 = v16 + 8 * v2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = 0;
      v4 += 8;
    }

    while (v4 != v5);
    v16 = v5;
    v6 = *(*a1 + 33);
    if (*(*a1 + 33))
    {
      v7 = v15 + 1;
      v8 = (**a1 + 4);
      do
      {
        *(v7 - 1) = *(v8 - 1);
        v9 = *v8;
        v8 += 2;
        *v7 = v9;
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  gss::attributesToString(__p, &v15, 0, 0, 0x1000uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [v1 stringWithUTF8String:v10];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

id md::HighlightHelper::debugClientAttributesToString(uint64_t a1)
{
  if (a1)
  {
    gss::StylesheetQuery<gss::PropertyID>::debugClientAttributes(v4, a1);
    gss::attributesToString(__p, v4, 0, 0x1000uLL);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
    if (v6 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B308F298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::HighlightHelper::appendLinesUsingPrefix(md::HighlightHelper *this, NSString *a2, NSString *a3, NSMutableString *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = this;
  v7 = a3;
  v8 = [(NSString *)a2 componentsSeparatedByString:@"\n"];
  v9 = [v8 lastObject];
  v10 = [v9 isEqualToString:&stru_1F2A61C40];

  if (v10)
  {
    v11 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];

    v8 = v11;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(NSString *)v7 appendFormat:@"%@%@\n", v6, *(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

uint64_t md::HighlightHelper::to_string(md::HighlightHelper *this, const geo::QuadTile *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v12);
  v4 = MEMORY[0x1B8C61C80](&v12, *(a2 + 2));
  v21 = 46;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v21, 1);
  v6 = MEMORY[0x1B8C61C80](v5, *(a2 + 1));
  v21 = 46;
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v21, 1);
  MEMORY[0x1B8C61C90](v7, *(a2 + 1));
  if ((v19 & 0x10) != 0)
  {
    v9 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v9 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v8 = 0;
      *(this + 23) = 0;
      goto LABEL_14;
    }

    locale = v14[1].__locale_;
    v9 = v14[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v8;
  if (v8)
  {
    memmove(this, locale, v8);
  }

LABEL_14:
  *(this + v8) = 0;
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v20);
}

void sub_1B308F6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

void md::DaVinciElevationRasterLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap(&v16, *(a1 + 592), *a3, a3[1]);
  v7 = v16;
  v6 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v8 = v7[18];
  v9 = *(v8 + 2840);
  v10 = *(v8 + 2836);
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (md::ElevationRaster::decodePngElevationRaster(v9, v10, __p, &v13, &v12))
  {
    gdc::Tiled::tileFromLayerDataKey(&v11, *(a2 + 16));
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B308FC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  shared_weak_owners = v43[32].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  v47 = v43[31].__shared_weak_owners_;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  md::MapTileData::~MapTileData(v44);
  std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  std::__shared_weak_count::~__shared_weak_count(v43);
  operator delete(v48);
  if (a10)
  {
    operator delete(a10);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  _Unwind_Resume(a1);
}

void sub_1B308FD4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B308FD38);
}

void std::__shared_ptr_emplace<md::DaVinciElevationRaster>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciElevationRasterLayerDataSource::~DaVinciElevationRasterLayerDataSource(md::DaVinciElevationRasterLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void md::StandardLabeler::debugHighlightFeatureMarker(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(v2 + 296);
    v7 = *(v2 + 288);
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v7 = 0;
    v8 = 0;
  }

  v4[1] = 0;
  v5[0] = 0;
  v4[0] = 0;
  *&v5[1] = -1;
  v5[3] = -1;
  v6 = 0;
  md::StandardLabeler::setDebugHighlight(a1, &v7, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B308FED8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id GEOGetVectorKitLabelHighlightLog(void)
{
  if (GEOGetVectorKitLabelHighlightLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelHighlightLog(void)::onceToken, &__block_literal_global_27401);
  }

  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;

  return v1;
}

void ___ZL32GEOGetVectorKitLabelHighlightLogv_block_invoke_27405()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelHighlight");
  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;
  GEOGetVectorKitLabelHighlightLog(void)::log = v0;
}

BOOL md::StandardLabeler::debugHighlightLabelAtPixel(std::__shared_weak_count *a1, float *a2)
{
  md::StandardLabeler::labelAtPixel(&v14, a1, a2, 0, 0);
  v4 = v14;
  if (v14)
  {
    v5 = *(v14 + 16);
    v8 = *(v14 + 8);
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v4 + 48);
    v11 = -1;
    v12 = -1;
    v13 = 0;
    md::StandardLabeler::setDebugHighlight(a1, &v14, &v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v12 = -1;
    v13 = 0;
    md::StandardLabeler::hitRoadFeatureAtPixel(a1, a2, &v14, &v8, 1);
    v6 = v8 != 0;
    if (v8)
    {
      md::StandardLabeler::setDebugHighlight(a1, &v14, &v8);
    }

    else
    {
      (a1->__vftable[7].~__shared_weak_count)(a1);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  return v6;
}

void sub_1B30900D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::StandardLabeler::debugString@<X0>(md::StandardLabeler *this@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v176[19] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v160);
  v6 = *(*(this + 3) + 288);
  if ((a2 & 1) == 0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "MapTiles: ", 10);
    v28 = MEMORY[0x1B8C61CB0](&v160, (*(*(this + 6) + 24) - *(*(this + 6) + 16)) >> 4);
    v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, " Labels: ", 9);
    v30 = MEMORY[0x1B8C61CB0](v29, *(*(this + 6) + 248));
    v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, " Labels shown: ", 15);
    v32 = MEMORY[0x1B8C61C90](v31, *(this + 91));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "\nFeature Pool: ", 15);
    std::mutex::lock(v6);
    v33 = *(v6 + 104);
    std::mutex::unlock(v6);
    v34 = MEMORY[0x1B8C61CB0](v32, v33);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " roads, ", 8);
    std::mutex::lock(v6);
    v35 = *(v6 + 160);
    std::mutex::unlock(v6);
    v36 = MEMORY[0x1B8C61CB0](v34, v35);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, " unnamed roads, ", 16);
    std::mutex::lock(v6);
    v37 = *(v6 + 384);
    std::mutex::unlock(v6);
    v38 = MEMORY[0x1B8C61CB0](v36, v37);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, " points ", 8);
    std::mutex::lock(v6);
    v39 = *(v6 + 216);
    std::mutex::unlock(v6);
    v40 = MEMORY[0x1B8C61CB0](v38, v39);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, " physical, ", 11);
    std::mutex::lock(v6);
    v41 = *(v6 + 440);
    std::mutex::unlock(v6);
    v42 = MEMORY[0x1B8C61CB0](v40, v41);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, " transit line", 13);
    std::ostringstream::str[abi:nn200100](a3, &v160);
    goto LABEL_127;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Feature Pool: tiles=", 20);
  std::mutex::lock(v6);
  v7 = *(v6 + 496);
  std::mutex::unlock(v6);
  v8 = MEMORY[0x1B8C61CB0](&v160, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " points=", 8);
  std::mutex::lock(v6);
  v9 = *(v6 + 384);
  std::mutex::unlock(v6);
  v10 = MEMORY[0x1B8C61CB0](v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " roads=", 7);
  std::mutex::lock(v6);
  v11 = *(v6 + 104);
  std::mutex::unlock(v6);
  v12 = MEMORY[0x1B8C61CB0](v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " unnamed roads=", 15);
  std::mutex::lock(v6);
  v13 = *(v6 + 160);
  std::mutex::unlock(v6);
  v14 = MEMORY[0x1B8C61CB0](v12, v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, " physical=", 10);
  std::mutex::lock(v6);
  v15 = *(v6 + 216);
  std::mutex::unlock(v6);
  v16 = MEMORY[0x1B8C61CB0](v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " transit lines=", 15);
  std::mutex::lock(v6);
  v17 = *(v6 + 440);
  std::mutex::unlock(v6);
  v18 = MEMORY[0x1B8C61CB0](v16, v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Total TextDataStrings: ", 23);
  v19 = atomic_load(&md::TextDataString::_totalLabelTextData);
  v20 = MEMORY[0x1B8C61C90](&v160, v19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "\n", 1);
  v21 = *(this + 6);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v22 == v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    LODWORD(v24) = 0;
    LODWORD(v25) = 0;
    LODWORD(v26) = 0;
    do
    {
      v27 = *v22;
      v22 += 2;
      v26 = (v26 + v27[24]);
      v24 = (v24 + v27[25]);
      v25 = (v25 + v27[26]);
    }

    while (v22 != v23);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "MapTiles: tiles=", 16);
  v43 = MEMORY[0x1B8C61CB0](&v160, (*(*(this + 6) + 24) - *(*(this + 6) + 16)) >> 4);
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, ", label-fail(noFeature=", 23);
  v45 = MEMORY[0x1B8C61C90](v44, v26);
  v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, ", noStyle=", 10);
  v47 = MEMORY[0x1B8C61C90](v46, v24);
  v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, ", zRange=", 9);
  v49 = MEMORY[0x1B8C61C90](v48, v25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, ")\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Labels: active=", 15);
  v50 = MEMORY[0x1B8C61CB0](&v160, *(*(this + 6) + 248));
  v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, "(", 1);
  v52 = MEMORY[0x1B8C61CB0](v51, (*(this + 10) - *(this + 9)) >> 4);
  v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ") cached=", 9);
  v54 = MEMORY[0x1B8C61CB0](v53, *(*(this + 6) + 216));
  v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, " custom=", 8);
  v56 = MEMORY[0x1B8C61CB0](v55, *(*(this + 6) + 568));
  v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, " overridden=", 12);
  v58 = MEMORY[0x1B8C61CB0](v57, *(*(this + 6) + 616));
  v59 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, " exist=", 7);
  v60 = atomic_load(md::Label::_totalLabels);
  v61 = MEMORY[0x1B8C61C90](v59, v60);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "DisplayLabels: total=", 21);
  v62 = MEMORY[0x1B8C61CB0](&v160, (*(this + 14) - *(this + 13)) >> 4);
  v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, " active=", 8);
  v64 = *(this + 13);
  v65 = *(this + 14);
  if (v64 == v65)
  {
    v66 = 0;
  }

  else
  {
    LODWORD(v66) = 0;
    do
    {
      v67 = *v64;
      v64 += 2;
      v66 = v66 + *(v67 + 1340);
    }

    while (v64 != v65);
  }

  v68 = MEMORY[0x1B8C61C90](v63, v66);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v68, "\n", 1);
  v69 = *(this + 4);
  v70 = *(v69 + 72);
  v71 = (v69 + 80);
  if (v70 != v71)
  {
    v72 = 0;
    do
    {
      v73 = v70[1];
      v74 = v70;
      if (v73)
      {
        do
        {
          v75 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v75 = v74[2];
          v76 = *v75 == v74;
          v74 = v75;
        }

        while (!v76);
      }

      v72 += v70[33];
      v70 = v75;
    }

    while (v75 != v71);
    if (v72)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Custom features: ", 17);
      v77 = MEMORY[0x1B8C61CB0](&v160, v72);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v77, "\n", 1);
    }
  }

  if ((*(*this + 352))(this))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "ExternalObjects: ", 17);
    v78 = (*(*this + 352))(this);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v165);
    v79 = *(v78 + 96);
    if (v79)
    {
      v80 = 0;
      do
      {
        v80 += *(v79[2] + 68);
        v79 = *v79;
      }

      while (v79);
    }

    else
    {
      v80 = 0;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v165, "Icon updateCount(active)=", 25);
    v81 = MEMORY[0x1B8C61CB0](&v165, *(v78 + 112));
    v82 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, "(", 1);
    v83 = MEMORY[0x1B8C61CB0](v82, v80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v83, ")", 1);
    if ((v175 & 0x10) != 0)
    {
      v86 = v174;
      if (v174 < v171)
      {
        v174 = v171;
        v86 = v171;
      }

      v87 = __src;
    }

    else
    {
      if ((v175 & 8) == 0)
      {
        v84 = this;
        v85 = 0;
        v159 = 0;
LABEL_42:
        *(__dst + v85) = 0;
        v165 = *MEMORY[0x1E69E54E8];
        *(&v165 + *(v165 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
        v166 = (MEMORY[0x1E69E5548] + 16);
        if (v173 < 0)
        {
          operator delete(__p);
        }

        v166 = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&v167);
        std::ostream::~ostream();
        MEMORY[0x1B8C620C0](v176);
        if ((v159 & 0x80u) == 0)
        {
          v88 = __dst;
        }

        else
        {
          v88 = __dst[0];
        }

        if ((v159 & 0x80u) == 0)
        {
          v89 = v159;
        }

        else
        {
          v89 = __dst[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, v88, v89);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
        this = v84;
        if (v159 < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_52;
      }

      v87 = v168;
      v86 = v169;
    }

    v85 = v86 - v87;
    if (v86 - v87 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v85 >= 0x17)
    {
      operator new();
    }

    v159 = v86 - v87;
    v84 = this;
    if (v85)
    {
      memmove(__dst, v87, v85);
    }

    goto LABEL_42;
  }

LABEL_52:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Count Pushed Labels: ", 21);
  v90 = MEMORY[0x1B8C61C90](&v160, *(this + 91));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v90, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "StagingState: ", 14);
  for (i = 0; i != 3; ++i)
  {
    v92 = *(this + 9);
    v93 = *(this + 10);
    if (v92 == v93)
    {
      v94 = 0;
    }

    else
    {
      LODWORD(v94) = 0;
      do
      {
        v95 = *v92;
        v92 += 2;
        if (*(v95 + 844) == i)
        {
          v94 = (v94 + 1);
        }

        else
        {
          v94 = v94;
        }
      }

      while (v92 != v93);
    }

    v96 = strlen(off_1E7B39578[i]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, off_1E7B39578[i], v96);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "=", 1);
    v97 = MEMORY[0x1B8C61C90](&v160, v94);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, " ", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "LabelDisplayState: ", 19);
  for (j = 0; j != 4; ++j)
  {
    v99 = *(this + 13);
    v100 = *(this + 14);
    if (v99 == v100)
    {
      v101 = 0;
    }

    else
    {
      LODWORD(v101) = 0;
      do
      {
        v102 = *v99;
        v99 += 2;
        if (*(v102 + 1152) == j)
        {
          v101 = (v101 + 1);
        }

        else
        {
          v101 = v101;
        }
      }

      while (v99 != v100);
    }

    v103 = strlen(off_1E7B39590[j]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, off_1E7B39590[j], v103);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "=", 1);
    v104 = MEMORY[0x1B8C61C90](&v160, v101);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v104, " ", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "Collision Tested: Items=", 24);
  v105 = MEMORY[0x1B8C61C90](&v160, *(this + 96));
  v106 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v105, " ReserveSpace=", 14);
  v107 = MEMORY[0x1B8C61C90](v106, *(this + 97));
  v108 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v107, " Lines=", 7);
  v109 = MEMORY[0x1B8C61C90](v108, *(this + 95));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v109, "\n", 1);
  v168 = 0;
  v165 = &v166;
  v166 = 0;
  v110 = *(this + 9);
  v156 = *(this + 10);
  if (v110 != v156)
  {
    v154 = this;
    v155 = a3;
    do
    {
      v157 = v110;
      v111 = (*(**(*v110 + 8) + 576))(*(*v110 + 8));
      v112 = *v111;
      v113 = v111[1];
      while (v112 != v113)
      {
        v114 = *v112;
        v115 = v166;
        v116 = &v166;
        v117 = &v166;
        if (v166)
        {
          while (1)
          {
            while (1)
            {
              v117 = v115;
              v118 = v115[4];
              if (v114 >= v118)
              {
                break;
              }

              v115 = *v117;
              v116 = v117;
              if (!*v117)
              {
                goto LABEL_83;
              }
            }

            if (v118 >= v114)
            {
              break;
            }

            v115 = v117[1];
            if (!v115)
            {
              v116 = v117 + 1;
              goto LABEL_83;
            }
          }
        }

        else
        {
LABEL_83:
          v119 = mdm::zone_mallocator::instance(v111);
          v120 = pthread_rwlock_rdlock((v119 + 32));
          if (v120)
          {
            geo::read_write_lock::logFailure(v120, "read lock", v121);
          }

          v122 = malloc_type_zone_malloc(*v119, 0x28uLL, 0x10600400E88909FuLL);
          atomic_fetch_add((v119 + 24), 1u);
          geo::read_write_lock::unlock((v119 + 32));
          v122[4] = v114;
          *v122 = 0;
          v122[1] = 0;
          v122[2] = v117;
          *v116 = v122;
          if (*v165)
          {
            v165 = *v165;
            v122 = *v116;
          }

          v111 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v166, v122);
          ++v168;
        }

        v112 += 2;
      }

      v110 = v157 + 16;
    }

    while (v157 + 16 != v156);
    this = v154;
    a3 = v155;
  }

  std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(v166);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "LabelsPerStyle:", 15);
  v123 = v160;
  *(&v160 + *(v160 - 24) + 8) = *(&v160 + *(v160 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v162[0].__locale_ + *(v123 - 24)) = 1;
  v124 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v124, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\nOutcome: (Staging, Display)\n", 29);
  v125 = a3;
  for (k = 0; k != 38; ++k)
  {
    md::stringFromLabelOutcome(&v165, k);
    v127 = *(this + 9);
    v128 = *(this + 10);
    if (v127 == v128)
    {
      v129 = 0;
    }

    else
    {
      LODWORD(v129) = 0;
      do
      {
        v130 = *v127;
        v127 += 2;
        if (*(v130 + 845) == k)
        {
          v129 = (v129 + 1);
        }

        else
        {
          v129 = v129;
        }
      }

      while (v127 != v128);
    }

    v131 = *(this + 13);
    v132 = *(this + 14);
    if (v131 == v132)
    {
      v133 = 0;
    }

    else
    {
      LODWORD(v133) = 0;
      do
      {
        v134 = *v131;
        v131 += 2;
        if (*(v134 + 1153) == k)
        {
          v133 = (v133 + 1);
        }

        else
        {
          v133 = v133;
        }
      }

      while (v131 != v132);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   ", 3);
    if (SHIBYTE(v167.__locale_) >= 0)
    {
      v135 = &v165;
    }

    else
    {
      v135 = v165;
    }

    if (SHIBYTE(v167.__locale_) >= 0)
    {
      locale_high = HIBYTE(v167.__locale_);
    }

    else
    {
      locale_high = v166;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, v135, locale_high);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, ":(", 2);
    v137 = MEMORY[0x1B8C61C90](&v160, v129);
    v138 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v137, ", ", 2);
    v139 = MEMORY[0x1B8C61C90](v138, v133);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v139, ")\n", 2);
    if (SHIBYTE(v167.__locale_) < 0)
    {
      operator delete(v165);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "\nFade:\n", 7);
  v140 = v125;
  v141 = *(this + 9);
  v142 = *(this + 10);
  if (v141 == v142)
  {
    v143 = 0;
    v149 = 0;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    v145 = 0;
    do
    {
      v146 = *(*v141 + 296);
      if (v146)
      {
        v144 += (*(*v146 + 696))(v146);
        v147 = *(*v141 + 296);
        if (v147)
        {
          v145 = v145 + (*(*v147 + 688))(v147);
          v148 = *(*v141 + 296);
          if (v148)
          {
            v143 = v143 + (*(*v148 + 704))(v148);
          }
        }
      }

      v141 += 16;
    }

    while (v141 != v142);
    v149 = v144 | (v145 << 32);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Cross Fade Parts: ", 21);
  v150 = MEMORY[0x1B8C61C90](&v160, v149);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Style Fade Parts: ", 21);
  v151 = MEMORY[0x1B8C61C90](&v160, HIDWORD(v149));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v151, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v160, "   Parts Cross Fading: ", 23);
  v152 = MEMORY[0x1B8C61C90](&v160, v143);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v152, "\n", 1);
  std::ostringstream::str[abi:nn200100](v140, &v160);
LABEL_127:
  v160 = *MEMORY[0x1E69E54E8];
  *(&v160 + *(v160 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v161 = MEMORY[0x1E69E5548] + 16;
  if (v163 < 0)
  {
    operator delete(v162[7].__locale_);
  }

  v161 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v162);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v164);
}

void sub_1B3091258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a17 = *MEMORY[0x1E69E54E8];
  *(&a17 + *(a17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

void std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<md::LabelStyle const*,std::less<md::LabelStyle const*>,geo::allocator_adapter<md::LabelStyle const*,mdm::zone_mallocator>>::destroy(a1[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void md::StandardLabeler::populateDebugNode(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(a1 + 200))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Selected Feature");
    ChildNode = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(**(a1 + 200) + 472))(*(a1 + 200), ChildNode, *(a1 + 24));
  }

  if (*(a1 + 184))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Selected Label");
    v8 = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    md::Label::populateDebugNode(*(a1 + 184), v8, v7);
  }

  if ((*a3 & 0x80) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "All Labels");
    v9 = gdc::DebugTreeNode::createChildNode(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 80) != *(a1 + 72))
    {
      std::to_string(&v13, 0);
      v10 = std::string::insert(&v13, 0, "Label ", 6uLL);
      __p = *v10;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = gdc::DebugTreeNode::createChildNode(v9, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      md::Label::populateDebugNode(**(a1 + 72), v12, v11);
    }
  }
}

void sub_1B3091758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabeler::debugDraw(md::StandardLabeler *this, NSMutableString *a2, md::DebugConsole *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v35 = a3;
  v6 = *(this + 3);
  if (*(v6 + 3656) == 1)
  {
    v7 = *(this + 6);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v8 != v9)
    {
      do
      {
        v10 = *(this + 3);
        if ((*(v10 + 3677) & 1) == 0)
        {
          v11 = *v8;
          __p = &unk_1F2A2B258;
          v37 = this;
          v38 = &v35;
          p_p = &__p;
          md::LabelMapTile::enumerateLineFeatures(v11, &__p);
          std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](&__p);
          v10 = *(this + 3);
        }

        if ((*(v10 + 3679) & 1) == 0)
        {
          v12 = *v8;
          __p = &unk_1F2A2B2A0;
          v37 = this;
          v38 = &v35;
          p_p = &__p;
          md::LabelMapTile::enumeratePhysicalLineFeatures(*(v12 + 192), &__p);
          std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](&__p);
        }

        v8 += 2;
      }

      while (v8 != v9);
      v6 = *(this + 3);
    }
  }

  if (*(v6 + 3663) == 1)
  {
    v13 = *(this + 6);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    while (v14 != v15)
    {
      v16 = *v14;
      v17 = *(*v14 + 448);
      if (v17)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v17, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v18 = v16[58];
      if (v18)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v18, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v19 = v16[60];
      if (v19)
      {
        md::LabelMapTileCollisionInfo::debugDraw(v19, *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
        v16 = *v14;
      }

      v20 = v16[62];
      v21 = v16 + 63;
      if (v20 != v16 + 63)
      {
        do
        {
          md::LabelMapTileCollisionInfo::debugDraw(v20[5], *(*(this + 3) + 424), v35, *(*(*(this + 3) + 232) + 64));
          v22 = v20[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
        }

        while (v23 != v21);
      }

      v14 += 16;
    }
  }

  v25 = *(this + 23);
  if (v25 || *(this + 25))
  {
    v26 = *(this + 3);
    if (*(v26 + 3683) == 1)
    {
      v27 = *(this + 25);
      if (v27)
      {
        (*(*v27 + 464))(*(this + 25));
        v25 = *(this + 23);
      }

      if (v25)
      {
        md::Label::debugDraw(v25, v35);
      }
    }

    else
    {
      [(NSMutableString *)v5 appendFormat:@"LayoutZoom:%.2f\n", *(v26 + 464)];
      v28 = *(this + 25);
      if (v28)
      {
        (*(*v28 + 464))(v28);
        (*(**(this + 25) + 456))(&__p);
        if (SHIBYTE(v38) >= 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
        if (v30)
        {
          [(NSMutableString *)v5 appendString:v30];
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }
      }

      v31 = *(this + 23);
      if (v31)
      {
        md::Label::debugDraw(v31, v35);
        v32 = MEMORY[0x1E696AEC0];
        md::Label::debugString(&__p, *(this + 23), *(this + 3));
        v33 = SHIBYTE(v38) >= 0 ? &__p : __p;
        v34 = [v32 stringWithUTF8String:v33];
        [(NSMutableString *)v5 appendString:v34];

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }
}

void sub_1B3091B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 8) + 24);
  v4 = **(a1 + 16);
  v6 = xmmword_1B33B0640;
  v7 = 0;
  return (*(*v2 + 464))(v2, v3, v4, &v6, 0);
}

__n128 std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2B2A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 8) + 24);
  v4 = **(a1 + 16);
  v6 = xmmword_1B33B0640;
  v7 = 0;
  return (*(*v2 + 464))(v2, v3, v4, &v6, 0);
}

__n128 std::__function::__func<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0,std::allocator<md::StandardLabeler::debugDraw(NSMutableString *,md::DebugConsole *)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2B258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ggl::Sky::SkyPipelineSetup::~SkyPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30927E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VKMapSnapshot;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void releaseIOSurface(void *a1, const void *a2)
{
  cf = a1;
  if (cf)
  {
    [cf unlockWithOptions:1 seed:0];
    [cf decrementUseCount];
    CFRelease(cf);
  }
}

void md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B3093850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

const geo::QuadTile *md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  v15 = result;
  if (result)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      if (!(v6 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v6);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    result = (*(*a1 + 208))(a1);
    if (result)
    {
      v7 = *(a1 + 34);
    }

    else
    {
      v7 = -1;
    }

    v8 = *(a1 + 176);
    if (v8 != a1 + 184)
    {
      v14 = v7;
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v10 + 172);
      *v17 = *(v10 + 168);
      v19 = *(v10 + 184);
      v20 = *(v10 + 192);
      v11 = *(v10 + 608);
      v12 = *(v10 + 616);
      v13 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v13);
      md::GeometryContext::transformConstantData(v11, v12, v16, v15, v17, v13, v14);
    }
  }

  return result;
}

double md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
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
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B3094C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->i64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = v8[1];
          v8 = v82;
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v8[v94];
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v8[v93];
            result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v8[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v8[v113 >> 1];
              result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v8[v114];
                  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12 - 1], v8[1]);
    v27 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v8[v12 - 1]);
    if (v26)
    {
      v28 = v8[1];
      if (v27)
      {
        v8[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8[1] = v8[v25];
        v8[v25] = v28;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = v8[v25];
          v8[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8[v25];
      v8[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v25], v8[1]))
      {
        v30 = v8[1];
        v8[1] = v8[v25];
        v8[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12 + 1], v8[2]);
    v36 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], v8[v12 + 1]);
    if (v35)
    {
      v37 = v8[2];
      if (v36)
      {
        v8[2] = *(v125 - 3);
        *(v125 - 3) = v37;
      }

      else
      {
        v8[2] = v8[v34];
        v8[v34] = v37;
        if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v125 - 3), v37))
        {
          v40 = v8[v34];
          v8[v34] = *(v125 - 3);
          *(v125 - 3) = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8[v34];
      v8[v34] = *(v125 - 3);
      *(v125 - 3) = v38;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v8[2]))
      {
        v39 = v8[2];
        v8[2] = v8[v34];
        v8[v34] = v39;
      }
    }

    v41 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12], v8[v25]);
    v42 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v8[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = v8[v34];
      v8[v12] = v45;
      v8[v34] = v44;
      v46 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v45, v8[v25]);
      v44 = v8[v12];
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = v8[v25];
      v8[v25] = v44;
      v8[v12] = v47;
      goto LABEL_53;
    }

    v43 = v8[v25];
    if (v42)
    {
      v8[v25] = v8[v34];
      v8[v34] = v43;
      v44 = v8[v12];
    }

    else
    {
      v8[v25] = v8[v12];
      v8[v12] = v43;
      v48 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v43);
      v44 = v8[v12];
      if (v48)
      {
        v47 = v8[v34];
        v8[v12] = v47;
        v8[v34] = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    v8[v12] = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 - 1), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52[1];
        ++v52;
      }

      while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = *v58;
          *v58 = *v59;
          *v59 = v60;
          do
          {
            v53 = v58;
            v61 = v58[1];
            ++v58;
          }

          while ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = *--v59;
          }

          while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = *v53;
      }

      *v53 = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>(v8, v53, a3);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>((v53 + 1), v125, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }

    else
    {
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v8 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(v4);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)> &,md::RoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::RoadTileDataRenderable *,md::RoadTileDataRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void geo::Pool<md::DaVinciRoadTileDataRenderable>::construct<std::shared_ptr<md::DaVinciCenterLineRoadsTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    v7 = (a1 + 24);
    v8 = malloc_type_malloc(416 * *(a1 + 24), 0x10A2040EF4268A2uLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v8);
    v6 = *(a1 + 40);
    v9 = &v8[416 * *v7 - 416];
    if (v9 >= v8)
    {
      do
      {
        *v9 = v6;
        v6 = v9;
        v9 -= 416;
      }

      while (v9 >= v8);
      v6 = v9 + 416;
    }

    *(a1 + 40) = v6;
  }

  *(a1 + 40) = *v6;
  v10 = *a3;
  v11 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(v6, v11, v12, v10);
}

uint64_t std::__function::__value_func<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::sort[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable **>,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>>(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz((a2->i64 - a1) >> 3);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(a1, a2, a3, v4, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->i64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = v8[1];
          v8 = v82;
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v8[v94];
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v8[v93];
            result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v8[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v8[v113 >> 1];
              result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v8[v114];
                  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12 - 1], v8[1]);
    v27 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v8[v12 - 1]);
    if (v26)
    {
      v28 = v8[1];
      if (v27)
      {
        v8[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8[1] = v8[v25];
        v8[v25] = v28;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = v8[v25];
          v8[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8[v25];
      v8[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v25], v8[1]))
      {
        v30 = v8[1];
        v8[1] = v8[v25];
        v8[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12 + 1], v8[2]);
    v36 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], v8[v12 + 1]);
    if (v35)
    {
      v37 = v8[2];
      if (v36)
      {
        v8[2] = *(v125 - 3);
        *(v125 - 3) = v37;
      }

      else
      {
        v8[2] = v8[v34];
        v8[v34] = v37;
        if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v125 - 3), v37))
        {
          v40 = v8[v34];
          v8[v34] = *(v125 - 3);
          *(v125 - 3) = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8[v34];
      v8[v34] = *(v125 - 3);
      *(v125 - 3) = v38;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v8[2]))
      {
        v39 = v8[2];
        v8[2] = v8[v34];
        v8[v34] = v39;
      }
    }

    v41 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v12], v8[v25]);
    v42 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v8[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = v8[v34];
      v8[v12] = v45;
      v8[v34] = v44;
      v46 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v45, v8[v25]);
      v44 = v8[v12];
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = v8[v25];
      v8[v25] = v44;
      v8[v12] = v47;
      goto LABEL_53;
    }

    v43 = v8[v25];
    if (v42)
    {
      v8[v25] = v8[v34];
      v8[v34] = v43;
      v44 = v8[v12];
    }

    else
    {
      v8[v25] = v8[v12];
      v8[v12] = v43;
      v48 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v8[v34], v43);
      v44 = v8[v12];
      if (v48)
      {
        v47 = v8[v34];
        v8[v12] = v47;
        v8[v34] = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    v8[v12] = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(v8 - 1), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52[1];
        ++v52;
      }

      while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = *v58;
          *v58 = *v59;
          *v59 = v60;
          do
          {
            v53 = v58;
            v61 = v58[1];
            ++v58;
          }

          while ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = *--v59;
          }

          while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = *v53;
      }

      *v53 = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>(v8, v53, a3);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>((v53 + 1), v125, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }

    else
    {
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v8 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(v4);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)> &,md::DaVinciRoadTileDataRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::DaVinciRoadTileDataRenderable *,md::DaVinciRoadTileDataRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void std::vector<md::DaVinciRoadTileDataRenderable *>::__insert_with_size[abi:nn200100]<std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>,std::__wrap_iter<md::DaVinciRoadTileDataRenderable * const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
    }

    v31 = 8 * v15;
    v32 = 8 * a5;
    v33 = (8 * v15);
    do
    {
      v34 = *v6++;
      *v33++ = v34;
      v32 -= 8;
    }

    while (v32);
    memcpy((v31 + 8 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 8 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v20 = &__dst[8 * a5];
    v21 = &v10[-8 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 8;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v20);
    }

    v28 = 8 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_35;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 8;
    *v18 = v19;
    v18 += 8;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[8 * a5];
    v25 = &v18[-8 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 8;
      *v26 = v27;
      v26 += 8;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[8 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_35:

      memmove(v29, v30, v28);
    }
  }
}

void md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2BFF0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::PolygonTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B3097368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

const geo::QuadTile *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  v15 = result;
  if (result)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      if (!(v6 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v6);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    result = (*(*a1 + 208))(a1);
    if (result)
    {
      v7 = *(a1 + 34);
    }

    else
    {
      v7 = -1;
    }

    v8 = *(a1 + 176);
    if (v8 != a1 + 184)
    {
      v14 = v7;
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v10 + 172);
      *v17 = *(v10 + 168);
      v19 = *(v10 + 184);
      v20 = *(v10 + 192);
      v11 = *(v10 + 608);
      v12 = *(v10 + 616);
      v13 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v13);
      md::GeometryContext::transformConstantData(v11, v12, v16, v15, v17, v13, v14);
    }
  }

  return result;
}

void sub_1B3097774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
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
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B30985A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->i64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = v8[1];
          v8 = v82;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v8[v94];
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v8[v93];
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v8[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v8[v113 >> 1];
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v8[v114];
                  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v12 - 1], v8[1]);
    v27 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v8[v12 - 1]);
    if (v26)
    {
      v28 = v8[1];
      if (v27)
      {
        v8[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8[1] = v8[v25];
        v8[v25] = v28;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = v8[v25];
          v8[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8[v25];
      v8[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v25], v8[1]))
      {
        v30 = v8[1];
        v8[1] = v8[v25];
        v8[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v12 + 1], v8[2]);
    v36 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v33[-2].i64[1], v8[v12 + 1]);
    if (v35)
    {
      v37 = v8[2];
      if (v36)
      {
        v8[2] = *(v125 - 3);
        *(v125 - 3) = v37;
      }

      else
      {
        v8[2] = v8[v34];
        v8[v34] = v37;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v125 - 3), v37))
        {
          v40 = v8[v34];
          v8[v34] = *(v125 - 3);
          *(v125 - 3) = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8[v34];
      v8[v34] = *(v125 - 3);
      *(v125 - 3) = v38;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v34], v8[2]))
      {
        v39 = v8[2];
        v8[2] = v8[v34];
        v8[v34] = v39;
      }
    }

    v41 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v12], v8[v25]);
    v42 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v34], v8[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = v8[v34];
      v8[v12] = v45;
      v8[v34] = v44;
      v46 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v45, v8[v25]);
      v44 = v8[v12];
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = v8[v25];
      v8[v25] = v44;
      v8[v12] = v47;
      goto LABEL_53;
    }

    v43 = v8[v25];
    if (v42)
    {
      v8[v25] = v8[v34];
      v8[v34] = v43;
      v44 = v8[v12];
    }

    else
    {
      v8[v25] = v8[v12];
      v8[v12] = v43;
      v48 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v8[v34], v43);
      v44 = v8[v12];
      if (v48)
      {
        v47 = v8[v34];
        v8[v12] = v47;
        v8[v34] = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    v8[v12] = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(v8 - 1), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52[1];
        ++v52;
      }

      while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = *v58;
          *v58 = *v59;
          *v59 = v60;
          do
          {
            v53 = v58;
            v61 = v58[1];
            ++v58;
          }

          while ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = *--v59;
          }

          while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = *v53;
      }

      *v53 = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>(v8, v53, a3);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>((v53 + 1), v125, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }

    else
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v8 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(v4);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a5 + 24), *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)> &,md::MapTileDataRenderable<md::PolygonTileData> **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if ((std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
        {
          v33 = (a1 + v31 + 24);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B309967C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

const geo::QuadTile *md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_determineEnteringRenderables@<X0>(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  v15 = result;
  if (result)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      if (!(v6 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v6);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    result = (*(*a1 + 208))(a1);
    if (result)
    {
      v7 = *(a1 + 34);
    }

    else
    {
      v7 = -1;
    }

    v8 = *(a1 + 176);
    if (v8 != a1 + 184)
    {
      v14 = v7;
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v10 + 172);
      *v17 = *(v10 + 168);
      v19 = *(v10 + 184);
      v20 = *(v10 + 192);
      v11 = *(v10 + 608);
      v12 = *(v10 + 616);
      v13 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v13);
      md::GeometryContext::transformConstantData(v11, v12, v16, v15, v17, v13, v14);
    }
  }

  return result;
}

void sub_1B3099A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileDataRenderable<md::RasterTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C010;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

double md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
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
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B309A94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->i64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = v8[1];
          v8 = v82;
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v8[v94];
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v8[v93];
            result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v8[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v128 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v8[v113 >> 1];
              result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v8[v114];
                  result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v12 - 1], v8[1]);
    v27 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v8[v12 - 1]);
    if (v26)
    {
      v28 = v8[1];
      if (v27)
      {
        v8[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8[1] = v8[v25];
        v8[v25] = v28;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = v8[v25];
          v8[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8[v25];
      v8[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v25], v8[1]))
      {
        v30 = v8[1];
        v8[1] = v8[v25];
        v8[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v12 + 1], v8[2]);
    v36 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v33[-2].i64[1], v8[v12 + 1]);
    if (v35)
    {
      v37 = v8[2];
      if (v36)
      {
        v8[2] = *(v125 - 3);
        *(v125 - 3) = v37;
      }

      else
      {
        v8[2] = v8[v34];
        v8[v34] = v37;
        if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v125 - 3), v37))
        {
          v40 = v8[v34];
          v8[v34] = *(v125 - 3);
          *(v125 - 3) = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8[v34];
      v8[v34] = *(v125 - 3);
      *(v125 - 3) = v38;
      if (std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v34], v8[2]))
      {
        v39 = v8[2];
        v8[2] = v8[v34];
        v8[v34] = v39;
      }
    }

    v41 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v12], v8[v25]);
    v42 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v34], v8[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = v8[v34];
      v8[v12] = v45;
      v8[v34] = v44;
      v46 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v45, v8[v25]);
      v44 = v8[v12];
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = v8[v25];
      v8[v25] = v44;
      v8[v12] = v47;
      goto LABEL_53;
    }

    v43 = v8[v25];
    if (v42)
    {
      v8[v25] = v8[v34];
      v8[v34] = v43;
      v44 = v8[v12];
    }

    else
    {
      v8[v25] = v8[v12];
      v8[v12] = v43;
      v48 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v8[v34], v43);
      v44 = v8[v12];
      if (v48)
      {
        v47 = v8[v34];
        v8[v12] = v47;
        v8[v34] = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    v8[v12] = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *(v8 - 1), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52[1];
        ++v52;
      }

      while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = *v58;
          *v58 = *v59;
          *v59 = v60;
          do
          {
            v53 = v58;
            v61 = v58[1];
            ++v58;
          }

          while ((std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = *--v59;
          }

          while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = *v53;
      }

      *v53 = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **>(v8, v53, a3);
      v10 = (v53 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **>((v53 + 1), v125, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v53 + 1);
      }
    }

    else
    {
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v8 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)> &,md::MapTileDataRenderable<md::RasterTileData> **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}