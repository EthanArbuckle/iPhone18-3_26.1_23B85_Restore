uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void caulk::xpc::reply_watchdog_factory::make_timer(caulk::xpc::reply_watchdog_factory *this@<X0>, int a2@<W1>, dispatch_source_t *a3@<X8>)
{
  v3 = a2;
  v13[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = *(this + 1);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);
  *a3 = v7;
  applesauce::dispatch::v1::source::operator*(v7);
  objc_claimAutoreleasedReturnValue();
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN5caulk3xpc22reply_watchdog_factory10make_timerEi_block_invoke;
  handler[3] = &__block_descriptor_64_ea8_32c60_ZTSKZN5caulk3xpc22reply_watchdog_factory10make_timerEiE3__0_e5_v8__0l;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, this + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v13, v11);
  dispatch_source_set_event_handler(v7, handler);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);

  v8 = applesauce::dispatch::v1::source::operator*(v7);
  dispatch_resume(v8);

  applesauce::dispatch::v1::source::operator*(v7);
  objc_claimAutoreleasedReturnValue();
  v9 = dispatch_time(0, 1000000 * v3);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v13);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_27549CDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  applesauce::dispatch::v1::source::~source(v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void caulk::platform::process_name(caulk::platform *this@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 648;
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = this;
  if (sysctl(v5, 4u, v8, &v4, 0, 0) == -1)
  {
    perror("sysctl");
  }

  else if (v4)
  {
    std::string::__assign_external(a2, v9);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_27549CFB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

caulk::pooled_semaphore_mutex *caulk::pooled_semaphore_mutex::pooled_semaphore_mutex(caulk::pooled_semaphore_mutex *this)
{
  *this = 0;
  caulk::details::semaphore_pool::init_global(this);
  return this;
}

{
  *this = 0;
  caulk::details::semaphore_pool::init_global(this);
  return this;
}

void caulk::details::semaphore_pool::init_global(caulk::details::semaphore_pool *this)
{
  if (atomic_load_explicit(&caulk::g_sema_pool_once, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&caulk::g_sema_pool_once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<caulk::details::semaphore_pool::init_global(void)::$_0 &&>>);
  }
}

void caulk::pooled_semaphore_mutex::lock_impl(atomic_uint *this, double *a2)
{
  v4 = 0;
  v5 = *this;
  while (1)
  {
    if (WORD1(v5) || v5 != 1)
    {
      if (v4)
      {
        caulk::details::semaphore_pool::release(caulk::details::semaphore_pool::sGlobal, v4);
      }

      v6 = v5 + 1;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_22;
      }

      v7 = 0;
      LODWORD(v4) = WORD1(v5);
    }

    else
    {
      if (!v4)
      {
        caulk::details::semaphore_pool::acquire(caulk::details::semaphore_pool::sGlobal);
      }

      LOWORD(v6) = 2;
      v7 = v4;
    }

    v8 = v5;
    atomic_compare_exchange_strong(this, &v8, v6 | (v4 << 16));
    if (v8 == v5)
    {
      break;
    }

    v5 = v8;
    v4 = v7;
  }

  if (!v4)
  {
LABEL_21:
    __dmb(9u);
    return;
  }

  if (v4 < 0x201u)
  {
    v9 = (caulk::details::semaphore_pool::sGlobal + 8 * ((v4 - 1) >> 6));
    if (atomic_load(v9))
    {
      v11 = atomic_load(v9);
      if ((v4 - *v11) < 0x40u)
      {
        v12 = &v11[8 * ((v4 - *v11) & 0xFFF)];
        if (a2)
        {
          if (!caulk::semaphore::timed_wait(v12 + 1, *a2))
          {
            caulk::pooled_semaphore_mutex::unlock_impl(this, 1, v13);
            return;
          }
        }

        else
        {
          caulk::semaphore::timed_wait(v12 + 1, -1.0);
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:
  __break(1u);
}

atomic_uint *caulk::pooled_semaphore_mutex::unlock_impl@<X0>(atomic_uint *this@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    __dmb(0xBu);
  }

  LODWORD(v3) = *this;
  v4 = *this;
  if (*this)
  {
    v5 = *this;
    do
    {
      LODWORD(a3) = WORD1(v3);
      if (v4 == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = a3;
      }

      atomic_compare_exchange_strong(this, &v5, (v3 - 1) | (v4 << 16));
      if (v5 == v3)
      {
        goto LABEL_11;
      }

      LODWORD(v3) = v5;
      v4 = v5;
    }

    while (v5);
  }

  while (1)
  {
    __break(1u);
LABEL_11:
    if (!v4)
    {
      break;
    }

    if (a2)
    {
      return this;
    }

    if (v4 < 0x201)
    {
      a3 = (caulk::details::semaphore_pool::sGlobal + 8 * ((v4 - 1) >> 6));
      v3 = atomic_load(a3);
      if (v3)
      {
        a3 = atomic_load(a3);
        LODWORD(v3) = v4 - *a3;
        v4 = (v4 - *a3);
        if (v4 < 0x40)
        {
          v6 = &a3[2 * (v3 & 0xFFF)];
          if ((atomic_fetch_add_explicit(v6 + 3, 1u, memory_order_release) & 0x80000000) != 0)
          {
            return caulk::mach::semaphore::signal_or_error((v6 + 4));
          }

          return this;
        }
      }
    }
  }

  if (v3 >= 0x10000)
  {
    return caulk::details::semaphore_pool::release(caulk::details::semaphore_pool::sGlobal, a3);
  }

  return this;
}

uint64_t caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::find_owner(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v10 = a2;
  v5 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v10, 0);
  if (*(v5 + 18) == 1)
  {
    v6 = *a1 + 112;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 + 112 == v6)
  {
    return 0;
  }

  if (*(v6 + 18) == 2)
  {
    return 0;
  }

  v7 = atomic_load((v6 + 32));
  if (v7)
  {
    return 0;
  }

  result = *(v6 + 8);
  if (a2 < result + 288 || a2 >= result + 0x4000)
  {
    return 0;
  }

  return result;
}

uint64_t caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_size_for_ptr(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 - 8);
  v13 = v3 + 992;
  v14 = v3 + 1152;
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  owner = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::find_owner(&v13, a2);
  if (owner)
  {
    v6 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::size(owner + 16, a2);
  }

  else
  {
    v6 = 0;
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v3 + 1152, v5);
  if (!v6)
  {
    v13 = v3 + 384;
    v14 = v3 + 544;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v7 = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::find_owner(&v13, a2);
    v6 = v7 ? caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::size(v7 + 16, a2) : 0;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v3 + 544, v8);
    if (!v6)
    {
      caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
      v13 = a2;
      v9 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(v3 + 32, &v13, 0);
      if (*(v9 + 16) != a2)
      {
        if (*(v10 + 26) == 2)
        {
          v9 = v3 + 232;
        }

        else
        {
          v9 = v10;
        }
      }

      v11 = v3 + 232;
      if (v9 == v3 + 232 || (v11 = *(v9 + 26), v11 == 2) || (v11 = atomic_load((v9 + 40)), (v11 & 1) != 0) || (v11 = *(v9 + 16), v11 != a2))
      {
        v6 = 0;
      }

      else
      {
        v6 = *v9;
      }

      caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v3 + 288, v11);
    }
  }

  return v6;
}

uint64_t caulk::xpc::reply_watchdog_factory::init2(uint64_t a1, int a2, uint64_t a3)
{
  v6 = getpid();
  *a1 = caulk::is_debugger_attached(v6);
  *(a1 + 4) = a2;
  v7 = a1 + 8;
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  result = v10;
  *v9 = 0;
  if (v10 == v7)
  {
    result = (*(*result + 32))(result);
  }

  else if (result)
  {
    result = (*(*result + 40))(result);
  }

  v11 = (a3 + 24);
  v12 = *(a3 + 24);
  if (!v12)
  {
    v11 = v9;
    goto LABEL_9;
  }

  if (v12 != a3)
  {
    *v9 = v12;
LABEL_9:
    *v11 = 0;
    return result;
  }

  *v9 = v7;
  return (*(**v11 + 24))(*v11, v7);
}

uint64_t caulk::is_debugger_attached(caulk *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *v6 = 0xE00000001;
  v7 = 1;
  v8 = this;
  v3 = 648;
  v5 = 0;
  sysctl(v6, 4u, v4, &v3, 0, 0);
  v1 = *MEMORY[0x277D85DE8];
  return (v5 >> 11) & 1;
}

uint64_t caulk::product::get_device_class(caulk::product *this)
{
  {
    caulk::product::get_device_class(void)::global = MGGetSInt32Answer();
  }

  return caulk::product::get_device_class(void)::global;
}

unint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(unint64_t a1, void *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 48;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 18) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le &>(a1, a3, v9, a2);
}

void caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal()
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X0] }

  _X6 = _X4;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X6, X7, [X0] }

  if (_X2 != _X4)
  {
    do
    {
      _X4 = _X2;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X0] }

      v13 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v13);
  }
}

unint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 32));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *(v5 & 0xFFFFFFFFFFFFFFFCLL))
  {
    do
    {
      v10 = atomic_load((v6 + 32));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 32));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *(v12 & 0xFFFFFFFFFFFFFFFCLL));
  }

  return v4;
}

uint64_t caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    v11 = (_X3 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v11;
    _X6 = _X3 <= 1 ? 0 : i;
    _X3 = _X3 | (v2 << 32);
    __asm { CASPAL          X2, X3, X6, X7, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(_X3);
  }

  if (!v11)
  {
    if (i)
    {
      return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::free_node_chain(result, i);
    }
  }

  return result;
}

uint64_t caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::find_owner(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v10 = a2;
  v5 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v10, 0);
  if (*(v5 + 18) == 1)
  {
    v6 = *a1 + 112;
  }

  else
  {
    v6 = v5;
  }

  if (*a1 + 112 == v6)
  {
    return 0;
  }

  if (*(v6 + 18) == 2)
  {
    return 0;
  }

  v7 = atomic_load((v6 + 32));
  if (v7)
  {
    return 0;
  }

  result = *(v6 + 8);
  if (a2 < result + 256 || a2 >= result + 0x4000)
  {
    return 0;
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, void *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 56;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 26) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

uint64_t caulk::audio_buffer_resource(caulk *this)
{
  caulk::alloc::_audio_buffer_resource(this);
  if (v1)
  {
    return v1;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t caulk::alloc::_audio_buffer_resource(caulk::alloc *this)
{
  {
    if (v2)
    {
      caulk::alloc::_audio_buffer_resource(void)::global = caulk::alloc::make_audio_buffer_resource(v2);
      unk_280AD1A30 = v3;
    }
  }

  return caulk::alloc::_audio_buffer_resource(void)::global;
}

unint64_t caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= 0x3F0 && a3 <= 0x10)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v5 = *(a1 + 1360);
    if (v5)
    {
      v60 = *(a1 + 1360);
      v6 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 1072, &v60, 0);
      if (*v6 == v5)
      {
        v8 = v6;
        v9 = v6;
      }

      else
      {
        v9 = v7;
        if (*(v7 + 18) == 2)
        {
          v8 = a1 + 1184;
          v33 = a1 + 1184;
LABEL_52:
          if (*(v8 + 18) == 2 || (v40 = atomic_load((v8 + 32)), (v40 & 1) != 0))
          {
            if (v5)
            {
              v60 = v5;
              v8 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 1072, &v60, 0);
              if (*v8 != v5)
              {
                if (*(v41 + 18) == 2)
                {
                  v8 = v33;
                }

                else
                {
                  v8 = v41;
                }
              }
            }

            else
            {
              v42 = atomic_load((a1 + 1104));
              v8 = v42 & 0xFFFFFFFFFFFFFFFCLL;
            }
          }

          v43 = atomic_load((a1 + 1104));
          v44 = v43 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v43 & 0xFFFFFFFFFFFFFFFCLL) != v8 && v44 != v33)
          {
            do
            {
              if (*(v44 + 18) != 2)
              {
                v46 = atomic_load((v44 + 32));
                if ((v46 & 1) == 0)
                {
                  v36 = *v44;
                  v35 = *(v44 + 8);
                  if ((atomic_exchange(v35, 1u) & 1) == 0)
                  {
                    v37 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v35 + 4, a2);
                    if (v37)
                    {
                      goto LABEL_78;
                    }

                    atomic_store(0xFFFFFFFF, v35 + 1);
                    caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1072, v36);
                    atomic_store(0, v35);
                  }
                }
              }

              v47 = atomic_load((v44 + 32));
              v44 = v47 & 0xFFFFFFFFFFFFFFFCLL;
            }

            while ((v47 & 0xFFFFFFFFFFFFFFFCLL) != v8 && v44 != v33);
          }

          while (1)
          {
            v49 = caulk::alloc::page_allocator::allocate((a1 + 760), 0x4000, 0x10uLL);
            v35 = v49;
            *v49 = 0;
            *(v49 + 1) = 0;
            *(v49 + 1) = v50;
            *(v49 + 2) = 0;
            v51 = (v49 + 16);
            v36 = (v49 + 288);
            if (((v49 + 288) & 0xF) != 0)
            {
              break;
            }

            *(v49 + 248) = 0u;
            *(v49 + 232) = 0u;
            *(v49 + 216) = 0u;
            *(v49 + 200) = 0u;
            *(v49 + 184) = 0u;
            *(v49 + 168) = 0u;
            *(v49 + 152) = 0u;
            *(v49 + 136) = 0u;
            *(v49 + 120) = 0u;
            *(v49 + 104) = 0u;
            *(v49 + 88) = 0u;
            *(v49 + 72) = 0u;
            *(v49 + 56) = 0u;
            *(v49 + 24) = 0u;
            *(v49 + 40) = 0u;
            *(v49 + 264) = 0u;
            atomic_store(0x3EEu, v49 + 4);
            atomic_store(0, v49 + 5);
            v60 = v49;
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 784), v36, &v60);
            v60 = v35;
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 1072), v36, &v60);
            if ((atomic_exchange(v35, 1u) & 1) == 0)
            {
              v37 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v51, a2);
              if (v37)
              {
                goto LABEL_78;
              }

              atomic_store(0xFFFFFFFF, v35 + 1);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1072, v36);
              atomic_store(0, v35);
            }
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v8 = v7;
      }
    }

    else
    {
      v32 = atomic_load((a1 + 1104));
      v8 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    }

    v33 = a1 + 1184;
    if (v9 != a1 + 1184)
    {
      while (1)
      {
        if (*(v9 + 18) != 2)
        {
          v34 = atomic_load((v9 + 32));
          if ((v34 & 1) == 0)
          {
            v36 = *v9;
            v35 = *(v9 + 8);
            if ((atomic_exchange(v35, 1u) & 1) == 0)
            {
              v37 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v35 + 4, a2);
              if (v37)
              {
LABEL_78:
                v11 = v37;
                *(a1 + 1360) = v36;
                atomic_store(0, v35);
                caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1232, v38);
                caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 944, v52);
                return v11;
              }

              atomic_store(0xFFFFFFFF, v35 + 1);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1072, v36);
              atomic_store(0, v35);
            }
          }
        }

        v39 = atomic_load((v9 + 32));
        v9 = v39 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v39 & 0xFFFFFFFFFFFFFFFCLL) == v33)
        {
          goto LABEL_52;
        }
      }
    }

    goto LABEL_52;
  }

  if (a2 - 1009 <= 0x3E40F && a3 <= 0x10)
  {
    v10 = (a2 + 7) & 0x7FFF8;
    v11 = 0;
    v12 = (v10 + 79) & 0xFFFF0;
    if (!v12)
    {
      return v11;
    }

    v13 = MEMORY[0x277D85FA0];
    if (v12 + 32 > ((*MEMORY[0x277D85FA0] + 10485759) & -*MEMORY[0x277D85FA0]))
    {
      return v11;
    }

    os_unfair_lock_lock((a1 + 704));
    v14 = *(a1 + 720);
    if (!v14)
    {
      goto LABEL_80;
    }

    v15 = (a1 + 720);
    v16 = a1 + 720;
    v17 = *(a1 + 720);
    do
    {
      v18 = *(v17 + 32);
      v19 = v18 >= v12;
      v20 = v18 < v12;
      if (v19)
      {
        v16 = v17;
      }

      v17 = *(v17 + 8 * v20);
    }

    while (v17);
    if (v16 == v15)
    {
      goto LABEL_33;
    }

    v21 = *(v16 + 32);
    if (v21 >= 2 * v12 || v21 - v12 <= v21 >> 3)
    {
      goto LABEL_33;
    }

    v23 = 2 * v12;
    v24 = (a1 + 720);
    do
    {
      v25 = v14[4];
      v19 = v25 >= v23;
      v26 = v25 < v23;
      if (v19)
      {
        v24 = v14;
      }

      v14 = v14[v26];
    }

    while (v14);
    if (v24 == v15 || ((v27 = v24[4], v27 < v23) ? (v28 = v27 - v12 > v27 >> 3) : (v28 = 0), v28))
    {
LABEL_33:
      v24 = v16;
    }

    if (v24 == v15)
    {
LABEL_80:
      v53 = caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::allocate((a1 + 352), (*v13 + 10485759) & -*v13, 0x1000uLL);
      v29 = v53;
      if (!v53)
      {
        v55 = 0;
        v56 = 0;
        goto LABEL_88;
      }

      *(a1 + 736) += v54;
      *v53 = 0;
      *(v53 + 8) = 0;
      *(v53 + 16) = xmmword_2754BBDC0;
      if ((v54 & 0x8000000000000000) != 0)
      {
LABEL_100:
        _os_assert_log();
        result = _os_crash();
        __break(1u);
        return result;
      }

      if (v54 <= 0x1F)
      {
        goto LABEL_98;
      }

      *(v53 + 24) = 2 * v54 - 63;
      caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::maybe_create_free_node(a1 + 352, v53, v12);
    }

    else
    {
      v29 = v24[6];
      if (!v29)
      {
LABEL_99:
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_100;
      }

      v30 = *(v29 + 8);
      v24[6] = v30;
      if (v30)
      {
        *v30 = v24 + 5;
      }

      else
      {
        std::__tree<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>>>::__remove_node_pointer((a1 + 712), v24);
        operator delete(v24);
      }

      caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::maybe_create_free_node(a1 + 352, v29, v12);
      *(v29 + 16) &= ~1uLL;
    }

    v56 = v10 + 64;
    v55 = v29 + 32;
LABEL_88:
    os_unfair_lock_unlock((a1 + 704));
    if (v55)
    {
      v11 = v55 + 32;
    }

    else
    {
      v11 = 0;
    }

    if (v55)
    {
      v57 = a2;
    }

    else
    {
      v57 = v56;
    }

    if (v55)
    {
      v58 = 0;
      v59 = v11 ^ v57 ^ 0x3E9E8527D393999FLL;
      do
      {
        *(v11 - 32 + v58) = v59;
        *(v11 + ((v57 + 7) & 0xFFFFFFFFFFFFFFF8) + v58) = v59;
        v58 += 8;
      }

      while (v58 != 32);
    }

    return v11;
  }

  return caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::allocate(a1, a2, a3);
}

void sub_27549E150(_Unwind_Exception *a1@<X0>, unint64_t a2@<X8>)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v2 + 1232, a2);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v2 + 944, v4);
  _Unwind_Resume(a1);
}

void *caulk::alloc::exported_resource<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::do_allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::allocate(a1 + 32, a2, a3);
  v5 = v3;
  if (v3)
  {
    bzero(v3, v4);
  }

  return v5;
}

