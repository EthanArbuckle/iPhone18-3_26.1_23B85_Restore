uint64_t caulk::alloc::describe_block(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) > 3)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_27A64B448[a2 - 1];
  }

  v7 = MEMORY[0x277C78960](a1, a3);
  v16 = 58;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v16, 1);
  v9 = MEMORY[0x277C78960](v8, a3 + a4 - 1);
  v17 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v17, 1);
  v10 = strlen(v6);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v6, v10);
  v18 = 32;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v18, 1);
  v13 = MEMORY[0x277C78990](v12, a4);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v19);
  std::ostream::put();
  return std::ostream::flush();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277C78930](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277C78940](v20);
  return a1;
}

void sub_2754AAAF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x277C78940](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2754AAACCLL);
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841B8F8;
  a2[1] = v2;
  return result;
}

void *caulk::alloc::resource<caulk::alloc::malloc_allocator,caulk::alloc::memory_resource>::do_allocate(caulk::alloc::malloc_allocator *a1, size_t a2, size_t a3)
{
  result = caulk::alloc::malloc_allocator::allocate(a1, a2, a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v5, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return result;
}

uint64_t caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>::print(uint64_t a1, uint64_t a2, int a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  v9 = 0;
  result = caulk::alloc::malloc_zone_allocator::describe((a1 + 8), &v7);
  if (a3)
  {
    v10[0] = &unk_28841B9B0;
    v10[1] = a2;
    v10[3] = v10;
    result = std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_21malloc_zone_allocatorENS0_15memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841B9B0;
  a2[1] = v2;
  return result;
}

void *caulk::alloc::resource<caulk::alloc::malloc_zone_allocator,caulk::alloc::memory_resource>::do_allocate(uint64_t a1, size_t a2, size_t a3)
{
  result = caulk::alloc::malloc_zone_allocator::allocate((a1 + 8), a2, a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v5, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return result;
}

void caulk::alloc::resource_with_zone<caulk::alloc::malloc_zone_allocator>::~resource_with_zone(uint64_t a1)
{
  caulk::alloc::malloc_zone_allocator::~malloc_zone_allocator((a1 + 8));

  JUMPOUT(0x277C78AD0);
}

uint64_t caulk::alloc::get_realtime_safe_resource(caulk::alloc *this)
{
  result = caulk::alloc::realtime_safe_resource;
  if (!caulk::alloc::realtime_safe_resource)
  {
    caulk::alloc::init_realtime_safe_resource(0);
    return caulk::alloc::realtime_safe_resource;
  }

  return result;
}

void ___ZN5caulk5allocL26registerAllocatorStateDumpEPNS0_15memory_resourceEPKcS4__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v24, "/tmp/");
  v2 = strlen(*(a1 + 32));
  v3 = std::string::append(&v24, *(a1 + 32), v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = getpid();
  std::to_string(&v19, v5);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v22, v6, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v23[6] = 0;
  v10 = MEMORY[0x277D82860] + 64;
  v23[0] = MEMORY[0x277D82860] + 64;
  v11 = MEMORY[0x277D82810];
  v12 = *(MEMORY[0x277D82810] + 16);
  v22.__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
  *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = v12;
  v13 = (&v22 + *(v22.__r_.__value_.__r.__words[0] - 24));
  std::ios_base::init(v13, &v22.__r_.__value_.__r.__words[1]);
  v14 = MEMORY[0x277D82860] + 24;
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v22.__r_.__value_.__r.__words[0] = v14;
  v23[0] = v10;
  MEMORY[0x277C788E0](&v22.__r_.__value_.__r.__words[1]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((&v22 + *(v22.__r_.__value_.__r.__words[0] - 24)), *(&v22 + *(v22.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
  }

  v15 = (*(**(a1 + 40) + 48))(*(a1 + 40), &v22, 0);
  caulk::alloc::base_allocator::log(v15);
  v16 = caulk::alloc::base_allocator::log(void)::global;
  if (os_log_type_enabled(caulk::alloc::base_allocator::log(void)::global, OS_LOG_TYPE_DEFAULT))
  {
    v17 = __p;
    if (v21 < 0)
    {
      v17 = __p[0];
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 136315138;
    *(v24.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&dword_27549C000, v16, OS_LOG_TYPE_DEFAULT, "Wrote %s", &v24, 0xCu);
  }

  v22.__r_.__value_.__r.__words[0] = *v11;
  *(v22.__r_.__value_.__r.__words + *(v22.__r_.__value_.__r.__words[0] - 24)) = v11[3];
  MEMORY[0x277C788F0](&v22.__r_.__value_.__r.__words[1]);
  std::ostream::~ostream();
  MEMORY[0x277C78A50](v23);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2754AB3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::ofstream::~ofstream(&a23);
  MEMORY[0x277C78A50](v28);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x277C788F0](a1 + 1);

  return std::ostream::~ostream();
}

void std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](uint64_t a1)
{
  malloc_zone_unregister((a1 + 8));

  JUMPOUT(0x277C78AD0);
}

uint64_t caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator(uint64_t a1)
{
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 304);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 16);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 304);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 464));
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 16);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 176));
  return a1;
}

uint64_t caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator(uint64_t a1)
{
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 304);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 16);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 304);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 464));
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 16);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 176));
  return a1;
}

uint64_t caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator(uint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  for (i = atomic_load((a1 + 56)); ; i = atomic_load((v3 + 40)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 216 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 26) != 2)
    {
      v4 = atomic_load((v3 + 40));
      if ((v4 & 1) == 0)
      {
        caulk::alloc::details::caching_page_allocator_base::deallocate(*a1, *(v3 + 16), *v3);
      }
    }
  }

  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 272, i);
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::clear(a1 + 16);
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::clear(a1 + 16);
  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(a1 + 272);
  return a1;
}

uint64_t caulk::alloc::dsw_allocator2<true>::~dsw_allocator2()
{
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator(&unk_280AD9A60);
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator(&unk_280AD9800);

  return caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator(&qword_280AD96A0);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::optional<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::iteration>::~optional(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(*(a1 + 8), v2);
  }

  return a1;
}

uint64_t *caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::introspect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a3 & 4) != 0)
  {
    std::function<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(*(a3 + 64), 4, a2, 240);
  }

  return caulk::alloc::detail::state_bit_span::introspect((a1 + 8), 2, (a2 + 240), a3, 0x100u, 0x3Fu);
}

uint64_t std::optional<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::iteration>::~optional(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(*(a1 + 8), v2);
  }

  return a1;
}

uint64_t std::__function::__func<void * (*)(unsigned long,unsigned long),std::allocator<void * (*)(unsigned long,unsigned long)>,void * ()(unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000002754C055BLL))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_15darwin_resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvSA_NS0_5blockEEEEEUlSA_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc20allocator_statisticsINS0_15darwin_resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEEEEE19malloc_statistics_tRT_EUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(uint64_t result, int *a2, uint64_t a3)
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

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C238;
  a2[1] = v2;
  return result;
}

void caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28841C0B8;
  v5[1] = a5;
  v5[2] = a1;
  v5[3] = v5;
  operator new();
}

void sub_2754ABCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 1)
  {
    v17 = *(__cxa_begin_catch(a1) + 4);
    __cxa_end_catch();
    JUMPOUT(0x2754ABCB0);
  }

  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v15 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEE14zone_enumerateEjPvjmPFijmmPS6_EPFvjS6_jP10vm_range_tjEEUlNS0_12region_usageEmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(uint64_t a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v7[0] = *a3;
  v7[1] = v5;
  return (*(a1 + 8))(*(a1 + 16), *(a1 + 24), v4, v7, 1);
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841C138;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEE14zone_enumerateEjPvjmPFijmmPS6_EPFvjS6_jP10vm_range_tjEEUlmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v7 = 0;
  v5 = (*(a1 + 8))(*(a1 + 16), v3, v4, &v7);
  caulk::mach::throw_if_mach_error("reader failed", v5);
  return v7;
}

void caulk::mach::error_category::message(caulk::mach::error_category *this@<X0>, mach_error_t a2@<W1>, std::string *a3@<X8>)
{
  v5 = (*(*this + 16))(this);
  std::string::basic_string[abi:ne200100]<0>(&v11, v5);
  v6 = std::string::append(&v11, ": ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = mach_error_string(a2);
  v9 = strlen(v8);
  v10 = std::string::append(&v12, v8, v9);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2754AC080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C78AD0);
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841C0B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

unint64_t caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>::size(uint64_t a1, unint64_t a2)
{
  if (a1 + 240 > a2)
  {
    return 0;
  }

  v4 = a2 - (a1 + 240);
  if ((v4 >> 8) > 0x3EuLL)
  {
    return 0;
  }

  v6[2] = v2;
  v6[3] = v3;
  v6[0] = a1 + 8;
  v6[1] = 2;
  return caulk::alloc::detail::state_bit_span::allocatedSlotsAtIndex(v6, v4 >> 8) << 8;
}

void *caulk::alloc::detail::state_bit_span::allocatedSlotsAtIndex(void *this, unsigned int a2)
{
  v2 = a2 >> 5;
  if (this[1] <= v2)
  {
    __break(1u);
    return this;
  }

  v3 = (*this + 8 * v2);
  v4 = atomic_load(v3);
  v5 = a2 & 0x1F;
  if ((((1 << (a2 & 0x1F | 0x20)) | (1 << (a2 & 0x1F))) & ~v4) != 0)
  {
    return 0;
  }

  LODWORD(v6) = 0;
  v7 = v3 + 1;
  for (i = 1; ; i = 0)
  {
    v9 = i + v5;
    if ((i + v5) > 0x1F)
    {
      goto LABEL_7;
    }

    v10 = ~v4 >> v9;
    if (v10)
    {
      break;
    }

    if (HIDWORD(v4) >> v9)
    {
      return (i + v6 + __clz(__rbit32(HIDWORD(v4) >> v9)));
    }

LABEL_7:
    v6 = (v6 - v5 + 32);
    if (v7 == (*this + 8 * this[1]))
    {
      return v6;
    }

    v5 = 0;
    v4 = atomic_load(v7++);
  }

  v11 = __clz(__rbit32(v10)) + v9;
  v12 = v6 - v5;
  v13 = v12 + v11;
  v14 = __clz(__rbit32(HIDWORD(v4) >> v9)) + v9;
  if (v14 < v11)
  {
    v11 = v14;
  }

  LODWORD(v6) = v12 + v11;
  if (HIDWORD(v4) >> v9)
  {
    return v6;
  }

  else
  {
    return v13;
  }
}

uint64_t caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>::size(uint64_t a1, unint64_t a2)
{
  if (a1 + 272 > a2)
  {
    return 0;
  }

  v4 = a2 - (a1 + 272);
  if (((v4 >> 5) & 0x7FFFFFFF) > 0x1F6)
  {
    return 0;
  }

  v6[2] = v2;
  v6[3] = v3;
  v6[0] = a1 + 8;
  v6[1] = 32;
  return 16 * caulk::alloc::detail::state_bit_span::allocatedSlotsAtIndex(v6, v4 >> 4);
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  for (i = atomic_load((a1 + 32)); ; i = atomic_load((v3 + 32)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 112 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 18) != 2)
    {
      v4 = atomic_load((v3 + 32));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1, *v3);
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 160, i);
}

void *caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator(void *a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::free_node_chain(a1, _X2);
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1);
  (*(a1[9] + 24))(a1 + 10);
  (*(a1[4] + 24))(a1 + 5);
  v9 = a1[3];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::vtable(void)::{lambda(void *,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&)#1}::__invoke()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 5);

  caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

void caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v3 = atomic_load(v1);
      caulk::alloc::details::caching_page_allocator_base::deallocate(*(a1 + 8), v1, *(v1 + 8));
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(uint64_t result, unint64_t a2, uint64_t a3)
{
  atomic_fetch_add((result + 36), 0x801u);
  v3 = *(result + 16);
  if (v3)
  {
    while ((v3 + 4) > a2 || a2 + a3 > (v3 + 2048))
    {
      v3 = atomic_load(v3);
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v3 = atomic_load((result + 40));
    if (v3)
    {
      v5 = (v3 + 4) > a2;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || a2 + a3 > (v3 + 2048))
    {
      caulk::alloc::base_allocator::bad_dealloc(result);
    }
  }

  if ((v3 + 4) > a2 || a2 + a3 > (v3 + 2048))
  {
    caulk::alloc::base_allocator::bad_dealloc(result);
  }

  atomic_fetch_add((result + 36), 0xFFFFFFFF);
  return result;
}

void caulk::alloc::base_allocator::bad_dealloc(caulk::alloc::base_allocator *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  caulk::alloc::alloc_error::alloc_error(exception, v2);
}

std::runtime_error *caulk::alloc::alloc_error::alloc_error(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, "deallocate() called for unowned block");
  result->__vftable = &unk_28841A948;
  return result;
}

void caulk::alloc::alloc_error::~alloc_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x277C78AD0);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841BFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  for (i = atomic_load((a1 + 32)); ; i = atomic_load((v3 + 32)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 112 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 18) != 2)
    {
      v4 = atomic_load((v3 + 32));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1, *v3);
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 160, i);
}

void *caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator(void *a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::free_node_chain(a1, _X2);
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1);
  (*(a1[9] + 24))(a1 + 10);
  (*(a1[4] + 24))(a1 + 5);
  v9 = a1[3];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(unint64_t a1, uint64_t a2)
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

void caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::vtable(void)::{lambda(void *,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&)#1}::__invoke()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 5);

  caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841BF00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 10);

  caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841BE88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

unint64_t caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  for (i = atomic_load((a1 + 40)); ; i = atomic_load((v3 + 40)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 200 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 26) != 2)
    {
      v4 = atomic_load((v3 + 40));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::remove(a1, *(v3 + 16));
      }
    }
  }

  return caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 256, i);
}

unint64_t caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(unint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(a1, _X2);
  }

  (*(*(a1 + 32) + 24))(a1 + 40);
  v9 = *(a1 + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

unint64_t caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::compact(uint64_t a1, unint64_t a2)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v4 = atomic_load((a1 + 1312));
  v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  if (a1 + 1392 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*(v5 + 18) != 2)
      {
        v7 = atomic_load((v5 + 32));
        if ((v7 & 1) == 0)
        {
          v8 = *(v5 + 8);
          if ((atomic_exchange(v8, 1u) & 1) == 0)
          {
            v9 = atomic_load((v8 + 16));
            if (v9 == 1006)
            {
              v6 += *(v8 + 8);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1280, *v5);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 992, *v5);
              if (a2 - 1 < v6)
              {
                break;
              }
            }

            else
            {
              atomic_store(0, v8);
            }
          }
        }
      }

      v4 = atomic_load((v5 + 32));
      v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (a1 + 1392 != (v4 & 0xFFFFFFFFFFFFFFFCLL));
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1440, v4);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1 + 1152);
  if (a2 - 1 >= v6)
  {
    if (a2 >= v6)
    {
      v10 = a2 - v6;
    }

    else
    {
      v10 = 0;
    }

    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
    v11 = atomic_load((a1 + 704));
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 784 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        if (*(v12 + 18) != 2)
        {
          v14 = atomic_load((v12 + 32));
          if ((v14 & 1) == 0)
          {
            v15 = *(v12 + 8);
            if ((atomic_exchange(v15, 1u) & 1) == 0)
            {
              v16 = atomic_load((v15 + 16));
              if (v16 == 63)
              {
                v13 += *(v15 + 8);
                caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 672, *v12);
                caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 384, *v12);
                if (v10 - 1 < v13)
                {
                  break;
                }
              }

              else
              {
                atomic_store(0, v15);
              }
            }
          }
        }

        v11 = atomic_load((v12 + 32));
        v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      }

      while (a1 + 784 != (v11 & 0xFFFFFFFFFFFFFFFCLL));
    }

    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 832, v11);
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1 + 544);
    if (v10 - 1 >= v13)
    {
      if (v10 >= v13)
      {
        v17 = v10 - v13;
      }

      else
      {
        v17 = 0;
      }

      v13 += caulk::alloc::details::caching_page_allocator_base::compact(*(a1 + 16), v17);
    }

    v6 += v13;
  }

  return v6;
}

uint64_t caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28841BD88;
  v7[1] = a3;
  v7[3] = v7;
  v8 = a2;
  v9[0] = &unk_28841AE20;
  v9[1] = caulk::alloc::introspector::local_reader;
  v10 = v9;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v11, v7);
  v11[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v7);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v10, a1, 1584);
  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::introspect(v4 + 16, a1, &v8);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v11);
  result = std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v9);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754AD128(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_8resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvSA_NS0_5blockEEEEEUlSA_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841BD88;
  a2[1] = v2;
  return result;
}

void caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::print(unint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v28 = 0;
  v29 = 0;
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "dsw_allocator2 @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, a1 + 16);
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  v40.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, &v40, 1);
  v28 += 2;
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "[tier ");
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "sizes ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "-");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 1008);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "] ");
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "tree_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, a1 + 976);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
  v2 = a1;
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v3 = atomic_load((a1 + 1024));
  v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  if (v2 + 1104 != (v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    do
    {
      if (*(v4 + 18) != 2)
      {
        v5 = atomic_load((v4 + 32));
        if ((v5 & 1) == 0)
        {
          v6 = *(v4 + 8);
          v7 = atomic_load((v6 + 4));
          std::string::basic_string[abi:ne200100]<0>(&v39, "availability ");
          std::to_string(&v38, v7);
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v38;
          }

          else
          {
            v8 = v38.__r_.__value_.__r.__words[0];
          }

          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v38.__r_.__value_.__l.__size_;
          }

          v10 = std::string::append(&v39, v8, size);
          v40 = *v10;
          v10->__r_.__value_.__l.__size_ = 0;
          v10->__r_.__value_.__r.__words[2] = 0;
          v10->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(&v27, &v40, v6 + 16);
        }
      }

      v11 = atomic_load((v4 + 32));
      v4 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (a1 + 1104 != (v11 & 0xFFFFFFFFFFFFFFFCLL));
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1152, a1);
  v28 += 2;
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, " nodes, total capacity ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ", free capacity ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
  v28 -= 2;
  std::string::basic_string[abi:ne200100]<0>(&v40, "super");
  caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::global_page_cache>(&v27, &v40, (a1 + 984));
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  caulk::alloc::base_allocator::formatter::emit_string(&v27, "[tier ");
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "sizes ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 1009);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "-");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 16128);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "] ");
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "tree_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, a1 + 368);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
  v12 = a1;
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v13 = atomic_load((a1 + 416));
  v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  if (v12 + 496 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_40:
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 544, a1);
    v28 += 2;
    caulk::alloc::base_allocator::formatter::check_line_start(&v27);
    MEMORY[0x277C78990](v27, 0);
    caulk::alloc::base_allocator::formatter::emit_string(&v27, " nodes, total capacity ");
    caulk::alloc::base_allocator::formatter::check_line_start(&v27);
    MEMORY[0x277C78990](v27, 0);
    caulk::alloc::base_allocator::formatter::emit_string(&v27, ", free capacity ");
    caulk::alloc::base_allocator::formatter::check_line_start(&v27);
    MEMORY[0x277C78990](v27, 0);
    caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
    v28 -= 2;
    std::string::basic_string[abi:ne200100]<0>(&v40, "super");
    caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::global_page_cache>(&v27, &v40, (a1 + 376));
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    caulk::alloc::base_allocator::formatter::emit_string(&v27, "[tier] ");
    caulk::alloc::base_allocator::formatter::emit_string(&v27, "[tracking @ ");
    caulk::alloc::base_allocator::formatter::check_line_start(&v27);
    MEMORY[0x277C78960](v27, a1 + 16);
    caulk::alloc::base_allocator::formatter::emit_string(&v27, "] ");
    caulk::alloc::global_page_cache::describe((a1 + 16), &v27);
    v28 += 2;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = &v35;
    v31 = 0;
    v32 = 0;
    operator new();
  }

  while (1)
  {
    if (*(v14 + 18) != 2)
    {
      v15 = atomic_load((v14 + 32));
      if ((v15 & 1) == 0)
      {
        break;
      }
    }

    v23 = atomic_load((v14 + 32));
    v14 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 496 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_40;
    }
  }

  v16 = *(v14 + 8);
  v17 = atomic_load(v16 + 1);
  std::string::basic_string[abi:ne200100]<0>(&v40, "availability ");
  std::to_string(&v39, v17);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v39.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v40, v18, v19);
  v21 = v20->__r_.__value_.__l.__size_;
  __s = v20->__r_.__value_.__r.__words[0];
  LODWORD(v31) = v20->__r_.__value_.__r.__words[2];
  *(&v31 + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
  v26 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v28 += 2;
  if (v26 < 0)
  {
    if (!v21)
    {
      goto LABEL_38;
    }

    std::string::__init_copy_ctor_external(&v30, __s, v21);
  }

  else
  {
    if (!v26)
    {
      goto LABEL_38;
    }

    v30.__r_.__value_.__r.__words[0] = __s;
    v30.__r_.__value_.__l.__size_ = v21;
    LODWORD(v30.__r_.__value_.__r.__words[2]) = v31;
    *(&v30.__r_.__value_.__r.__words[2] + 3) = *(&v31 + 3);
    *(&v30.__r_.__value_.__s + 23) = v26;
  }

  caulk::alloc::base_allocator::formatter::operator<<<std::string>(&v27, &v30);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ": ");
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_38:
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "bitmap_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, v16 + 4);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ", block size ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 16368);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ", slot size ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 256);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ", ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 63);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, " slots, ");
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "max size ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78990](v27, 0x4000);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ", memory ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, v16 + 64);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, ":");
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78960](v27, v16 + 4096);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
  v28 += 2;
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "state bits:  ");
  caulk::alloc::base_allocator::formatter::hexdump(&v27, v16 + 6, 0x10uLL);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "search hint: ");
  v22 = atomic_load(v16 + 5);
  caulk::alloc::base_allocator::formatter::check_line_start(&v27);
  MEMORY[0x277C78980](v27, v22);
  caulk::alloc::base_allocator::formatter::emit_string(&v27, "\n");
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = &v35;
  v37 = 0;
  v32 = 0;
  operator new();
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_14dsw_allocator2ILb1EEENS0_23rt_safe_memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNS9_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>>(caulk::alloc::resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841BE08;
  a2[1] = v2;
  return result;
}

void *caulk::alloc::base_allocator::formatter::emit_string(void *this, char *a2)
{
  if (*a2)
  {
    v2 = a2;
    v3 = this;
    while (1)
    {
      caulk::alloc::base_allocator::formatter::check_line_start(v3);
      v4 = strchr(v2, 10);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = v4 + 1;
      v7 = *v3;
      this = std::ostream::write();
      *(v3 + 12) = 1;
      v2 = v6;
      if (!v5[1])
      {
        return this;
      }
    }

    v8 = strlen(v2);
    v9 = *v3;

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v2, v8);
  }

  return this;
}

void *caulk::alloc::base_allocator::formatter::check_line_start(void *this)
{
  if (*(this + 12) == 1)
  {
    v8 = v1;
    v9 = v2;
    v3 = this;
    v4 = *(this + 2);
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      do
      {
        v6 = *v3;
        v7 = 32;
        this = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v7, 1);
        --v5;
      }

      while (v5 > 1);
    }

    *(v3 + 12) = 0;
  }

  return this;
}

void *caulk::alloc::global_page_cache::describe(caulk::alloc::details::caching_page_allocator_base **this, caulk::alloc::base_allocator::formatter *a2)
{
  caulk::alloc::base_allocator::formatter::emit_string(a2, "[global] ");
  caulk::alloc::base_allocator::formatter::emit_string(a2, "[ref] ");
  v4 = *this;

  return caulk::alloc::details::caching_page_allocator_base::describe(v4, a2);
}

void std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_18tracking_allocatorINS0_17global_page_cacheEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS8_NS0_5blockEEEEEUlS8_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841AC10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc14base_allocator9formatter24summarize_blocks_by_sizeINS0_18tracking_allocatorINS0_17global_page_cacheEEEEEvRT_mEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(void *result, int *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v4 = result;
    v5 = result + 1;
    v6 = *(a3 + 8);
    v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = (v6 >> 4) & 0x1FFFFFFFFFFFFFFLL;
    if (v7 <= 0xF423F)
    {
      v9 = ((v7 + 1023) >> 10) | 0x2000000000000000;
    }

    else
    {
      v9 = ((v7 + 0xFFFFF) >> 20) | 0x4000000000000000;
    }

    if (v8 >= 0x271)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *v5;
    v13[0] = v10 | ((v3 == 2) << 63);
    v13[1] = v13;
    result = std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v11, v13[0]);
    ++*(result + 10);
    if (v3 == 2)
    {
      v12 = 3;
    }

    else
    {
      ++*v4[2];
      v12 = 2;
    }

    *v5[v12] += v7;
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

__n128 std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>(caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841AD18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::global_page_cache>(caulk::alloc::base_allocator::formatter *a1, uint64_t a2, caulk::alloc::details::caching_page_allocator_base **this)
{
  *(a1 + 2) += 2;
  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_8;
    }

    std::string::__init_copy_ctor_external(&__p, *a2, v5);
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_8;
    }

    __p = *a2;
  }

  caulk::alloc::base_allocator::formatter::operator<<<std::string>(a1, &__p);
  caulk::alloc::base_allocator::formatter::emit_string(a1, ": ");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_8:
  result = caulk::alloc::global_page_cache::describe(this, a1);
  *(a1 + 2) -= 2;
  return result;
}

void sub_2754AEB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *caulk::alloc::base_allocator::formatter::operator<<<std::string>(void *a1, uint64_t a2)
{
  caulk::alloc::base_allocator::formatter::check_line_start(a1);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v5, v6);
  return a1;
}

void *caulk::alloc::base_allocator::formatter::hexdump(caulk::alloc::base_allocator::formatter *this, unsigned int *a2, unint64_t a3)
{
  v5 = a3 >> 2;
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  v6 = *this + *(**this - 24);
  *(v6 + 8) = *(v6 + 8) & 0xFFFFFFB5 | 8;
  caulk::alloc::base_allocator::formatter::operator<<<std::__iom_t4<char>>(this, 48);
  v7 = v5 + 1;
  do
  {
    caulk::alloc::base_allocator::formatter::check_line_start(this);
    v8 = *this;
    v13 = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v13, 1);
    caulk::alloc::base_allocator::formatter::check_line_start(this);
    *(*this + *(**this - 24) + 24) = 8;
    v9 = *a2++;
    caulk::alloc::base_allocator::formatter::check_line_start(this);
    MEMORY[0x277C78970](*this, v9);
    --v7;
  }

  while (v7 > 1);
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  v10 = *this + *(**this - 24);
  *(v10 + 8) = *(v10 + 8) & 0xFFFFFFB5 | 2;
  v11 = caulk::alloc::base_allocator::formatter::operator<<<std::__iom_t4<char>>(this, 32);
  return caulk::alloc::base_allocator::formatter::emit_string(v11, "\n");
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_16bitmap_allocatorINS0_18embed_block_memoryELm16368ELm256ELm6EEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS8_NS0_5blockEEEEEUlS8_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841BC88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc14base_allocator9formatter24summarize_blocks_by_sizeINS0_16bitmap_allocatorINS0_18embed_block_memoryELm16368ELm256ELm6EEEEEvRT_mEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(void *result, int *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v4 = result;
    v5 = result + 1;
    v6 = *(a3 + 8);
    v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = (v6 >> 4) & 0x1FFFFFFFFFFFFFFLL;
    if (v7 <= 0xF423F)
    {
      v9 = ((v7 + 1023) >> 10) | 0x2000000000000000;
    }

    else
    {
      v9 = ((v7 + 0xFFFFF) >> 20) | 0x4000000000000000;
    }

    if (v8 >= 0x271)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *v5;
    v13[0] = v10 | ((v3 == 2) << 63);
    v13[1] = v13;
    result = std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v11, v13[0]);
    ++*(result + 10);
    if (v3 == 2)
    {
      v12 = 3;
    }

    else
    {
      ++*v4[2];
      v12 = 2;
    }

    *v5[v12] += v7;
  }

  return result;
}

__n128 std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,256ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841BD08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *caulk::alloc::base_allocator::formatter::operator<<<std::__iom_t4<char>>(void *a1, int a2)
{
  caulk::alloc::base_allocator::formatter::check_line_start(a1);
  v4 = *a1 + *(**a1 - 24);
  if (*(v4 + 144) == -1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 144) = v6;
  }

  *(v4 + 144) = a2;
  return a1;
}

void caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::base_allocator::formatter *this, uint64_t a2, uint64_t a3)
{
  v12[20] = *MEMORY[0x277D85DE8];
  *(this + 2) += 2;
  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_8;
    }

    std::string::__init_copy_ctor_external(&__p, *a2, v5);
  }

  else
  {
    if (!*(a2 + 23))
    {
      goto LABEL_8;
    }

    __p = *a2;
  }

  caulk::alloc::base_allocator::formatter::operator<<<std::string>(this, &__p);
  caulk::alloc::base_allocator::formatter::emit_string(this, ": ");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_8:
  caulk::alloc::base_allocator::formatter::emit_string(this, "bitmap_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78960](*this, a3);
  caulk::alloc::base_allocator::formatter::emit_string(this, ", block size ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78990](*this, 16368);
  caulk::alloc::base_allocator::formatter::emit_string(this, ", slot size ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78990](*this, 16);
  caulk::alloc::base_allocator::formatter::emit_string(this, ", ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78990](*this, 1006);
  caulk::alloc::base_allocator::formatter::emit_string(this, " slots, ");
  caulk::alloc::base_allocator::formatter::emit_string(this, "max size ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78990](*this, 1024);
  caulk::alloc::base_allocator::formatter::emit_string(this, ", memory ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78960](*this, a3 + 272);
  caulk::alloc::base_allocator::formatter::emit_string(this, ":");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78960](*this, a3 + 16368);
  caulk::alloc::base_allocator::formatter::emit_string(this, "\n");
  *(this + 2) += 2;
  caulk::alloc::base_allocator::formatter::emit_string(this, "state bits:  ");
  caulk::alloc::base_allocator::formatter::hexdump(this, (a3 + 8), 0x100uLL);
  caulk::alloc::base_allocator::formatter::emit_string(this, "search hint: ");
  v6 = atomic_load((a3 + 4));
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78980](*this, v6);
  caulk::alloc::base_allocator::formatter::emit_string(this, "\n");
  v12[0] = 0;
  v12[1] = 0;
  v10 = 0;
  v11 = v12;
  v8 = 0;
  v9 = 0;
  operator new();
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_16bitmap_allocatorINS0_18embed_block_memoryELm16368ELm16ELm6EEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS8_NS0_5blockEEEEEUlS8_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841BB88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc14base_allocator9formatter24summarize_blocks_by_sizeINS0_16bitmap_allocatorINS0_18embed_block_memoryELm16368ELm16ELm6EEEEEvRT_mEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(void *result, int *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v4 = result;
    v5 = result + 1;
    v6 = *(a3 + 8);
    v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = (v6 >> 4) & 0x1FFFFFFFFFFFFFFLL;
    if (v7 <= 0xF423F)
    {
      v9 = ((v7 + 1023) >> 10) | 0x2000000000000000;
    }

    else
    {
      v9 = ((v7 + 0xFFFFF) >> 20) | 0x4000000000000000;
    }

    if (v8 >= 0x271)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *v5;
    v13[0] = v10 | ((v3 == 2) << 63);
    v13[1] = v13;
    result = std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v11, v13[0]);
    ++*(result + 10);
    if (v3 == 2)
    {
      v12 = 3;
    }

    else
    {
      ++*v4[2];
      v12 = 2;
    }

    *v5[v12] += v7;
  }

  return result;
}

__n128 std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841BC08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::do_deallocate(uint64_t a1, caulk::mach::vm_block *a2, unint64_t a3)
{
  v6 = *(a1 + 1600);
  if (v6)
  {
    v6(12, *(a1 + 1584) + 8, a2, 0, 0, 0);
  }

  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::deallocate(a1 + 16, a2, a3);
}

unint64_t *caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::emplace<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>(unint64_t *result, unint64_t a2, void *a3)
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
      caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine();
      value = caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::next_value(&caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::random_engine(void)::engine);
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

atomic_uint *caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::do_allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,16128ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>>,caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>>::allocate(a1 + 16, a2, a3);
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v10, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v6 = v5;
  v7 = *(a1 + 1600);
  if (v7)
  {
    v7(10, *(a1 + 1584) + 8, a2, 0, v5, 0);
  }

  return v6;
}

void caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841BA80;
  v2 = a1[198];
  a1[198] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator((a1 + 122));
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator((a1 + 46));
  caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator((a1 + 2));

  JUMPOUT(0x277C78AD0);
}

void *caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841BA80;
  v2 = a1[198];
  a1[198] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator((a1 + 122));
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator((a1 + 46));
  caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator((a1 + 2));
  return a1;
}

void caulk::alloc::exported_resource<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>,caulk::alloc::rt_safe_memory_resource,caulk::rt_safe_memory_resource>::~exported_resource(std::pmr::memory_resource *a1)
{
  *a1 = &unk_28841BA30;
  *(a1 + 2) = &unk_28841BA80;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator(a1 + 992);
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator(a1 + 384);
  caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator(a1 + 32);
  std::pmr::memory_resource::~memory_resource(a1);

  JUMPOUT(0x277C78AD0);
}

{
  *a1 = &unk_28841BA30;
  *(a1 + 2) = &unk_28841BA80;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::dsw_allocator2<true>,caulk::alloc::rt_safe_memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::~tree_allocator(a1 + 992);
  caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,256ul,6ul>>::~tree_allocator(a1 + 384);
  caulk::alloc::tracking_allocator<caulk::alloc::global_page_cache>::~tracking_allocator(a1 + 32);

  std::pmr::memory_resource::~memory_resource(a1);
}

void sub_2754B007C(_Unwind_Exception *a1)
{
  std::pmr::memory_resource::~memory_resource(v1);
  MEMORY[0x277C78AD0]();
  _Unwind_Resume(a1);
}

uint64_t caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::~tracking_allocator(uint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v2 = atomic_load((a1 + 56));
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  if (a1 + 216 != (v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    v4 = MEMORY[0x277D85FA0];
    do
    {
      if (*(v3 + 26) != 2)
      {
        v5 = atomic_load((v3 + 40));
        if ((v5 & 1) == 0)
        {
          caulk::mach::vm_block::dealloc(*(v3 + 16), (*v3 + *v4 - 1) & -*v4);
        }
      }

      v2 = atomic_load((v3 + 40));
      v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (a1 + 216 != (v2 & 0xFFFFFFFFFFFFFFFCLL));
  }

  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 272, v2);
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::clear(a1 + 16);
  caulk::concurrent::skiplist<void *,caulk::alloc::detail::tracked_block,10,(caulk::concurrent::skiplist_options)0>::clear(a1 + 16);
  caulk::concurrent::details::node_allocator<void *,caulk::alloc::detail::tracked_block,10ul,(caulk::concurrent::skiplist_options)0>::~node_allocator(a1 + 272);
  return a1;
}

uint64_t caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(uint64_t a1)
{
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 1088);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 800);
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 1088);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 1248));
  caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(a1 + 800);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator((a1 + 960));
  std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::destroy(*(a1 + 736));
  caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::~tracking_allocator(a1 + 368);
  caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::~tracking_allocator(a1 + 16);
  return a1;
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::clear(unint64_t a1)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  for (i = atomic_load((a1 + 32)); ; i = atomic_load((v3 + 32)))
  {
    v3 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 112 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v3 + 18) != 2)
    {
      v4 = atomic_load((v3 + 32));
      if ((v4 & 1) == 0)
      {
        caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1, *v3);
      }
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 160, i);
}

void *caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::~node_allocator(void *a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X0] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::free_node_chain(a1, _X2);
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1);
  (*(a1[9] + 24))(a1 + 10);
  (*(a1[4] + 24))(a1 + 5);
  v9 = a1[3];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

uint64_t caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(unint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::affix_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,std::array<unsigned long long,4ul>,std::array<unsigned long long,4ul>>::introspect<true,(BOOL *)0>(unsigned long,caulk::alloc::introspector const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK5caulk5alloc15affix_allocatorINS0_22consolidating_free_mapINS0_14page_allocatorELm10485760EEENSt3__15arrayIyLm4EEES7_E10introspectILb1ELPb0EEEvmRKNS0_12introspectorEEUlNS0_12region_usageEmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::optional<caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::iteration>::~optional(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(*(a1 + 8), v2);
  }

  return a1;
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_15darwin_resourceINS0_15audio_allocatorENS0_15memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS9_NS0_5blockEEEEEUlS9_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc20allocator_statisticsINS0_15darwin_resourceINS0_15audio_allocatorENS0_15memory_resourceEEEEE19malloc_statistics_tRT_EUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C7D0;
  a2[1] = v2;
  return result;
}

void caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28841C650;
  v5[1] = a5;
  v5[2] = a1;
  v5[3] = v5;
  operator new();
}

void sub_2754B0848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 1)
  {
    v17 = *(__cxa_begin_catch(a1) + 4);
    __cxa_end_catch();
    JUMPOUT(0x2754B0800);
  }

  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v15 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_15audio_allocatorENS0_15memory_resourceEE14zone_enumerateEjPvjmPFijmmPS5_EPFvjS5_jP10vm_range_tjEEUlNS0_12region_usageEmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(uint64_t a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v7[0] = *a3;
  v7[1] = v5;
  return (*(a1 + 8))(*(a1 + 16), *(a1 + 24), v4, v7, 1);
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841C6D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_15audio_allocatorENS0_15memory_resourceEE14zone_enumerateEjPvjmPFijmmPS5_EPFvjS5_jP10vm_range_tjEEUlmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v7 = 0;
  v5 = (*(a1 + 8))(*(a1 + 16), v3, v4, &v7);
  caulk::mach::throw_if_mach_error("reader failed", v5);
  return v7;
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841C650;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

unint64_t caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::compact(uint64_t a1, uint64_t a2)
{
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v4 = atomic_load((a1 + 1120));
  v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  if (a1 + 1200 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2 - 1;
    do
    {
      if (*(v5 + 18) != 2)
      {
        v8 = atomic_load((v5 + 32));
        if ((v8 & 1) == 0)
        {
          v9 = *(v5 + 8);
          if ((atomic_exchange(v9, 1u) & 1) == 0)
          {
            v10 = atomic_load((v9 + 16));
            if (v10 == 1006)
            {
              v6 += *(v9 + 8);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 1088, *v5);
              caulk::concurrent::skiplist<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5,(caulk::concurrent::skiplist_options)1>::remove(a1 + 800, *v5);
              if (v7 < v6)
              {
                break;
              }
            }

            else
            {
              atomic_store(0, v9);
            }
          }
        }
      }

      v4 = atomic_load((v5 + 32));
      v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (a1 + 1200 != (v4 & 0xFFFFFFFFFFFFFFFCLL));
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 1248, v4);
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::perform_deferred_deletions<true,(BOOL *)0>(a1 + 960);
  return v6;
}

uint64_t caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28841C850;
  v7[1] = a3;
  v7[3] = v7;
  v8 = a2;
  v9[0] = &unk_28841AE20;
  v9[1] = caulk::alloc::introspector::local_reader;
  v10 = v9;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v11, v7);
  v11[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v7);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v10, a1, 1392);
  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::introspect(v4 + 16, a1, &v8);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v11);
  result = std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v9);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B0D74(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_8resourceINS0_15audio_allocatorENS0_15memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS9_NS0_5blockEEEEEUlS9_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C850;
  a2[1] = v2;
  return result;
}

void caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::print(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = 0;
  v14 = 0;
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "audio_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78960](v12, a1 + 16);
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  __p.__r_.__value_.__s.__data_[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &__p, 1);
  v13 += 2;
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "[zeroing] ");
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "[tier ");
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "sizes ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "-");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 1008);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "] ");
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "tree_allocator @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78960](v12, a1 + 768);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "\n");
  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::begin_traversal();
  v3 = atomic_load((a1 + 832));
  for (i = v3 & 0xFFFFFFFFFFFFFFFCLL; a1 + 912 != (v3 & 0xFFFFFFFFFFFFFFFCLL); i = v3 & 0xFFFFFFFFFFFFFFFCLL)
  {
    if (*(i + 18) != 2)
    {
      v5 = atomic_load((i + 32));
      if ((v5 & 1) == 0)
      {
        v6 = *(i + 8);
        v7 = atomic_load((v6 + 4));
        std::string::basic_string[abi:ne200100]<0>(&v21, "availability ");
        std::to_string(&v20, v7);
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v20;
        }

        else
        {
          v8 = v20.__r_.__value_.__r.__words[0];
        }

        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v20.__r_.__value_.__l.__size_;
        }

        v10 = std::string::append(&v21, v8, size);
        __p = *v10;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        caulk::alloc::base_allocator::formatter::print_allocator<caulk::alloc::bitmap_allocator<caulk::alloc::embed_block_memory,16368ul,16ul,6ul>>(&v12, &__p, v6 + 16);
      }
    }

    v3 = atomic_load((i + 32));
  }

  caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::end_traversal(a1 + 960, v3);
  v13 += 2;
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, " nodes, total capacity ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, ", free capacity ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 0);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "\n");
  v13 -= 2;
  std::string::basic_string[abi:ne200100]<0>(&v21, "super");
  v13 += 2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v21.__r_.__value_.__l.__size_)
    {
      goto LABEL_23;
    }

    std::string::__init_copy_ctor_external(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    if (!*(&v21.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    __p = v21;
  }

  caulk::alloc::base_allocator::formatter::operator<<<std::string>(&v12, &__p);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, ": ");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_23:
  caulk::alloc::page_allocator::describe((a1 + 776), &v12, 0);
  v13 -= 2;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  caulk::alloc::base_allocator::formatter::emit_string(&v12, "[tier ");
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "sizes ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 1009);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "-");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 256000);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "] ");
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "guarded_edges_allocator<");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78990](v12, 4);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "> @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78960](v12, a1 + 368);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "\n");
  v13 += 2;
  os_unfair_lock_lock((a1 + 720));
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "consolidating_free_map @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(&v12);
  MEMORY[0x277C78960](v12, a1 + 368);
  caulk::alloc::base_allocator::formatter::emit_string(&v12, "\n");
  v13 += 2;
  v11 = *(a1 + 752);
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = v19;
  v15 = 0;
  v16 = 0;
  operator new();
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_15audio_allocatorENS0_15memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNS8_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C8D0;
  a2[1] = v2;
  return result;
}

void caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>::describe(caulk::alloc::page_allocator *a1, caulk::alloc::base_allocator::formatter *this)
{
  v8[22] = *MEMORY[0x277D85DE8];
  caulk::alloc::base_allocator::formatter::emit_string(this, "[tracking @ ");
  caulk::alloc::base_allocator::formatter::check_line_start(this);
  MEMORY[0x277C78960](*this, a1);
  caulk::alloc::base_allocator::formatter::emit_string(this, "] ");
  caulk::alloc::page_allocator::describe(a1, this, 0);
  *(this + 2) += 2;
  v8[0] = 0;
  v8[1] = 0;
  v6 = 0;
  v7 = v8;
  v4 = 0;
  v5 = 0;
  operator new();
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_18tracking_allocatorINS0_14page_allocatorEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS8_NS0_5blockEEEEEUlS8_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841AC68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc14base_allocator9formatter24summarize_blocks_by_sizeINS0_18tracking_allocatorINS0_14page_allocatorEEEEEvRT_mEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(void *result, int *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v4 = result;
    v5 = result + 1;
    v6 = *(a3 + 8);
    v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = (v6 >> 4) & 0x1FFFFFFFFFFFFFFLL;
    if (v7 <= 0xF423F)
    {
      v9 = ((v7 + 1023) >> 10) | 0x2000000000000000;
    }

    else
    {
      v9 = ((v7 + 0xFFFFF) >> 20) | 0x4000000000000000;
    }

    if (v8 >= 0x271)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *v5;
    v13[0] = v10 | ((v3 == 2) << 63);
    v13[1] = v13;
    result = std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v11, v13[0]);
    ++*(result + 10);
    if (v3 == 2)
    {
      v12 = 3;
    }

    else
    {
      ++*v4[2];
      v12 = 2;
    }

    *v5[v12] += v7;
  }

  return result;
}

__n128 std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>(caulk::alloc::tracking_allocator<caulk::alloc::page_allocator> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841AD70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_22consolidating_free_mapINS0_14page_allocatorELm10485760EEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvS8_NS0_5blockEEEEEUlS8_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841ABB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc14base_allocator9formatter24summarize_blocks_by_sizeINS0_22consolidating_free_mapINS0_14page_allocatorELm10485760EEEEEvRT_mEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::operator()(void *result, int *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*a2 - 3) >= 0xFFFFFFFE)
  {
    v4 = result;
    v5 = result + 1;
    v6 = *(a3 + 8);
    v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = (v6 >> 4) & 0x1FFFFFFFFFFFFFFLL;
    if (v7 <= 0xF423F)
    {
      v9 = ((v7 + 1023) >> 10) | 0x2000000000000000;
    }

    else
    {
      v9 = ((v7 + 0xFFFFF) >> 20) | 0x4000000000000000;
    }

    if (v8 >= 0x271)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = *v5;
    v13[0] = v10 | ((v3 == 2) << 63);
    v13[1] = v13;
    result = std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v11, v13[0]);
    ++*(result + 10);
    if (v3 == 2)
    {
      v12 = 3;
    }

    else
    {
      ++*v4[2];
      v12 = 2;
    }

    *v5[v12] += v7;
  }

  return result;
}

__n128 std::__function::__func<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::base_allocator::formatter::summarize_blocks_by_size<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>>(caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul> &,unsigned long)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841ACC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::do_deallocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 1408);
  if (v6)
  {
    v6(12, *(a1 + 1392) + 8, a2, 0, 0, 0);
  }

  caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::deallocate(a1 + 16, a2, a3);
}

void *caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::do_allocate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = caulk::alloc::tiered_allocator<caulk::alloc::size_range_tier<0ul,1008ul,caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>>,caulk::alloc::size_range_tier<1009ul,256000ul,caulk::alloc::guarded_edges_allocator<caulk::alloc::consolidating_free_map<caulk::alloc::page_allocator,10485760ul>,4ul>>,caulk::alloc::tracking_allocator<caulk::alloc::page_allocator>>::allocate(a1 + 16, a2, a3);
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v7 = v5;
  bzero(v5, v6);
  v8 = *(a1 + 1408);
  if (v8)
  {
    v8(10, *(a1 + 1392) + 8, a2, 0, v7, 0);
  }

  return v7;
}

void caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841C498;
  v2 = a1[174];
  a1[174] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(a1);

  JUMPOUT(0x277C78AD0);
}

void std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](uint64_t a1)
{
  malloc_zone_unregister((a1 + 8));

  JUMPOUT(0x277C78AD0);
}

uint64_t caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841C498;
  v2 = a1[174];
  a1[174] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  return caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(a1);
}

void caulk::inplace_function_detail::vtable<void,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&>::vtable(void)::{lambda(void *,caulk::concurrent::details::skiplist_node<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *>::layout_kv const&)#1}::__invoke()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = *&caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::node_sizes[8 * v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 5);

  caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl<caulk::alloc::tree_allocator<caulk::alloc::chunk_allocator<caulk::alloc::page_allocator,caulk::alloc::bitmap_allocator,caulk::alloc::embed_block_memory,16384ul,16ul,6ul>::node_impl>::node_header,caulk::alloc::embed_block_memory> *,5ul,(caulk::concurrent::skiplist_options)1>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841C588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void caulk::alloc::exported_resource<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::~exported_resource(std::pmr::memory_resource *a1)
{
  *a1 = &unk_28841C448;
  v2 = a1 + 16;
  *(a1 + 2) = &unk_28841C498;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v3);
  }

  caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(v2);
  std::pmr::memory_resource::~memory_resource(a1);

  JUMPOUT(0x277C78AD0);
}

{
  *a1 = &unk_28841C448;
  v2 = a1 + 16;
  *(a1 + 2) = &unk_28841C498;
  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v3);
  }

  caulk::alloc::resource<caulk::alloc::audio_allocator,caulk::alloc::memory_resource>::~resource(v2);

  std::pmr::memory_resource::~memory_resource(a1);
}

uint64_t caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>::print(uint64_t a1, uint64_t a2, int a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = 0;
  v10 = 0;
  caulk::alloc::base_allocator::formatter::emit_string(&v8, "[zeroing] ");
  result = caulk::alloc::malloc_zone_allocator::describe((a1 + 8), &v8);
  if (a3)
  {
    v11[0] = &unk_28841C3C8;
    v11[1] = a2;
    v11[3] = v11;
    result = std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_17zeroing_allocatorINS0_21malloc_zone_allocatorEEENS0_15memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNSA_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841C3C8;
  a2[1] = v2;
  return result;
}

void *caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>::do_allocate(uint64_t a1, size_t a2, size_t a3)
{
  v3 = caulk::alloc::malloc_zone_allocator::allocate((a1 + 8), a2, a3);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v8, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v5 = v3;
  bzero(v3, v4);
  return v5;
}

void caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>::~resource(uint64_t a1)
{
  caulk::alloc::malloc_zone_allocator::~malloc_zone_allocator((a1 + 8));

  JUMPOUT(0x277C78AD0);
}

void *caulk::alloc::exported_resource<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::do_allocate(uint64_t a1, size_t a2, size_t a3)
{
  v3 = caulk::alloc::malloc_zone_allocator::allocate((a1 + 24), a2, a3);
  v5 = v3;
  if (v3)
  {
    bzero(v3, v4);
  }

  return v5;
}

void caulk::alloc::exported_resource<caulk::alloc::resource<caulk::alloc::zeroing_allocator<caulk::alloc::malloc_zone_allocator>,caulk::alloc::memory_resource>,caulk::alloc::memory_resource,caulk::memory_resource>::~exported_resource(malloc_zone_t **a1)
{
  *a1 = &unk_28841C2B8;
  caulk::alloc::malloc_zone_allocator::~malloc_zone_allocator(a1 + 3);
  std::pmr::memory_resource::~memory_resource(a1);

  JUMPOUT(0x277C78AD0);
}

{
  *a1 = &unk_28841C2B8;
  caulk::alloc::malloc_zone_allocator::~malloc_zone_allocator(a1 + 3);

  std::pmr::memory_resource::~memory_resource(a1);
}

caulk::autorelease_pool *caulk::autorelease_pool::autorelease_pool(caulk::autorelease_pool *this)
{
  *this = objc_alloc_init(MEMORY[0x277CCA8B0]);
  return this;
}

{
  *this = objc_alloc_init(MEMORY[0x277CCA8B0]);
  return this;
}

void caulk::autorelease_pool::~autorelease_pool(id *this)
{
}

{
}

void caulk::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x277C78AD0);
}

void caulk::mach::os_workgroup::~os_workgroup(caulk::mach::details **this, void *a2)
{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);

  JUMPOUT(0x277C78AD0);
}

{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);
}

{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);
}

void caulk::mach::os_workgroup_interval::~os_workgroup_interval(caulk::mach::details **this, void *a2)
{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);

  JUMPOUT(0x277C78AD0);
}

{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);
}

{
  *this = &unk_28841B000;
  caulk::mach::details::release_os_object(this[1], a2);
}