uint64_t **std::__tree<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>>>::__remove_node_pointer(uint64_t **result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v30 = *v3 == v4;
      v4 = v3;
    }

    while (!v30);
  }

  if (*result == a2)
  {
    *result = v3;
  }

  v5 = result[1];
  result[2] = (result[2] - 1);
  v6 = *a2;
  v7 = a2;
  if (*a2)
  {
    v8 = a2[1];
    if (!v8)
    {
      v7 = a2;
      goto LABEL_15;
    }

    do
    {
      v7 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  v6 = v7[1];
  if (v6)
  {
LABEL_15:
    v10 = 0;
    v9 = v7[2];
    *(v6 + 16) = v9;
    goto LABEL_16;
  }

  v9 = v7[2];
  v10 = 1;
LABEL_16:
  v11 = *v9;
  if (*v9 == v7)
  {
    *v9 = v6;
    if (v7 == v5)
    {
      v11 = 0;
      v5 = v6;
    }

    else
    {
      v11 = v9[1];
    }
  }

  else
  {
    v9[1] = v6;
  }

  v12 = *(v7 + 24);
  if (v7 != a2)
  {
    v13 = a2[2];
    v7[2] = v13;
    v13[*v13 != a2] = v7;
    v15 = *a2;
    v14 = a2[1];
    *(v15 + 16) = v7;
    *v7 = v15;
    v7[1] = v14;
    if (v14)
    {
      *(v14 + 16) = v7;
    }

    *(v7 + 24) = *(a2 + 24);
    if (v5 == a2)
    {
      v5 = v7;
    }
  }

  if (!v5 || !v12)
  {
    return result;
  }

  if (!v10)
  {
    *(v6 + 24) = 1;
    return result;
  }

  while (1)
  {
    v16 = v11[2];
    v17 = *v16;
    v18 = *(v11 + 24);
    if (*v16 == v11)
    {
      break;
    }

    if ((v11[3] & 1) == 0)
    {
      *(v11 + 24) = 1;
      *(v16 + 24) = 0;
      v19 = v16[1];
      v20 = *v19;
      v16[1] = *v19;
      if (v20)
      {
        *(v20 + 16) = v16;
      }

      v21 = v16[2];
      v19[2] = v21;
      v21[*v21 != v16] = v19;
      *v19 = v16;
      v16[2] = v19;
      if (v5 == *v11)
      {
        v5 = v11;
      }

      v11 = *(*v11 + 8);
    }

    v22 = *v11;
    if (*v11 && *(v22 + 24) != 1)
    {
      v23 = v11[1];
      if (v23 && (v23[3] & 1) == 0)
      {
LABEL_66:
        v22 = v11;
      }

      else
      {
        *(v22 + 24) = 1;
        *(v11 + 24) = 0;
        v31 = v22[1];
        *v11 = v31;
        if (v31)
        {
          *(v31 + 16) = v11;
        }

        v32 = v11[2];
        v22[2] = v32;
        v32[*v32 != v11] = v22;
        v22[1] = v11;
        v11[2] = v22;
        v23 = v11;
      }

      v33 = v22[2];
      *(v22 + 24) = *(v33 + 24);
      *(v33 + 24) = 1;
      *(v23 + 24) = 1;
      v34 = *(v33 + 8);
      v35 = *v34;
      *(v33 + 8) = *v34;
      if (v35)
      {
        *(v35 + 16) = v33;
      }

      v36 = *(v33 + 16);
      v34[2] = v36;
      v36[*v36 != v33] = v34;
      *v34 = v33;
      goto LABEL_79;
    }

    v23 = v11[1];
    if (v23 && *(v23 + 24) != 1)
    {
      goto LABEL_66;
    }

    *(v11 + 24) = 0;
    v24 = v11[2];
    if (v24 == v5 || (v24[3] & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_57:
    v11 = *(v24[2] + 8 * (*v24[2] == v24));
  }

  if ((v11[3] & 1) == 0)
  {
    *(v11 + 24) = 1;
    *(v16 + 24) = 0;
    v25 = v17[1];
    *v16 = v25;
    if (v25)
    {
      *(v25 + 16) = v16;
    }

    v26 = v16[2];
    v17[2] = v26;
    v26[*v26 != v16] = v17;
    v17[1] = v16;
    v16[2] = v17;
    v27 = v11[1];
    if (v5 == v27)
    {
      v5 = v11;
    }

    v11 = *v27;
  }

  v28 = *v11;
  if (*v11 && *(v28 + 24) != 1)
  {
    goto LABEL_75;
  }

  v29 = v11[1];
  if (!v29 || *(v29 + 24) == 1)
  {
    *(v11 + 24) = 0;
    v24 = v11[2];
    v30 = *(v24 + 24) != 1 || v24 == v5;
    if (v30)
    {
LABEL_60:
      *(v24 + 24) = 1;
      return result;
    }

    goto LABEL_57;
  }

  if (v28 && (v28[3] & 1) == 0)
  {
LABEL_75:
    v29 = v11;
    goto LABEL_76;
  }

  *(v29 + 24) = 1;
  *(v11 + 24) = 0;
  v37 = *v29;
  v11[1] = *v29;
  if (v37)
  {
    *(v37 + 16) = v11;
  }

  v38 = v11[2];
  v29[2] = v38;
  v38[*v38 != v11] = v29;
  *v29 = v11;
  v11[2] = v29;
  v28 = v11;
LABEL_76:
  v33 = v29[2];
  *(v29 + 24) = *(v33 + 24);
  *(v33 + 24) = 1;
  *(v28 + 24) = 1;
  v34 = *v33;
  v39 = *(*v33 + 8);
  *v33 = v39;
  if (v39)
  {
    *(v39 + 16) = v33;
  }

  v40 = *(v33 + 16);
  v34[2] = v40;
  v40[*v40 != v33] = v34;
  v34[1] = v33;
LABEL_79:
  *(v33 + 16) = v34;
  return result;
}

uint64_t caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(unsigned int *a1, uint64_t a2)
{
  v2 = (a2 + 15) >> 4;
  v3 = atomic_load(a1);
  if (v3 < v2)
  {
    return 0;
  }

  v5 = a1[1];
  do
  {
    v6 = v5;
    v7 = caulk::alloc::detail::state_bit_span::allocate((a1 + 2), 0x20uLL, v5, 0x3EDu, v2, 0x3EEu);
    if (!v6)
    {
      break;
    }

    v5 = 0;
  }

  while (v7 == -1);
  if (v7 < 0)
  {
    return 0;
  }

  atomic_fetch_add(a1, -v2);
  v8 = v7 + v2;
  if ((v7 + v2) > 0x3ED)
  {
    v8 = 0;
  }

  if (v8 != v6)
  {
    a1[1] = v8;
  }

  return &a1[4 * v7 + 68];
}

uint64_t caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::maybe_create_free_node(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = (v3 >> 1) - a3;
  if (v4 >= 0x21)
  {
    if (a3 < 0 || (v6 = (a2 + a3 + 32), v6[2] = (2 * a3) | 1, v7 = v4 - 32, v7 < 0))
    {
      __break(1u);
    }

    else
    {
      v6[3] = v3 & 1 | (2 * v7);
      *(a2 + 24) = 2 * a3;
      v8 = v6[3];
      if ((v8 & 1) == 0)
      {
        *(v6 + (v8 >> 1) + 48) = *(v6 + (v8 >> 1) + 48) & 1 | v8;
      }

      return caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::add_freemap_node(result, v6);
    }
  }

  return result;
}

uint64_t caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::add_freemap_node(uint64_t result, void *a2)
{
  v2 = a2[3] >> 1;
  v3 = *(result + 368);
  if (!v3)
  {
LABEL_14:
    operator new();
  }

  v4 = result + 368;
  v5 = *(result + 368);
  do
  {
    v6 = *(v5 + 32);
    v7 = v6 >= v2;
    v8 = v6 < v2;
    if (v7)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * v8);
  }

  while (v5);
  if (v4 == result + 368 || v2 < *(v4 + 32))
  {
    while (1)
    {
      while (1)
      {
        v9 = v3;
        v10 = v3[4];
        if (v2 >= v10)
        {
          break;
        }

        v3 = *v9;
        if (!*v9)
        {
          goto LABEL_14;
        }
      }

      if (v10 >= v2)
      {
        break;
      }

      v3 = v9[1];
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v11 = *(v4 + 48);
    *a2 = v4 + 40;
    a2[1] = v11;
    if (v11)
    {
      *v11 = a2;
    }

    *(v4 + 48) = a2;
  }

  return result;
}

atomic_uint *caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= 0x3F0 && a3 <= 0x10)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v3 = *(a1 + 1552);
    if (!v3)
    {
      goto LABEL_14;
    }

    *&v61 = *(a1 + 1552);
    v7 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 1264, &v61, 0);
    if (*v7 == v3)
    {
      v9 = v7;
      v10 = v7;
    }

    else
    {
      v10 = v8;
      if (*(v8 + 18) == 2)
      {
        v9 = a1 + 1376;
        v19 = a1 + 1376;
        goto LABEL_28;
      }

      v9 = v8;
    }

    while (1)
    {
      v19 = a1 + 1376;
      if (v10 != a1 + 1376)
      {
        do
        {
          if (*(v10 + 18) != 2)
          {
            v22 = atomic_load((v10 + 32));
            if ((v22 & 1) == 0)
            {
              v24 = *v10;
              v23 = *(v10 + 8);
              if ((atomic_exchange(v23, 1u) & 1) == 0)
              {
                v25 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v23 + 4, a2);
                if (v25)
                {
LABEL_55:
                  v17 = v25;
                  *(a1 + 1552) = v24;
                  atomic_store(0, v23);
                  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1424, v26);
                  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1136, v40);
                  return v17;
                }

                atomic_store(0xFFFFFFFF, v23 + 1);
                caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1264, v24);
                atomic_store(0, v23);
              }
            }
          }

          v27 = atomic_load((v10 + 32));
          v10 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        }

        while ((v27 & 0xFFFFFFFFFFFFFFFCLL) != v19);
      }

LABEL_28:
      if (*(v9 + 18) == 2 || (v28 = atomic_load((v9 + 32)), (v28 & 1) != 0))
      {
        if (v3)
        {
          *&v61 = v3;
          v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 1264, &v61, 0);
          if (*v9 != v3)
          {
            if (*(v29 + 18) == 2)
            {
              v9 = v19;
            }

            else
            {
              v9 = v29;
            }
          }
        }

        else
        {
          v30 = atomic_load((a1 + 1296));
          v9 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        }
      }

      v31 = atomic_load((a1 + 1296));
      v32 = v31 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v31 & 0xFFFFFFFFFFFFFFFCLL) != v9 && v32 != v19)
      {
        do
        {
          if (*(v32 + 18) != 2)
          {
            v34 = atomic_load((v32 + 32));
            if ((v34 & 1) == 0)
            {
              v24 = *v32;
              v23 = *(v32 + 8);
              if ((atomic_exchange(v23, 1u) & 1) == 0)
              {
                v25 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v23 + 4, a2);
                if (v25)
                {
                  goto LABEL_55;
                }

                atomic_store(0xFFFFFFFF, v23 + 1);
                caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1264, v24);
                atomic_store(0, v23);
              }
            }
          }

          v35 = atomic_load((v32 + 32));
          v32 = v35 & 0xFFFFFFFFFFFFFFFCLL;
        }

        while ((v35 & 0xFFFFFFFFFFFFFFFCLL) != v9 && v32 != v19);
      }

      v3 = 0xFFFFFFFFLL;
      while (1)
      {
        v37 = caulk::alloc::details::caching_page_allocator_base::allocate(*(a1 + 968), 0x4000, 0x10uLL);
        *v37 = 0;
        v37[1] = 0;
        *(v37 + 1) = v38;
        *(v37 + 2) = 0;
        v39 = (v37 + 4);
        v24 = (v37 + 72);
        if (((v37 + 72) & 0xF) != 0)
        {
          break;
        }

        v23 = v37;
        *(v37 + 62) = 0u;
        *(v37 + 58) = 0u;
        *(v37 + 54) = 0u;
        *(v37 + 50) = 0u;
        *(v37 + 46) = 0u;
        *(v37 + 42) = 0u;
        *(v37 + 38) = 0u;
        *(v37 + 34) = 0u;
        *(v37 + 30) = 0u;
        *(v37 + 26) = 0u;
        *(v37 + 22) = 0u;
        *(v37 + 18) = 0u;
        *(v37 + 14) = 0u;
        *(v37 + 6) = 0u;
        *(v37 + 10) = 0u;
        *(v37 + 66) = 0u;
        atomic_store(0x3EEu, v37 + 4);
        atomic_store(0, v37 + 5);
        *&v61 = v37;
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 976), v24, &v61);
        *&v61 = v23;
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 1264), v24, &v61);
        if ((atomic_exchange(v23, 1u) & 1) == 0)
        {
          v25 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::allocate(v39, a2);
          if (v25)
          {
            goto LABEL_55;
          }

          atomic_store(0xFFFFFFFF, v23 + 1);
          caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1264, v24);
          atomic_store(0, v23);
        }
      }

LABEL_13:
      __break(1u);
LABEL_14:
      v18 = atomic_load((a1 + 1296));
      v9 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  if ((a2 - 1009) >> 4 <= 0x3B0 && a3 <= 0x100)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v11 = *(a1 + 944);
    if (v11)
    {
      *&v61 = *(a1 + 944);
      v12 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 656, &v61, 0);
      if (*v12 == v11)
      {
        v14 = v12;
        v15 = v12;
      }

      else
      {
        v15 = v13;
        if (*(v13 + 18) == 2)
        {
          v14 = a1 + 768;
          v21 = a1 + 768;
          goto LABEL_64;
        }

        v14 = v13;
      }
    }

    else
    {
      v20 = atomic_load((a1 + 688));
      v14 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    }

    v21 = a1 + 768;
    if (v15 != a1 + 768)
    {
      do
      {
        if (*(v15 + 18) != 2)
        {
          v41 = atomic_load((v15 + 32));
          if ((v41 & 1) == 0)
          {
            v43 = *v15;
            v42 = *(v15 + 8);
            if ((atomic_exchange(v42, 1u) & 1) == 0)
            {
              v44 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::allocate(v42 + 4, a2);
              if (v44)
              {
                goto LABEL_91;
              }

              atomic_store(0xFFFFFFFF, v42 + 1);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 656, v43);
              atomic_store(0, v42);
            }
          }
        }

        v46 = atomic_load((v15 + 32));
        v15 = v46 & 0xFFFFFFFFFFFFFFFCLL;
      }

      while ((v46 & 0xFFFFFFFFFFFFFFFCLL) != v21);
    }

LABEL_64:
    if (*(v14 + 18) == 2 || (v47 = atomic_load((v14 + 32)), (v47 & 1) != 0))
    {
      if (v11)
      {
        *&v61 = v11;
        v14 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1 + 656, &v61, 0);
        if (*v14 != v11)
        {
          if (*(v48 + 18) == 2)
          {
            v14 = v21;
          }

          else
          {
            v14 = v48;
          }
        }
      }

      else
      {
        v49 = atomic_load((a1 + 688));
        v14 = v49 & 0xFFFFFFFFFFFFFFFCLL;
      }
    }

    v50 = atomic_load((a1 + 688));
    v51 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v50 & 0xFFFFFFFFFFFFFFFCLL) != v14 && v51 != v21)
    {
      do
      {
        if (*(v51 + 18) != 2)
        {
          v53 = atomic_load((v51 + 32));
          if ((v53 & 1) == 0)
          {
            v43 = *v51;
            v42 = *(v51 + 8);
            if ((atomic_exchange(v42, 1u) & 1) == 0)
            {
              v44 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::allocate(v42 + 4, a2);
              if (v44)
              {
                goto LABEL_91;
              }

              atomic_store(0xFFFFFFFF, v42 + 1);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 656, v43);
              atomic_store(0, v42);
            }
          }
        }

        v54 = atomic_load((v51 + 32));
        v51 = v54 & 0xFFFFFFFFFFFFFFFCLL;
      }

      while ((v54 & 0xFFFFFFFFFFFFFFFCLL) != v14 && v51 != v21);
    }

    v3 = 0xFFFFFFFFLL;
    while (1)
    {
      do
      {
        v56 = caulk::alloc::details::caching_page_allocator_base::allocate(*(a1 + 360), 0x4000, 0x10uLL);
        *v56 = 0;
        v56[1] = 0;
        *(v56 + 1) = v57;
        *(v56 + 1) = 0u;
        v58 = (v56 + 4);
        v43 = (v56 + 64);
        *(v56 + 2) = 0u;
        *(v56 + 3) = 0u;
        *(v56 + 4) = 0u;
        *(v56 + 5) = 0u;
        *(v56 + 6) = 0u;
        *(v56 + 7) = 0u;
        *(v56 + 8) = 0u;
        *(v56 + 9) = 0u;
        *(v56 + 10) = 0u;
        *(v56 + 11) = 0u;
        *(v56 + 12) = 0u;
        *(v56 + 13) = 0u;
        *(v56 + 14) = 0u;
        *(v56 + 30) = 0;
        if (v56)
        {
          goto LABEL_13;
        }

        v42 = v56;
        *(v56 + 3) = 0;
        *(v56 + 4) = 0;
        atomic_store(0x3Fu, v56 + 4);
        atomic_store(0, v56 + 5);
        *&v61 = v56;
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 368), v43, &v61);
        *&v61 = v42;
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 656), v43, &v61);
      }

      while ((atomic_exchange(v42, 1u) & 1) != 0);
      v44 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::allocate(v58, a2);
      if (v44)
      {
        break;
      }

      atomic_store(0xFFFFFFFF, v42 + 1);
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 656, v43);
      atomic_store(0, v42);
    }

LABEL_91:
    v17 = v44;
    *(a1 + 944) = v43;
    atomic_store(0, v42);
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 816, v45);
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 528, v59);
    return v17;
  }

  v17 = caulk::alloc::details::caching_page_allocator_base::allocate(*a1, a2, a3);
  if (v17)
  {
    *&v61 = v16;
    *(&v61 + 1) = a3;
    if ((caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::emplace<caulk::alloc::detail::tracked_block>(a1 + 16, v17, &v61) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return v17;
}

uint64_t caulk::alloc::detail::state_bit_span::allocate(uint64_t this, unint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a3 > a4 || (v6 = a3 >> 5, v6 >= a2) || (v7 = a4 >> 5, v7 >= a2))
  {
LABEL_45:
    __break(1u);
    return this;
  }

  v8 = this;
  this = 0xFFFFFFFFLL;
  if (v6 <= v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = a3 & 0xFFFFFFE0;
    v14 = v8 + 8 * v7;
    v15 = (v8 + 8 * v6);
    while (1)
    {
      v16 = *v15;
      this = __clz(__rbit32(*v15));
      v17 = !this || v9 == 0;
      if (!v17 && v9 + v10 + this >= a5)
      {
        break;
      }

      if (a5 <= 0x20)
      {
        v20 = 0;
        v21 = 0xFFFFFFFF >> -a5;
        while ((v21 & v16) != 0)
        {
          v22 = __clz(v21 & v16);
          v21 <<= 32 - v22 - v20;
          v20 = 32 - v22;
          if (v22 < a5)
          {
            if (v16)
            {
              goto LABEL_15;
            }

            goto LABEL_20;
          }
        }

        this = v20 + v13;
        if (this + a5 >= a6)
        {
          return 0xFFFFFFFFLL;
        }

        v23 = (~(-1 << a5) << v20) | v16 | (1 << (v20 + 32));
        v24 = *v15;
        atomic_compare_exchange_strong(v15, &v24, v23);
        if (v24 != v16)
        {
          v9 = 0;
          v19 = 0;
          v16 = v24;
          goto LABEL_21;
        }

        return this;
      }

      if (v16)
      {
LABEL_15:
        v9 = 0;
        v19 = __clz(v16);
      }

      else
      {
LABEL_20:
        v19 = 32;
      }

LABEL_21:
      v10 = v9;
      v12 = v11;
      ++v15;
      v13 += 32;
      v9 = v19;
      v11 = v16;
      if (v15 > v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v25 = a5 - (v9 + v10);
    if (!v25 || v25 > this)
    {
      goto LABEL_45;
    }

    if (v10)
    {
      this = v13 - v10 - 32;
      if (this + a5 >= a6)
      {
        return 0xFFFFFFFFLL;
      }

      v26 = -(1 << -v10) | ((1 << -v10) << 32);
      v27 = v12;
      atomic_compare_exchange_strong(v15 - 2, &v27, v26 | v12);
      if (v27 != v12)
      {
LABEL_41:
        v9 = 0;
        v19 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      this = v13 - v9;
      if (this + a5 >= a6)
      {
        return 0xFFFFFFFFLL;
      }

      v26 = 0;
    }

    v28 = (1 << -v9);
    v29 = -v28;
    v30 = v28 << 32;
    if (v10)
    {
      v30 = 0;
    }

    v31 = v30 | v29;
    v32 = v11;
    atomic_compare_exchange_strong(v15 - 1, &v32, v31 | v11);
    if (v32 == v11)
    {
      v33 = v16 | (0xFFFFFFFF >> -v25);
      v34 = v16;
      atomic_compare_exchange_strong(v15, &v34, v33);
      if (v34 == v16)
      {
        return this;
      }

      atomic_fetch_and(v15 - 1, ~v31);
      v16 = v34;
    }

    else
    {
      v11 = v32;
    }

    if (v10)
    {
      v9 = 0;
      v19 = 0;
      atomic_fetch_and(v15 - 2, ~v26);
      goto LABEL_21;
    }

    goto LABEL_41;
  }

  return this;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 40));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    do
    {
      v10 = atomic_load((v6 + 40));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 40));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  return v4;
}

unint64_t caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  for (i = _X2; ; i = _X2)
  {
    v11 = (_X3 - 1);
    a2 = a2 & 0xFFFFFFFF00000000 | v11;
    _X6 = _X3 <= 1 ? 0 : i;
    _X3 = _X3 | (v2 << 32);
    __asm { CASPAL          X2, X3, X6, X7, [X0] }

    if (_X2 == i)
    {
      break;
    }

    v2 = HIDWORD(_X3);
  }

  if (!v11)
  {
    if (i)
    {
      return caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(result, i);
    }
  }

  return result;
}

uint64_t caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_size_for_ptr(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 - 8);
  v12[0] = v3 + 800;
  v12[1] = v3 + 960;
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  owner = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::find_owner(v12, a2);
  if (owner)
  {
    v6 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::size(owner + 16, a2);
  }

  else
  {
    v6 = 0;
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v3 + 960, v5);
  if (!v6)
  {
    if (caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::containing_block(v3 + 368, a2, 1) && (v7 = caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::size(v3 + 368, a2 - 32), (v7 & 0x7FFFFFFFFFFFFFBFLL) != 0))
    {
      return v7 - 64;
    }

    else
    {
      caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
      v12[0] = a2;
      v8 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(v3 + 32, v12, 0);
      if (*(v8 + 16) != a2)
      {
        if (*(v9 + 26) == 2)
        {
          v8 = v3 + 232;
        }

        else
        {
          v8 = v9;
        }
      }

      v10 = v3 + 232;
      if (v8 == v3 + 232 || (v10 = *(v8 + 26), v10 == 2) || (v10 = atomic_load((v8 + 40)), (v10 & 1) != 0) || (v10 = *(v8 + 16), v10 != a2))
      {
        v6 = 0;
      }

      else
      {
        v6 = *v8;
      }

      caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v3 + 288, v10);
    }
  }

  return v6;
}

unint64_t caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::containing_block(uint64_t a1, unint64_t a2, uint64_t a3)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v14 = a2;
  v6 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1 + 16, &v14, 0);
  v7 = 0;
  if (*(v6 + 26) == 1)
  {
    v8 = a1 + 216;
  }

  else
  {
    v8 = v6;
  }

  if (*(v8 + 26) != 2)
  {
    v7 = 0;
    v9 = atomic_load((v8 + 40));
    if ((v9 & 1) == 0 && a1 + 216 != v8)
    {
      v10 = *(v8 + 16);
      v8 = *v8;
      if (v10 > a2 || a2 + a3 > v10 + v8)
      {
        v7 = 0;
      }

      else
      {
        v7 = v10;
      }
    }
  }

  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 272, v8);
  return v7;
}

void *caulk::mach::details::retain_os_object(void *this, void *a2)
{
  if (this)
  {
    return os_retain(this);
  }

  return this;
}

uint64_t caulk::ipc::mapped_memory::mapped_memory(uint64_t a1, xpc_object_t *a2)
{
  if (!*a2 || MEMORY[0x277C793E0]() != MEMORY[0x277D864B8])
  {
    v5 = 0;
    goto LABEL_12;
  }

  region = 0;
  v4 = xpc_shmem_map(*a2, &region);
  if (v4)
  {
    v5 = region;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = region == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_12:
    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to map in shared memory");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a1 = region;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return a1;
}

void caulk::mach::details::release_os_object(caulk::mach::details *this, void *a2)
{
  if (this)
  {
    os_release(this);
  }
}

atomic_ullong *caulk::concurrent::details::messenger_servicer::enqueue(atomic_ullong *result, unint64_t a2)
{
  if (atomic_fetch_or((a2 + 16), 1u))
  {
    __break(1u);
  }

  else
  {
    v2 = result[1];
    atomic_store(v2, (a2 + 8));
    v3 = v2;
    atomic_compare_exchange_strong(result + 1, &v3, a2);
    if (v3 != v2)
    {
      v4 = v3;
      do
      {
        atomic_store(v3, (a2 + 8));
        atomic_compare_exchange_strong(result + 1, &v4, a2);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }

    __dmb(0xBu);
    return (*(*result + 16))();
  }

  return result;
}

uint64_t caulk::deferred_logger::create_message(caulk::deferred_logger *this, unint64_t a2, int a3)
{
  v3 = 0;
  if (a2 < 0x10000)
  {
    v3 = a2;
  }

  if (a2 >> 16)
  {
    return 0;
  }

  v4 = a3;
  v5 = a2 & 0xFF00 | v3;
  v6 = *(this + 4);
  v7 = v6 + v5;
  if (a3 == 2)
  {
    v8 = (HIDWORD(v6) + 1);
  }

  else
  {
    v8 = HIDWORD(v6);
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v10 = v7 | (v8 << 32);
    v11 = v6;
    atomic_compare_exchange_strong(this + 4, &v11, v10);
    if (v11 == v6)
    {
      break;
    }

    v6 = v11;
    v12 = HIDWORD(v11);
    v7 = v11 + (a2 & 0xFF00 | v3);
    v8 = v12 + (a3 == 2);
    if (!v8)
    {
LABEL_10:
      if (v7 > 0x10000)
      {
        v9 = 0;
        atomic_fetch_add(this + 10, 1u);
        return v9;
      }
    }
  }

  v14 = *this;
  v13 = *(this + 1);
  v18[0] = v14;
  if (!v13 || (v15 = std::__shared_weak_count::lock(v13), (v18[1] = v15) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v9 = caulk::details::log_msg::create(v18, v5, v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  return v9;
}

uint64_t caulk::details::log_msg::create(void *a1, unsigned int a2, char a3)
{
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v6 = a2;
    result = (*(*caulk::g_realtime_safe_resource + 16))(caulk::g_realtime_safe_resource, a2, 8);
    *(result + 16) = 0;
    *result = &unk_28841CD38;
    *(result + 8) = 0;
    *(result + 20) = v6;
    *(result + 22) = a3;
    v7 = a1[1];
    *(result + 24) = *a1;
    *(result + 32) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unint64_t non-virtual thunk tocaulk::concurrent::details::service_thread::messenger_signal_wakeup(unint64_t this)
{
  if ((atomic_fetch_add_explicit((this - 16), 1u, memory_order_release) & 0x80000000) != 0)
  {
    return caulk::mach::semaphore::signal_or_error((this - 24));
  }

  return this;
}

OS_os_workgroup *caulk::mach::os_workgroup_managed::copy_mach_port(caulk::mach::os_workgroup_managed *this)
{
  result = *(this + 1);
  if (result)
  {
    mach_port_out = 0;
    if (os_workgroup_copy_port(result, &mach_port_out))
    {
      return 0;
    }

    else
    {
      return mach_port_out;
    }
  }

  return result;
}

uint64_t caulk::mach::os_workgroup_interval_managed::finish(caulk::mach::os_workgroup_interval_managed *this, os_workgroup_interval_data_opaque_s *a2)
{
  if (*(this + 56) != 1 || *(this + 57) != 1)
  {
    return 1;
  }

  result = os_workgroup_interval_finish(*(this + 1), a2);
  *(this + 57) = 0;
  return result;
}

uint64_t caulk::mach::os_workgroup_interval_managed::start(caulk::mach::os_workgroup_interval_managed *this, uint64_t a2, uint64_t a3, os_workgroup_interval_data_opaque_s *a4)
{
  if (*(this + 56) != 1 || (*(this + 57) & 1) != 0)
  {
    return 1;
  }

  v9 = mach_absolute_time();
  if (a2 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a2;
  }

  if (v9 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v9;
  }

  if (v10 == v11)
  {
    return 22;
  }

  result = os_workgroup_interval_start(*(this + 1), v10, v11, a4);
  *(this + 57) = result == 0;
  return result;
}

uint64_t caulk::mach::this_thread::set_priority(caulk::mach::thread::priority_absolute *a1)
{
  v1 = *(a1 + 4);
  if (v1 == -1)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(a1 + 4);
  }

  if (v2 == 2)
  {
    if (v1 != 2)
    {
      goto LABEL_20;
    }

    return caulk::mach::thread::priority_absolute::apply_to_this_thread(a1);
  }

  else
  {
    if (v2 != 1)
    {
      if (v2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!v1)
      {

        return caulk::mach::thread::priority_qos::apply_to_this_thread(a1);
      }

LABEL_20:
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (v1 != 1)
    {
      goto LABEL_20;
    }

    return caulk::mach::thread::priority_realtime::apply_to_this_thread(a1);
  }
}

uint64_t caulk::mach::thread::priority_realtime::apply_to_this_thread(integer_t *this)
{
  v2 = pthread_self();

  return caulk::mach::thread::priority_realtime::apply_to_thread(this, v2);
}

uint64_t ___ZN5caulk10concurrent7details17dispatch_receiverC2EN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v5.msgh_bits = 0;
  v5.msgh_remote_port = 0;
  v5.msgh_local_port = v2;
  *&v5.msgh_voucher_port = 0;
  mach_msg(&v5, 2, 0, 0x28u, v2, 0, 0);
  atomic_store(0, (v1 + 104));
  do
  {
    result = caulk::concurrent::details::messenger_servicer::check_dequeue(v1);
  }

  while ((result & 1) != 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void caulk::concurrent::message::~message(caulk::concurrent::message *this)
{
  *this = &unk_28841B048;
  if (atomic_load(this + 4))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

semaphore_t *caulk::mach::semaphore::semaphore(semaphore_t *semaphore)
{
  *semaphore = 0;
  *(semaphore + 4) = 0;
  v2 = semaphore_create(*MEMORY[0x277D85F48], semaphore, 0, 0);
  caulk::mach::throw_if_mach_error("semaphore_create", v2);
  *(semaphore + 4) = 1;
  return semaphore;
}

uint64_t caulk::details::log_msg::perform(caulk::details::log_msg *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  v3 = *(v2 + 32);
  if (*(this + 22) == 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 32);
  atomic_compare_exchange_strong((v2 + 32), &v5, (v3 - *(this + 10)) | (v3 + (v4 << 32)) & 0xFFFFFFFF00000000);
  if (v5 != v3)
  {
    v6 = v4 << 32;
    v7 = v5;
    do
    {
      atomic_compare_exchange_strong((v2 + 32), &v7, (v5 - *(this + 10)) | (v5 + v6) & 0xFFFFFFFF00000000);
      v8 = v7 == v5;
      v5 = v7;
    }

    while (!v8);
  }

  v9 = *(v2 + 24);
  v10 = *(this + 22);
  os_log_pack_send();
  if (*(v2 + 40))
  {
    v11 = atomic_exchange((v2 + 40), 0);
    v12 = *(v2 + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 67109120;
      v17[1] = v11;
      _os_log_error_impl(&dword_27549C000, v12, OS_LOG_TYPE_ERROR, "%u messages were dropped due to log throttling", v17, 8u);
    }
  }

  v13 = *(this + 10);
  (**this)(this);
  if (!caulk::g_realtime_safe_resource)
  {
    __break(1u);
  }

  v14 = *(*caulk::g_realtime_safe_resource + 24);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t caulk::mach::throw_if_mach_error(uint64_t this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *v7 = &unk_28841AFB8;
    MEMORY[0x277C788B0](v6, a2, v7, this);
    std::error_category::~error_category(v7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = std::runtime_error::what(v6);
      *v7 = 136315138;
      *&v7[4] = v3;
      _os_log_error_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Throwing: %s", v7, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = std::runtime_error::runtime_error(exception, v6);
    v5->__vftable = (MEMORY[0x277D82840] + 16);
    v5[1] = v6[1];
    __cxa_throw(v5, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t caulk::concurrent::details::messenger_servicer::check_dequeue(caulk::concurrent::details::messenger_servicer *this)
{
  v1 = *(this + 9);
  if (!v1)
  {
    v2 = atomic_exchange_explicit(this + 1, 0, memory_order_acquire);
    if (!v2)
    {
      return 0;
    }

    v1 = 0;
    do
    {
      v3 = v1;
      v1 = v2;
      v4 = (v2 + 8);
      v2 = atomic_load((v2 + 8));
      atomic_store(v3, v4);
    }

    while (v2);
    *(this + 9) = v1;
  }

  v5 = atomic_load((v1 + 8));
  *(this + 9) = v5;
  atomic_store(0, (v1 + 16));
  __dmb(9u);
  (*(*v1 + 16))(v1);
  return 1;
}

uint64_t caulk::concurrent::details::dispatch_receiver::messenger_signal_wakeup(uint64_t this)
{
  if ((atomic_exchange((this + 104), 1u) & 1) == 0)
  {
    v1 = 0x1C00000013;
    v2 = *(this + 88);
    v4 = 0;
    v3 = 0;
    return mach_msg(&v1, 1, 0x1Cu, 0, 0, 0, 0);
  }

  return this;
}

atomic_uint *caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::deallocate(atomic_uint *result, unint64_t a2, uint64_t a3)
{
  if ((result + 68) > a2 || (v5 = a2 - (result + 68), ((v5 >> 5) & 0x7FFFFFFF) > 0x1F6))
  {
    __break(1u);
  }

  else
  {
    v9[6] = v3;
    v9[7] = v4;
    v6 = result;
    v7 = v5 >> 4;
    if (!a3)
    {
      a3 = caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::size(result, a2);
    }

    v8 = (a3 + 15) >> 4;
    v9[0] = v6 + 2;
    v9[1] = 32;
    result = caulk::alloc::detail::state_bit_span::deallocate(v9, v7, v8);
    atomic_fetch_add(v6, v8);
    if (v6[1] > v7)
    {
      v6[1] = v7;
    }
  }

  return result;
}

void *caulk::alloc::detail::state_bit_span::deallocate(void *this, unint64_t a2, unsigned int a3)
{
  v3 = a2 >> 5;
  if (this[1] > v3)
  {
    v3 = *this + 8 * v3;
    v4 = atomic_load(v3);
    v5 = 1 << (a2 & 0x1F | 0x20);
    if ((v4 & v5) != 0)
    {
      if (a3)
      {
        v6 = 0;
        v7 = a2 & 0x1F;
        v8 = 32 - (a2 & 0x1F);
        if (v8 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = 32 - (a2 & 0x1F);
        }

        v10 = v4 & ~v5;
        v11 = (v3 + 8);
        do
        {
          v12 = 0xFFFFFFFFFFFFFFFFLL >> ~(v9 - 1) << v7;
          a2 = v12 | (v12 << 32);
          if ((a2 & v10) != v12)
          {
            break;
          }

          LODWORD(a2) = v6 + 1;
          *&v15[8 * v6 + 8] = ~(v12 | v5);
          if (a3 <= v8)
          {
            goto LABEL_16;
          }

          if (v11 == (*this + 8 * this[1]))
          {
            break;
          }

          v7 = 0;
          v5 = 0;
          v10 = atomic_load(v11++);
          ++v6;
          a3 -= v9;
          v8 = 32;
          v9 = a3 >= 0x20 ? 32 : a3;
        }

        while (a3);
      }
    }
  }

  __break(1u);
LABEL_16:
  if (a2)
  {
    v13 = a2;
    v14 = (v3 - 8);
    do
    {
      atomic_fetch_and(&v14[v13], *&v15[v13 * 8]);
      --v13;
    }

    while (v13 * 8);
  }

  return this;
}

BOOL caulk::semaphore::timed_wait(atomic_uint *this, double a2)
{
  v3 = this + 2;
  if (a2 == 0.0)
  {
    explicit = atomic_load_explicit(v3, memory_order_acquire);
    if (explicit >= 1)
    {
      for (i = explicit; i >= 1; explicit = i)
      {
        atomic_compare_exchange_strong(this + 2, &i, explicit - 1);
        result = i == explicit;
        if (i == explicit)
        {
          break;
        }
      }

      return result;
    }

    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_acquire);
  if (add_explicit > 0)
  {
    return 1;
  }

  if (a2 > 0.0)
  {
    v8 = caulk::mach::semaphore::timed_wait_or_error(this, a2, add_explicit);
    v9 = v8;
    v13 = v8;
    v14 = BYTE4(v8);
    if (!HIDWORD(v8))
    {
      return 0;
    }

    caulk::expected<BOOL,int>::value(&v13);
    if (v9)
    {
      return 1;
    }

    v10 = atomic_load(this + 2);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = v10;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(this + 2, &v11, v10 + 1, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          return 0;
        }

        v10 = v11;
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  do
  {
LABEL_17:
    v12 = MEMORY[0x277C79300](*this);
  }

  while (v12 == 14);
  return v12 == 0;
}

uint64_t caulk::concurrent::details::worker_thread::run(caulk::concurrent::details::worker_thread *this)
{
  do
  {
    caulk::semaphore::timed_wait(this + 8, -1.0);
    result = (*(*this + 16))(this);
    v3 = atomic_load(this + 49);
  }

  while ((v3 & 1) == 0);
  return result;
}

void sub_2754A04C8(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(1u, (v1 + 48));

  __cxa_end_catch();
}

void caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::deallocate(uint64_t a1, caulk::mach::vm_block *a2, unint64_t a3)
{
  if (a3 <= 0x3F0)
  {
    v19 = a1 + 976;
    v20 = a1 + 1136;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    owner = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::find_owner(&v19, a2);
    if (owner)
    {
      v7 = owner;
      v8 = (owner + 16);
      caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::deallocate((owner + 16), a2, a3);
      v9 = atomic_load((v7 + 4));
      if (v9 == -1)
      {
        v9 = atomic_load(v8);
        if (v9 >= 0xFC)
        {
          v9 = atomic_exchange(v7, 1u);
          if ((v9 & 1) == 0)
          {
            v17 = v7;
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 1264), v7 + 288, &v17);
            v9 = v7 + 4;
            atomic_store(0, (v7 + 4));
            atomic_store(0, v7);
          }
        }
      }

      caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v20, v9);
      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if ((a3 - 1009) >> 4 > 0x3B0)
  {
    if ((caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::remove(a1 + 16, a2) & 1) == 0)
    {
      goto LABEL_22;
    }

    v16 = *a1;

    caulk::alloc::details::caching_page_allocator_base::deallocate(v16, a2, a3);
  }

  else
  {
    v17 = a1 + 368;
    v18 = a1 + 528;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v10 = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::find_owner(&v17, a2);
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = v10;
    v12 = v10 + 256;
    if (v10 + 256 > a2 || ((a2 - v12) >> 8) >= 0x3FuLL)
    {
      goto LABEL_22;
    }

    v13 = (a3 + 255) >> 8;
    v19 = v10 + 24;
    v20 = 2;
    caulk::alloc::detail::state_bit_span::deallocate(&v19, (a2 - v12) >> 8, v13);
    v14 = v11 + 16;
    atomic_fetch_add((v11 + 16), v13);
    v15 = atomic_load((v11 + 4));
    if (v15 == -1)
    {
      v14 = atomic_load(v14);
      if (v14 >= 0x10)
      {
        v14 = atomic_exchange(v11, 1u);
        if ((v14 & 1) == 0)
        {
          v19 = v11;
          caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 656), v12, &v19);
          v14 = v11 + 4;
          atomic_store(0, (v11 + 4));
          atomic_store(0, v11);
        }
      }
    }

    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v18, v14);
  }
}

semaphore_t *caulk::semaphore::semaphore(semaphore_t *this, semaphore_t a2)
{
  result = caulk::mach::semaphore::semaphore(this);
  result[2] = a2;
  result[3] = a2;
  return result;
}

{
  result = caulk::mach::semaphore::semaphore(this);
  result[2] = a2;
  result[3] = a2;
  return result;
}

caulk::concurrent::details::lf_read_sync_write_impl *caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(caulk::concurrent::details::lf_read_sync_write_impl *this)
{
  *this = 0;
  caulk::details::semaphore_pool::init_global(this);
  return this;
}

{
  *this = 0;
  caulk::details::semaphore_pool::init_global(this);
  return this;
}

void caulk::details::log_msg::~log_msg(caulk::details::log_msg *this)
{
  *this = &unk_28841CD38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_28841CD38;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x277C78AD0);
}

void caulk::mach::os_workgroup_managed::~os_workgroup_managed(caulk::mach::details **this, void *a2)
{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);
}

{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);

  JUMPOUT(0x277C78AD0);
}

{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);
}

double caulk::mach::os_workgroup_managed::make@<D0>(const char *a1@<X0>, mach_port_t a2@<W1>, uint64_t a3@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = os_workgroup_create_with_port(a1, a2);
  *a3 = &unk_28841AF98;
  *(a3 + 8) = v4;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 41) = 0u;
  return result;
}

void caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::deallocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 <= 0x3F0)
  {
    v22 = a1 + 784;
    v23 = a1 + 944;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    owner = caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::find_owner(&v22, a2);
    if (owner)
    {
      v7 = owner;
      v8 = (owner + 16);
      caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::deallocate((owner + 16), a2, a3);
      v9 = atomic_load((v7 + 4));
      if (v9 == -1)
      {
        v9 = atomic_load(v8);
        if (v9 >= 0xFC)
        {
          v9 = atomic_exchange(v7, 1u);
          if ((v9 & 1) == 0)
          {
            v24 = v7;
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>((a1 + 1072), v7 + 288, &v24);
            v9 = v7 + 4;
            atomic_store(0, (v7 + 4));
            atomic_store(0, v7);
          }
        }
      }

      caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v23, v9);
      return;
    }

    goto LABEL_32;
  }

  if (a3 - 1009 <= 0x3E40F)
  {
    v10 = 0;
    v11 = a2 ^ a3 ^ 0x3E9E8527D393999FLL;
    while (*(a2 - 32 + v10) == v11)
    {
      if (*(a2 + ((a3 + 7) & 0x7FFF8) + v10) != v11)
      {
        goto LABEL_30;
      }

      v10 += 8;
      if (v10 == 32)
      {
        v12 = a2 - 32;
        os_unfair_lock_lock((a1 + 704));
        v13 = caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::size(a1 + 352, a2 - 32);
        if (v13)
        {
          v14 = a2 - 64;
          v15 = *(v12 - 8);
          v16 = *(v12 - 16) | 1;
          *(v12 - 16) = v16;
          if ((v15 & 1) == 0)
          {
            if (v12)
            {
              v17 = v12 + (v15 >> 1);
              if (*(v17 + 16))
              {
                caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::remove_freemap_entry(a1 + 352, v17);
                caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::consolidate_free(v12 - 32, v17);
                v16 = *(v12 - 16);
              }
            }
          }

          if (v16 >= 2 && (v18 = v14 - (v16 >> 1), (*(v18 - 16) & 1) != 0))
          {
            v19 = (v18 - 32);
            caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::remove_freemap_entry(a1 + 352, (v18 - 32));
            caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::consolidate_free(v19, v14);
          }

          else
          {
            v19 = (v12 - 32);
          }

          v21 = caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::add_freemap_node(a1 + 352, v19);
          caulk::alloc::page_allocator::advise_free(v21, (v19 + 4), v19[3] >> 1);

          os_unfair_lock_unlock((a1 + 704));
          return;
        }

LABEL_31:
        caulk::alloc::base_allocator::bad_dealloc(v13);
      }
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_30:
    _os_assert_log();
    v13 = _os_crash();
    __break(1u);
    goto LABEL_31;
  }

  if ((caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::remove(a1 + 16, a2) & 1) == 0)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v20 = (a3 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];

  caulk::mach::vm_block::dealloc(a2, v20);
}

uint64_t caulk::thread::start(uint64_t a1, uint64_t a2, void *(__cdecl *a3)(void *), void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (pthread_attr_init(&__attr))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  if (*(a2 + 52) == 1)
  {
    v8 = *(a2 + 48);
    if (v8 == -1)
    {
      v9 = -1;
    }

    else
    {
      v9 = *(a2 + 48);
    }

    if (v9 == 2)
    {
      if (v8 == 2)
      {
        v16 = 0;
        pthread_attr_getschedparam(&__attr, &v16);
        v16.sched_priority = *(a2 + 32);
        pthread_attr_setschedparam(&__attr, &v16);
        if (*(a2 + 36) == 1)
        {
          pthread_attr_setschedpolicy(&__attr, 4);
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v16 = 0;
        pthread_attr_getschedparam(&__attr, &v16);
        v16.sched_priority = 63;
        pthread_attr_setschedparam(&__attr, &v16);
        goto LABEL_17;
      }

      if (v9)
      {
        goto LABEL_17;
      }

      if (!v8)
      {
        pthread_attr_set_qos_class_np(&__attr, *(a2 + 32), *(a2 + 36));
LABEL_15:
        if (*(a2 + 52) == 1)
        {
          *(a2 + 52) = 0;
        }

        goto LABEL_17;
      }
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

LABEL_17:
  if (*(a2 + 60))
  {
    v10 = *(a2 + 56);
    if (v10 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    pthread_attr_setdetachstate(&__attr, v11);
    v16 = 0;
    v12 = pthread_create(&v16, &__attr, a3, a4);
    if (v10 == 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    v12 = pthread_create(&v16, &__attr, a3, a4);
  }

  v13 = v16;
  *a1 = v16;
  if (!*&v13)
  {
    goto LABEL_29;
  }

LABEL_25:
  atomic_store(1u, (a1 + 8));
  result = pthread_attr_destroy(&__attr);
  if (v12)
  {
LABEL_28:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_29:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::size(uint64_t a1, unint64_t a2)
{
  result = caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::containing_block(a1, a2, 0);
  if (result)
  {
    v5 = result;
    result = 0;
    if (v5 + 32 <= a2 && v5 + v4 - 32 > a2)
    {
      if (*(a2 - 16))
      {
        return 0;
      }

      else
      {
        return *(a2 - 8) >> 1;
      }
    }
  }

  return result;
}

uint64_t caulk::thread::attributes::apply_to_this_thread(uint64_t this)
{
  v1 = this;
  if (*(this + 24) == 1)
  {
    if (*(this + 23) < 0)
    {
      this = *this;
    }

    this = pthread_setname_np(this);
  }

  if (*(v1 + 52) == 1)
  {

    return caulk::mach::this_thread::set_priority((v1 + 32));
  }

  return this;
}

void caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::remove_freemap_entry(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 368);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a2[3] >> 1;
  v2 = (a1 + 368);
  do
  {
    v5 = v3[4];
    v6 = v5 >= v4;
    v7 = v5 < v4;
    if (v6)
    {
      v2 = v3;
    }

    v3 = v3[v7];
  }

  while (v3);
  if (v2 == (a1 + 368) || v4 < v2[4])
  {
LABEL_9:
    _os_assert_log();
    a1 = _os_crash();
    __break(1u);
  }

  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    *(v8 + 8) = v9;
    if (v9)
    {
      *v9 = v8;
    }

    if (!v2[6])
    {
      std::__tree<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::FreelistOfSize>>>::__remove_node_pointer((a1 + 360), v2);

      operator delete(v2);
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

uint64_t caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::consolidate_free(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(result + 24);
  *(result + 24) = v3 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  v4 = v3 + (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL) + 64;
  *(result + 24) = v4 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  if ((v2 & 1) == 0)
  {
    *(result + (v4 >> 1) + 48) = *(result + (v4 >> 1) + 48) & 1 | v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  return result;
}

uint64_t caulk::mach::os_workgroup_managed::join(caulk::mach::os_workgroup_managed *this)
{
  if (*(this + 56))
  {
    return 1;
  }

  if (!*(this + 1))
  {
    return 2;
  }

  result = os_workgroup_join_self();
  *(this + 56) = result == 0;
  return result;
}

unint64_t caulk::alloc::page_allocator::advise_free(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (a2 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  v4 = (a2 + a3) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  if (v4 > result)
  {
    return madvise(result, v4 - result, 5);
  }

  return result;
}

void caulk::concurrent::details::lf_read_sync_write_impl::end_mutate(atomic_uint *this, __int16 a2)
{
  v3 = 0;
  __dmb(0xBu);
  v4 = *this;
  v5 = a2 << 15;
  while (1)
  {
    if ((v4 & 0x7FFF) != 0)
    {
      v6 = v3;
      if (!v3)
      {
        caulk::details::semaphore_pool::acquire(caulk::details::semaphore_pool::sGlobal);
        v6 = v3;
      }
    }

    else
    {
      if (v3)
      {
        caulk::details::semaphore_pool::release(caulk::details::semaphore_pool::sGlobal, v3);
      }

      v6 = 0;
      LODWORD(v3) = WORD1(v4);
    }

    v7 = v4;
    atomic_compare_exchange_strong(this, &v7, (v4 & 0x7FFF | v5) | (v3 << 16));
    if (v7 == v4)
    {
      break;
    }

    v4 = v7;
    v3 = v6;
  }

  if (v6)
  {
    if (v6 < 0x201u && (v8 = (caulk::details::semaphore_pool::sGlobal + 8 * ((v6 - 1) >> 6)), (v9 = atomic_load(v8)) != 0) && (v10 = atomic_load(v8), (v6 - *v10) < 0x40u))
    {
      caulk::semaphore::timed_wait(&v10[8 * ((v6 - *v10) & 0xFFF) + 2], -1.0);
      v11 = caulk::details::semaphore_pool::sGlobal;

      caulk::details::semaphore_pool::release(v11, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void caulk::alloc::details::caching_page_allocator_base::caching_page_allocator_base(caulk::alloc::details::caching_page_allocator_base *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 8) = &caulk::inplace_function_detail::rt_vtable<void,unsigned long,unsigned long>::empty;
  operator new();
}

void sub_2754A11E0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x277C78AD0](v2, 0x20C40A759441BLL);
  (*(*(v1 + 64) + 24))(v1 + 72);
  _Unwind_Resume(a1);
}

void sub_2754A13A8(_Unwind_Exception *a1)
{
  MEMORY[0x277C78AD0](v1, 0x10F0C40DEC95547);
  caulk::alloc::details::caching_page_allocator_base::~caching_page_allocator_base(&unk_280ADC510);
  _Unwind_Resume(a1);
}

uint64_t *caulk::alloc::global_page_cache::instance(caulk::alloc::global_page_cache *this)
{
  {
    caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::darwin_resource();
  }

  return &caulk::alloc::global_page_cache::instance(void)::global;
}

atomic_uint *caulk::alloc::details::caching_page_allocator_base::allocate(atomic_uint *this, uint64_t a2, unint64_t a3)
{
  if (*MEMORY[0x277D85FA0] >= a3)
  {
    v5 = this;
    if (*(this + 2) == a2)
    {
      v6 = this + 29;
      atomic_fetch_add(this + 29, 1u);
      v7 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add((v5 + 48), 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(v6, 0xFFFFFFFF);
        v9 = *(v5 + 64);
        if (*(v9 + 32) == 1)
        {
          v10 = *(v5 + 16);
          v11 = *(v5 + 48);
          v12 = v10;
          (*v9)(v5 + 72, &v12, &v11);
        }

        return v8;
      }

      atomic_fetch_add(v6, 0xFFFFFFFF);
      atomic_fetch_add((v5 + 112), 1u);
    }

    return caulk::alloc::page_allocator::allocate(v5, a2, a3);
  }

  __break(1u);
  return this;
}

uint64_t caulk::build::detail::get_kind(caulk::build::detail *this)
{
  {
    caulk::build::detail::get_kind(void)::global = caulk::build::detail::get_kind(void)::$_0::operator()();
  }

  return caulk::build::detail::get_kind(void)::global;
}

void *caulk::alloc::page_allocator::allocate(caulk::alloc::page_allocator *this, uint64_t a2, unint64_t a3)
{
  if (*MEMORY[0x277D85FA0] >= a3)
  {
    return caulk::mach::vm_block::alloc((a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], *this);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t *caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load(result);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

void *caulk::mach::vm_block::alloc(size_t this, int a2)
{
  if (a2)
  {
    v2 = a2 << 24;
  }

  else
  {
    v2 = -1;
  }

  result = mmap(0, this, 3, 4098, v2, 0);
  if (result + 1 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v5, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return result;
}

uint64_t caulk::mach::os_workgroup_managed::leave(caulk::mach::os_workgroup_managed *this)
{
  if (*(this + 56) != 1)
  {
    return 1;
  }

  if (!*(this + 1))
  {
    return 2;
  }

  os_workgroup_leave_self();
  result = 0;
  *(this + 56) = 0;
  return result;
}

uint64_t caulk::thread::join(pthread_t *this)
{
  if (!*this)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_6;
  }

  if (pthread_self() == *this)
  {
LABEL_6:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  result = pthread_join(*this, 0);
  if (!result)
  {
    *this = 0;
    return result;
  }

LABEL_7:
  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::skiplist(uint64_t a1)
{
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_280AD9D00 || (v2 = std::__shared_weak_count::lock(qword_280AD9D00)) == 0)
  {
LABEL_5:
    operator new();
  }

  v3 = v2;
  v4 = qword_280AD9CF8;
  if (!qword_280AD9CF8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    goto LABEL_5;
  }

  v5 = (a1 + 200);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(a1 + 280);
  *(a1 + 272) = v4;
  *(a1 + 280) = v3;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  *(a1 + 288) = &caulk::inplace_function_detail::rt_vtable<void,caulk::concurrent::details::skiplist_node<void *,caulk::alloc::detail::tracked_block>::layout_vk const&>::empty;
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::random_engine();
  v7 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 167837706;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  do
  {
    atomic_store(0, (a1 + v7 + 40));
    atomic_store(0, (a1 + v7 + 48));
    v7 += 16;
  }

  while (v7 != 160);
  *v5 = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 16908289;
  *(a1 + 216) = -1;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  atomic_store(0, (a1 + 240));
  atomic_store(0, (a1 + 248));
  for (i = 40; i != 200; i += 16)
  {
    atomic_store(v5, (a1 + i));
  }

  __dmb(0xBu);
  return a1;
}

void sub_2754A19E0(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  v5 = *(v1 + 280);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __clang_call_terminate(a1);
}

void caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine);
  }
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(uint64_t a1)
{
  for (i = 0; i != 10048; i += 2512)
  {
    v3 = a1 + i;
    v4 = 5489;
    *(a1 + i) = 5489;
    for (j = 1; j != 624; ++j)
    {
      v4 = j + 1812433253 * (v4 ^ (v4 >> 30));
      *(v3 + 4 * j) = v4;
    }

    *(v3 + 2496) = 0;
    *(v3 + 2504) = 0;
  }

  v6 = 0;
  *(a1 + 10048) = 0xFFFFFFFF00000000;
  do
  {
    v7 = mach_absolute_time();
    v8 = a1 + v6;
    *(a1 + v6) = v7;
    for (k = 1; k != 624; ++k)
    {
      v7 = k + 1812433253 * (v7 ^ (v7 >> 30));
      *(v8 + 4 * k) = v7;
    }

    *(v8 + 2496) = 0;
    v6 += 2512;
  }

  while (v6 != 10048);
  return a1;
}

uint64_t *caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 24))(a1 + 1);
    v4 = *a2;
    *a2 = &caulk::inplace_function_detail::rt_vtable<void>::empty;
    *a1 = v4;
    (*(v4 + 16))(a1 + 1, a2 + 1);
  }

  return a1;
}

uint64_t caulk::build::detail::get_kind(void)::$_0::operator()()
{
  v0 = MGCopyAnswer();
  cf = v0;
  if (!v0)
  {
    goto LABEL_30;
  }

  v1 = CFGetTypeID(v0);
  if (v1 != CFBooleanGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!cf)
  {
LABEL_30:
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(cf))
  {
    v3 = CFBooleanGetValue(cf) != 0;
  }

  else
  {
    v4 = CFNumberGetTypeID();
    if (v4 == CFGetTypeID(cf))
    {
      v5 = applesauce::CF::details::number_convert_as<BOOL>(cf);
      v3 = (v5 > 0xFFu) & v5;
    }

    else
    {
      v3 = 0;
    }
  }

  CFRelease(cf);
  v6 = MGCopyAnswer();
  cfa = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = CFGetTypeID(v6);
  if (v7 != CFStringGetTypeID())
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (cfa)
  {
    CFRetain(cfa);
    CFRetain(@"Carrier");
    v8 = CFGetTypeID(@"Carrier");
    if (v8 == CFStringGetTypeID())
    {
      v9 = CFStringCompare(cfa, @"Carrier", 0);
      CFRelease(@"Carrier");
    }

    else
    {
      CFRelease(@"Carrier");
      v9 = kCFCompareGreaterThan;
    }

    CFRelease(cfa);
    v10 = 2 * (v9 == kCFCompareEqualTo);
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  v11 = MGCopyAnswer();
  v23 = v11;
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFBooleanGetTypeID())
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!v23)
  {
LABEL_31:
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = CFBooleanGetTypeID();
  if (v13 != CFGetTypeID(v23))
  {
    v14 = CFNumberGetTypeID();
    if (v14 != CFGetTypeID(v23))
    {
      goto LABEL_26;
    }

    v15 = applesauce::CF::details::number_convert_as<BOOL>(v23);
    if (v15 < 0x100u || (v15 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    v16 = 4;
    goto LABEL_27;
  }

  if (CFBooleanGetValue(v23))
  {
    goto LABEL_25;
  }

LABEL_26:
  v16 = 0;
LABEL_27:
  CFRelease(v23);
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v10 | v3 | v16;
}

void sub_2754A1F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t *caulk::alloc::make_audio_buffer_resource(caulk::alloc *this)
{
  zone_name = malloc_get_zone_name(**MEMORY[0x277D86158]);
  if (zone_name && !strcmp(zone_name, "ProbGuardMallocZone"))
  {
    caulk::alloc::make_zeroed_malloc_resource<caulk::alloc::memory_resource,caulk::memory_resource>();
  }

  v2 = getenv("CaulkAudioBufferResourceUseMalloc");
  if (v2 && (caulk::build::detail::get_kind(v2) & 1) != 0)
  {
    caulk::alloc::make_zeroed_malloc_resource<caulk::alloc::memory_resource,caulk::memory_resource>();
  }

  {
    caulk::alloc::exported_resource<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::exported_resource<char const*>();
  }

  dword_280AD44F8 = 1;
  dword_280AD4360 = 1;
  dword_280AD4200 = 1;
  caulk::alloc::registerAllocatorStateDump(&qword_280AD41F0, "com.apple.caulk.alloc.audiodump", "caulk_audio_alloc.", v3);
  return &qword_280AD41F0;
}

void caulk::alloc::exported_resource<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::exported_resource<char const*>()
{
  v4[4] = *MEMORY[0x277D85DE8];
  caulk::alloc::make_audio_buffer_resource(void)::global = &unk_28841C448;
  *algn_280AD41E8 = 0;
  dword_280AD4200 = 0;
  qword_280AD4208 = 0;
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::skiplist(&unk_280AD4210);
  dword_280AD4360 = 0;
  qword_280AD4368 = 0;
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::skiplist(&unk_280AD4370);
  dword_280AD44C0 = 0;
  qword_280AD44D0 = 0;
  qword_280AD44E0 = 0;
  qword_280AD44D8 = 0;
  qword_280AD44C8 = &qword_280AD44D0;
  dword_280AD44F8 = 0;
  qword_280AD4500 = 0;
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&unk_280AD4510);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&qword_280AD45D8[11]);
  qword_280AD4750 = 0;
  v1[4] = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
  v2 = &unk_280AD44F0;
  v3 = _ZN5caulk16inplace_functionIFvRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS4_14page_allocatorENS4_16bitmap_allocatorENS4_18embed_block_memoryELm16384EJLm16ELm6EEE9node_implINS4_14tree_allocatorIS9_E11node_headerES8_EEE9layout_kvEELm32ELm8ENS_23inplace_function_detail6vtableEE16k_wrapper_vtableIZNSC_C1EvEUlRKT_E_EE;
  _ZZN5caulk23inplace_function_detail6vtableIvJRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS5_14page_allocatorENS5_16bitmap_allocatorENS5_18embed_block_memoryELm16384EJLm16ELm6EEE9node_implINS5_14tree_allocatorISA_E11node_headerES9_EEE9layout_kvEEEC1IZNSD_C1EvEUlRKT_E_EENS0_7wrapperISN_EEENUlPvST_E0_8__invokeEST_ST_(v4, &v2);
  (*(qword_280AD45D0 + 24))(qword_280AD45D8);
  v0 = v3;
  v3 = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
  qword_280AD45D0 = v0;
  (*(v0 + 16))(qword_280AD45D8, v4);
  (v3[3])(v4);
  v1[0] = &unk_280AD44F0;
  v3 = caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>;
  caulk::inplace_function_detail::rt_vtable<void>::rt_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>(caulk::inplace_function_detail::wrapper<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>)::{lambda(void *,void *)#2}::__invoke(v4, v1);
  caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(&qword_280AD45D8[40], &v3);
  (v3[3])(v4);
  qword_280AD41F0 = &unk_28841C498;
  operator new();
}

void sub_2754A23F8(_Unwind_Exception *a1)
{
  MEMORY[0x277C78AD0](v2, 0x10F0C40DEC95547);
  caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(v1 + 16);
  std::pmr::memory_resource::~memory_resource(v1);
  _Unwind_Resume(a1);
}

void caulk::alloc::registerAllocatorStateDump(caulk::alloc *this, caulk::alloc::memory_resource *a2, const char *a3, const char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  out_token = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN5caulk5allocL26registerAllocatorStateDumpEPNS0_15memory_resourceEPKcS4__block_invoke;
  handler[3] = &__block_descriptor_tmp;
  handler[4] = a3;
  handler[5] = this;
  v8 = notify_register_dispatch(a2, &out_token, global_queue, handler);
  v9 = v8;
  caulk::alloc::base_allocator::log(v8);
  v10 = caulk::alloc::base_allocator::log(void)::global;
  if (os_log_type_enabled(caulk::alloc::base_allocator::log(void)::global, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = a2;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_27549C000, v10, OS_LOG_TYPE_DEFAULT, "Registered notify signal %s (%u)", buf, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2754A2760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  MEMORY[0x277C78AD0](v15, v16);
  _Unwind_Resume(a1);
}

caulk::concurrent::messenger *caulk::concurrent::messenger::messenger(caulk::concurrent::messenger *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  if (a2 == 1)
  {
    operator new();
  }

  memset(&v30, 0, sizeof(v30));
  if ((*(a3 + 52) & 1) == 0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

  caulk::concurrent::messenger::shared_high_priority(a1);
  v5 = *(a3 + 48);
  if (v5 == -1 || dword_280ADC4A8 != v5)
  {
    if (dword_280ADC4A8 == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  __p.__r_.__value_.__r.__words[0] = &v29;
  if ((off_28841CD68[v5])(&__p, a3 + 32, &qword_280ADC498))
  {
    v5 = *(a3 + 48);
LABEL_12:
    if (!v5)
    {
      std::to_string(&__p, *(a3 + 32));
      v30 = __p;
      goto LABEL_15;
    }

LABEL_47:
    _os_assert_log();
    _os_crash();
    __break(1u);
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>>::__throw_length_error[abi:ne200100]();
  }

LABEL_14:
  *(&v30.__r_.__value_.__s + 23) = 4;
  strcpy(&v30, "high");
LABEL_15:
  std::operator+<char>();
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v29;
  }

  v23 = 1;
  v24 = *(a3 + 32);
  v25 = *(a3 + 48);
  v26 = 1;
  v27 = 0;
  v28 = 0;
  os_unfair_lock_lock(&caulk::concurrent::details::service_thread::sharedMgr(void)::global);
  v7 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *> const&)#1}>(qword_280ADC4C0, qword_280ADC4C8);
  std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>>::erase(&qword_280ADC4C0, v7, qword_280ADC4C8);
  v8 = qword_280ADC4C0;
  v9 = qword_280ADC4C8;
  if (qword_280ADC4C0 == qword_280ADC4C8)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v10 = v8[1];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = std::__shared_weak_count::lock(v10);
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = v11;
    if (*v8)
    {
      v13 = *(*v8 + 16);
      v14 = *(a3 + 52);
      v15 = v14 == *(v13 + 188);
      v16 = v14 != *(v13 + 188) || v14 == 0;
      if (v16 || (v17 = *(a3 + 48), v18 = *(v13 + 184), v15 = v18 == v17, v17 == -1 || v18 != v17))
      {
        if (v15)
        {
          break;
        }

        goto LABEL_32;
      }

      v32 = &v31;
      if ((off_28841CD80[v17])(&v32, a3 + 32, v13 + 168))
      {
        break;
      }
    }

LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_33:
    v8 += 2;
    if (v8 == v9)
    {
      goto LABEL_34;
    }
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  os_unfair_lock_unlock(&caulk::concurrent::details::service_thread::sharedMgr(void)::global);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v19 = v13 + 56;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v20 = *(a1 + 1);
  if (!v13)
  {
    v19 = 0;
  }

  *a1 = v19;
  *(a1 + 1) = v12;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  caulk::alloc::init_realtime_safe_resource(v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  return a1;
}

void sub_2754A2C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  v34 = *(v32 + 8);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void caulk::concurrent::details::service_thread::service_thread(caulk::concurrent::details::service_thread *this, const caulk::thread::attributes *a2)
{
  *this = &unk_28841B130;
  *(this + 8) = 0;
  *(this + 24) = 0;
  caulk::mach::semaphore::semaphore(this + 8);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *this = &unk_28841B0C8;
  *(this + 7) = &unk_28841B100;
  *(this + 8) = 0;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 136), a2);
  v4 = *(a2 + 2);
  *(this + 181) = *(a2 + 45);
  *(this + 168) = v4;
  v5 = 0;
  v6 = 0;
  operator new();
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_2754A3018(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::alloc::init_realtime_safe_resource(caulk::alloc *this)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v1 = os_unfair_recursive_lock_lock_with_options();
  v2 = caulk::alloc::init_realtime_safe_resource(void)::state;
  caulk::alloc::init_realtime_safe_resource(void)::state = 1;
  if ((v2 & 1) == 0)
  {
    if (byte_280AD9CE0 == 1)
    {
      qword_280AD9680 = &unk_28841BA30;
      qword_280AD9690 = &unk_28841BA80;
      v3 = qword_280AD9CC0;
      qword_280AD9CC0 = 0;
      if (v3)
      {
        std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](v3);
      }

      caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator(&unk_280AD9A60);
      caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator(&unk_280AD9800);
      caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator(&qword_280AD96A0);
      std::pmr::memory_resource::~memory_resource(&qword_280AD9680);
      byte_280AD9CE0 = 0;
    }

    qword_280AD9680 = &unk_28841BA30;
    *algn_280AD9688 = 0;
    qword_280AD96A0 = 0;
    caulk::alloc::global_page_cache::instance(v1);
    qword_280AD96A0 = &unk_280ADC510;
    v4 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::skiplist(&algn_280AD96A8[8]);
    qword_280AD9808 = 0;
    caulk::alloc::global_page_cache::instance(v4);
    qword_280AD9808 = &unk_280ADC510;
    caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&unk_280AD9810);
    caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&qword_280AD98D8[11]);
    qword_280AD9A50 = 0;
    v11 = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
    v12[0] = &unk_280AD9800;
    v13 = _ZN5caulk16inplace_functionIFvRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS4_17global_page_cacheENS4_16bitmap_allocatorENS4_18embed_block_memoryELm16384EJLm256ELm6EEE9node_implINS4_14tree_allocatorIS9_E11node_headerES8_EEE9layout_kvEELm32ELm8ENS_23inplace_function_detail6vtableEE16k_wrapper_vtableIZNSC_C1EvEUlRKT_E_EE;
    _ZZN5caulk23inplace_function_detail6vtableIvJRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS5_17global_page_cacheENS5_16bitmap_allocatorENS5_18embed_block_memoryELm16384EJLm256ELm6EEE9node_implINS5_14tree_allocatorISA_E11node_headerES9_EEE9layout_kvEEEC1IZNSD_C1EvEUlRKT_E_EENS0_7wrapperISN_EEENUlPvST_E0_8__invokeEST_ST_(v14, v12);
    (*(qword_280AD98D0 + 24))(qword_280AD98D8);
    v5 = v13;
    v13 = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
    qword_280AD98D0 = v5;
    (*(v5 + 16))(qword_280AD98D8, v14);
    (v13[3])(v14);
    (off_28841BF58)(v12);
    v10[0] = &unk_280AD9800;
    v13 = caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>;
    caulk::inplace_function_detail::rt_vtable<void>::rt_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>(caulk::inplace_function_detail::wrapper<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>)::{lambda(void *,void *)#2}::__invoke(v14, v10);
    caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(&qword_280AD98D8[40], &v13);
    (v13[3])(v14);
    v6 = (off_28841BF80)(v10);
    qword_280AD9A68 = 0;
    caulk::alloc::global_page_cache::instance(v6);
    qword_280AD9A68 = &unk_280ADC510;
    caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&unk_280AD9A70);
    caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(&qword_280AD9B38[11]);
    qword_280AD9CB0 = 0;
    v11 = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
    v12[0] = &unk_280AD9A60;
    v13 = _ZN5caulk16inplace_functionIFvRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS4_17global_page_cacheENS4_16bitmap_allocatorENS4_18embed_block_memoryELm16384EJLm16ELm6EEE9node_implINS4_14tree_allocatorIS9_E11node_headerES8_EEE9layout_kvEELm32ELm8ENS_23inplace_function_detail6vtableEE16k_wrapper_vtableIZNSC_C1EvEUlRKT_E_EE;
    _ZZN5caulk23inplace_function_detail6vtableIvJRKNS_10concurrent7details13skiplist_nodeImPNS_5alloc15chunk_allocatorINS5_17global_page_cacheENS5_16bitmap_allocatorENS5_18embed_block_memoryELm16384EJLm16ELm6EEE9node_implINS5_14tree_allocatorISA_E11node_headerES9_EEE9layout_kvEEEC1IZNSD_C1EvEUlRKT_E_EENS0_7wrapperISN_EEENUlPvST_E0_8__invokeEST_ST_(v14, v12);
    (*(qword_280AD9B30 + 24))(qword_280AD9B38);
    v7 = v13;
    v13 = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
    qword_280AD9B30 = v7;
    (*(v7 + 16))(qword_280AD9B38, v14);
    (v13[3])(v14);
    v10[0] = &unk_280AD9A60;
    v13 = caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>;
    caulk::inplace_function_detail::rt_vtable<void>::rt_vtable<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>(caulk::inplace_function_detail::wrapper<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::tree_allocator(void)::{lambda(void)#1}>)::{lambda(void *,void *)#2}::__invoke(v14, v10);
    caulk::inplace_function<void ()(void),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(&qword_280AD9B38[40], &v13);
    (v13[3])(v14);
    qword_280AD9690 = &unk_28841BA80;
    operator new();
  }

  result = os_unfair_recursive_lock_unlock();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_280AD4798 || (v2 = std::__shared_weak_count::lock(qword_280AD4798)) == 0)
  {
LABEL_5:
    operator new();
  }

  v3 = v2;
  v4 = qword_280AD4790;
  if (!qword_280AD4790)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  *(a1 + 192) = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
  *(a1 + 232) = &caulk::inplace_function_detail::rt_vtable<void>::empty;
  *(a1 + 272) = 0u;
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
  v6 = 0;
  *(a1 + 16) = 83951621;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  do
  {
    atomic_store(0, (a1 + v6 + 32));
    atomic_store(0, (a1 + v6 + 40));
    v6 += 16;
  }

  while (v6 != 80);
  *(a1 + 128) = 16908289;
  *(a1 + 112) = xmmword_2754BBDB0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 152));
  atomic_store(a1 + 112, (a1 + 32));
  atomic_store(a1 + 112, (a1 + 48));
  atomic_store(a1 + 112, (a1 + 64));
  atomic_store(a1 + 112, (a1 + 80));
  atomic_store(a1 + 112, (a1 + 96));
  __dmb(0xBu);
  return a1;
}

void sub_2754A37D0(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  v5 = *(v1 + 184);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __clang_call_terminate(a1);
}

void caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
  }
}

uint64_t std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, v6);
}

uint64_t std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

double caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_statistics(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 - 8);
  v9 = 0u;
  v10 = 0u;
  v11[0] = &unk_28841C238;
  v11[1] = &v9;
  v11[3] = v11;
  v12[0] = &unk_28841C1B8;
  v12[1] = v11;
  v12[3] = v12;
  v13 = 7;
  v14[0] = &unk_28841AE20;
  v14[1] = caulk::alloc::introspector::local_reader;
  v15 = v14;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v16, v12);
  v16[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v12);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v15, v3, 1616);
  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::introspect(v4 + 16, v3, &v13);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v11);
  v5 = *(&v9 + 1);
  if (*(v3 + 1592) > *(&v9 + 1))
  {
    v5 = *(v3 + 1592);
  }

  *&v10 = v5;
  *(&v10 + 1) += *(&v9 + 1);
  *(v3 + 1592) = v5;
  result = *&v9;
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A3AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v7 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::alloc::introspector::copy_with_types(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 40;
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::__value_func[abi:ne200100](a1 + 8, a2 + 8);
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = v4;
      result = (*(*result + 24))(result, v4);
      goto LABEL_6;
    }

    result = (*(*result + 16))(result);
  }

  *(a1 + 64) = result;
LABEL_6:
  *(a1 + 72) = *(a2 + 72);
  *a1 = 6;
  return result;
}

uint64_t std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::introspect<void caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect_foreach<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1}>(caulk::alloc::introspector const&,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} &&)::{lambda(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} const&)#1}>(uint64_t result, uint64_t a2, int ***a3)
{
  v5 = MEMORY[0x277D85FA0];
  while (1)
  {
    v6 = atomic_load((result + 40));
    if (!*(result + 26))
    {
      v7 = *a3;
      v8 = *(result + 16);
      v9 = *result + *v5 - 1;
      v10 = -*v5;
      v11 = **a3;
      v12 = *v11;
      if ((*v11 & 2) != 0)
      {
        result = std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(v11 + 8), 2, v8, v9 & v10);
        v11 = *v7;
        v12 = **v7;
      }

      if (v12)
      {
        result = std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(v11 + 8), 1, v8, v9 & v10);
      }
    }

    if ((v6 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }

    result = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a2 + 24), v6 & 0xFFFFFFFFFFFFFFFCLL, 56);
  }

  return result;
}