void caulk::mach::os_workgroup::make(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  os_workgroup_attr_set_flags();
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  v5 = os_workgroup_create();
  v7 = caulk::mach::details::retain_os_object(v5, v6);
  *a2 = &unk_28841B000;
  a2[1] = v7;
  caulk::mach::details::release_os_object(v5, v8);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2754B3124(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

os_workgroup_t caulk::mach::os_workgroup::make@<X0>(const char *a1@<X0>, mach_port_t a2@<W1>, void *a3@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = os_workgroup_create_with_port(a1, a2);
  *a3 = &unk_28841B000;
  a3[1] = result;
  return result;
}

uint64_t caulk::mach::os_workgroup::make_with_workload_id@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  result = os_workgroup_create_with_workload_id_and_port();
  *a3 = &unk_28841B000;
  a3[1] = result;
  return result;
}

OS_os_workgroup *caulk::mach::os_workgroup::copy_mach_port(caulk::mach::os_workgroup *this)
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

uint64_t caulk::mach::os_workgroup::join(caulk::mach::os_workgroup *this, os_workgroup_join_token_opaque_s *a2)
{
  if (*(this + 1))
  {
    return os_workgroup_join_self();
  }

  else
  {
    return 2;
  }
}

uint64_t caulk::mach::os_workgroup_interval::make@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = os_workgroup_attr_set_interval_type();
  if (result)
  {
    a2[1] = 0;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    result = os_workgroup_interval_create();
    a2[1] = result;
  }

  *a2 = &unk_28841AF78;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B3380(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t caulk::mach::os_workgroup_interval::make_with_workload_id@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = os_workgroup_attr_set_interval_type();
  if (result)
  {
    a3[1] = 0;
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

    result = os_workgroup_interval_create_with_workload_id();
    a3[1] = result;
  }

  *a3 = &unk_28841AF78;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B348C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double caulk::mach::os_workgroup_managed::make_with_workload_id@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  v6 = os_workgroup_create_with_workload_id_and_port();
  *a3 = &unk_28841AF98;
  *(a3 + 8) = v6;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 41) = 0u;
  return result;
}

uint64_t caulk::mach::os_workgroup_interval_managed::make@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  result = os_workgroup_attr_set_interval_type();
  if (result)
  {
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = &unk_28841AF58;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    result = os_workgroup_interval_create();
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 41) = 0u;
    *a2 = &unk_28841AF58;
    *(a2 + 8) = result;
    *(a2 + 57) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B3698(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::mach::os_workgroup_interval_managed::make_with_workload_id(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  caulk::mach::os_workgroup_interval_managed::make_with_workload_id(a1, a2, a3);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t caulk::mach::os_workgroup_interval_managed::update_deadline(os_workgroup_interval_t *this, uint64_t a2, os_workgroup_interval_data_opaque_s *a3)
{
  if (*(this + 56) == 1 && *(this + 57) == 1)
  {
    return os_workgroup_interval_update(this[1], a2, a3);
  }

  else
  {
    return 1;
  }
}

void CAVerboseAbort(char *__format, ...)
{
  va_start(va, __format);
  v2 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x50uLL, __format, va);
  _os_crash();
  __break(1u);
}

void sub_2754B37B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL caulk::platform::is_virtual_machine(caulk::platform *this)
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0))
  {
    perror("sysctlbyname");
  }

  return v3 != 0;
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t caulk::product::get_type(caulk::product *this)
{
  {
    caulk::product::get_type(void)::global = MGGetProductType();
  }

  return caulk::product::get_type(void)::global;
}

unint64_t caulk::product::full_hardware_model_name@<X0>(_BYTE *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  *__s = 0u;
  v8 = 0u;
  v6 = 64;
  sysctlbyname("hw.model", __s, &v6, 0, 0);
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, __s, result);
  }

  a1[v4] = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double caulk::product::short_hardware_model_name@<D0>(uint64_t a1@<X8>)
{
  caulk::product::full_hardware_model_name(a1);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (std::string_view::ends_with[abi:ne200100](v4, v5, "AP", 2uLL) || std::string_view::ends_with[abi:ne200100](v4, v5, "ap", 2uLL))
  {
    std::string::basic_string(&v14, a1, 0, v5 - 2, &v15);
LABEL_28:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    result = *&v14.__r_.__value_.__l.__data_;
    *a1 = v14;
    return result;
  }

  if (std::string_view::ends_with[abi:ne200100](v4, v5, "DEV", 3uLL) || (v6 = std::string_view::ends_with[abi:ne200100](v4, v5, "dev", 3uLL)))
  {
    std::string::basic_string(&v14, a1, 0, v5 - 3, &v15);
    goto LABEL_28;
  }

  type = caulk::product::get_type(v6);
  v9 = "m";
  if (type != 2468178735 && type != 2081274472)
  {
    if (type != 952317141)
    {
      return result;
    }

    v9 = "u";
  }

  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) == 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  if (std::string_view::ends_with[abi:ne200100](v11, v12, v9, 1uLL))
  {
    if ((v10 & 0x80u) == 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *(a1 + 8);
    }

    std::string::basic_string(&v14, a1, 0, v13 - 1, &v15);
    goto LABEL_28;
  }

  return result;
}

void sub_2754B3EA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void caulk::shared_semaphore_mutex::~shared_semaphore_mutex(caulk::shared_semaphore_mutex *this)
{
  v1 = *this;
  if ((*this & 0x1FFFFFLL) != 0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if ((v1 & 0x3FFFFE00000) != 0)
  {
LABEL_7:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if ((v1 & 0x7FFFFC0000000000) != 0)
  {
LABEL_8:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!v1)
  {
    caulk::semaphore::~semaphore((this + 24));
    caulk::semaphore::~semaphore((this + 8));
    return;
  }

LABEL_9:
  _os_assert_log();
  _os_crash();
  __break(1u);
}

uint64_t caulk::shared_semaphore_mutex::_lock_shared(caulk::shared_semaphore_mutex *this, char a2)
{
  explicit = *this;
  while ((explicit & 0x8000000000000000) != 0)
  {
    if (a2)
    {
      return (explicit & 0x8000000000000000) == 0;
    }

    if ((((explicit >> 21) + 1) & 0x1FFFFF) == 0x1FFFFFLL)
    {
      goto LABEL_13;
    }

    v7 = explicit;
    atomic_compare_exchange_strong(this, &v7, explicit & 0xFFFFFC00001FFFFFLL | ((((explicit >> 21) + 1) & 0x1FFFFFLL) << 21));
    if (v7 == explicit)
    {
      caulk::semaphore::timed_wait(this + 2, -1.0);
      explicit = atomic_load_explicit(this, memory_order_acquire);
    }

    else
    {
LABEL_10:
      explicit = v7;
    }
  }

  v5 = (explicit + 1) & 0x1FFFFF;
  if (v5 != 0x1FFFFF)
  {
    v6 = v5 | explicit & 0x7FFFFFFFFFE00000;
    v7 = explicit;
    atomic_compare_exchange_strong(this, &v7, v6);
    if (v7 == explicit)
    {
      __dmb(9u);
      return (explicit & 0x8000000000000000) == 0;
    }

    goto LABEL_10;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_13:
  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

unint64_t caulk::shared_semaphore_mutex::unlock_shared(unint64_t this)
{
  __dmb(0xBu);
  v1 = *this;
  v2 = *this & 0x1FFFFFLL;
  if (!v2)
  {
LABEL_7:
    CAAssertRtn("semaphore_mutex.cpp", 120, "next.activeReaders > 0");
  }

  v3 = *this;
  while (1)
  {
    v4 = v2 == 1 && (v1 & 0x7FFFFC0000000000) != 0;
    v5 = v1 & 0xFFFFFFFFFFE00000 | (v1 - 1) & 0x1FFFFF;
    if (v4)
    {
      v5 = (v1 + 0x7FFFFC0000000000) & 0x7FFFFC0000000000 | v1 & 0x800003FFFFE00000;
    }

    atomic_compare_exchange_strong(this, &v3, v5);
    if (v3 == v1)
    {
      break;
    }

    v1 = v3;
    v2 = v3 & 0x1FFFFF;
    if ((v3 & 0x1FFFFF) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v4 && (atomic_fetch_add_explicit((this + 32), 1u, memory_order_release) & 0x80000000) != 0)
  {
    v6 = (this + 24);

    return caulk::mach::semaphore::signal_or_error(v6);
  }

  return this;
}

uint64_t caulk::shared_semaphore_mutex::lock(uint64_t this)
{
  v1 = this;
  for (i = *this; ; i = atomic_load_explicit(v1, memory_order_acquire))
  {
    while ((i & 0x80000000001FFFFFLL) == 0)
    {
      v3 = i;
      atomic_compare_exchange_strong(v1, &v3, i | 0x8000000000000000);
      if (v3 == i)
      {
        __dmb(9u);
        return this;
      }

LABEL_7:
      i = v3;
    }

    if ((((i >> 42) + 1) & 0x1FFFFF) == 0x1FFFFF)
    {
      break;
    }

    v3 = i;
    atomic_compare_exchange_strong(v1, &v3, i & 0x800003FFFFFFFFFFLL | ((((i >> 42) + 1) & 0x1FFFFFLL) << 42));
    if (v3 != i)
    {
      goto LABEL_7;
    }

    this = caulk::semaphore::timed_wait((v1 + 24), -1.0);
  }

  _os_assert_log();
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t caulk::shared_semaphore_mutex::try_lock(atomic_ullong *this)
{
  v1 = *this;
  if ((*this & 0x80000000001FFFFFLL) != 0)
  {
    return 0;
  }

  v2 = *this;
  while (1)
  {
    atomic_compare_exchange_strong(this, &v2, v1 | 0x8000000000000000);
    if (v2 == v1)
    {
      break;
    }

    v1 = v2;
    if ((v2 & 0x80000000001FFFFFLL) != 0)
    {
      return 0;
    }
  }

  __dmb(9u);
  return 1;
}

unint64_t caulk::shared_semaphore_mutex::unlock(unint64_t this)
{
  __dmb(0xBu);
  v1 = *this;
  if ((*this & 0x8000000000000000) == 0)
  {
LABEL_11:
    CAAssertRtn("semaphore_mutex.cpp", 156, "next.activeWriter > 0");
  }

  v2 = 24;
  while (1)
  {
    if ((v1 & 0x7FFFFC0000000000) != 0)
    {
      v3 = v1;
      atomic_compare_exchange_strong(this, &v3, (v1 + 0x7FFFFC0000000000) & 0x7FFFFC0000000000 | v1 & 0x3FFFFFFFFFFLL);
      v4 = v3 == v1;
      v1 = v3;
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v5 = v1 & 0x3FFFFFFFFFFLL;
    v6 = v1 & 0x3FFFFE00000;
    if ((v1 & 0x3FFFFE00000) != 0)
    {
      v5 = (v1 + 0x3FFFFE00000) & 0x3FFFFE00000 | v1 & 0x1FFFFF;
    }

    v7 = v1;
    atomic_compare_exchange_strong(this, &v7, v5);
    v4 = v7 == v1;
    v1 = v7;
    if (v4)
    {
      break;
    }

LABEL_10:
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v6)
  {
    v2 = 8;
LABEL_14:
    this += v2;
    if ((atomic_fetch_add_explicit((this + 8), 1u, memory_order_release) & 0x80000000) != 0)
    {

      return caulk::mach::semaphore::signal_or_error(this);
    }
  }

  return this;
}

uint64_t caulk::concurrent::details::lf_read_sync_write_impl::begin_access(atomic_uint *this)
{
  LODWORD(v1) = *this;
  LODWORD(v2) = *this + 1;
  v3 = v2 & 0x7FFF;
  if ((v2 & 0x7FFF) != 0)
  {
    v2 = *this;
    while (1)
    {
      v4 = v2 & 0xFFFF0000 | (v3 | v1 & 0x8000);
      v1 = v2;
      atomic_compare_exchange_strong(this, &v1, v4);
      if (v1 == v2)
      {
        break;
      }

      v2 = v1;
      v3 = (v1 + 1) & 0x7FFF;
      if (!v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  __dmb(9u);
  return (v2 >> 15) & 1;
}

atomic_uint *caulk::concurrent::details::lf_read_sync_write_impl::end_access@<X0>(atomic_uint *this@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v4) = *this;
  if ((*this & 0x7FFF) != 0)
  {
    v2 = *this;
    do
    {
      a2 = WORD1(v2);
      v5 = (v4 - 1) & 0x7FFF;
      v6 = v5 | v4 & 0x8000;
      if (v5)
      {
        v3 = WORD1(v2);
      }

      else
      {
        v3 = 0;
      }

      v7 = v6 | (v3 << 16);
      v4 = v2;
      atomic_compare_exchange_strong(this, &v4, v7);
      if (v4 == v2)
      {
        goto LABEL_9;
      }

      v2 = v4;
    }

    while ((v4 & 0x7FFF) != 0);
  }

  while (1)
  {
    __break(1u);
LABEL_9:
    if (v2 < 0x10000 || v3)
    {
      break;
    }

    if ((a2 - 1) < 0x200)
    {
      v8 = (caulk::details::semaphore_pool::sGlobal + 8 * ((a2 - 1) >> 6));
      v2 = atomic_load(v8);
      if (v2)
      {
        v9 = atomic_load(v8);
        a2 = a2 - *v9;
        LODWORD(v2) = a2;
        if (a2 < 0x40u)
        {
          v10 = &v9[8 * (a2 & 0xFFF)];
          if ((atomic_fetch_add_explicit(v10 + 3, 1u, memory_order_release) & 0x80000000) != 0)
          {
            return caulk::mach::semaphore::signal_or_error((v10 + 2));
          }

          return this;
        }
      }
    }
  }

  return this;
}

caulk::alloc::malloc_zone_allocator *caulk::alloc::malloc_zone_allocator::malloc_zone_allocator(caulk::alloc::malloc_zone_allocator *this)
{
  *this = malloc_create_zone(0, 0);
  return this;
}

{
  *this = malloc_create_zone(0, 0);
  return this;
}

void *caulk::alloc::malloc_zone_allocator::malloc_zone_allocator(void *this, _malloc_zone_t *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void *caulk::alloc::malloc_zone_allocator::allocate(malloc_zone_t **this, size_t size, size_t alignment)
{
  if (alignment <= 0x10)
  {
    return malloc_type_zone_malloc(*this, size, 0xDC6CBAB9uLL);
  }

  v4 = *this;
  if (alignment > 0x1000)
  {
    return malloc_type_zone_valloc(v4, size, 0x907DC58CuLL);
  }

  else
  {
    return malloc_type_zone_memalign(v4, alignment, size, 0x5534E2C8uLL);
  }
}

void *caulk::alloc::malloc_zone_allocator::describe(malloc_zone_t **this, caulk::alloc::base_allocator::formatter *a2)
{
  zone_name = malloc_get_zone_name(*this);
  caulk::alloc::base_allocator::formatter::emit_string(a2, "malloc_zone_allocator @");
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78960](*a2, this);
  caulk::alloc::base_allocator::formatter::emit_string(a2, ", zone ");
  v5 = *this;
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78960](*a2, v5);
  caulk::alloc::base_allocator::formatter::emit_string(a2, ", ");
  if (zone_name)
  {
    v6 = zone_name;
  }

  else
  {
    v6 = "(null)";
  }

  caulk::alloc::base_allocator::formatter::emit_string(a2, v6);

  return caulk::alloc::base_allocator::formatter::emit_string(a2, "\n");
}

void caulk::alloc::details::caching_page_allocator_base::~caching_page_allocator_base(caulk::alloc::details::caching_page_allocator_base *this)
{
  for (i = MEMORY[0x277D85FA0]; ; caulk::mach::vm_block::dealloc(v3, (*(this + 2) + *i - 1) & -*i))
  {
    v3 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
    if (!v3)
    {
      break;
    }

    atomic_fetch_add(this + 6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    v5 = v4[5];
    v4[5] = 0;
    if (v5)
    {
      caulk::alloc::page_cache_monitor_impl::~page_cache_monitor_impl(v5);
      MEMORY[0x277C78AD0]();
    }

    v6 = v4[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = v4[2];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    MEMORY[0x277C78AD0](v4, 0x20C40A759441BLL);
  }

  (*(*(this + 8) + 24))(this + 72);
}

void caulk::alloc::page_cache_monitor_impl::~page_cache_monitor_impl(caulk::alloc::page_cache_monitor_impl *this)
{
  if (*(this + 2))
  {
    if (*(this + 48) == 1)
    {
      caulk::semaphore::~semaphore((this + 32));
      *(this + 48) = 0;
    }

    caulk::mach::semaphore::semaphore(this + 8);
    *(this + 5) = 0;
    *(this + 48) = 1;
    v2 = *(this + 3);
    *(this + 2) = 0;
    *(this + 3) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    caulk::semaphore::timed_wait(this + 8, -1.0);
    __dmb(9u);
  }

  v3 = (this + 168);
  std::vector<std::weak_ptr<caulk::alloc::preallocation_reservation>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *(this + 10) = &unk_28841B158;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 120);
  caulk::concurrent::message::~message((this + 80));
  caulk::concurrent::messenger::~messenger(this + 8);
  caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::~lifetime_guard_base(this + 8);
}

void std::vector<std::weak_ptr<caulk::alloc::preallocation_reservation>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::~lifetime_guard_base(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      caulk::semaphore::~semaphore((a1 + 24));
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    return a1;
  }

  return result;
}

void caulk::concurrent::condition_message::~condition_message(caulk::concurrent::condition_message *this)
{
  *this = &unk_28841B158;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x277C78AD0);
}

{
  *this = &unk_28841B158;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  caulk::concurrent::message::~message(this);
}

{
  *this = &unk_28841B158;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 40);

  caulk::concurrent::message::~message(this);
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_15darwin_resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvSA_NS0_5blockEEEEEUlSA_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc20allocator_statisticsINS0_15darwin_resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEEEEE19malloc_statistics_tRT_EUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<malloc_statistics_t caulk::alloc::allocator_statistics<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841CB90;
  a2[1] = v2;
  return result;
}

void caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28841CA10;
  v5[1] = a5;
  v5[2] = a1;
  v5[3] = v5;
  operator new();
}

void sub_2754B4D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 1)
  {
    v17 = *(__cxa_begin_catch(a1) + 4);
    __cxa_end_catch();
    JUMPOUT(0x2754B4CC4);
  }

  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v15 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEE14zone_enumerateEjPvjmPFijmmPS6_EPFvjS6_jP10vm_range_tjEEUlNS0_12region_usageEmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::operator()(uint64_t a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a4;
  v7[0] = *a3;
  v7[1] = v5;
  return (*(a1 + 8))(*(a1 + 16), *(a1 + 24), v4, v7, 1);
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841CA90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15darwin_resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEE14zone_enumerateEjPvjmPFijmmPS6_EPFvjS6_jP10vm_range_tjEEUlmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v7 = 0;
  v5 = (*(a1 + 8))(*(a1 + 16), v3, v4, &v7);
  caulk::mach::throw_if_mach_error("reader failed", v5);
  return v7;
}

__n128 std::__function::__func<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1},std::allocator<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_enumerate(unsigned int,void *,unsigned int,unsigned long,int (*)(unsigned int,unsigned long,unsigned long,void **),void (*)(unsigned int,void *,unsigned int,vm_range_t *,unsigned int))::{lambda(unsigned long,unsigned long)#1}>,void * ()(unsigned long,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28841CA10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::reserve(uint64_t a1@<X0>, caulk::alloc::page_cache_monitor *a2@<X8>)
{
  caulk::alloc::page_cache_monitor::enable_preallocation(*(a1 + 120), 1);
  v4 = *(a1 + 120);

  caulk::alloc::page_cache_monitor::reserve(a2, v4);
}

void caulk::alloc::page_cache_monitor::reserve(caulk::alloc::page_cache_monitor *this, uint64_t a2)
{
  os_unfair_lock_lock(*(a2 + 24));
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(**v4 + 16);
    v6 = v4[1];
    if (*(&v6 + 1))
    {
      atomic_fetch_add_explicit((*(&v6 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  os_unfair_lock_unlock(*(a2 + 24));
  *this = 0;
  *(this + 1) = 0;
}

void sub_2754B52B4(_Unwind_Exception *a1)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  os_unfair_lock_unlock(*(v1 + 24));
  _Unwind_Resume(a1);
}

unint64_t caulk::alloc::details::caching_page_allocator_base::compact(caulk::alloc::details::caching_page_allocator_base *this, uint64_t a2)
{
  if ((atomic_fetch_or(this + 29, 0x80000000) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(this + 13);
  os_unfair_lock_lock(*(v4 + 24));
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = atomic_load((v5 + 160));
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(*(v4 + 24));
  if (*(this + 6) <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = a2 - 1;
    v9 = MEMORY[0x277D85FA0];
    do
    {
      v10 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (v10)
      {
        v11 = v10;
        atomic_fetch_add(this + 6, 0xFFFFFFFFFFFFFFFFLL);
        while (1)
        {
          v12 = atomic_load(this + 29);
          if ((v12 & 0x7FFFFFFF) == 0)
          {
            break;
          }

          __ns.__rep_ = 1000000;
          std::this_thread::sleep_for (&__ns);
        }

        caulk::mach::vm_block::dealloc(v11, (*(this + 2) + *v9 - 1) & -*v9);
        v7 += *(this + 2);
        if (v8 < v7)
        {
          break;
        }
      }
    }

    while (*(this + 6) > v6);
  }

  atomic_fetch_and(this + 29, 0x7FFFFFFFu);
  return v7;
}

uint64_t caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(uint64_t a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = &unk_28841CC10;
  v8[1] = a3;
  v8[3] = v8;
  v9 = a2;
  v10[0] = &unk_28841AE20;
  v10[1] = caulk::alloc::introspector::local_reader;
  v11 = v10;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__value_func[abi:ne200100](v12, v8);
  v12[32] = 1;
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v8);
  v4 = std::function<void * ()(unsigned long,unsigned long)>::operator()(v11, a1, 144);
  caulk::alloc::details::caching_page_allocator_base::introspect((v4 + 16), v5, &v9);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v12);
  result = std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v10);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B554C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v2 + 40);
  std::__function::__value_func<void * ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc19allocator_enumerateINS0_8resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEEEEEvRT_NS_10option_setINS0_12region_usageEjEERKNSt3__18functionIFvSA_NS0_5blockEEEEEUlSA_mmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1},std::allocator<void caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,caulk::option_set<caulk::alloc::region_usage,unsigned int>,std::function<void ()(caulk::alloc::region_usage,caulk::alloc::block)> const&)::{lambda(caulk::alloc::region_usage,unsigned long,unsigned long)#1}>,void ()(caulk::alloc::region_usage,unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841CC10;
  a2[1] = v2;
  return result;
}

uint64_t caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::print(uint64_t a1, uint64_t a2, int a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = 0;
  v10 = 0;
  result = caulk::alloc::details::caching_page_allocator_base::describe((a1 + 16), &v8);
  if (a3)
  {
    v11[0] = &unk_28841CC90;
    v11[1] = a2;
    v11[3] = v11;
    caulk::alloc::allocator_enumerate<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(a1, 7, v11);
    result = std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B5720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(caulk::alloc::region_usage,caulk::alloc::block)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *caulk::alloc::details::caching_page_allocator_base::describe(caulk::alloc::details::caching_page_allocator_base *this, caulk::alloc::base_allocator::formatter *a2)
{
  caulk::alloc::page_allocator::describe(this, a2, "caching_page_allocator");
  caulk::alloc::base_allocator::formatter::emit_string(a2, "  free stack: ");
  v4 = *(this + 6);
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78990](*a2, v4);
  caulk::alloc::base_allocator::formatter::emit_string(a2, " x ");
  v5 = *(this + 2);
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78990](*a2, v5);
  caulk::alloc::base_allocator::formatter::emit_string(a2, ", ");
  v6 = atomic_load(this + 28);
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78970](*a2, v6);
  caulk::alloc::base_allocator::formatter::emit_string(a2, " cache misses");

  return caulk::alloc::base_allocator::formatter::emit_string(a2, "\n");
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc15print_allocatorINS0_8resourceINS0_22caching_page_allocatorILm16384EEENS0_15memory_resourceEEEEEvRT_RNSt3__113basic_ostreamIcNS9_11char_traitsIcEEEEbEUlNS0_12region_usageENS0_5blockEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1},std::allocator<void caulk::alloc::print_allocator<caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>>(caulk::alloc::resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource> &,std::ostream &,BOOL)::{lambda(caulk::alloc::region_usage,caulk::alloc::block)#1}>,void ()(caulk::alloc::region_usage,caulk::alloc::block)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28841CC90;
  a2[1] = v2;
  return result;
}

void *caulk::alloc::page_allocator::describe(caulk::alloc::page_allocator *this, caulk::alloc::base_allocator::formatter *a2, char *a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = "page_allocator";
  }

  caulk::alloc::base_allocator::formatter::emit_string(a2, v5);
  if (*this)
  {
    caulk::alloc::base_allocator::formatter::emit_string(a2, ", VM tag ");
    v6 = *this;
    caulk::alloc::base_allocator::formatter::check_line_start(a2);
    MEMORY[0x277C78970](*a2, v6);
  }

  return caulk::alloc::base_allocator::formatter::emit_string(a2, "\n");
}

void caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::do_deallocate(void *a1, caulk::mach::vm_block *this, uint64_t a3)
{
  v6 = a1[19];
  if (v6)
  {
    v6(12, a1[17] + 8, this, 0, 0, 0);
  }

  caulk::alloc::details::caching_page_allocator_base::deallocate(a1 + 2, this, a3);
}

atomic_uint *caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::do_allocate(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = caulk::alloc::details::caching_page_allocator_base::allocate((a1 + 16), a2, a3);
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v10, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  v6 = v5;
  v7 = *(a1 + 152);
  if (v7)
  {
    v7(10, *(a1 + 136) + 8, a2, 0, v5, 0);
  }

  return v6;
}

void caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841C950;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::details::caching_page_allocator_base::~caching_page_allocator_base((a1 + 2));

  JUMPOUT(0x277C78AD0);
}

void std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](uint64_t a1)
{
  malloc_zone_unregister((a1 + 8));

  JUMPOUT(0x277C78AD0);
}