uint64_t caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::introspect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[5] = *MEMORY[0x277D85DE8];
  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a3 + 72) == 1)
  {
    v15 = a1 + 976;
    v16 = a1 + 1136;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v17 = 1;
  }

  for (i = a1 + 976; ; i = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v6 & 0xFFFFFFFFFFFFFFFCLL, 48))
  {
    v6 = atomic_load((i + 32));
    if (!*(i + 18))
    {
      v7 = *(i + 8);
      v8 = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v7, 0x4000);
      caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::introspect(v8 + 16, v7 + 16, a3);
    }

    if ((v6 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }
  }

  caulk::alloc::introspector::copy_with_types(&v18, a3);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v19);
  if (v17 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v16, v17);
  }

  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a3 + 72) == 1)
  {
    v15 = a1 + 368;
    v16 = a1 + 528;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v17 = 1;
  }

  for (j = a1 + 368; ; j = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v10 & 0xFFFFFFFFFFFFFFFCLL, 48))
  {
    v10 = atomic_load((j + 32));
    if (!*(j + 18))
    {
      v11 = *(j + 8);
      v12 = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v11, 0x4000);
      caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::introspect(v12 + 16, v11 + 16, a3);
    }

    if ((v10 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }
  }

  caulk::alloc::introspector::copy_with_types(&v18, a3);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v19);
  if (v17 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v16, v17);
  }

  v15 = a3;
  v18 = &v15;
  result = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::introspect<void caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect_foreach<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1}>(caulk::alloc::introspector const&,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} &&)::{lambda(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} const&)#1}>(a1 + 16, a3 + 8, &v18);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A3F7C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void * ()(unsigned long,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::function<void * ()(unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