void *caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::~darwin_resource(void *a1)
{
  *a1 = &unk_28841C950;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    std::default_delete<caulk::alloc::darwin_resource<caulk::alloc::caching_page_allocator<16384ul>,caulk::alloc::memory_resource>::zone_plus>::operator()[abi:ne200100](v2);
  }

  caulk::alloc::details::caching_page_allocator_base::~caching_page_allocator_base((a1 + 2));
  return a1;
}

void std::__shared_ptr_emplace<caulk::mach::unfair_lock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

char *caulk::alloc::guarded_page_allocator::allocate(caulk::alloc::guarded_page_allocator *this, uint64_t a2, unint64_t a3)
{
  v3 = MEMORY[0x277D85FA0];
  if (*MEMORY[0x277D85FA0] < a3)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = ((a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) + 2 * *MEMORY[0x277D85FA0];
    v7 = caulk::alloc::page_allocator::allocate(this, v6, a3);
    v8 = mprotect(v7, *v3, 0);
    if (v8 | mprotect(&v7[v6 - *v3], *v3, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21[0] = 0;
      _os_log_error_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "couldn't protect region", v21, 2u);
    }

    v9 = a3 + ((*v3 - 1) & a2) - 1;
    v10 = v9 % a3 - v9 + *v3;
    v11 = &v7[*v3];
    if (v10 >= 4)
    {
      if (v10 >> 2 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10 >> 2;
      }

      v13 = (v12 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = &v7[*v3 + 8];
      v16 = xmmword_2754BBDD0;
      v17 = xmmword_2754BBDC0;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v14, v17));
        if (vuzp1_s16(v19, *v14.i8).u8[0])
        {
          *(v15 - 2) = -267262961;
        }

        if (vuzp1_s16(v19, *&v14).i8[2])
        {
          *(v15 - 1) = -267262961;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v16))).i32[1])
        {
          *v15 = -267262961;
          *(v15 + 1) = -267262961;
        }

        v16 = vaddq_s64(v16, v18);
        v17 = vaddq_s64(v17, v18);
        v15 += 16;
        v13 -= 4;
      }

      while (v13);
    }

    return &v11[v10];
  }

  return result;
}

void caulk::alloc::guarded_page_allocator::deallocate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *MEMORY[0x277D85FA0];
  v5 = *MEMORY[0x277D85FA0] - 1;
  v6 = a4 + ((a3 - 2 * *MEMORY[0x277D85FA0]) & v5) - 1;
  v7 = v6 % a4 - v6 + *MEMORY[0x277D85FA0];
  v8 = a2 - v7;
  if (v7 < 4)
  {
LABEL_5:

    caulk::mach::vm_block::dealloc((v8 - v4), (v5 + a3) & -v4);
  }

  else
  {
    v9 = 0;
    v10 = v7 >> 2;
    while (*(v8 + 4 * v9) == -267262961)
    {
      if (++v9 >= v10)
      {
        goto LABEL_5;
      }
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

void caulk::alloc::details::caching_page_allocator_base::reserve(caulk::alloc::page_cache_monitor **this@<X0>, caulk::alloc::page_cache_monitor *a2@<X8>)
{
  caulk::alloc::page_cache_monitor::enable_preallocation(this[13], 1);
  v4 = this[13];

  caulk::alloc::page_cache_monitor::reserve(a2, v4);
}

uint64_t caulk::execution_queue::global_executor@<X0>(uint64_t a1@<X8>)
{
  {
    caulk::execution_queue::global_executor(void)::global = &unk_28841ADC8;
    qword_2809F4200 = &caulk::execution_queue::global_executor(void)::global;
  }

  result = qword_2809F4200;
  if (qword_2809F4200)
  {
    if (qword_2809F4200 == &caulk::execution_queue::global_executor(void)::global)
    {
      *(a1 + 24) = a1;
      v4 = *(caulk::execution_queue::global_executor(void)::global + 24);

      return v4(&caulk::execution_queue::global_executor(void)::global, a1);
    }

    else
    {
      result = (*(*qword_2809F4200 + 16))();
      *(a1 + 24) = result;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t std::__function::__func<caulk::execution_queue::global_executor(void)::$_0,std::allocator<caulk::execution_queue::global_executor(void)::$_0>,void ()(caulk::v1::task<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk15execution_queue15global_executorEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<caulk::execution_queue::global_executor(void)::$_0,std::allocator<caulk::execution_queue::global_executor(void)::$_0>,void ()(caulk::v1::task<void ()(void)>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4[31] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  (*(v2 + 8))(a2 + 1, v3);
  v3[31] = v2;
  (*(v2 + 8))(v3, v4);
  operator new();
}

void sub_2754B61FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void (****std::unique_ptr<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1},std::default_delete<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void (****a1)(uint64_t)))(uint64_t)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (**v2)((v2 + 1));
    MEMORY[0x277C78AD0](v2, 0x1060C404CFE1F30);
  }

  return a1;
}

void (****applesauce::dispatch::v1::async<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1}>(dispatch_queue_s *,caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(void (***a1)(uint64_t)))(uint64_t)
{
  v2 = a1;
  (*a1)[2]((a1 + 1));
  return std::unique_ptr<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1},std::default_delete<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_2754B62AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1},std::default_delete<caulk::execution_queue::global_executor(void)::$_0::operator() const(caulk::v1::task<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::execution_queue::execution_queue(uint64_t result, void *a2)
{
  *result = 0;
  *(result + 8) = *a2;
  *a2 = 0;
  *(result + 16) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = *a2;
  *a2 = 0;
  *(result + 16) = 0;
  return result;
}

void caulk::execution_queue::~execution_queue(caulk::execution_queue *this)
{
  v2 = atomic_load(this);
  if ((v2 & 1) == 0)
  {
    caulk::execution_queue::invalidate(this);
  }

  v3 = *(this + 1);
  if (v3)
  {
    dispatch_release(v3);
  }
}

uint64_t caulk::execution_queue::invalidate(dispatch_queue_t *this)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(this[1]);
  atomic_store(1u, this);
  dispatch_sync_f(this[1], this, caulk::execution_queue::drain);
  v2 = *(this + 4);
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    label = dispatch_queue_get_label(this[1]);
    v6 = 136315394;
    v7 = label;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: discarded %d message(s) post-invalidation", &v6, 0x12u);
    v2 = *(this + 4);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2754B64A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::execution_queue::async_task(uint64_t a1, uint64_t *a2)
{
  v8[31] = *MEMORY[0x277D85DE8];
  v2 = atomic_load(a1);
  if ((v2 & 1) == 0)
  {
    v4 = *a2;
    v6 = a1;
    v7 = v4;
    (*(v4 + 8))(a2 + 1, v8);
    v5 = *(a1 + 8);
    operator new();
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_2754B65D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<caulk::execution_queue::async_task(caulk::v1::task<void ()(void)> &&)::$_0,std::default_delete<caulk::v1::task<void ()(void)> &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (**(v2 + 8))(v2 + 16);
    MEMORY[0x277C78AD0](v2, 0x1060C40B185B547);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<caulk::execution_queue::async_task(caulk::v1::task<void ()(void)> &&)::$_0>(dispatch_queue_s *,caulk::execution_queue::async_task(caulk::v1::task<void ()(void)> &&)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1;
  caulk::execution_queue::execute_internal(*a1, (a1 + 1));
  return std::unique_ptr<caulk::execution_queue::async_task(caulk::v1::task<void ()(void)> &&)::$_0,std::default_delete<caulk::v1::task<void ()(void)> &&>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_2754B667C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<caulk::execution_queue::async_task(caulk::v1::task<void ()(void)> &&)::$_0,std::default_delete<caulk::v1::task<void ()(void)> &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::execution_queue::execute_internal(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(result);
  if (v2)
  {
    ++*(result + 16);
  }

  else
  {
    result = (*(*a2 + 16))(a2 + 8);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B670C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      label = dispatch_queue_get_label(*(v9 + 8));
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = label;
      _os_log_error_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: caught exception", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2754B66E0);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::execution_queue::sync_task(uint64_t a1, uint64_t *a2)
{
  v11[31] = *MEMORY[0x277D85DE8];
  v2 = atomic_load(a1);
  if (v2)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v4 = *a2;
  v9 = a1;
  v10 = v4;
  (*(v4 + 8))(a2 + 1, v11);
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN5caulk15execution_queue9sync_taskEONS3_2v14taskIFvvEEEE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_88;
  block[4] = &v9;
  dispatch_sync(v5, block);
  result = (*v10)(v11);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2754B6870(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

CFTypeRef caulk::xstring::assign(caulk::xstring *this, CFTypeRef cf)
{
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 1) = cf;

  return CFRetain(cf);
}

void caulk::xstring::clear(caulk::xstring *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }
}

CFStringRef caulk::xstring::assign(caulk::xstring *this, const char *cStr)
{
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
    *(this + 1) = 0;
  }

  result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  *(this + 1) = result;
  return result;
}

CFStringRef caulk::xstring::assign(caulk::xstring *this, UInt8 *bytes, CFIndex numBytes)
{
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
    *(this + 1) = 0;
  }

  result = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, numBytes, 0x8000100u, 0);
  *(this + 1) = result;
  return result;
}

CFStringRef caulk::xstring::assign(caulk::xstring *a1, UInt8 *a2)
{
  v2 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v3 = a2[23];
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return caulk::xstring::assign(a1, a2, v3);
}

CFTypeRef caulk::xstring::assign(caulk::xstring *this, const caulk::xstring *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
    *(this + 1) = 0;
  }

  result = *(a2 + 1);
  if (result)
  {
    *(this + 1) = result;

    return CFRetain(result);
  }

  return result;
}

void caulk::xstring::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
}

uint64_t caulk::xstring::swap(uint64_t this, caulk::xstring *a2)
{
  v2 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v2;
  return this;
}

const char *caulk::xstring::c_str(caulk::xstring *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return "";
  }

  result = CFStringGetCStringPtr(v2, 0x8000100u);
  if (!result)
  {
    v4 = *(this + 1);

    return [v4 UTF8String];
  }

  return result;
}

size_t caulk::xstring::size(caulk::xstring *this)
{
  v1 = caulk::xstring::c_str(this);

  return strlen(v1);
}

CFComparisonResult caulk::xstring::compare(caulk::xstring *this, const caulk::xstring *a2)
{
  v2 = *(this + 1);
  v3 = *(a2 + 1);
  if (!v2)
  {
    return (v3 == 0);
  }

  if (v3)
  {
    return CFStringCompare(v2, v3, 0);
  }

  return 0;
}

__CFString *caulk::xstring::materialize_cfstring(caulk::xstring *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return &stru_28841CEE0;
  }
}

uint64_t std::__shared_ptr_pointer<caulk::deferred_logger *,std::shared_ptr<caulk::deferred_logger>::__shared_ptr_default_delete<caulk::deferred_logger,caulk::deferred_logger>,std::allocator<caulk::deferred_logger>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN5caulk15deferred_loggerEE27__shared_ptr_default_deleteIS2_S2_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<caulk::deferred_logger *,std::shared_ptr<caulk::deferred_logger>::__shared_ptr_default_delete<caulk::deferred_logger,caulk::deferred_logger>,std::allocator<caulk::deferred_logger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void caulk::deferred_logger::~deferred_logger(caulk::deferred_logger *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = 0;
  *(this + 4) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t caulk::xpc::reply_watchdog_factory::reply_watchdog_factory(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 32) = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a3);
  caulk::xpc::reply_watchdog_factory::init2(a1, a2, v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2754B6DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5caulk3xpc22reply_watchdog_factory10make_timerEi_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_27549C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC timeout", v4, 2u);
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2);
}

void applesauce::dispatch::v1::source::~source(id *this)
{
  v2 = *this;
  *this = 0;
}

void caulk::thread::thread(uint64_t a1, void *a2)
{
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 8) = 0;
  *a2 = 0;
  v2 = (a2 + 1);
  v3 = atomic_load(v2);
  atomic_store(v3 & 1, (a1 + 8));
  v4 = atomic_load(v2);
  atomic_store(v4 & 1, (a1 + 8));
}

{
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 8) = 0;
  *a2 = 0;
  v2 = (a2 + 1);
  v3 = atomic_load(v2);
  atomic_store(v3 & 1, (a1 + 8));
  v4 = atomic_load(v2);
  atomic_store(v4 & 1, (a1 + 8));
}

void caulk::thread::operator=(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  *a1 = *a2;
  *a2 = v2;
  LOBYTE(v2) = atomic_load(a2 + 8);
  atomic_store(v2 & 1, a1 + 8);
}

void caulk::thread::~thread(caulk::thread *this)
{
  if (*this)
  {
    std::terminate();
  }
}

{
  if (*this)
  {
    std::terminate();
  }
}