unint64_t *caulk::alloc::details::caching_page_allocator_base::introspect(unint64_t *this, unint64_t a2, const caulk::alloc::introspector *a3)
{
  v3 = this[4];
  if (v3)
  {
    v5 = this;
    do
    {
      if ((*a3 & 2) != 0)
      {
        std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(a3 + 8), 2, v3, v5[2]);
      }

      this = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 4), v3, 8);
      v3 = atomic_load(this);
    }

    while (v3);
  }

  return this;
}

double caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_statistics(uint64_t a1, _OWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 - 8);
  v10 = 0u;
  v11 = 0u;
  v12[0] = &unk_28841CB90;
  v12[1] = &v10;
  v12[3] = v12;
  v13[0] = &unk_28841CB10;
  v13[1] = v12;
  v13[3] = v13;
  v14 = 7;
  v15[0] = &unk_28841AE20;
  v15[1] = caulk::alloc::introspector::local_reader;
  v16 = v15;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v17, v13);
  v17[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v13);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v16, v3, 160);
  caulk::alloc::details::caching_page_allocator_base::introspect((v4 + 16), v5, &v14);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v12);
  v6 = *(&v10 + 1);
  if (*(v3 + 144) > *(&v10 + 1))
  {
    v6 = *(v3 + 144);
  }

  *&v11 = v6;
  *(&v11 + 1) += *(&v10 + 1);
  *(v3 + 144) = v6;
  result = *&v10;
  v8 = v11;
  *a2 = v10;
  a2[1] = v8;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A42F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v7 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C1B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void * (*)(unsigned long,unsigned long),std::allocator<void * (*)(unsigned long,unsigned long)>,void * ()(unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841AE20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 8);
  if (*a2 == 4 || v3 == 2)
  {
    v6 = (*(result + 8) + 24);
  }

  else
  {
    if (v3 != 1)
    {
      return result;
    }

    v7 = *(result + 8);
    ++*v7;
    v6 = v7 + 2;
  }

  *v6 += v4;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841CB10;
  a2[1] = v2;
  return result;
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_280AD47B0 || (v2 = std::__shared_weak_count::lock(qword_280AD47B0)) == 0)
  {
LABEL_5:
    operator new();
  }

  v3 = v2;
  v4 = qword_280AD47A8;
  if (!qword_280AD47A8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  *(a1 + 192) = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
  *(a1 + 232) = &caulk::inplace_function_detail::rt_vtable<void>::empty;
  *(a1 + 272) = 0u;
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
  v6 = 0;
  *(a1 + 16) = 83951621;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  do
  {
    atomic_store(0, (a1 + v6 + 32));
    atomic_store(0, (a1 + v6 + 40));
    v6 += 16;
  }

  while (v6 != 80);
  *(a1 + 128) = 16908289;
  *(a1 + 112) = xmmword_2754BBDB0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 152));
  atomic_store(a1 + 112, (a1 + 32));
  atomic_store(a1 + 112, (a1 + 48));
  atomic_store(a1 + 112, (a1 + 64));
  atomic_store(a1 + 112, (a1 + 80));
  atomic_store(a1 + 112, (a1 + 96));
  __dmb(0xBu);
  return a1;
}

void sub_2754A468C(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  v5 = *(v1 + 184);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __clang_call_terminate(a1);
}

void caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
  }
}

void caulk::alloc::page_cache_monitor::enable_preallocation(caulk::alloc::page_cache_monitor *this, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  caulk::alloc::init_realtime_safe_resource(this);
  os_unfair_lock_lock(*(this + 3));
  if (a2)
  {
    if (!*(this + 5))
    {
      operator new();
    }
  }

  else
  {
    std::unique_ptr<caulk::alloc::page_cache_monitor_impl>::reset[abi:ne200100](this + 5, 0);
  }

  v4 = *(this + 3);
  v5 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(v4);
}

void sub_2754A49A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v10 + 168);
  std::vector<std::weak_ptr<caulk::alloc::preallocation_reservation>>::__destroy_vector::operator()[abi:ne200100](&a9);
  caulk::concurrent::condition_message::~condition_message(v13);
  caulk::concurrent::messenger::~messenger(v12);
  caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::~lifetime_guard_base(v11);
  MEMORY[0x277C78AD0](v10, 0x10A0C4095E75DE7);
  os_unfair_lock_unlock(*(v9 + 24));
  _Unwind_Resume(a1);
}

char *caulk::concurrent::messenger::shared_high_priority(caulk::concurrent::messenger *this)
{
  {
    caulk::concurrent::messenger::shared_high_priority(void)::global = 0;
    byte_280ADC490 = 0;
    qword_280ADC498 = 0x100000037;
    dword_280ADC4A8 = 2;
    byte_280ADC4AC = 1;
    byte_280ADC4B0 = 0;
    byte_280ADC4B4 = 0;
  }

  return &caulk::concurrent::messenger::shared_high_priority(void)::global;
}

uint64_t *std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *> const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v2 = a1;
    while (1)
    {
      v5 = v2[1];
      if (!v5 || *(v5 + 8) == -1)
      {
        break;
      }

      v2 += 2;
      if (v2 == a2)
      {
        v2 = a2;
        break;
      }
    }

    if (v2 != a2)
    {
      for (i = v2 + 2; i != a2; i += 2)
      {
        v7 = i[1];
        if (v7 && *(v7 + 8) != -1)
        {
          v8 = *i;
          *i = 0;
          i[1] = 0;
          v9 = v2[1];
          *v2 = v8;
          v2[1] = v7;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v2 += 2;
        }
      }
    }
  }

  return v2;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,void (caulk::concurrent::details::worker_thread::*)(void),std::tuple<caulk::concurrent::details::worker_thread*>>>(void *a1)
{
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = a1[9];
  v3 = a1[8];
  v4 = (a1[10] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  v3(v4);
  std::default_delete<std::tuple<caulk::thread::attributes,void (caulk::concurrent::details::worker_thread::*)(void),std::tuple<caulk::concurrent::details::worker_thread*>>>::operator()[abi:ne200100](a1);
  return 0;
}

uint64_t std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28841CDA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

unint64_t caulk::alloc::details::caching_page_allocator_base::preallocate(unint64_t this, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = this;
    if (*(this + 16) == a2)
    {
      if (0xFFFFFFFFFFFFFFFFLL / a3 <= a2)
      {
        _os_assert_log();
        this = _os_crash();
        __break(1u);
      }

      else
      {
        _X24 = 0;
        for (i = 0; i != a3; ++i)
        {
          _X22 = caulk::alloc::page_allocator::allocate(v4, a2, 0x1000uLL);
          madvise(_X22, v9, 3);
          _X3 = 0;
          __asm { CASPAL          X2, X3, X24, X25, [X8] }

          atomic_store(_X2, _X22);
          _X1 = 0;
          __asm { CASPAL          X0, X1, X22, X23, [X8] }

          if (this != _X2)
          {
            do
            {
              atomic_store(this, _X22);
              _X3 = 0;
              __asm { CASPAL          X2, X3, X22, X23, [X8] }

              v19 = _X2 ^ this;
              this = _X2;
            }

            while (v19);
          }

          atomic_fetch_add(v4 + 6, 1uLL);
        }
      }
    }
  }

  return this;
}

caulk::alloc::page_cache_monitor_impl *std::unique_ptr<caulk::alloc::page_cache_monitor_impl>::reset[abi:ne200100](caulk::alloc::page_cache_monitor_impl **a1, caulk::alloc::page_cache_monitor_impl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    caulk::alloc::page_cache_monitor_impl::~page_cache_monitor_impl(result);

    JUMPOUT(0x277C78AD0);
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t caulk::alloc::page_cache_monitor_impl::evaluate_reservations(uint64_t **this)
{
  v2 = this[19];
  v3 = this[21];
  v4 = this[22];
  while (v3 != v4)
  {
    v5 = v3[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        if (*v3)
        {
          if (*(*v3 + 32) > v2)
          {
            v2 = *(*v3 + 32);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    v3 += 2;
  }

  atomic_store(v2, this + 20);
  result = **this;
  v8 = *(result + 48);
  if (v2 > v8)
  {
    v9 = *(result + 16);

    return caulk::alloc::details::caching_page_allocator_base::preallocate(result, v9, v2 - v8);
  }

  return result;
}

void caulk::lifetime_guard<caulk::alloc::page_cache_monitor,caulk::shared_ptr_mutex<caulk::mach::unfair_lock>>::weak_ref::lock(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    while (1)
    {
      v5 = std::__shared_weak_count::lock(v3);
      if (!v5)
      {
        goto LABEL_6;
      }

      v6 = v5;
      v7 = *a2;
      if (!*a2)
      {
        break;
      }

      v8 = *(*(v7 + 16) + 48);
      if (os_unfair_lock_trylock(*v8))
      {
        *a1 = **(v7 + 16);
        a1[1] = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(*v8);
        goto LABEL_9;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      __ns.__rep_ = 5000000;
      std::this_thread::sleep_for (&__ns);
      v3 = a2[1];
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *a1 = 0;
    a1[1] = 0;
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    return;
  }

LABEL_6:
  *a1 = 0;
  a1[1] = 0;
}

unint64_t *caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>(unint64_t *result, unint64_t a2, void *a3)
{
  if (*result >= a2 || (v4 = result, result[14] <= a2))
  {
    __break(1u);
    return result;
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v35 = a2;
  v6 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v35, 0);
  v8 = *v6;
  if (*v6 == a2)
  {
    return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v4 + 160, v8);
  }

  v9 = v6;
  v10 = v7;
  v11 = 0;
  value = 0;
  for (i = 1; i != 4; ++i)
  {
    if (i == 1)
    {
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
      value = caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::next_value(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
      v11 = 3;
    }

    if ((v11 & ~value) != 0)
    {
      break;
    }

    v11 *= 4;
  }

  v14 = 0;
  v15 = *(v4 + 176);
  while (1)
  {
    v16 = *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v14];
    if (v16 >= *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * i - 8])
    {
      break;
    }

    if (++v14 == 5)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  v18 = v15 + 32 * v14 + 48;
  v19 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
  if (v19)
  {
    v17 = v19;
    atomic_fetch_add((v18 + 16), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v17 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v15, v16);
  }

LABEL_16:
  v17[16] = i;
  *(v17 + 17) = 1;
  v17[19] = i;
  *v17 = a2;
  *(v17 + 1) = 0;
  *(v17 + 1) = *a3;
  *(v17 + 4) = 0;
  v20 = (v17 + 32);
  *(v17 + 5) = 0;
  *(v17 + 3) = 0;
  if (i)
  {
    v21 = (v17 + 40);
    v22 = i;
    do
    {
      atomic_store(0, v21 - 1);
      atomic_store(0, v21);
      v21 += 2;
      --v22;
    }

    while (v22);
  }

  v23 = 0;
  __dmb(0xBu);
  while (2)
  {
    if (*v9 == *v17)
    {
LABEL_36:
      v33 = 0;
      goto LABEL_37;
    }

    while (1)
    {
      v24 = &v9[2 * v23 + 4];
      v25 = atomic_load(v24);
      if ((v25 & 2) == 0)
      {
        break;
      }

      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v25 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_29:
      v29 = *v17;
      while (1)
      {
        v30 = atomic_load(&v9[2 * v23 + 4]);
        v10 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        if (v29 < *(v30 & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }

        v31 = atomic_load((v10 + 32));
        if (v31)
        {
          v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(v4, v23, v9, v10);
          if (!v32)
          {
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v10);
          }
        }

        else
        {
          v9 = v10;
        }
      }

      if (*v9 == *v17)
      {
        goto LABEL_36;
      }
    }

    atomic_store(v10, &v20[2 * v23]);
    v26 = v10;
    atomic_compare_exchange_strong(v24, &v26, v17);
    if (v26 != v10)
    {
      if ((v26 & 2) != 0)
      {
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v26 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v27 = atomic_load(v24);
      if (v27)
      {
        do
        {
          v9 = atomic_load(&v9[2 * v23 + 5]);
          v28 = atomic_load(&v9[2 * v23 + 4]);
        }

        while ((v28 & 1) != 0);
      }

      goto LABEL_29;
    }

    v33 = v17;
LABEL_37:
    if (v33 | v23)
    {
      v8 = atomic_load(v20);
      if ((v8 & 1) == 0 && ++v23 != i)
      {
        v35 = a2;
        v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v35, v23);
        v10 = v34;
        continue;
      }
    }

    else
    {
      caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>::deallocate(*(v4 + 176), v17, *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v17[16] - 8]);
    }

    return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v4 + 160, v8);
  }
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::skiplist(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  os_unfair_lock_lock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  if (!qword_280AD1A58 || (v2 = std::__shared_weak_count::lock(qword_280AD1A58)) == 0)
  {
LABEL_5:
    operator new();
  }

  v3 = v2;
  v4 = qword_280AD1A50;
  if (!qword_280AD1A50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(a1 + 184);
  *(a1 + 176) = v4;
  *(a1 + 184) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  *(a1 + 192) = &caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::empty;
  *(a1 + 232) = &caulk::inplace_function_detail::rt_vtable<void>::empty;
  *(a1 + 272) = 0u;
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
  v6 = 0;
  *(a1 + 16) = 83951621;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  do
  {
    atomic_store(0, (a1 + v6 + 32));
    atomic_store(0, (a1 + v6 + 40));
    v6 += 16;
  }

  while (v6 != 80);
  *(a1 + 128) = 16908289;
  *(a1 + 112) = xmmword_2754BBDB0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 152));
  atomic_store(a1 + 112, (a1 + 32));
  atomic_store(a1 + 112, (a1 + 48));
  atomic_store(a1 + 112, (a1 + 64));
  atomic_store(a1 + 112, (a1 + 80));
  atomic_store(a1 + 112, (a1 + 96));
  __dmb(0xBu);
  return a1;
}

void sub_2754A568C(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  os_unfair_lock_unlock(&caulk::alloc::shared_allocator<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::shared_instance(void)::global);
  v5 = *(v1 + 184);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  __clang_call_terminate(a1);
}

unint64_t *caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>(unint64_t *result, unint64_t a2, void *a3)
{
  if (*result >= a2 || (v4 = result, result[14] <= a2))
  {
    __break(1u);
    return result;
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v35 = a2;
  v6 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v35, 0);
  v8 = *v6;
  if (*v6 == a2)
  {
    return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v4 + 160, v8);
  }

  v9 = v6;
  v10 = v7;
  v11 = 0;
  value = 0;
  for (i = 1; i != 4; ++i)
  {
    if (i == 1)
    {
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
      value = caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::next_value(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
      v11 = 3;
    }

    if ((v11 & ~value) != 0)
    {
      break;
    }

    v11 *= 4;
  }

  v14 = 0;
  v15 = *(v4 + 176);
  while (1)
  {
    v16 = *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v14];
    if (v16 >= *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * i - 8])
    {
      break;
    }

    if (++v14 == 5)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  v18 = v15 + 32 * v14 + 48;
  v19 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
  if (v19)
  {
    v17 = v19;
    atomic_fetch_add((v18 + 16), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v17 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v15, v16);
  }

LABEL_16:
  v17[16] = i;
  *(v17 + 17) = 1;
  v17[19] = i;
  *v17 = a2;
  *(v17 + 1) = 0;
  *(v17 + 1) = *a3;
  *(v17 + 4) = 0;
  v20 = (v17 + 32);
  *(v17 + 5) = 0;
  *(v17 + 3) = 0;
  if (i)
  {
    v21 = (v17 + 40);
    v22 = i;
    do
    {
      atomic_store(0, v21 - 1);
      atomic_store(0, v21);
      v21 += 2;
      --v22;
    }

    while (v22);
  }

  v23 = 0;
  __dmb(0xBu);
  while (2)
  {
    if (*v9 == *v17)
    {
LABEL_36:
      v33 = 0;
      goto LABEL_37;
    }

    while (1)
    {
      v24 = &v9[2 * v23 + 4];
      v25 = atomic_load(v24);
      if ((v25 & 2) == 0)
      {
        break;
      }

      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v25 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_29:
      v29 = *v17;
      while (1)
      {
        v30 = atomic_load(&v9[2 * v23 + 4]);
        v10 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        if (v29 < *(v30 & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }

        v31 = atomic_load((v10 + 32));
        if (v31)
        {
          v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(v4, v23, v9, v10);
          if (!v32)
          {
            caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v10);
          }
        }

        else
        {
          v9 = v10;
        }
      }

      if (*v9 == *v17)
      {
        goto LABEL_36;
      }
    }

    atomic_store(v10, &v20[2 * v23]);
    v26 = v10;
    atomic_compare_exchange_strong(v24, &v26, v17);
    if (v26 != v10)
    {
      if ((v26 & 2) != 0)
      {
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v4, v23, v9, v26 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v27 = atomic_load(v24);
      if (v27)
      {
        do
        {
          v9 = atomic_load(&v9[2 * v23 + 5]);
          v28 = atomic_load(&v9[2 * v23 + 4]);
        }

        while ((v28 & 1) != 0);
      }

      goto LABEL_29;
    }

    v33 = v17;
LABEL_37:
    if (v33 | v23)
    {
      v8 = atomic_load(v20);
      if ((v8 & 1) == 0 && ++v23 != i)
      {
        v35 = a2;
        v9 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(v4, &v35, v23);
        v10 = v34;
        continue;
      }
    }

    else
    {
      caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>::deallocate(*(v4 + 176), v17, *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v17[16] - 8]);
    }

    return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v4 + 160, v8);
  }
}

void caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
  }
}

uint64_t *caulk::alloc::base_allocator::log(caulk::alloc::base_allocator *this)
{
  {
    qword_280ADC4E8 = 0;
    caulk::alloc::base_allocator::log(void)::global = os_log_create("com.apple.audio.caulk", "alloc");
  }

  return &caulk::alloc::base_allocator::log(void)::global;
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::next_value(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v3 = a1 + v2;
    if ((atomic_exchange((a1 + v2 + 2504), 1u) & 1) == 0)
    {
      break;
    }

    v2 += 2512;
    if (v2 == 10048)
    {
      v2 = 0;
    }
  }

  result = *(a1 + 10052);
  v5 = result - *(a1 + 10048);
  if (v5)
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v3);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 31;
      if (((v6 << v7) & 0x7FFFFFFF) != 0)
      {
        v8 = 32;
      }

      v9 = v8 - v7;
      v10 = v9 >> 5;
      if ((v9 & 0x1F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFF >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      do
      {
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v3) & v11;
      }

      while (v12 >= v6);
      result = *(a1 + 10048) + v12;
    }
  }

  atomic_store(0, (v3 + 2504));
  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

char *caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(uint64_t a1, unint64_t a2)
{
  atomic_fetch_add((a1 + 36), 0x801u);
  explicit = *(a1 + 24);
  if (explicit)
  {
    v5 = 0;
    goto LABEL_3;
  }

  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v5 = explicit;
  if (explicit)
  {
LABEL_3:
    v6 = explicit;
    while (1)
    {
      result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
      if (result)
      {
        goto LABEL_23;
      }

      v6 = atomic_load(v6);
      if (!v6)
      {
        v6 = atomic_load_explicit((a1 + 16), memory_order_acquire);
        v5 = v6;
      }

      if (v6 == explicit)
      {
        v8 = atomic_load_explicit((a1 + 16), memory_order_acquire);
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_11:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

  v6 = v8;
  if (v8 == v5)
  {
    goto LABEL_21;
  }

  while (1)
  {
    result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
    if (result)
    {
      break;
    }

    v6 = atomic_load(v6);
    if (v6)
    {
      v10 = v5 == v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_21:
      while (1)
      {
        v6 = caulk::alloc::details::caching_page_allocator_base::allocate(*(a1 + 8), 0x4000, 0x10uLL);
        *v6 = 0;
        *(v6 + 1) = v11;
        *(v6 + 2) = 0;
        __dmb(0xBu);
        atomic_store(v9, v6);
        v8 = v9;
        atomic_compare_exchange_strong((a1 + 16), &v8, v6);
        if (v8 != v9)
        {
          break;
        }

        result = caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(v6 + 2, a2);
        if (result)
        {
          goto LABEL_23;
        }
      }

      caulk::alloc::details::caching_page_allocator_base::deallocate(*(a1 + 8), v6, *(v6 + 1));
      v5 = v9;
      goto LABEL_11;
    }
  }

LABEL_23:
  *(a1 + 24) = v6;
  atomic_fetch_add((a1 + 36), 0xFFFFFFFF);
  return result;
}

atomic_ullong *caulk::inplace_function_detail::rt_vtable<void,unsigned long,unsigned long>::rt_vtable<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_1>(caulk::inplace_function_detail::wrapper<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_1>)::{lambda(void *,unsigned long &&,unsigned long &)#1}::__invoke(atomic_ullong *result, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *result;
  v5 = atomic_load((*result + 160));
  if (v5 > v3 && (atomic_exchange((v4 + 112), 1u) & 1) == 0)
  {
    return caulk::concurrent::details::messenger_servicer::enqueue(**(v4 + 104), v4 + 80);
  }

  return result;
}

char *caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0x7FF8;
  v3 = a2 > 0x3FF0 || v2 == 0;
  if (v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = ~(a1 + 23 + *a1) & 7;
  v6 = *a1 + v2 + v5;
  if (v6 > 0x3FE0)
  {
    return 0;
  }

  v8 = *a1;
  atomic_compare_exchange_strong(a1, &v8, v6);
  if (v8 != v4)
  {
    do
    {
      v5 = ~(a1 + 23 + v8) & 7;
      v9 = v8 + v2 + v5;
      if (v9 >= 0x3FE1)
      {
        return 0;
      }

      v4 = v8;
      v10 = v8;
      atomic_compare_exchange_strong(a1, &v10, v9);
      v3 = v10 == v8;
      v8 = v10;
    }

    while (!v3);
  }

  result = a1 + v4 + v5 + 16;
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::allocate(caulk::alloc::page_allocator *a1, uint64_t a2, unint64_t a3)
{
  v6 = caulk::alloc::page_allocator::allocate(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  *&v8 = v5;
  *(&v8 + 1) = a3;
  result = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::emplace<caulk::alloc::detail::tracked_block>(a1 + 16, v6, &v8);
  if (result)
  {
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::emplace<caulk::alloc::detail::tracked_block>(unint64_t result, unint64_t a2, _OWORD *a3)
{
  if (*(result + 16) >= a2 || (v4 = result, *(result + 216) <= a2))
  {
    __break(1u);
    return result;
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v36 = a2;
  v6 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(v4, &v36, 0);
  v8 = *(v6 + 16);
  if (v8 == a2)
  {
LABEL_44:
    v35 = 0;
    goto LABEL_45;
  }

  v9 = v6;
  v10 = v7;
  v11 = 0;
  value = 0;
  for (i = 1; i != 9; ++i)
  {
    if (i == 1)
    {
      caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::random_engine();
      value = caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::next_value(&caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine);
      v11 = 3;
    }

    if ((v11 & ~value) != 0)
    {
      break;
    }

    v11 *= 4;
  }

  v14 = 0;
  v15 = *(v4 + 272);
  while (1)
  {
    v16 = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v14];
    if (v16 >= *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * i - 8])
    {
      break;
    }

    if (++v14 == 10)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  v18 = v15 + 32 * v14 + 48;
  v19 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
  if (v19)
  {
    v17 = v19;
    atomic_fetch_add((v18 + 16), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v17 = caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::allocate(v15, v16);
  }

LABEL_16:
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[24] = i;
  *(v17 + 25) = 1;
  v17[27] = i;
  *(v17 + 2) = a2;
  *v17 = *a3;
  *(v17 + 5) = 0;
  v20 = (v17 + 40);
  *(v17 + 4) = 0;
  *(v17 + 6) = 0;
  if (i)
  {
    v21 = (v17 + 48);
    v22 = i;
    do
    {
      atomic_store(0, v21 - 1);
      atomic_store(0, v21);
      v21 += 2;
      --v22;
    }

    while (v22);
  }

  v23 = 0;
  __dmb(0xBu);
  while (2)
  {
    if (*(v9 + 16) == *(v17 + 2))
    {
LABEL_36:
      v33 = 0;
      goto LABEL_38;
    }

    while (1)
    {
      v24 = (v9 + 16 * v23 + 40);
      v25 = atomic_load(v24);
      if ((v25 & 2) == 0)
      {
        break;
      }

      caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v4, v23, v9, v25 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_29:
      v29 = *(v17 + 2);
      while (1)
      {
        v30 = atomic_load((v9 + 16 * v23 + 40));
        v10 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        if (v29 < *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 16))
        {
          break;
        }

        v31 = atomic_load((v10 + 40));
        if (v31)
        {
          v9 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(v4, v23, v9, v10);
          if (!v32)
          {
            caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v4, v23, v9, v10);
          }
        }

        else
        {
          v9 = v10;
        }
      }

      if (*(v9 + 16) == *(v17 + 2))
      {
        goto LABEL_36;
      }
    }

    atomic_store(v10, &v20[2 * v23]);
    v26 = v10;
    atomic_compare_exchange_strong(v24, &v26, v17);
    if (v26 != v10)
    {
      if ((v26 & 2) != 0)
      {
        caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v4, v23, v9, v26 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v27 = atomic_load(v24);
      if (v27)
      {
        do
        {
          v9 = atomic_load((v9 + 16 * v23 + 48));
          v28 = atomic_load((v9 + 16 * v23 + 40));
        }

        while ((v28 & 1) != 0);
      }

      goto LABEL_29;
    }

    v33 = v17;
LABEL_38:
    if (!(v33 | v23))
    {
      caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(v4 + 272), v17, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v17[24] - 8]);
      goto LABEL_44;
    }

    v8 = atomic_load(v20);
    if ((v8 & 1) == 0 && ++v23 != i)
    {
      v36 = a2;
      v9 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(v4, &v36, v23);
      v10 = v34;
      continue;
    }

    break;
  }

  v35 = 1;
LABEL_45:
  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v4 + 256, v8);
  return v35;
}

uint64_t caulk::concurrent::condition_message::perform(caulk::concurrent::condition_message *this)
{
  atomic_store(0, this + 32);
  v2 = *(this + 8);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  caulk::lifetime_guard<caulk::alloc::page_cache_monitor,caulk::shared_ptr_mutex<caulk::mach::unfair_lock>>::weak_ref::lock(&v4, (a1 + 8));
  v1 = v4;
  if (v4)
  {
    os_unfair_lock_lock(*(v4 + 24));
    v2 = *(v1 + 40);
    if (v2)
    {
      caulk::alloc::page_cache_monitor_impl::evaluate_reservations(v2);
    }

    os_unfair_lock_unlock(*(v1 + 24));
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_2754A62F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v11 = v10;
  os_unfair_lock_unlock(*(v11 + 24));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(unint64_t a1, uint64_t a2)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v16 = a2;
  v4 = -1;
  v5 = 48;
  do
  {
    v6 = atomic_load((a1 + v5));
    ++v4;
    v5 += 16;
  }

  while (*((v6 & 0xFFFFFFFFFFFFFFFCLL) + 18) != 2);
  v7 = a1;
  if (v4)
  {
    v7 = a1;
    do
    {
      v7 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_lt &>(a1, v4--, v7, &v16);
    }

    while (v4);
  }

  v8 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_lt &>(a1, 0, v7, &v16);
  v10 = *v9;
  if (*v9 == a2)
  {
    v11 = v9;
    v12 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(a1, 0, v8, v9);
    v14 = v13;
    if (!v13)
    {
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(a1, 0, v12, v11);
      if ((v14 & 0x100000000) == 0)
      {
        return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 160, v10);
      }

      goto LABEL_9;
    }

    if ((v13 & 0x100000000) != 0)
    {
LABEL_9:
      v16 = a2;
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_to_level<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_le>(a1, &v16, 0);
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 160, v10);
}

unint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 32);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 40));
        v13 = atomic_load((a3 + 16 * a2 + 32));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *a4;
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 32));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *(v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
        break;
      }

      v17 = atomic_load((v16 + 32));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::search_right<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 32));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *(v5 & 0xFFFFFFFFFFFFFFFCLL))
  {
    do
    {
      v10 = atomic_load((v6 + 32));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 32));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *(v12 & 0xFFFFFFFFFFFFFFFCLL));
  }

  return v4;
}

unint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 32);
  atomic_store(a3, (v8 + 40));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 32), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 19), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 24));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 24));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::free_node_chain(uint64_t result, uint64_t a2)
{
  _X2 = a2;
  _X6 = 0;
  _X7 = 0;
  __asm { CASPAL          X6, X7, X6, X7, [X8] }

  atomic_store(_X6, (a2 + 40));
  _X5 = 0;
  __asm { CASPAL          X4, X5, X2, X3, [X8] }

  if (_X4 != _X6)
  {
    do
    {
      atomic_store(_X4, (a2 + 40));
      _X7 = 0;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      v14 = _X6 ^ _X4;
      _X4 = _X6;
    }

    while (v14);
  }

  v15 = *(result + 72);
  if (*(v15 + 32) == 1)
  {
    return (*v15)(result + 80);
  }

  return result;
}