uint64_t caulk::thread::detach(_opaque_pthread_t **this)
{
  v2 = *this;
  if (v2)
  {
    result = pthread_detach(v2);
    if (!result)
    {
      *this = 0;
      return result;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void caulk::mach::os_eventlink::make(uint64_t *a1@<X0>, void **a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = os_eventlink_create();
  if (v4)
  {
    if (os_eventlink_activate())
    {
      os_release(v4);
      v4 = 0;
    }

    __ns.__rep_ = 1000000;
    std::this_thread::sleep_for (&__ns);
    *a2 = caulk::mach::details::retain_os_object(v4, v5);
    caulk::mach::details::release_os_object(v4, v6);
  }

  else
  {
    *a2 = 0;
  }
}

void caulk::mach::os_eventlink::make(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = os_eventlink_create_with_port();
  if (v4 && os_eventlink_activate())
  {
    os_release(v4);
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t caulk::mach::os_eventlink::copy_mach_port(caulk::mach::os_eventlink *this)
{
  result = *this;
  if (result)
  {
    if (os_eventlink_extract_remote_port())
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::mach::os_eventlink::associate(caulk::mach::os_eventlink *this)
{
  if (*this)
  {
    return os_eventlink_associate();
  }

  else
  {
    return 22;
  }
}

uint64_t caulk::mach::os_eventlink::dissociate(caulk::mach::os_eventlink *this)
{
  if (*this)
  {
    return os_eventlink_disassociate();
  }

  else
  {
    return 22;
  }
}

uint64_t caulk::mach::os_eventlink::signal_or_error(caulk::mach::os_eventlink *this)
{
  if (*this)
  {
    __dmb(0xBu);
    v1 = os_eventlink_signal();
    v2 = 0x100000000;
    v3 = v1 & 0xFFFFFF00;
    v4 = v1;
    if (v1)
    {
      v2 = 0;
    }

    else
    {
      v4 = 0;
    }

    if (!v1)
    {
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 22;
  }

  return v2 | v3 | v4;
}

uint64_t caulk::mach::os_eventlink::wait_or_error(caulk::mach::os_eventlink *this)
{
  if (!*this)
  {
    return 22;
  }

  LODWORD(result) = os_eventlink_wait();
  if (result)
  {
    return result;
  }

  __dmb(9u);
  return 0x100000000;
}

uint64_t caulk::mach::os_eventlink::timed_wait_or_error(caulk::mach::os_eventlink *this, double a2)
{
  if (!*this)
  {
    return 22;
  }

  v2 = os_eventlink_wait_until();
  if (v2 && v2 != 60)
  {
    v4 = 0;
    v3 = v2 & 0xFFFFFF00;
  }

  else
  {
    v3 = 0;
    __dmb(9u);
    LOBYTE(v2) = 0;
    v4 = 0x100000000;
  }

  return v4 | v3 | v2;
}

uint64_t caulk::mach::os_eventlink::wait_signal_or_error(caulk::mach::os_eventlink *this)
{
  if (!*this)
  {
    return 22;
  }

  __dmb(0xBu);
  LODWORD(result) = os_eventlink_signal_and_wait();
  if (result)
  {
    return result;
  }

  __dmb(9u);
  return 0x100000000;
}

uint64_t caulk::mach::os_eventlink::timed_wait_signal_or_error(caulk::mach::os_eventlink *this, double a2)
{
  if (!*this)
  {
    return 22;
  }

  __dmb(0xBu);
  v2 = os_eventlink_signal_and_wait_until();
  if (v2 && v2 != 60)
  {
    v4 = 0;
    v3 = v2 & 0xFFFFFF00;
  }

  else
  {
    v3 = 0;
    __dmb(9u);
    LOBYTE(v2) = 0;
    v4 = 0x100000000;
  }

  return v4 | v3 | v2;
}

const void *caulk::mach::vm_block::lock(const void *this, size_t a2)
{
  if (this && a2)
  {
    v2 = mlock(this, a2);

    return caulk::mach::throw_if_mach_error("mlock failed", v2);
  }

  return this;
}

const void *caulk::mach::vm_block::unlock(const void *this, size_t a2)
{
  if (this && a2)
  {
    v2 = munlock(this, a2);

    return caulk::mach::throw_if_mach_error("munlock failed", v2);
  }

  return this;
}

caulk::mach::vm_block *caulk::mach::vm_block::vm_block(caulk::mach::vm_block *this, size_t a2)
{
  *this = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(this + 1) = caulk::mach::vm_block::alloc(a2, 0);
  return this;
}

{
  *this = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(this + 1) = caulk::mach::vm_block::alloc(a2, 0);
  return this;
}

caulk::mach::vm_block *caulk::mach::vm_block::vm_block(caulk::mach::vm_block *this, size_t a2, int a3)
{
  *this = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(this + 1) = caulk::mach::vm_block::alloc(a2, a3);
  return this;
}

{
  *this = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  *(this + 1) = caulk::mach::vm_block::alloc(a2, a3);
  return this;
}

void *caulk::mach::vm_block::vm_block(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  result[1] = v3;
  return result;
}

{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t *caulk::mach::vm_block::operator=(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

void caulk::mach::vm_block::destroy(caulk::mach::vm_block *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    caulk::mach::vm_block::dealloc(v2, *this);
    *this = 0;
    *(this + 1) = 0;
  }
}

void caulk::mach::vm_block::~vm_block(caulk::mach::vm_block *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    caulk::mach::vm_block::dealloc(v2, *this);
    *this = 0;
    *(this + 1) = 0;
  }
}

double caulk::mach::vm_scanner::vm_scanner(caulk::mach::vm_scanner *this, uint64_t a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

void *caulk::mach::vm_scanner::next_region(caulk::mach::vm_scanner *this)
{
  *(this + 1) = *this;
  v2 = (this + 8);
  *(this + 2) = 0;
  v3 = (this + 16);
  object_name = 0;
  infoCnt = 9;
  v4 = vm_region_64(*MEMORY[0x277D85F48], this + 1, this + 2, 13, this + 6, &infoCnt, &object_name);
  *this = *v3 + *v2;
  if (v4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

caulk::mach *caulk::mach::find_unused_vm_address_range(caulk::mach *this, uint64_t a2)
{
  v3 = this;
  v7 = this;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  while (1)
  {
    region = caulk::mach::vm_scanner::next_region(&v7);
    if (!region)
    {
      break;
    }

    v5 = *region;
    if (v3)
    {
      if (v5 >= v3 + a2)
      {
        break;
      }
    }

    v3 = (region[1] + v5);
  }

  return v3;
}

char *caulk::concurrent::messenger::shared_logging_priority(caulk::concurrent::messenger *this)
{
  {
    caulk::concurrent::messenger::shared_logging_priority(void)::global = 0;
    byte_280AD19D8 = 0;
    qword_280AD19E0 = 21;
    dword_280AD19F0 = 0;
    byte_280AD19F4 = 1;
    byte_280AD19F8 = 0;
    byte_280AD19FC = 0;
  }

  return &caulk::concurrent::messenger::shared_logging_priority(void)::global;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (os_unfair_lock_trylock(v2))
  {
    v3 = std::remove_if[abi:ne200100]<std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::remove_expired(void)::{lambda(std::__wrap_iter<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>> *> const&)#1}>(*(v2 + 8), *(v2 + 16));
    std::vector<std::weak_ptr<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>>::erase((v2 + 8), v3, *(v2 + 16));
    os_unfair_lock_unlock(v2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<caulk::lifetime_observed<std::unique_ptr<caulk::concurrent::details::service_thread>,caulk::shared_instance_manager<caulk::concurrent::details::service_thread>::observer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void caulk::concurrent::details::worker_thread::~worker_thread(caulk::concurrent::details::worker_thread *this)
{
  *this = &unk_28841B130;
  caulk::semaphore::~semaphore((this + 32));
  if (*(this + 24) == 1)
  {
    if (*(this + 1))
    {
      std::terminate();
    }
  }
}

uint64_t std::default_delete<std::tuple<caulk::thread::attributes,void (caulk::concurrent::details::worker_thread::*)(void),std::tuple<caulk::concurrent::details::worker_thread*>>>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x277C78AD0);
  }

  return result;
}

void non-virtual thunk tocaulk::concurrent::details::service_thread::~service_thread(caulk::concurrent::details::service_thread *this)
{
  caulk::concurrent::details::service_thread::~service_thread((this - 56));

  JUMPOUT(0x277C78AD0);
}

{
  caulk::concurrent::details::service_thread::~service_thread((this - 56));
}

void caulk::concurrent::details::service_thread::~service_thread(caulk::concurrent::details::service_thread *this)
{
  *this = &unk_28841B0C8;
  *(this + 7) = &unk_28841B100;
  caulk::concurrent::details::messenger_servicer::drain(this + 7);
  v2 = atomic_load(this + 48);
  if ((v2 & 1) == 0)
  {
    atomic_store(1u, this + 49);
    if ((atomic_fetch_add_explicit(this + 10, 1u, memory_order_release) & 0x80000000) != 0)
    {
      caulk::mach::semaphore::signal_or_error((this + 32));
    }
  }

  if (*(this + 24) == 1 && *(this + 1))
  {
    caulk::thread::join(this + 1);
  }

  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  caulk::concurrent::details::worker_thread::~worker_thread(this);
}

{
  caulk::concurrent::details::service_thread::~service_thread(this);

  JUMPOUT(0x277C78AD0);
}

void caulk::concurrent::details::rt_message_call<caulk::concurrent::details::messenger_servicer::drain(void)::{lambda(void)#1} &&>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x277C78AD0);
}

unint64_t caulk::concurrent::details::service_thread::messenger_signal_wakeup(unint64_t this)
{
  if ((atomic_fetch_add_explicit((this + 40), 1u, memory_order_release) & 0x80000000) != 0)
  {
    return caulk::mach::semaphore::signal_or_error((this + 32));
  }

  return this;
}

void std::__shared_ptr_emplace<caulk::concurrent::details::service_thread>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void std::__shared_ptr_emplace<caulk::concurrent::details::dispatch_receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

unint64_t caulk::ipc::synchronous_messenger::semaphore_sender::resynch(caulk::ipc::synchronous_messenger::semaphore_sender *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    goto LABEL_24;
  }

  v1 = *(this + 4);
  if (!v1)
  {
    goto LABEL_24;
  }

  v2 = (this + 48);
  if (!*(this + 12) || (v3 = (this + 56), !*(this + 14)) || *(this + 64) != 1)
  {
    v1 = 0;
LABEL_24:
    v10 = 0;
    v9 = 22;
    return v10 | v1 | v9;
  }

  if (v1 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v4 = *(this + 3);
  *v4 = 2;
  __dmb(0xBu);
  caulk::mach::semaphore::signal_or_error((this + 56));
  while (1)
  {
    do
    {
      v5 = MEMORY[0x277C79300](*v2);
    }

    while (v5 == 14);
    if (v5)
    {
      break;
    }

    __dmb(9u);
    if (v4[1] == 2)
    {
      *v4 = 1;
      __dmb(0xBu);
      caulk::mach::semaphore::signal_or_error(v3);
      while (1)
      {
        do
        {
          v5 = MEMORY[0x277C79300](*v2);
        }

        while (v5 == 14);
        if (v5)
        {
          break;
        }

        __dmb(9u);
        if (v4[1] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "semaphore_sender::resynch: wait out the sender semaphore to clear things out for next time S-1");
          v6 = 0;
          v7 = CFNumberGetTypeID;
          do
          {
            v8 = caulk::mach::semaphore::timed_wait_or_error(v2, 0.000001, v7);
            v7 = HIDWORD(v8);
            if ((v6 ^ BYTE4(v8)))
            {
              v6 = BYTE4(v8);
            }
          }

          while ((v8 & 1) != 0 && (v6 & 1) != 0);
          __dmb(9u);
          if (v13 < 0)
          {
            operator delete(__p);
          }

          v9 = 0;
          v10 = 0;
          v1 = 0x100000000;
          return v10 | v1 | v9;
        }
      }

      break;
    }
  }

  v1 = 0;
  v9 = v5;
  v10 = v5 & 0xFFFFFF00;
  return v10 | v1 | v9;
}

unint64_t caulk::ipc::synchronous_messenger::semaphore_sender::resynch(caulk::ipc::synchronous_messenger::semaphore_sender *this, double a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_24;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = (this + 48);
  if (!*(this + 12) || (v4 = (this + 56), !*(this + 14)) || *(this + 64) != 1)
  {
    LOBYTE(v2) = 0;
LABEL_24:
    v13 = 0;
    LOBYTE(v9) = 22;
    return v13 & 0xFFFFFF00FFFFFFFFLL | v9 | (v2 << 32);
  }

  if (v2 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v6 = *(this + 3);
  *v6 = 2;
  __dmb(0xBu);
  caulk::mach::semaphore::signal_or_error((this + 56));
  while (1)
  {
    v8 = caulk::mach::semaphore::timed_wait_or_error(v3, a2, v7);
    v9 = v8;
    v2 = HIDWORD(v8);
    if ((v8 & 0x100000000) == 0 || (v8 & 1) == 0)
    {
      break;
    }

    __dmb(9u);
    v7 = v6[1];
    if (v7 == 2)
    {
      *v6 = 1;
      __dmb(0xBu);
      caulk::mach::semaphore::signal_or_error(v4);
      while (1)
      {
        v11 = caulk::mach::semaphore::timed_wait_or_error(v3, a2, v10);
        v9 = v11;
        v2 = HIDWORD(v11);
        if ((v11 & 0x100000000) == 0 || (v11 & 1) == 0)
        {
          break;
        }

        __dmb(9u);
        v10 = v6[1];
        if (v10 == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "semaphore_sender::resynch: wait out the sender semaphore to clear things out for next time S-1");
          v12 = 0;
          v13 = v9 & 0xFFFFFF00;
          v14 = CFNumberGetTypeID;
          do
          {
            v15 = caulk::mach::semaphore::timed_wait_or_error(v3, 0.000001, v14);
            v14 = HIDWORD(v15);
            if ((v12 ^ BYTE4(v15)))
            {
              v12 = BYTE4(v15);
            }
          }

          while ((v15 & 1) != 0 && (v12 & 1) != 0);
          __dmb(9u);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          LOBYTE(v2) = 1;
          LOBYTE(v9) = 1;
          return v13 & 0xFFFFFF00FFFFFFFFLL | v9 | (v2 << 32);
        }
      }

      break;
    }
  }

  v13 = v9 & 0xFFFFFF00;
  return v13 & 0xFFFFFF00FFFFFFFFLL | v9 | (v2 << 32);
}

uint64_t caulk::ipc::synchronous_messenger::semaphore_receiver::start(caulk::ipc::synchronous_messenger::semaphore_receiver *this, double a2, const caulk::thread::attributes *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = &unk_28841AF98;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v3 = caulk::ipc::synchronous_messenger::semaphore_receiver::start(this, a3, &v7, a2);
  v7 = &unk_28841AF98;
  caulk::mach::details::release_os_object(v8[0], v4);
  v5 = *MEMORY[0x277D85DE8];
  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0::~$_0(uint64_t a1, void *a2)
{
  *(a1 + 40) = &unk_28841AF98;
  caulk::mach::details::release_os_object(*(a1 + 48), a2);
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0::~$_0(uint64_t a1, void *a2)
{
  *(a1 + 40) = &unk_28841B000;
  caulk::mach::details::release_os_object(*(a1 + 48), a2);
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    *(v3 + 104) = &unk_28841B000;
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

    MEMORY[0x277C78AD0](v3, 0x10B2C40C95379B2);
  }

  return a1;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0,std::tuple<>>>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v18 = &unk_28841B000;
  v19 = caulk::mach::details::retain_os_object(*(a1 + 112), v6);
  v7 = *(v2 + 112);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  v20 = &v18;
  memset(&v21, 0, sizeof(v21));
  v22 = caulk::mach::os_workgroup::join(&v18, &v21);
  started = caulk::ipc::synchronous_messenger::semaphore_receiver::start_handshake(v2, v3);
  v9 = v5[4];
  if ((started & 0x100000000) != 0)
  {
    *v5 = started;
    if ((v9 & 1) == 0)
    {
      v5[4] = BYTE4(started);
    }

    caulk::expected<BOOL,int>::value(v5);
    v10 = *v5;
    __dmb(0xBu);
    caulk::mach::semaphore::signal_or_error(v4);
    if (v10 == 1)
    {
      caulk::ipc::synchronous_messenger::semaphore_receiver::message_loop(v2, v11);
    }
  }

  else
  {
    *v5 = started;
    if (v9)
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

  if (!v22)
  {
    caulk::mach::os_workgroup::leave(v20[1], &v21);
  }

  v12 = *(v2 + 176);
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  __dmb(0xBu);
  caulk::mach::semaphore::signal_or_error((v2 + 80));
  v18 = &unk_28841B000;
  caulk::mach::details::release_os_object(v19, v13);
  std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v17, v14);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2754B87BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a2)
  {
    if (!a19)
    {
      caulk::mach::os_workgroup::leave(*(a13 + 8), (v19 + 8));
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2754B8734);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::mach::os_workgroup::leave(uint64_t this, os_workgroup_join_token_opaque_s *a2)
{
  if (this)
  {
    return os_workgroup_leave_self();
  }

  return this;
}

void caulk::ipc::synchronous_messenger::semaphore_receiver::simulate_crash_for_testing(caulk::ipc::synchronous_messenger::semaphore_receiver *this, double a2)
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
          *(this + 92) = 257;
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

void caulk::ipc::synchronous_messenger::eventlink_sender::create_connection_info(caulk::ipc::synchronous_messenger::eventlink_sender *this@<X0>, void *a2@<X8>)
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
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "failed to create payload object");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "payload", value);
  caulk::ipc::mapped_memory::create_xpc_object((this + 24), &v16);
  v6 = v16;
  if (!v16)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "failed to create control object");
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "control", v16);
  v15 = caulk::mach::os_eventlink::copy_mach_port((this + 48));
  if (!v15)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "failed to create eventlink port");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = xpc_mach_send_create();
  if (!v7)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "failed to create eventlink object");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_dictionary_set_value(v4, "eventlink", v7);
  os_release(v7);
  caulk::mach::mach_port::~mach_port(&v15);
  caulk::mach::details::release_os_object(v6, v8);
  caulk::mach::details::release_os_object(v5, v9);
}

void sub_2754B8B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, mach_port_name_t a11)
{
  __cxa_free_exception(v14);
  caulk::mach::mach_port::~mach_port(&a11);
  caulk::mach::details::release_os_object(v13, v16);
  caulk::mach::details::release_os_object(v12, v17);
  caulk::mach::details::release_os_object(v11, v18);
  _Unwind_Resume(a1);
}

void caulk::mach::mach_port::~mach_port(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], *this);
  }
}

uint64_t caulk::ipc::synchronous_messenger::eventlink_sender::associate(caulk::ipc::synchronous_messenger::eventlink_sender *this)
{
  if (*(this + 1) && *(this + 4) && (v2 = *(this + 6), v1 = (this + 48), v2))
  {
    return caulk::mach::os_eventlink::associate(v1);
  }

  else
  {
    return 22;
  }
}

uint64_t caulk::ipc::synchronous_messenger::eventlink_sender::dissociate(caulk::ipc::synchronous_messenger::eventlink_sender *this)
{
  if (*(this + 1) && *(this + 4) && (v2 = *(this + 6), v1 = (this + 48), v2))
  {
    return caulk::mach::os_eventlink::dissociate(v1);
  }

  else
  {
    return 22;
  }
}

unint64_t caulk::ipc::synchronous_messenger::eventlink_sender::start(caulk::ipc::synchronous_messenger::eventlink_sender *this, double a2, int a3)
{
  if (!*(this + 1))
  {
    goto LABEL_7;
  }

  v4 = *(this + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = (this + 48);
  if (!*(this + 6) || (*(this + 56) & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v4 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v6 = *(this + 3);
  if (*v6)
  {
LABEL_7:
    LOBYTE(v7) = 0;
    v8 = 0;
    LOBYTE(v9) = 22;
    return v9 | (v8 << 8) | (v7 << 32);
  }

  if (a3)
  {
    v13 = caulk::mach::os_eventlink::associate((this + 48));
    if (v13)
    {
      LOBYTE(v9) = v13;
      LOBYTE(v7) = 0;
      v8 = v13 >> 8;
      return v9 | (v8 << 8) | (v7 << 32);
    }
  }

  do
  {
    v14 = caulk::mach::os_eventlink::timed_wait_or_error((this + 48), a2);
    v9 = v14;
    v7 = HIDWORD(v14);
    if ((v14 & 0x100000000) == 0)
    {
      v8 = v14 >> 8;
      if (!a3)
      {
        return v9 | (v8 << 8) | (v7 << 32);
      }

LABEL_20:
      caulk::mach::os_eventlink::dissociate(v5);
      return v9 | (v8 << 8) | (v7 << 32);
    }

    if ((v14 & 1) == 0)
    {
      v8 = v14 >> 8;
      if (!a3)
      {
        return v9 | (v8 << 8) | (v7 << 32);
      }

      goto LABEL_20;
    }

    __dmb(9u);
  }

  while (v6[1] != 1);
  *v6 = 1;
  __dmb(0xBu);
  caulk::mach::os_eventlink::signal_or_error((this + 48));
  v15 = caulk::mach::os_eventlink::timed_wait_or_error((this + 48), a2);
  v7 = HIDWORD(v15);
  if ((v15 & 0x100000000) != 0)
  {
    v16 = v9 >> 8;
    *(this + 56) = 1;
    LOBYTE(v7) = 1;
    LOBYTE(v9) = 1;
    v8 = v16;
  }

  else
  {
    v17 = v15;
    if (a3)
    {
      caulk::mach::os_eventlink::dissociate((this + 48));
    }

    v8 = v17 >> 8;
    LOBYTE(v9) = v17;
  }

  return v9 | (v8 << 8) | (v7 << 32);
}

unint64_t caulk::ipc::synchronous_messenger::eventlink_sender::send(caulk::ipc::synchronous_messenger::eventlink_sender *this, double a2)
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
  v5 = *(this + 6);
  if (!v5)
  {
    v2 = 0;
LABEL_14:
    LOBYTE(v9) = 22;
    return v9 | v2 | v5;
  }

  if (*(this + 56) != 1)
  {
LABEL_12:
    v2 = 0;
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (v2 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v7 = *(this + 3);
  if (*v7 != 1 || !v7[1])
  {
    caulk::ipc::synchronous_messenger::eventlink_sender::reset_messaging(this, a2);
    goto LABEL_12;
  }

  v8 = caulk::mach::os_eventlink::timed_wait_signal_or_error(v4, a2);
  v9 = v8;
  if (HIDWORD(v8))
  {
    v2 = 0x100000000;
    if (v8)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v2 = v8 & 0x100000000;
    }

    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8 & 0xFFFFFF00;
    }
  }

  else
  {
    caulk::ipc::synchronous_messenger::eventlink_sender::reset_messaging(this, a2);
    v2 = 0;
    v5 = v9 & 0xFFFFFF00;
  }

  return v9 | v2 | v5;
}

void caulk::ipc::synchronous_messenger::eventlink_sender::reset_messaging(caulk::ipc::synchronous_messenger::eventlink_sender *this, double a2)
{
  if (*(this + 4) <= 7uLL)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v4 = *(this + 3);
  *v4 = 0;
  caulk::mach::os_eventlink::signal_or_error((this + 48));
  do
  {
    v5 = caulk::mach::os_eventlink::timed_wait_or_error((this + 48), a2);
  }

  while (HIDWORD(v5) && (v5 & 1) != 0 && v4[1]);
  *(this + 56) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_sender::reset_messaging: wait out the eventlink to clear things out for next time S-1");
  v6 = 0;
  do
  {
    v7 = caulk::mach::os_eventlink::timed_wait_or_error((this + 48), 0.000001);
    if ((v6 ^ BYTE4(v7)))
    {
      v6 = BYTE4(v7);
    }
  }

  while ((v7 & 1) != 0 && (v6 & 1) != 0);
  __dmb(9u);
  if (v9 < 0)
  {
    operator delete(__p);
  }
}

unint64_t caulk::ipc::synchronous_messenger::eventlink_sender::resynch(caulk::ipc::synchronous_messenger::eventlink_sender *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    goto LABEL_21;
  }

  v1 = *(this + 4);
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = (this + 48);
  if (!*(this + 6) || *(this + 56) != 1)
  {
    LOBYTE(v1) = 0;
LABEL_21:
    v8 = 0;
    LOBYTE(v6) = 22;
    return v8 & 0xFFFFFF00FFFFFFFFLL | v6 | (v1 << 32);
  }

  if (v1 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v3 = *(this + 3);
  *v3 = 2;
  caulk::mach::os_eventlink::signal_or_error((this + 48));
  do
  {
    v4 = caulk::mach::os_eventlink::wait_or_error(v2);
    v1 = HIDWORD(v4);
    if ((v4 & 0x100000000) == 0)
    {
      v6 = v4;
      goto LABEL_24;
    }
  }

  while (v3[1] != 2);
  *v3 = 1;
  caulk::mach::os_eventlink::signal_or_error(v2);
  while (1)
  {
    v5 = caulk::mach::os_eventlink::wait_or_error(v2);
    v6 = v5;
    v1 = HIDWORD(v5);
    if ((v5 & 0x100000000) == 0)
    {
      break;
    }

    if (v3[1] == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_sender::reset_messaging: wait out the sender eventlink to clear things out for next time S-1");
      v7 = 0;
      v8 = v6 & 0xFFFFFF00;
      do
      {
        v9 = caulk::mach::os_eventlink::timed_wait_or_error(v2, 0.000001);
        if ((v7 ^ BYTE4(v9)))
        {
          v7 = BYTE4(v9);
        }
      }

      while ((v9 & 1) != 0 && (v7 & 1) != 0);
      __dmb(9u);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      LOBYTE(v6) = 0;
      LOBYTE(v1) = 1;
      return v8 & 0xFFFFFF00FFFFFFFFLL | v6 | (v1 << 32);
    }
  }

LABEL_24:
  v8 = v6 & 0xFFFFFF00;
  return v8 & 0xFFFFFF00FFFFFFFFLL | v6 | (v1 << 32);
}

unint64_t caulk::ipc::synchronous_messenger::eventlink_sender::resynch(caulk::ipc::synchronous_messenger::eventlink_sender *this, double a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_23;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = (this + 48);
  if (!*(this + 6) || *(this + 56) != 1)
  {
    LOBYTE(v2) = 0;
LABEL_23:
    v10 = 0;
    LOBYTE(v7) = 22;
    return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v2 << 32);
  }

  if (v2 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v5 = *(this + 3);
  *v5 = 2;
  caulk::mach::os_eventlink::signal_or_error((this + 48));
  while (1)
  {
    v6 = caulk::mach::os_eventlink::timed_wait_or_error(v3, a2);
    v7 = v6;
    v2 = HIDWORD(v6);
    if ((v6 & 0x100000000) == 0 || (v6 & 1) == 0)
    {
      break;
    }

    if (v5[1] == 2)
    {
      *v5 = 1;
      caulk::mach::os_eventlink::signal_or_error(v3);
      while (1)
      {
        v8 = caulk::mach::os_eventlink::timed_wait_or_error(v3, a2);
        v7 = v8;
        v2 = HIDWORD(v8);
        if ((v8 & 0x100000000) == 0 || (v8 & 1) == 0)
        {
          break;
        }

        if (v5[1] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_sender::reset_messaging: wait out the sender semaphore to clear things out for next time S-1");
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          do
          {
            v11 = caulk::mach::os_eventlink::timed_wait_or_error(v3, 0.000001);
            if ((v9 ^ BYTE4(v11)))
            {
              v9 = BYTE4(v11);
            }
          }

          while ((v11 & 1) != 0 && (v9 & 1) != 0);
          __dmb(9u);
          if (v14 < 0)
          {
            operator delete(__p);
          }

          LOBYTE(v2) = 1;
          LOBYTE(v7) = 1;
          return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v2 << 32);
        }
      }

      break;
    }
  }

  v10 = v7 & 0xFFFFFF00;
  return v10 & 0xFFFFFF00FFFFFFFFLL | v7 | (v2 << 32);
}

void caulk::ipc::synchronous_messenger::eventlink_sender::stop(caulk::ipc::synchronous_messenger::eventlink_sender *this, double a2, int a3)
{
  if (*(this + 1))
  {
    if (*(this + 4))
    {
      v3 = (this + 48);
      if (*(this + 6))
      {
        if (*(this + 56) == 1)
        {
          caulk::ipc::synchronous_messenger::eventlink_sender::reset_messaging(this, a2);
          if (a3)
          {

            caulk::mach::os_eventlink::dissociate(v3);
          }
        }
      }
    }
  }
}

void caulk::ipc::synchronous_messenger::eventlink_receiver::ingest_connection_info(uint64_t a1, uint64_t *a2, xpc_object_t *a3)
{
  if (!*a3)
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

  value = xpc_dictionary_get_value(*a3, "payload");
  v8 = caulk::mach::details::retain_os_object(value, v7);
  v32 = v8;
  if (!v8)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "no payload");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::mapped_memory::mapped_memory(&v30, &v32);
  v9 = *(a1 + 16);
  *(a1 + 16) = v30;
  v30 = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v31;
  v31 = v10;
  caulk::ipc::mapped_memory::reset(&v30);
  v11 = xpc_dictionary_get_value(*a3, "control");
  v13 = caulk::mach::details::retain_os_object(v11, v12);
  v29 = v13;
  if (!v13)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "no control");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  caulk::ipc::mapped_memory::mapped_memory(&v30, &v29);
  v14 = *(a1 + 40);
  *(a1 + 40) = v30;
  v30 = v14;
  v15 = *(a1 + 56);
  *(a1 + 56) = v31;
  v31 = v15;
  caulk::ipc::mapped_memory::reset(&v30);
  v16 = xpc_dictionary_get_value(*a3, "eventlink");
  v18 = caulk::mach::details::retain_os_object(v16, v17);
  v19 = v18;
  if (!v18)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "no eventlink");
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (MEMORY[0x277C793E0](v18) != MEMORY[0x277D864A0])
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "object is not a mach send right");
    __cxa_throw(v28, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  xpc_mach_send_copy_right();
  caulk::mach::os_eventlink::make(a2, &v30);
  v20 = *(a1 + 64);
  *(a1 + 64) = v30;
  caulk::mach::details::release_os_object(v20, v21);
  os_release(v19);
  caulk::mach::details::release_os_object(v13, v22);
  caulk::mach::details::release_os_object(v8, v23);
}

void sub_2754B95EC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  caulk::mach::details::release_os_object(v4, v6);
  caulk::mach::details::release_os_object(v2, v7);
  caulk::mach::details::release_os_object(v1, v8);
  _Unwind_Resume(a1);
}

uint64_t caulk::ipc::synchronous_messenger::eventlink_receiver::start(caulk::ipc::synchronous_messenger::eventlink_receiver *this, double a2, const caulk::thread::attributes *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = &unk_28841AF98;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v3 = caulk::ipc::synchronous_messenger::eventlink_receiver::start(this, a3, &v7, a2);
  v7 = &unk_28841AF98;
  caulk::mach::details::release_os_object(v8[0], v4);
  v5 = *MEMORY[0x277D85DE8];
  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t caulk::ipc::synchronous_messenger::eventlink_receiver::start(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) && *(a1 + 48) && *(a1 + 64))
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
  if (*(a1 + 24) && *(a1 + 48) && *(a1 + 64))
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

void sub_2754B9A2C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&a22, a2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::eventlink_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>(uint64_t a1)
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
  caulk::mach::os_eventlink::associate((v2 + 64));
  v8 = *(v2 + 104);
  if (v8)
  {
    (*(*v8 + 48))(v8);
  }

  v9 = caulk::mach::os_workgroup_managed::join(&v20);
  started = caulk::ipc::synchronous_messenger::eventlink_receiver::start_handshake(v2, v3);
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
    caulk::mach::semaphore::signal_or_error(v4);
    if (v12 == 1)
    {
      caulk::ipc::synchronous_messenger::eventlink_receiver::message_loop(v2, v13);
    }
  }

  else
  {
    *v5 = started;
    if (v11)
    {
      v5[4] = BYTE4(started);
    }

    caulk::mach::semaphore::signal_or_error(v4);
  }

  if ((*(v2 + 185) & 1) == 0)
  {
    caulk::ipc::synchronous_messenger::eventlink_receiver::stop_handshake(v2);
  }

  if (!v9)
  {
    caulk::mach::os_workgroup_managed::leave(&v20);
  }

  v14 = *(v2 + 168);
  if (v14)
  {
    (*(*v14 + 48))(v14);
  }

  caulk::mach::os_eventlink::dissociate((v2 + 64));
  caulk::mach::semaphore::signal_or_error((v2 + 72));
  v20 = &unk_28841AF98;
  caulk::mach::details::release_os_object(v21, v15);
  std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup_managed)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v19, v16);
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2754B9C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    if (!v10)
    {
      caulk::mach::os_workgroup_managed::leave(&a10);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2754B9BE4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::ipc::synchronous_messenger::eventlink_receiver::start_handshake(caulk::mach::os_eventlink *this, double a2)
{
  v2 = (this + 64);
  v3 = *(this + 6);
  if (*(this + 3))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || *(this + 8) == 0)
  {
    goto LABEL_10;
  }

  if (v3 <= 7)
  {
    CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
  }

  v6 = *(this + 5);
  if (v6[1])
  {
LABEL_10:
    v7 = 0;
    v8 = 0;
    v9 = 22;
  }

  else
  {
    v6[1] = 1;
    caulk::mach::os_eventlink::signal_or_error((this + 64));
    while (1)
    {
      v12 = caulk::mach::os_eventlink::timed_wait_or_error(v2, a2);
      if (!HIDWORD(v12) || (v12 & 1) == 0)
      {
        break;
      }

      if (*v6 == 1)
      {
        v8 = v12 & 0xFFFFFF00;
        caulk::mach::os_eventlink::signal_or_error(v2);
        v7 = 0x100000000;
        v9 = 1;
        return v8 | v7 | v9;
      }
    }

    v8 = v12 & 0xFFFFFF00;
    v9 = v12;
    v7 = v12 & 0x100000000;
  }

  return v8 | v7 | v9;
}

unint64_t caulk::ipc::synchronous_messenger::eventlink_receiver::message_loop(unint64_t this, caulk::ipc::synchronous_messenger::eventlink_receiver *a2)
{
  if ((*(this + 184) & 1) == 0)
  {
    v2 = this;
    v3 = 0;
    do
    {
      if (*(v2 + 48) <= 7uLL)
      {
LABEL_44:
        CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
      }

      v4 = *(v2 + 40);
      v15 = 1;
      v16 = 0;
      v5 = *(v2 + 176);
      v6 = (v2 + 64);
      if (v3)
      {
        this = caulk::mach::os_eventlink::timed_wait_signal_or_error(v6, v5);
        v7 = HIDWORD(this);
        v8 = v16;
        if ((this & 0x100000000) != 0)
        {
          goto LABEL_10;
        }

        v15 = this;
        if ((v16 & 1) == 0)
        {
          return this;
        }
      }

      else
      {
        this = caulk::mach::os_eventlink::timed_wait_or_error(v6, v5);
        v7 = HIDWORD(this);
        v8 = v16;
        if ((this & 0x100000000) != 0)
        {
LABEL_10:
          v9 = 0;
          LOBYTE(v15) = this;
          if (v8)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v15 = this;
        if (!v16)
        {
          return this;
        }
      }

      v9 = 1;
LABEL_14:
      v16 = v7;
      if (v9)
      {
        return this;
      }

LABEL_15:
      if (*(v2 + 184))
      {
        return this;
      }

      this = caulk::expected<BOOL,int>::value(&v15);
      if (v15 != 1)
      {
        goto LABEL_20;
      }

      this = *(v2 + 136);
      if (!this)
      {
        goto LABEL_20;
      }

      v10 = *v4;
      if (*v4 == 1)
      {
        this = (*(*this + 48))(this, v2 + 16);
LABEL_20:
        v10 = *v4;
      }

      switch(v10)
      {
        case 1:
          this = caulk::expected<BOOL,int>::value(&v15);
          v3 = v15;
          break;
        case 2:
          v3 = 0;
          if (*(v2 + 24))
          {
            v11 = *(v2 + 48);
            if (v11)
            {
              if (*(v2 + 64))
              {
                if (v11 <= 7)
                {
                  goto LABEL_44;
                }

                v12 = *(v2 + 40);
                v12[1] = 2;
                caulk::mach::os_eventlink::signal_or_error((v2 + 64));
                while (1)
                {
                  this = caulk::mach::os_eventlink::wait_or_error((v2 + 64));
                  if (!HIDWORD(this))
                  {
                    break;
                  }

                  if (*v12 == 1)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_receiver::reynch_handshake: wait out the eventlink to clear things out for next time R-1");
                    v13 = 0;
                    do
                    {
                      v14 = caulk::mach::os_eventlink::timed_wait_or_error((v2 + 64), 0.000001);
                      if ((v13 ^ BYTE4(v14)))
                      {
                        v13 = BYTE4(v14);
                      }
                    }

                    while ((v14 & 1) != 0 && (v13 & 1) != 0);
                    __dmb(9u);
                    if (v18 < 0)
                    {
                      operator delete(__p);
                    }

                    v12[1] = 1;
                    this = caulk::mach::os_eventlink::signal_or_error((v2 + 64));
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
    }

    while (*(v2 + 184) != 1);
  }

  return this;
}

caulk::mach::os_eventlink *caulk::ipc::synchronous_messenger::eventlink_receiver::stop_handshake(uint64_t a1)
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

  if (!v7 && v4 != 0)
  {
    if (v6 <= 7)
    {
      CAAssertRtn("mapped_memory.h", 77, "(in_offset + sizeof(T)) <= size()");
    }

    v9 = *(a1 + 40);
    if (*(v9 + 4) == 1)
    {
      *(v9 + 4) = 0;

      return caulk::mach::os_eventlink::signal_or_error(result);
    }
  }

  return result;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::eventlink_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0,std::tuple<>>>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a1;
  caulk::thread::attributes::apply_to_this_thread(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v18 = &unk_28841B000;
  v19 = caulk::mach::details::retain_os_object(*(a1 + 112), v6);
  caulk::mach::os_eventlink::associate((v2 + 64));
  v7 = *(v2 + 104);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  v20 = &v18;
  memset(&v21, 0, sizeof(v21));
  v22 = caulk::mach::os_workgroup::join(&v18, &v21);
  started = caulk::ipc::synchronous_messenger::eventlink_receiver::start_handshake(v2, v3);
  v9 = v5[4];
  if ((started & 0x100000000) != 0)
  {
    *v5 = started;
    if ((v9 & 1) == 0)
    {
      v5[4] = BYTE4(started);
    }

    caulk::expected<BOOL,int>::value(v5);
    v10 = *v5;
    caulk::mach::semaphore::signal_or_error(v4);
    if (v10 == 1)
    {
      caulk::ipc::synchronous_messenger::eventlink_receiver::message_loop(v2, v11);
    }
  }

  else
  {
    *v5 = started;
    if (v9)
    {
      v5[4] = BYTE4(started);
    }

    caulk::mach::semaphore::signal_or_error(v4);
  }

  if ((*(v2 + 185) & 1) == 0)
  {
    caulk::ipc::synchronous_messenger::eventlink_receiver::stop_handshake(v2);
  }

  if (!v22)
  {
    caulk::mach::os_workgroup::leave(v20[1], &v21);
  }

  v12 = *(v2 + 168);
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  caulk::mach::os_eventlink::dissociate((v2 + 64));
  caulk::mach::semaphore::signal_or_error((v2 + 72));
  v18 = &unk_28841B000;
  caulk::mach::details::release_os_object(v19, v13);
  std::unique_ptr<std::tuple<caulk::thread::attributes,caulk::ipc::synchronous_messenger::semaphore_receiver::start(double,caulk::thread::attributes const&,caulk::mach::os_workgroup)::$_0,std::tuple<>>>::~unique_ptr[abi:ne200100](&v17, v14);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2754BA50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a2)
  {
    if (!a19)
    {
      caulk::mach::os_workgroup::leave(*(a13 + 8), (v19 + 8));
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2754BA480);
  }

  _Unwind_Resume(exception_object);
}

void caulk::ipc::synchronous_messenger::eventlink_receiver::stop(caulk::ipc::synchronous_messenger::eventlink_receiver *this, double a2)
{
  if (*(this + 3))
  {
    if (*(this + 6))
    {
      v2 = (this + 64);
      if (*(this + 8))
      {
        *(this + 184) = 1;
        caulk::mach::semaphore::timed_wait_or_error(this + 18, a2, 1);
        std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_receiver::stop: wait out the eventlink to clear things out for next time R-1");
        v3 = 0;
        do
        {
          v4 = caulk::mach::os_eventlink::timed_wait_or_error(v2, 0.000001);
          if ((v3 ^ BYTE4(v4)))
          {
            v3 = BYTE4(v4);
          }
        }

        while ((v4 & 1) != 0 && (v3 & 1) != 0);
        __dmb(9u);
        if (v6 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }
}

void caulk::ipc::synchronous_messenger::eventlink_receiver::simulate_crash_for_testing(caulk::ipc::synchronous_messenger::eventlink_receiver *this, double a2)
{
  if (*(this + 3))
  {
    if (*(this + 6))
    {
      v2 = (this + 64);
      if (*(this + 8))
      {
        *(this + 92) = 257;
        caulk::mach::semaphore::timed_wait_or_error(this + 18, a2, 257);
        std::string::basic_string[abi:ne200100]<0>(&__p, "eventlink_receiver::simulate_crash_for_testing: wait out the eventlink to clear things out for next time R-1");
        v3 = 0;
        do
        {
          v4 = caulk::mach::os_eventlink::timed_wait_or_error(v2, 0.000001);
          if ((v3 ^ BYTE4(v4)))
          {
            v3 = BYTE4(v4);
          }
        }

        while ((v4 & 1) != 0 && (v3 & 1) != 0);
        __dmb(9u);
        if (v6 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }
}

void *caulk::alloc::malloc_allocator::allocate(caulk::alloc::malloc_allocator *this, size_t size, size_t alignment)
{
  if (alignment <= 0x10)
  {
    return malloc_type_malloc(size, 0xF8DFD791uLL);
  }

  if (alignment > 0x1000)
  {
    return malloc_type_valloc(size, 0x9C2496CuLL);
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, alignment, size, 0x46F01562uLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

void *caulk::alloc::malloc_allocator::describe(caulk::alloc::malloc_allocator *this, caulk::alloc::base_allocator::formatter *a2)
{
  caulk::alloc::base_allocator::formatter::emit_string(a2, "malloc_allocator @");
  caulk::alloc::base_allocator::formatter::check_line_start(a2);
  MEMORY[0x277C78960](*a2, this);

  return caulk::alloc::base_allocator::formatter::emit_string(a2, "\n");
}

uint64_t std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5caulk5alloc23page_cache_monitor_implC1ERNS0_18page_cache_monitorERNS_16shared_ptr_mutexINS_4mach11unfair_lockEEEmE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28841CDA8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x277C78AD0);
}

void *std::__function::__func<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0,std::allocator<caulk::alloc::page_cache_monitor_impl::page_cache_monitor_impl(caulk::alloc::page_cache_monitor &,caulk::shared_ptr_mutex<caulk::mach::unfair_lock> &,unsigned long)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28841CDA8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::control_block,std::allocator<caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::control_block>>::__on_zero_shared(uint64_t a1)
{
  __dmb(0xBu);
  v2 = *(a1 + 40);
  if ((atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_release) & 0x80000000) != 0)
  {
    caulk::mach::semaphore::signal_or_error((v2 + 24));
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::control_block,std::allocator<caulk::details::lifetime_guard_base<caulk::alloc::page_cache_monitor>::control_block>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

void std::__shared_ptr_emplace<caulk::alloc::preallocation_reservation>::__on_zero_shared(void *a1)
{
  caulk::lifetime_guard<caulk::alloc::page_cache_monitor,caulk::shared_ptr_mutex<caulk::mach::unfair_lock>>::weak_ref::lock(&v14, a1 + 5);
  v2 = v14;
  if (v14)
  {
    os_unfair_lock_lock(*(v14 + 24));
    v3 = *(v2 + 40);
    if (v3)
    {
      v5 = v3[21];
      v4 = v3[22];
      if (v5 != v4)
      {
        while (1)
        {
          v6 = v5[1];
          if (!v6 || *(v6 + 8) == -1)
          {
            break;
          }

          v5 += 2;
          if (v5 == v4)
          {
            goto LABEL_24;
          }
        }

        if (v5 != v4)
        {
          v7 = v5 + 2;
          if (v5 + 2 != v4)
          {
            do
            {
              v8 = v7[1];
              if (v8 && *(v8 + 8) != -1)
              {
                v9 = *v7;
                *v7 = 0;
                v7[1] = 0;
                v10 = v5[1];
                *v5 = v9;
                v5[1] = v8;
                if (v10)
                {
                  std::__shared_weak_count::__release_weak(v10);
                }

                v5 += 2;
              }

              v7 += 2;
            }

            while (v7 != v4);
            v4 = v3[22];
          }
        }
      }

      if (v5 != v4)
      {
        while (v4 != v5)
        {
          v11 = *(v4 - 1);
          if (v11)
          {
            std::__shared_weak_count::__release_weak(v11);
          }

          v4 -= 2;
        }

        v3[22] = v5;
      }

LABEL_24:
      caulk::alloc::page_cache_monitor_impl::evaluate_reservations(v3);
    }

    os_unfair_lock_unlock(*(v2 + 24));
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v12 = a1[6];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[4];
  if (v13)
  {

    std::__shared_weak_count::__release_weak(v13);
  }
}

void std::__shared_ptr_emplace<caulk::alloc::preallocation_reservation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28841AA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C78AD0);
}

uint64_t caulk::mach::semaphore::semaphore(uint64_t this, int a2)
{
  *this = a2;
  *(this + 4) = 0;
  return this;
}

{
  *this = a2;
  *(this + 4) = 0;
  return this;
}

uint64_t caulk::mach::semaphore::semaphore(uint64_t result, int *a2)
{
  *result = 0;
  *(result + 4) = 0;
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  LOBYTE(v2) = *(a2 + 4);
  *(a2 + 4) = 0;
  *(result + 4) = v2;
  return result;
}

{
  *result = 0;
  *(result + 4) = 0;
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  LOBYTE(v2) = *(a2 + 4);
  *(a2 + 4) = 0;
  *(result + 4) = v2;
  return result;
}

BOOL caulk::mach::semaphore::timed_wait@<W0>(semaphore_t *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  LODWORD(a3) = vcvtmd_u64_f64(a2);
  v4 = a3 | (((a2 - floor(a2)) * 1000000000.0) << 32);
  do
  {
    v5 = v4;
    v6 = semaphore_timedwait(*this, v5);
  }

  while (v6 == 14);
  v7 = v6;
  if (v6 == 49)
  {
    return 0;
  }

  caulk::mach::throw_if_mach_error("semaphore::timed_wait failed", v6);
  return v7 == 0;
}

BOOL caulk::mach::semaphore::wait(caulk::mach::semaphore *this)
{
  do
  {
    v2 = MEMORY[0x277C79300](*this);
  }

  while (v2 == 14);
  return v2 == 0;
}

uint64_t caulk::mach::semaphore::wait_or_error(caulk::mach::semaphore *this)
{
  do
  {
    LODWORD(result) = MEMORY[0x277C79300](*this);
  }

  while (result == 14);
  if (result)
  {
    return result;
  }

  else
  {
    return 0x100000000;
  }
}

BOOL caulk::mach::semaphore::timed_wait_signal@<W0>(semaphore_t *this@<X0>, semaphore_t *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  LODWORD(a4) = vcvtmd_u64_f64(a3);
  v6 = a4 | (((a3 - floor(a3)) * 1000000000.0) << 32);
  do
  {
    v7 = v6;
    v8 = semaphore_timedwait_signal(*this, *a2, v7);
  }

  while (v8 == 14);
  v9 = v8;
  if (v8 == 49)
  {
    return 0;
  }

  caulk::mach::throw_if_mach_error("semaphore::timed_wait_signal failed", v8);
  return v9 == 0;
}

BOOL caulk::mach::semaphore::wait_signal(caulk::mach::semaphore *this, caulk::mach::semaphore *a2)
{
  do
  {
    v4 = MEMORY[0x277C79310](*this, *a2);
  }

  while (v4 == 14);
  return v4 == 0;
}

uint64_t caulk::mach::semaphore::wait_signal_or_error(caulk::mach::semaphore *this, caulk::mach::semaphore *a2)
{
  do
  {
    LODWORD(result) = MEMORY[0x277C79310](*this, *a2);
  }

  while (result == 14);
  if (result)
  {
    return result;
  }

  else
  {
    return 0x100000000;
  }
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}