unint64_t caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(uint64_t a1)
{
  _X22 = 0;
  while (1)
  {
    _X1 = 0;
    __asm { CASPAL          X0, X1, X22, X23, [X8] }

    if (!result)
    {
      break;
    }

    v9 = result;
    v10 = result;
    while (1)
    {
      _X4 = atomic_load((v9 + 40));
      _X1 = 0;
      __asm { CASPAL          X0, X1, X4, X5, [X8] }

      if (result == v10)
      {
        break;
      }

      v9 = result;
      v10 = result;
      if (!result)
      {
        return result;
      }
    }

    do
    {
      v13 = atomic_load((v9 + 24));
      v14 = *(a1 + 32);
      if (*(v14 + 32) == 1 && !*(v9 + 18))
      {
        (*v14)(a1 + 40, v9);
      }

      caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>::deallocate(*(a1 + 16), v9, *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * *(v9 + 16) - 8]);
      v9 = v13;
    }

    while (v13);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (*&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v4] < a3)
  {
    if (++v4 == 5)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

void caulk::concurrent::details::messenger_servicer::drain(atomic_ullong *this)
{
  caulk::mach::semaphore::semaphore(&v8);
  v9 = 0;
  if (caulk::g_realtime_safe_resource)
  {
    v2 = (*(*caulk::g_realtime_safe_resource + 16))(caulk::g_realtime_safe_resource, 40, 8);
    *(v2 + 16) = 0;
    *(v2 + 24) = &v8;
    *v2 = &unk_28841B0A0;
    *(v2 + 8) = 0;
    caulk::concurrent::details::messenger_servicer::enqueue(this, v2);
    do
    {
      if ((*(*this + 24))(this))
      {
        while (1)
        {
          v3 = this[9];
          if (!v3)
          {
            v6 = atomic_exchange_explicit(this + 1, 0, memory_order_acquire);
            if (!v6)
            {
              goto LABEL_12;
            }

            v3 = 0;
            do
            {
              v4 = v3;
              v3 = v6;
              v5 = (v6 + 8);
              v6 = atomic_load((v6 + 8));
              atomic_store(v4, v5);
            }

            while (v6);
            this[9] = v3;
          }

          v7 = atomic_load((v3 + 8));
          this[9] = v7;
          atomic_store(0, (v3 + 16));
        }
      }
    }

    while (!caulk::semaphore::timed_wait(&v8, 0.5));
LABEL_12:
    caulk::semaphore::~semaphore(&v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t caulk::mach::semaphore::timed_wait_or_error@<X0>(semaphore_t *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  LODWORD(a3) = vcvtmd_u64_f64(a2);
  v4 = a3 | (((a2 - floor(a2)) * 1000000000.0) << 32);
  do
  {
    v5 = v4;
    v6 = semaphore_timedwait(*this, v5);
  }

  while (v6 == 14);
  v7 = 0x100000000;
  v8 = 0x100000000;
  v9 = v6 & 0xFFFFFF00;
  v10 = v6;
  if (v6 == 49)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 49)
  {
    v9 = 0;
  }

  if (v6)
  {
    v7 = v8;
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if (v6)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v7 | v12 | v11;
}

void caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::introspect<void caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::introspect_foreach<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1}>(caulk::alloc::introspector const&,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} &&)::{lambda(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} const&)#1}>(uint64_t a1, uint64_t a2, int ***a3)
{
  while (1)
  {
    v5 = atomic_load((a1 + 40));
    if (!*(a1 + 26))
    {
      v6 = *a3;
      v7 = *(a1 + 16);
      v8 = (*a1 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
      v9 = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(**a3 + 4), v7, v8);
      v10 = v7 - v9;
      v11 = v8 + v9;
      v12 = v9;
      while (v12 >= v9 && v11 > v12)
      {
        v13 = *v6;
        v14 = **v6;
        if ((v14 & 4) != 0)
        {
          std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(v13 + 8), 4, v10 + v12, 32);
          v13 = *v6;
          v14 = **v6;
        }

        if (*(v12 + 16))
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        if ((v15 & v14) != 0)
        {
          std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(v13 + 8), v15, v10 + v12 + 32, *(v12 + 24) >> 1);
        }

        v16 = *(v12 + 24);
        v12 += (v16 >> 1) + 32;
        if (v16)
        {
          goto LABEL_16;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_fault_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "consolidating_free_map::introspect: walked past end of slab; target process's memory may be corrupt", v17, 2u);
      }
    }

LABEL_16:
    if ((v5 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }

    a1 = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a2 + 24), v5 & 0xFFFFFFFFFFFFFFFCLL, 56);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<caulk::concurrent::details::messenger_servicer::drain(void)::{lambda(void)#1} &&>::perform(caulk::concurrent::message *this)
{
  v2 = *(this + 3);
  if ((atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_release) & 0x80000000) != 0)
  {
    caulk::mach::semaphore::signal_or_error(v2);
  }

  caulk::concurrent::message::~message(this);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    return (*(*caulk::g_realtime_safe_resource + 24))(caulk::g_realtime_safe_resource, this, 40, 8);
  }

  __break(1u);
  return result;
}

uint64_t caulk::expected<BOOL,int>::value(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_28841B020;
    exception[2] = v3;
  }

  return result;
}

uint64_t caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::introspect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  LOBYTE(v14) = 0;
  v16 = 0;
  if (*(a3 + 72) == 1)
  {
    v14 = (a1 + 784);
    v15 = a1 + 944;
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v16 = 1;
  }

  for (i = a1 + 784; ; i = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v6 & 0xFFFFFFFFFFFFFFFCLL, 48))
  {
    v6 = atomic_load((i + 32));
    if (!*(i + 18))
    {
      v7 = *(i + 8);
      v8 = std::function<void * ()(unsigned long,unsigned long)>::operator()(*(a3 + 32), v7, 0x4000);
      caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::introspect(v8 + 16, v7 + 16, a3);
    }

    if ((v6 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }
  }

  if (v16 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(v15, v16);
  }

  v13[0] = &unk_28841AB60;
  v13[1] = a3;
  v13[3] = v13;
  LODWORD(v14) = *a3;
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::__value_func[abi:ne200100](&v15, a3 + 8);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v17, v13);
  v17[32] = *(a3 + 72);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v13);
  v11 = &v14;
  v12 = &v11;
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::introspect<void caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::introspect_foreach<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1}>(caulk::alloc::introspector const&,caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} &&)::{lambda(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} const&)#1}>(a1 + 368, &v15, &v12);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](&v15);
  v13[0] = a3;
  v14 = v13;
  result = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::introspect<void caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect_foreach<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1}>(caulk::alloc::introspector const&,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} &&)::{lambda(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::introspect(unsigned long,caulk::alloc::introspector const&)::{lambda(void *,unsigned long)#1} const&)#1}>(a1 + 16, a3 + 8, &v14);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A6F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void caulk::semaphore::~semaphore(caulk::semaphore *this)
{
  v1 = atomic_load(this + 2);
  if (v1 < *(this + 3))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {

    caulk::mach::semaphore::~semaphore(this);
  }
}

void caulk::mach::semaphore::~semaphore(semaphore_t *this)
{
  if (*(this + 4) == 1)
  {
    if (*this)
    {
      semaphore_destroy(*MEMORY[0x277D85F48], *this);
    }
  }
}

uint64_t std::__function::__func<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(uint64_t result, int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(result + 8);
  v8 = *v7;
  if (v4 == 1)
  {
    if ((v8 & 1) == 0)
    {
      return result;
    }

    v6 -= 64;
    v9 = *(v7 + 8);
    v5 += 32;
    v4 = 1;
    return std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(v9, v4, v5, v6);
  }

  if ((v8 & v4) != 0)
  {
    v9 = *(v7 + 8);
    return std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(v9, v4, v5, v6);
  }

  return result;
}

uint64_t *caulk::alloc::detail::state_bit_span::introspect(uint64_t *this, uint64_t a2, const caulk::alloc::introspector *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (!a2)
  {
    return this;
  }

  v9 = this;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v23 = &this[a2];
  do
  {
    v14 = *v9;
    if (v10 < a6)
    {
      v15 = 0;
      v16 = 1;
      v17 = v13;
      while (1)
      {
        v13 = ((v14 & (v16 << 32)) != 0) | (2 * ((v16 & v14) != 0));
        if (v13 <= 1)
        {
          break;
        }

        if (v13 == 2)
        {
          goto LABEL_22;
        }

        if ((v17 - 2) >= 2)
        {
          if (v17 || (*a4 & 2) == 0)
          {
            goto LABEL_19;
          }

          v18 = 2;
LABEL_17:
          v19 = v11 * a5;
          v20 = *(a4 + 64);
LABEL_18:
          this = std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(v20, v18, v12, v19);
          goto LABEL_19;
        }

        if (*a4)
        {
          v18 = 1;
          goto LABEL_17;
        }

LABEL_19:
        v11 = 0;
        v12 = a3;
LABEL_22:
        ++v11;
        a3 = (a3 + a5);
        ++v10;
        if (v15 <= 0x1E)
        {
          ++v15;
          v16 *= 2;
          v17 = v13;
          if (v10 < a6)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      if (v13)
      {
        __break(1u);
        return this;
      }

      if ((v17 - 2) >= 2)
      {
        if (v17)
        {
          v12 = a3;
          v11 = 0;
        }

        goto LABEL_22;
      }

      if ((*a4 & 1) == 0)
      {
        goto LABEL_19;
      }

      v19 = v11 * a5;
      v20 = *(a4 + 64);
      v18 = 1;
      goto LABEL_18;
    }

LABEL_24:
    ++v9;
  }

  while (v9 != v23);
  if ((v13 - 2) >= 2)
  {
    if (!v13 && (*a4 & 2) != 0)
    {
      v21 = 2;
LABEL_32:
      v22 = *(a4 + 64);

      return std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(v22, v21, v12, v11 * a5);
    }
  }

  else if (*a4)
  {
    v21 = 1;
    goto LABEL_32;
  }

  return this;
}

uint64_t *caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::introspect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a3 & 4) != 0)
  {
    std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(a3 + 64), 4, a2, 272);
  }

  return caulk::alloc::detail::state_bit_span::introspect((a1 + 8), 32, (a2 + 272), a3, 0x10u, 0x3EEu);
}

double caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_statistics(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 - 8);
  v9 = 0u;
  v10 = 0u;
  v11[0] = &unk_28841C7D0;
  v11[1] = &v9;
  v11[3] = v11;
  v12[0] = &unk_28841C750;
  v12[1] = v11;
  v12[3] = v12;
  v13 = 7;
  v14[0] = &unk_28841AE20;
  v14[1] = caulk::alloc::introspector::local_reader;
  v15 = v14;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v16, v12);
  v16[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v12);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v15, v3, 1424);
  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::introspect(v4 + 16, v3, &v13);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v11);
  v5 = *(&v9 + 1);
  if (*(v3 + 1400) > *(&v9 + 1))
  {
    v5 = *(v3 + 1400);
  }

  *&v10 = v5;
  *(&v10 + 1) += *(&v9 + 1);
  *(v3 + 1400) = v5;
  result = *&v9;
  v7 = v10;
  *a2 = v9;
  a2[1] = v7;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A7490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v7 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 8);
  if (*a2 == 4 || v3 == 2)
  {
    v6 = (*(result + 8) + 24);
  }

  else
  {
    if (v3 != 1)
    {
      return result;
    }

    v7 = *(result + 8);
    ++*v7;
    v6 = v7 + 2;
  }

  *v6 += v4;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C750;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841AB60;
  a2[1] = v2;
  return result;
}

void caulk::details::semaphore_pool::acquire(os_unfair_lock_s *this)
{
  v2 = 0;
LABEL_2:
  v3 = 1;
  while (1)
  {
    v4 = *&this[v2]._os_unfair_lock_opaque;
    if (!v4)
    {
      os_unfair_lock_lock(this + 16);
      v4 = *&this[v2]._os_unfair_lock_opaque;
      if (!v4)
      {
        operator new();
      }

      os_unfair_lock_unlock(this + 16);
    }

    v5 = *(v4 + 1040);
    if (v5 == -1)
    {
      goto LABEL_16;
    }

    v6 = __clz(__rbit64(~v5));
    v7 = *(v4 + 1040);
    while (1)
    {
      v8 = 1 << v6;
      atomic_compare_exchange_strong((v4 + 1040), &v7, (1 << v6) | v5);
      if (v7 == v5)
      {
        break;
      }

      v6 = __clz(__rbit64(~v7));
      v5 = v7;
      if (v7 == -1)
      {
        goto LABEL_16;
      }
    }

    v9 = atomic_load((v4 + 1032));
    if ((v9 & v8) == 0)
    {
      break;
    }

LABEL_15:
    if (*v4 + v6)
    {
      v11 = (*v4 + v6);
      return;
    }

LABEL_16:
    v3 += 64;
    v2 += 2;
    if (v2 == 16)
    {
      __ns.__rep_ = 1000000;
      std::this_thread::sleep_for (&__ns);
      v2 = 0;
      goto LABEL_2;
    }
  }

  if (v6 < 0x40)
  {
    v10 = (v4 + 16 * v6);
    caulk::mach::semaphore::semaphore(v10 + 1);
    v10[3] = 0;
    v10[4] = 0;
    atomic_fetch_or((v4 + 1032), v8);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t caulk::details::semaphore_pool::release(uint64_t this, unsigned int a2)
{
  v2 = a2 - 1;
  if (v2 < 0x200 && (v3 = (this + 8 * (v2 >> 6)), (v4 = atomic_load(v3)) != 0) && (v5 = atomic_load(v3), v6 = a2 - *v5, v6 < 0x40u))
  {
    atomic_fetch_and((v5 + 1040), ~(1 << v6));
  }

  else
  {
    __break(1u);
  }

  return this;
}

uint64_t caulk::pooled_semaphore_mutex::try_lock(atomic_uint *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    return 0;
  }

  v2 = explicit;
  atomic_compare_exchange_strong(this, &v2, 1u);
  if (v2 != explicit)
  {
    return 0;
  }

  __dmb(9u);
  return 1;
}

void caulk::concurrent::messenger::messenger(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_2754A7A0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::ipc::mapped_memory::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    this = munmap(*this, v2);
  }

  *v1 = 0;
  v1[1] = 0;
  return this;
}

uint64_t caulk::mach::semaphore::timed_wait_signal_or_error@<X0>(semaphore_t *this@<X0>, semaphore_t *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  LODWORD(a4) = vcvtmd_u64_f64(a3);
  v6 = a4 | (((a3 - floor(a3)) * 1000000000.0) << 32);
  do
  {
    v7 = v6;
    v8 = semaphore_timedwait_signal(*this, *a2, v7);
  }

  while (v8 == 14);
  v9 = 0x100000000;
  v10 = 0x100000000;
  v11 = v8 & 0xFFFFFF00;
  v12 = v8;
  if (v8 == 49)
  {
    v12 = 0;
  }

  else
  {
    v10 = 0;
  }

  if (v8 == 49)
  {
    v11 = 0;
  }

  if (v8)
  {
    v9 = v10;
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v8)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v9 | v14 | v13;
}

unint64_t caulk::ipc::synchronous_messenger::semaphore_sender::send(caulk::ipc::synchronous_messenger::semaphore_sender *this, double a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_13;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_13;
  }

  v4 = (this + 48);
  if (!*(this + 12) || !*(this + 14) || *(this + 64) != 1)
  {
LABEL_12:
    v2 = 0;
LABEL_13:
    v10 = 0;
    LOBYTE(v9) = 22;
    return v9 | v2 | v10;
  }

  if (v2 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v6 = *(this + 3);
  if (*v6 != 1 || (v7 = v6[1], !v7))
  {
    caulk::ipc::synchronous_messenger::semaphore_sender::reset_messaging(this, a2);
    goto LABEL_12;
  }

  __dmb(0xBu);
  v8 = caulk::mach::semaphore::timed_wait_signal_or_error(v4, this + 14, a2, v7);
  v9 = v8;
  if (HIDWORD(v8))
  {
    if (v8)
    {
      v10 = 0;
      __dmb(9u);
      v2 = 0x100000000;
      LOBYTE(v9) = 1;
    }

    else
    {
      v10 = v8 & 0xFFFFFF00;
      v2 = v8 & 0x100000000;
    }
  }

  else
  {
    caulk::ipc::synchronous_messenger::semaphore_sender::reset_messaging(this, a2);
    v2 = 0;
    v10 = v9 & 0xFFFFFF00;
  }

  return v9 | v2 | v10;
}

_BYTE *caulk::ipc::synchronous_messenger::semaphore_receiver::message_loop(_BYTE *this, caulk::ipc::synchronous_messenger::semaphore_receiver *a2)
{
  if ((this[184] & 1) == 0)
  {
    v2 = this;
    v3 = 0;
    while (1)
    {
      if (*(v2 + 6) <= 7uLL)
      {
LABEL_41:
        CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
      }

      v4 = *(v2 + 5);
      if (v3)
      {
        __dmb(0xBu);
        do
        {
          this = MEMORY[0x277C79310](*(v2 + 18), *(v2 + 16));
        }

        while (this == 14);
      }

      else
      {
        do
        {
          this = MEMORY[0x277C79300](*(v2 + 18), a2);
        }

        while (this == 14);
      }

      if (this)
      {
        return this;
      }

      __dmb(9u);
      if (v2[184])
      {
        return this;
      }

      this = *(v2 + 18);
      if (!this)
      {
        goto LABEL_15;
      }

      v5 = *v4;
      if (*v4 == 1)
      {
        break;
      }

LABEL_16:
      switch(v5)
      {
        case 1:
          v3 = 1;
          break;
        case 2:
          v3 = 0;
          if (*(v2 + 3))
          {
            v6 = *(v2 + 6);
            if (v6)
            {
              if (*(v2 + 16) && *(v2 + 18))
              {
                if (v6 <= 7)
                {
                  goto LABEL_41;
                }

                v7 = *(v2 + 5);
                v7[1] = 2;
                __dmb(0xBu);
                caulk::mach::semaphore::signal_or_error((v2 + 64));
                while (1)
                {
                  do
                  {
                    this = MEMORY[0x277C79300](*(v2 + 18));
                  }

                  while (this == 14);
                  if (this)
                  {
                    break;
                  }

                  __dmb(9u);
                  if (*v7 == 1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "semaphore_receiver::reynch_handshake: wait out the receiver semaphore to clear things out for next time R-1");
                    v9 = 0;
                    do
                    {
                      v10 = caulk::mach::semaphore::timed_wait_or_error(v2 + 18, 0.000001, v8);
                      v8 = HIDWORD(v10);
                      if ((v9 ^ BYTE4(v10)))
                      {
                        v9 = BYTE4(v10);
                      }
                    }

                    while ((v10 & 1) != 0 && (v9 & 1) != 0);
                    __dmb(9u);
                    if (v12 < 0)
                    {
                      operator delete(__p);
                    }

                    v7[1] = 1;
                    __dmb(0xBu);
                    this = caulk::mach::semaphore::signal_or_error((v2 + 64));
                    break;
                  }
                }

                v3 = 0;
              }
            }
          }

          break;
        case 0:
          return this;
      }

      if (v2[184] == 1)
      {
        return this;
      }
    }

    this = (*(*this + 48))(this, v2 + 16);
LABEL_15:
    v5 = *v4;
    goto LABEL_16;
  }

  return this;
}

double caulk::mach::os_workgroup_interval_managed::make_with_workload_id@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (os_workgroup_attr_set_interval_type())
  {
    *(a3 + 56) = 0;
    result = 0.0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *a3 = &unk_28841AF58;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      v7 = *a1;
    }

    if (*(a2 + 23) < 0)
    {
      v8 = *a2;
    }

    v9 = os_workgroup_interval_create_with_workload_id();
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 41) = 0u;
    *a3 = &unk_28841AF58;
    *(a3 + 8) = v9;
    *(a3 + 57) = 0;
  }

  return result;
}

void caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(caulk::mach::details **this, void *a2)
{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);
}

{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);

  JUMPOUT(0x277C78AD0);
}

{
  *this = &unk_28841AF98;
  caulk::mach::details::release_os_object(this[1], a2);
}

uint64_t std::default_delete<caulk::deferred_logger>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x277C78AD0);
  }

  return result;
}

void caulk::ipc::synchronous_messenger::semaphore_sender::create_connection_info(caulk::ipc::synchronous_messenger::semaphore_sender *this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to allocate dictionary");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::mapped_memory::create_xpc_object(this, &value);
  v5 = value;
  if (!value)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "failed to create payload object");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "payload", value);
  caulk::ipc::mapped_memory::create_xpc_object((this + 24), &v18);
  v6 = v18;
  if (!v18)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "failed to create control object");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "control", v18);
  v7 = *(this + 12);
  v8 = xpc_mach_send_create();
  if (!v8)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "failed to create send semaphore object");
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "send semaphore", v8);
  v9 = *(this + 14);
  v10 = xpc_mach_send_create();
  if (!v10)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "failed to create receive semaphore object");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "receive semaphore", v10);
  os_release(v10);
  os_release(v8);
  caulk::mach::details::release_os_object(v6, v11);

  caulk::mach::details::release_os_object(v5, v12);
}

void sub_2754A823C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);
  caulk::mach::details::release_os_object(v4, v7);
  caulk::mach::details::release_os_object(v3, v8);
  caulk::mach::details::release_os_object(v2, v9);
  caulk::mach::details::release_os_object(v1, v10);
  _Unwind_Resume(a1);
}

uint64_t caulk::ipc::mapped_memory::create_xpc_object@<X0>(caulk::ipc::mapped_memory *this@<X0>, void *a2@<X8>)
{
  if (*(this + 16))
  {
    v3 = *(this + 1);
    if (v3)
    {
      result = xpc_shmem_create(*this, v3);
    }

    else
    {
      result = 0;
    }

    *a2 = result;
  }

  else
  {
    v5 = *(this + 16);
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v20 = &unk_28841AF98;
  v21 = caulk::mach::details::retain_os_object(*(a1 + 112), v6);
  v7 = *(a1 + 136);
  v22 = *(a1 + 120);
  v23[0] = v7;
  *(v23 + 9) = *(a1 + 145);
  v8 = *(v2 + 112);
  if (v8)
  {
    (*(*v8 + 48))(v8);
  }

  v9 = caulk::mach::os_workgroup_managed::join(&v20);
  started = caulk::ipc::synchronous_messenger::semaphore_receiver::start_handshake(v2, v3);
  v11 = v5[4];
  if ((started & 0x100000000) != 0)
  {
    *v5 = started;
    if ((v11 & 1) == 0)
    {
      v5[4] = BYTE4(started);
    }

    caulk::expected<BOOL,int>::value(v5);
    v12 = *v5;
    __dmb(0xBu);
    caulk::mach::semaphore::signal_or_error(v4);
    if (v12 == 1)
    {
      caulk::ipc::synchronous_messenger::semaphore_receiver::message_loop(v2, v13);
    }
  }

  else
  {
    *v5 = started;
    if (v11)
    {
      v5[4] = BYTE4(started);
    }

    __dmb(0xBu);
    caulk::mach::semaphore::signal_or_error(v4);
  }

  if ((*(v2 + 185) & 1) == 0)
  {
    caulk::ipc::synchronous_messenger::semaphore_receiver::stop_handshake(v2);
  }

  if (!v9)
  {
    caulk::mach::os_workgroup_managed::leave(&v20);
  }

  v14 = *(v2 + 176);
  if (v14)
  {
    (*(*v14 + 48))(v14);
  }

  __dmb(0xBu);
  caulk::mach::semaphore::signal_or_error((v2 + 80));
  v20 = &unk_28841AF98;
  caulk::mach::details::release_os_object(v21, v15);
  std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v19, v16);
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2754A8518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    if (!v10)
    {
      caulk::mach::os_workgroup_managed::leave(&a10);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2754A8490);
  }

  _Unwind_Resume(exception_object);
}

void caulk::concurrent::messenger::~messenger(atomic_ullong **this)
{
  caulk::concurrent::details::messenger_servicer::drain(*this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void caulk::ipc::synchronous_messenger::semaphore_receiver::ingest_connection_info(uint64_t a1, xpc_object_t *a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no connection info");
    goto LABEL_10;
  }

  if (MEMORY[0x277C793E0]() != MEMORY[0x277D86468])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no dictionary");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  value = xpc_dictionary_get_value(*a2, "payload");
  v6 = caulk::mach::details::retain_os_object(value, v5);
  v32 = v6;
  if (!v6)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "no payload");
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::mapped_memory::mapped_memory(&v30, &v32);
  v7 = *(a1 + 16);
  *(a1 + 16) = v30;
  v30 = v7;
  v8 = *(a1 + 32);
  *(a1 + 32) = v31;
  v31 = v8;
  caulk::ipc::mapped_memory::reset(&v30);
  v9 = xpc_dictionary_get_value(*a2, "control");
  v11 = caulk::mach::details::retain_os_object(v9, v10);
  v29 = v11;
  if (!v11)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "no control");
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::mapped_memory::mapped_memory(&v30, &v29);
  v12 = *(a1 + 40);
  *(a1 + 40) = v30;
  v30 = v12;
  v13 = *(a1 + 56);
  *(a1 + 56) = v31;
  v31 = v13;
  caulk::ipc::mapped_memory::reset(&v30);
  v14 = xpc_dictionary_get_value(*a2, "send semaphore");
  v16 = caulk::mach::details::retain_os_object(v14, v15);
  *&v30 = v16;
  if (!v16)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "no send semaphore");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::synchronous_messenger::details::make_semaphore(&v28, &v30);
  caulk::mach::semaphore::operator=(a1 + 64, &v28);
  caulk::mach::semaphore::~semaphore(&v28);
  v17 = xpc_dictionary_get_value(*a2, "receive semaphore");
  v19 = caulk::mach::details::retain_os_object(v17, v18);
  v28 = v19;
  if (!v19)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "no receive semaphore");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::synchronous_messenger::details::make_semaphore(&v27, &v28);
  caulk::mach::semaphore::operator=(a1 + 72, &v27);
  caulk::mach::semaphore::~semaphore(&v27);
  os_release(v19);
  os_release(v16);
  caulk::mach::details::release_os_object(v11, v20);
  caulk::mach::details::release_os_object(v6, v21);
}

void sub_2754A8910(_Unwind_Exception *a1, void *a2)
{
  caulk::mach::details::release_os_object(v5, a2);
  caulk::mach::details::release_os_object(v4, v7);
  caulk::mach::details::release_os_object(v3, v8);
  caulk::mach::details::release_os_object(v2, v9);
  _Unwind_Resume(a1);
}

uint64_t caulk::ipc::synchronous_messenger::semaphore_receiver::start(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) && *(a1 + 48) && *(a1 + 64) && *(a1 + 72))
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a2);
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = 1;
    v20 = 1;
    *(a1 + 184) = 0;
    LODWORD(v21) = 1;
    BYTE4(v21) = 0;
    caulk::mach::semaphore::semaphore(&semaphore);
    __dmb(0xBu);
    std::shared_ptr<caulk::ipc::synchronous_messenger::semaphore_receiver>::shared_ptr[abi:ne200100]<caulk::ipc::synchronous_messenger::semaphore_receiver,0>(&v22, *a1, *(a1 + 8));
    *&v23 = a4;
    *(&v23 + 1) = &v21;
    p_semaphore = &semaphore;
    v25 = &unk_28841AF98;
    v9 = caulk::mach::details::retain_os_object(*(a3 + 8), v8);
    v10 = *(a3 + 32);
    v27 = *(a3 + 16);
    *v28 = v10;
    *(&v28[1] + 1) = *(a3 + 41);
    v11 = v22;
    v22 = 0uLL;
    *&v28[5] = v11;
    *&v28[7] = v23;
    memset(v28, 0, 25);
    v27 = 0u;
    v12 = *(a3 + 32);
    v29 = *(a3 + 16);
    v28[9] = p_semaphore;
    v28[10] = &unk_28841AF98;
    v28[11] = v9;
    v26 = 0;
    v30 = v12;
    v31 = *(a3 + 48);
    v32 = v28[3];
    operator new();
  }

  LODWORD(v21) = 22;
  BYTE4(v21) = 0;
  result = v21;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

{
  if (*(a1 + 24) && *(a1 + 48) && *(a1 + 64) && *(a1 + 72))
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a2);
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    v23 = 1;
    v24 = 1;
    *(a1 + 184) = 0;
    LODWORD(v25) = 1;
    BYTE4(v25) = 0;
    caulk::mach::semaphore::semaphore(&semaphore);
    __dmb(0xBu);
    std::shared_ptr<caulk::ipc::synchronous_messenger::semaphore_receiver>::shared_ptr[abi:ne200100]<caulk::ipc::synchronous_messenger::semaphore_receiver,0>(&v12, *a1, *(a1 + 8));
    *&v13 = a4;
    *(&v13 + 1) = &v25;
    p_semaphore = &semaphore;
    v15 = &unk_28841B000;
    v9 = caulk::mach::details::retain_os_object(*(a3 + 8), v8);
    v17 = 0;
    v18 = 0;
    v10 = v12;
    v12 = 0uLL;
    v26 = v10;
    v27 = v13;
    v28 = p_semaphore;
    v29 = &unk_28841B000;
    v30 = v9;
    v16 = 0;
    operator new();
  }

  LODWORD(v25) = 22;
  BYTE4(v25) = 0;
  return v25;
}

void sub_2754A8CE4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&a22, a2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<caulk::ipc::synchronous_messenger::semaphore_receiver>::shared_ptr[abi:ne200100]<caulk::ipc::synchronous_messenger::semaphore_receiver,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    *(v3 + 104) = &unk_28841AF98;
    caulk::mach::details::release_os_object(*(v3 + 112), a2);
    v4 = *(v3 + 72);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (*(v3 + 24) == 1 && *(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C78AD0](v3, 0x10B2C406107703FLL);
  }

  return a1;
}

uint64_t caulk::ipc::synchronous_messenger::details::make_semaphore(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "no object");
    goto LABEL_6;
  }

  if (MEMORY[0x277C793E0]() != MEMORY[0x277D864A0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "object is not a mach send right");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *a2;
  result = xpc_mach_send_copy_right();
  *a1 = result;
  *(a1 + 4) = 0;
  return result;
}

uint64_t caulk::mach::semaphore::operator=(uint64_t a1, int *a2)
{
  if (*(a1 + 4) == 1 && *a1)
  {
    semaphore_destroy(*MEMORY[0x277D85F48], *a1);
  }

  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  LOBYTE(v4) = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 4) = v4;
  return a1;
}

void caulk::ipc::synchronous_messenger::semaphore_sender::reset_messaging(caulk::ipc::synchronous_messenger::semaphore_sender *this, double a2)
{
  if (*(this + 4) <= 7uLL)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v4 = *(this + 3);
  *v4 = 0;
  __dmb(0xBu);
  caulk::mach::semaphore::signal_or_error((this + 56));
  do
  {
    v6 = caulk::mach::semaphore::timed_wait_or_error(this + 12, a2, v5);
    if (!HIDWORD(v6))
    {
      break;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    __dmb(9u);
    v5 = v4[1];
  }

  while (v5);
  *(this + 64) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "semaphore_sender::reset_messaging: wait out the sender semaphore to clear things out for next time S-1");
  v7 = 0;
  v8 = CFNumberGetTypeID;
  do
  {
    v9 = caulk::mach::semaphore::timed_wait_or_error(this + 12, 0.000001, v8);
    v8 = HIDWORD(v9);
    if ((v7 ^ BYTE4(v9)))
    {
      v7 = BYTE4(v9);
    }
  }

  while ((v9 & 1) != 0 && (v7 & 1) != 0);
  __dmb(9u);
  if (v11 < 0)
  {
    operator delete(__p);
  }
}

caulk::ipc::mapped_memory *caulk::ipc::mapped_memory::mapped_memory(caulk::ipc::mapped_memory *this, uint64_t a2, int a3)
{
  v5 = (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
  if (a3)
  {
    v6 = a3 << 24;
  }

  else
  {
    v6 = -1;
  }

  v7 = mmap(0, (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000, 3, 4097, v6, 0);
  if (v7 + 1 >= 2)
  {
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *this = v7;
  *(this + 1) = v8;
  *(this + 16) = 1;
  if (!a2)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to create shared memory");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  if (v8 >= 1)
  {
    bzero(v7, v8);
  }

  return this;
}

unint64_t caulk::ipc::synchronous_messenger::semaphore_sender::start(caulk::ipc::synchronous_messenger::semaphore_sender *this, double a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_9;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_9;
  }

  if (!*(this + 12) || !*(this + 14) || (*(this + 64) & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v2 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5)
  {
LABEL_8:
    v2 = 0;
LABEL_9:
    v6 = 0;
    v7 = 22;
    return v6 | v2 | v7;
  }

  while (1)
  {
    v10 = caulk::mach::semaphore::timed_wait_or_error(this + 12, a2, v5);
    if (!HIDWORD(v10) || (v10 & 1) == 0)
    {
      break;
    }

    __dmb(9u);
    v5 = v4[1];
    if (v5 == 1)
    {
      v6 = v10 & 0xFFFFFF00;
      v7 = 1;
      *v4 = 1;
      __dmb(0xBu);
      caulk::mach::semaphore::signal_or_error((this + 56));
      *(this + 64) = 1;
      v2 = 0x100000000;
      return v6 | v2 | v7;
    }
  }

  v6 = v10 & 0xFFFFFF00;
  v7 = v10;
  v2 = v10 & 0x100000000;
  return v6 | v2 | v7;
}

unint64_t caulk::ipc::synchronous_messenger::semaphore_receiver::start_handshake(uint64_t a1, double a2)
{
  v5 = *(a1 + 64);
  v3 = (a1 + 64);
  v4 = v5;
  v6 = *(v3 - 2);
  v7 = v3 + 2;
  if (*(v3 - 5))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v4 == 0 || v3[2] == 0)
  {
    goto LABEL_13;
  }

  if (v6 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v11 = *(a1 + 40);
  if (v11[1])
  {
LABEL_13:
    v12 = 0;
    v13 = 0;
    v14 = 22;
  }

  else
  {
    v11[1] = 1;
    __dmb(0xBu);
    caulk::mach::semaphore::signal_or_error(v3);
    while (1)
    {
      v18 = caulk::mach::semaphore::timed_wait_or_error(v7, a2, v17);
      LOBYTE(v14) = v18;
      v19 = HIDWORD(v18);
      if ((v18 & 0x100000000) == 0 || (v18 & 1) == 0)
      {
        break;
      }

      __dmb(9u);
      v17 = *v11;
      if (v17 == 1)
      {
        LOBYTE(v19) = 1;
        LOBYTE(v14) = 1;
        break;
      }
    }

    v13 = v18 & 0xFFFFFF00;
    v14 = v14;
    v12 = v19 << 32;
  }

  return v13 | v12 | v14;
}

void caulk::alloc::details::caching_page_allocator_base::deallocate(void *a1, caulk::mach::vm_block *this, uint64_t a3)
{
  if (a3)
  {
    _X4 = this;
    if (a3 == a1[2])
    {
      _X6 = 0;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X6, X7, [X8] }

      atomic_store(_X6, this);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      if (_X2 != _X6)
      {
        do
        {
          atomic_store(_X2, this);
          _X7 = 0;
          __asm { CASPAL          X6, X7, X4, X5, [X8] }

          v15 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v15);
      }

      atomic_fetch_add(a1 + 6, 1uLL);
      v16 = a1[8];
      if (*(v16 + 32) == 1)
      {
        v17 = a1[2];
        v18 = a1[6];
        v19 = v17;
        (*v16)(a1 + 9, &v19, &v18);
      }
    }

    else
    {
      caulk::mach::vm_block::dealloc(this, (a3 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]);
    }
  }

  else
  {
    __break(1u);
  }
}

atomic_uint *caulk::semaphore::signal(atomic_uint *this)
{
  if ((atomic_fetch_add_explicit(this + 2, 1u, memory_order_release) & 0x80000000) != 0)
  {
    return caulk::mach::semaphore::signal_or_error(this);
  }

  return this;
}

unint64_t caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::allocate(unsigned int *a1, unint64_t a2)
{
  if (a2 > 0x4000)
  {
    return 0;
  }

  v3 = (a2 + 255) >> 8;
  v4 = atomic_load(a1);
  if (v4 < v3)
  {
    return 0;
  }

  v5 = caulk::alloc::detail::state_bit_span::allocate((a1 + 2), 2uLL, 0, 0x3Eu, v3, 0x3Fu);
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  atomic_fetch_add(a1, -v3);
  return &a1[64 * v5 + 60];
}

_opaque_pthread_t *get_priority(_opaque_pthread_t *result, int a2)
{
  if (result)
  {
    v3 = pthread_mach_thread_np(result);
    thread_info_outCnt = 10;
    if (thread_info(v3, 3u, thread_info_out, &thread_info_outCnt))
    {
      return 0;
    }

    switch(v9)
    {
      case 4:
        thread_info_outCnt = 4;
        if (thread_info(v3, 0xCu, v7, &thread_info_outCnt))
        {
          return 0;
        }

        if (v7[2] && a2)
        {
          return v7[3];
        }

        else
        {
          return v7[1];
        }

      case 2:
        thread_info_outCnt = 5;
        if (thread_info(v3, 0xBu, v6, &thread_info_outCnt))
        {
          return 0;
        }

        if (v6[3] && a2)
        {
          return v6[4];
        }

        else
        {
          return v6[1];
        }

      case 1:
        thread_info_outCnt = 5;
        if (thread_info(v3, 0xAu, v5, &thread_info_outCnt))
        {
          return 0;
        }

        if (a2)
        {
          return v5[2];
        }

        else
        {
          return v5[1];
        }

      default:
        return 0;
    }
  }

  return result;
}

uint64_t caulk::mach::thread::priority_absolute::apply_to_this_thread(caulk::mach::thread::priority_absolute *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  v4 = v3;
  if (v3)
  {
    policy_info = *(this + 4);
    result = thread_policy_set(v3, 1u, &policy_info, 1u);
    if (!result)
    {
      v6 = getpid();
      v7 = proc_pidinfo(v6, 2, 0, buffer, 232);
      v8 = v13;
      if (v7 <= 0)
      {
        v8 = 0;
      }

      v10 = *this - v8;
      result = thread_policy_set(v4, 3u, &v10, 1u);
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754A973C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::ipc::synchronous_messenger::semaphore_sender::stop(caulk::ipc::synchronous_messenger::semaphore_sender *this, double a2)
{
  if (*(this + 1) && *(this + 4) && *(this + 12) && *(this + 14) && *(this + 64) == 1)
  {
    caulk::ipc::synchronous_messenger::semaphore_sender::reset_messaging(this, a2);
  }
}

_DWORD *caulk::ipc::synchronous_messenger::semaphore_receiver::stop_handshake(uint64_t a1)
{
  v5 = *(a1 + 64);
  result = (a1 + 64);
  v4 = v5;
  v6 = *(result - 2);
  if (*(result - 5))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v4 != 0 && result[2] != 0)
  {
    if (v6 <= 7)
    {
      CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
    }

    v10 = *(a1 + 40);
    if (*(v10 + 4) == 1)
    {
      *(v10 + 4) = 0;
      __dmb(0xBu);

      return caulk::mach::semaphore::signal_or_error(result);
    }
  }

  return result;
}

void caulk::concurrent::details::dispatch_receiver::~dispatch_receiver(caulk::concurrent::details::dispatch_receiver *this)
{
  *this = &unk_28841B070;
  dispatch_source_cancel(*(this + 12));
  dispatch_sync(*(this + 10), &__block_literal_global);
  v2 = MEMORY[0x277D85F48];
  mach_port_mod_refs(*MEMORY[0x277D85F48], *(this + 22), 1u, -1);
  mach_port_deallocate(*v2, *(this + 22));
  v3 = *(this + 12);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    dispatch_release(v4);
  }
}

{
  caulk::concurrent::details::dispatch_receiver::~dispatch_receiver(this);

  JUMPOUT(0x277C78AD0);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::remove(unint64_t a1, uint64_t a2)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v17 = a2;
  v4 = -1;
  v5 = 56;
  do
  {
    v6 = atomic_load((a1 + v5));
    ++v4;
    v5 += 16;
  }

  while (*((v6 & 0xFFFFFFFFFFFFFFFCLL) + 26) != 2);
  v7 = a1;
  if (v4)
  {
    v7 = a1;
    do
    {
      v7 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v4--, v7, &v17);
    }

    while (v4);
  }

  v8 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v7, &v17);
  v10 = *(v9 + 16);
  if (v10 == a2)
  {
    v12 = v9;
    v13 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v8, v9);
    v15 = v14;
    if (!v14)
    {
      caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v13, v12);
    }

    v11 = 0;
    if ((v15 & 0x100000000) != 0 && v12)
    {
      v17 = a2;
      caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v17, 0);
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 256, v10);
  return v11;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 40));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    do
    {
      v10 = atomic_load((v6 + 40));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 40));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  return v4;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 40);
  atomic_store(a3, (v8 + 48));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 40), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 27), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 32));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 32));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 40);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 48));
        v13 = atomic_load((a3 + 16 * a2 + 40));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 16);
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 40));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 16))
      {
        break;
      }

      v17 = atomic_load((v16 + 40));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = atomic_load((v2 + 32));
      v5 = *(v3 + 32);
      if (*(v5 + 32) == 1 && !*(v2 + 26))
      {
        (*v5)(v3 + 40, v2);
      }

      result = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(v3 + 16), v2, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v2 + 24) - 8]);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (*&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v4] < a3)
  {
    if (++v4 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

void caulk::mach::vm_block::dealloc(caulk::mach::vm_block *this, size_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = munmap(this, a2);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_error_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "munmap failed! %d", v5, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void caulk::ipc::synchronous_messenger::semaphore_receiver::stop(caulk::ipc::synchronous_messenger::semaphore_receiver *this, double a2)
{
  if (*(this + 3))
  {
    if (*(this + 6))
    {
      if (*(this + 16))
      {
        v3 = (this + 72);
        if (*(this + 18))
        {
          *(this + 184) = 1;
          __dmb(0xBu);
          caulk::mach::semaphore::signal_or_error((this + 72));
          caulk::mach::semaphore::timed_wait_or_error(this + 20, a2, v5);
          std::string::basic_string[abi:ne200100]<0>(&__p, "semaphore_receiver::stop: wait out the receiver semaphore to clear things out for next time R-1");
          v6 = 0;
          v7 = CFNumberGetTypeID;
          do
          {
            v8 = caulk::mach::semaphore::timed_wait_or_error(v3, 0.000001, v7);
            v7 = HIDWORD(v8);
            if ((v6 ^ BYTE4(v8)))
            {
              v6 = BYTE4(v8);
            }
          }

          while ((v8 & 1) != 0 && (v6 & 1) != 0);
          __dmb(9u);
          if (v10 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

unint64_t caulk::mach::thread::get_name@<X0>(_opaque_pthread_t *this@<X0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v4 = pthread_getname_np(this, v8, 0x100uLL);
  check_posix_error("pthread_getname_np failed", v4);
  result = strlen(v8);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v8, result);
  }

  a2[v6] = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t check_posix_error(uint64_t result, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    v4 = *__error();
    v5 = std::generic_category();
    MEMORY[0x277C788B0](v9, v4, v5, v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = std::runtime_error::what(v9);
      *buf = 136315138;
      v11 = v6;
      _os_log_error_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v8 = std::runtime_error::runtime_error(exception, v9);
    v8->__vftable = (MEMORY[0x277D82840] + 16);
    v8[1] = v9[1];
    __cxa_throw(v8, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27A64B408, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t caulk::mach::thread::get_qos_class(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  *__qos_class = 21;
  qos_class_np = pthread_get_qos_class_np(this, __qos_class, &__qos_class[1]);
  check_posix_error("pthread_get_qos_class_np failed", qos_class_np);
  return *__qos_class;
}

uint64_t *caulk::alloc::get_default_resource(caulk::alloc *this)
{
  {
    caulk::alloc::get_default_resource(void)::global = &unk_28841B850;
  }

  return &caulk::alloc::get_default_resource(void)::global;
}

uint64_t caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>::print(caulk::alloc::malloc_allocator *a1, uint64_t a2, int a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  v9 = 0;
  result = caulk::alloc::malloc_allocator::describe(a1, &v7);
  if (a3)
  {
    v10[0] = &unk_28841B8F8;
    v10[1] = a2;
    v10[3] = v10;
    result = std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_16malloc_allocatorENS0_15memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}