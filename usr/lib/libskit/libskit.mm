void skit::ContextV2::ContextV2()
{
  std::allocate_shared[abi:ne200100]<skit::internal::ContextImpl,std::allocator<skit::internal::ContextImpl>,std::__fs::filesystem::path const&,std::basic_string<char16_t>,0>();
}

{
  std::allocate_shared[abi:ne200100]<skit::internal::ContextImpl,std::allocator<skit::internal::ContextImpl>,std::__fs::filesystem::path const&,std::basic_string<char16_t>,0>();
}

void sub_2998C6C78(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

__int128 **skit::ContextV2::index_reader@<X0>(__int128 **result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 55);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = *(v4 + 4);
      v5 = *(v4 + 5);
    }

    else
    {
      v6 = (v4 + 2);
    }

    v11[0] = v6;
    v11[1] = v5;
    v10[0] = a2;
    v10[1] = a3;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *v4, *(v4 + 1));
    }

    else
    {
      v7 = *v4;
      v9.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v9.__r_.__value_.__l.__data_ = v7;
    }

    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v9, v11);
    std::string::append(&v9, ".ctx", 4uLL);
    std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(&v9, v10);
    std::string::append(&v9, ".idx", 4uLL);
    __p = v9;
    memset(&v9, 0, sizeof(v9));
    std::allocate_shared[abi:ne200100]<skit::internal::IndexReaderImpl,std::allocator<skit::internal::IndexReaderImpl>,std::__fs::filesystem::path,0>();
  }

  return result;
}

std::__fs::filesystem::path *std::__fs::filesystem::path::append[abi:ne200100]<std::u16string_view>(std::__fs::filesystem::path *this, unint64_t *a2)
{
  if (a2[1] && **a2 == 47)
  {
    if (SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__pn_.__r_.__value_.__l.__data_ = 0;
      this->__pn_.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__pn_.__r_.__value_.__s.__data_[0] = 0;
      *(&this->__pn_.__r_.__value_.__s + 23) = 0;
    }
  }

  else if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(&this->__pn_, 47);
  }

  std::__fs::filesystem::_PathCVT<char16_t>::__append_range[abi:ne200100](&this->__pn_, *a2, *a2 + 2 * a2[1]);
  return this;
}

uint64_t std::__fs::filesystem::_PathCVT<char16_t>::__append_range[abi:ne200100](std::string *a1, unint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v10[0] = MEMORY[0x29EDC9578] + 16;
  v10[1] = 0;
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      v11 = v4;
      if ((*(v10[0] + 24))(v10, v14, v4, a3, &v11, v13, v14, &v12) == 2 || v11 == v4)
      {
        std::__throw_runtime_error("locale not supported");
        __break(1u);
      }

      v4 = v11;
      if (v13 < v12)
      {
        v7 = v13;
        do
        {
          std::string::push_back(a1, *v7++);
        }

        while (v7 < v12);
        v4 = v11;
      }
    }

    while (v4 < a3);
  }

  result = MEMORY[0x29C2A30D0](v10);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998C7064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C2A30D0](va);
  _Unwind_Resume(a1);
}

void sub_2998C71FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v22);
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v24);
  _Unwind_Resume(a1);
}

void skit::Alias::Alias(skit::Alias *this, std::__fs::filesystem::path *a2, std::__fs::filesystem::path *a3)
{
  std::allocate_shared[abi:ne200100]<skit::internal::AliasImpl,std::allocator<skit::internal::AliasImpl>,std::__fs::filesystem::path,std::__fs::filesystem::path,0>();
}

{
  std::allocate_shared[abi:ne200100]<skit::internal::AliasImpl,std::allocator<skit::internal::AliasImpl>,std::__fs::filesystem::path,std::__fs::filesystem::path,0>();
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_2998C75B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvStore(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = -1;
  *(a1 + 72) = xmmword_2998EB7E0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  *(a1 + 152) = 0xFFFFFFFF00000000;
  *(a1 + 160) = 416;
  *(a1 + 162) = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, ".tbl", "");
  v6 = *(a1 + 144);
  if (v6 >= 0xA00000)
  {
    v6 = 10485760;
  }

  *(a1 + 144) = v6;
  *(a1 + 152) = (v6 + 0x1FFFFFFFFD8) >> 9;
  return a1;
}

void sub_2998C7688(_Unwind_Exception *a1)
{
  skit::internal::BlobFile::~BlobFile((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

skit::internal::MultiIndexV2 *skit::internal::MultiIndexV2::MultiIndexV2(skit::internal::MultiIndexV2 *this, std::__fs::filesystem::path *a2)
{
  v3 = *&a2->__pn_.__r_.__value_.__l.__data_;
  *(this + 2) = *(&a2->__pn_.__r_.__value_.__l + 2);
  *this = v3;
  *&a2->__pn_.__r_.__value_.__r.__words[1] = 0uLL;
  a2->__pn_.__r_.__value_.__r.__words[0] = 0;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 184) = 0u;
  *(this + 24) = 621942338;
  *(this + 108) = 0;
  *(this + 31) = 0;
  *(this + 100) = 0;
  *(this + 116) = 0;
  *(this + 9) = 0u;
  *(this + 8) = vdupq_n_s64(1uLL);
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 22) = 0x40000000;
  skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>(this + 23, 0x40000000, 1u);
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 56) = -1;
  *(this + 232) = xmmword_2998EB7E0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  *(this + 35) = 10485760;
  *(this + 288) = 0;
  *(this + 73) = 4;
  *(this + 148) = 416;
  *(this + 38) = 0;
  *(this + 39) = 0;
  return this;
}

void sub_2998C77E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 152) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::__unordered_map_hasher<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::hash<skit::internal::Term>,std::equal_to<skit::internal::Term>,true>,std::__unordered_map_equal<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::equal_to<skit::internal::Term>,std::hash<skit::internal::Term>,true>,std::allocator<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>>>::~__hash_table(v2 + 48);
  std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void *skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = (a2 - 16) / 0x150uLL;
  if (v4 >= a3)
  {
    LODWORD(v4) = a3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = malloc_type_aligned_alloc(0x10uLL, (336 * v5 + 16), 0x5063A342uLL);
  *v6 = (v6 + 4) >> 12;
  v6[1] = v5;
  *(v6 + 1) = 0xF00000000;
  v7 = (16 * v5);
  result = memset(v6 + 4, 128, v7);
  *(v6 + (v7 - 1) + 16) = -1;
  *a1 = v6;
  a1[1] = skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>const::{lambda(skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>*)#1}::__invoke;
  return result;
}

void skit::IndexReader::~IndexReader(skit::IndexReader *this)
{
  v2 = *this;
  if (*this)
  {
    skit::internal::MultiIndexV2::close((v2 + 168));
    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<skit::internal::AliasImpl>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 88) = 0;
  marisa::Trie::clear((a1 + 72));
  marisa::Trie::clear((a1 + 80));
  MEMORY[0x29C2A2E10](a1 + 80);
  MEMORY[0x29C2A2E10](a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 72);
  if (*(a1 + 120) == v1 || v1 == 0)
  {
    result = 0;
    goto LABEL_14;
  }

  if (skit::internal::BlobFile::flush_internal_cache((a1 + 40)))
  {
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v6 = mmap(0, *(a1 + 72), 1, *(a1 + 136) | 1u, *(a1 + 64), 0);
  v7 = v6;
  if (v6 == -1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v11 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v12 = *__error();
    v15 = 67109120;
    v16 = v12;
    v13 = "KvStore::mmap_data_file : mmap of data file failed %{darwin.errno}d";
    goto LABEL_25;
  }

  if (madvise(v6, *(a1 + 72), *(a1 + 140) | 1))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v11 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v14 = *__error();
    v15 = 67109120;
    v16 = v14;
    v13 = "KvStore::mmap_data_file : madvise for data file failed %{darwin.errno}d";
LABEL_25:
    _os_log_error_impl(&dword_2998C6000, v11, OS_LOG_TYPE_ERROR, v13, &v15, 8u);
LABEL_22:
    if (v7 + 1 >= 2)
    {
      munmap(v7, *(a1 + 72));
    }

    goto LABEL_8;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    munmap(v8, *(a1 + 120));
  }

  result = 0;
  v9 = *(a1 + 72);
  *(a1 + 112) = v7;
  *(a1 + 120) = v9;
LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::internal::BlobFile::flush_internal_cache(skit::internal::BlobFile *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(this + 6);
  if (v1 && (v3 = *(this + 7)) != 0)
  {
    v4 = write(*(this + 6), v1, v3);
    if (v4 == *(this + 7))
    {
      result = 0;
      *(this + 7) = 0;
    }

    else
    {
      v11 = v4;
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v7 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v8 = this;
        if (*(this + 23) < 0)
        {
          v8 = *this;
        }

        v9 = *(this + 7);
        v10 = *__error();
        *buf = 136446978;
        v13 = v8;
        v14 = 2048;
        v15 = v11;
        v16 = 2048;
        v17 = v9;
        v18 = 1024;
        v19 = v10;
        _os_log_error_impl(&dword_2998C6000, v7, OS_LOG_TYPE_ERROR, "BlobFile::write_internal_cache : blob write failed @ %{public}s : %li < %lu : %{darwin.errno}d", buf, 0x26u);
      }

      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::create_mmap(uint64_t a1, int a2, size_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = mmap(0, a3, 3, *(a1 + 56) | 1u, a2, 0);
  if (v6 == -1)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v10 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v11 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v11 = *v11;
      }

      v12 = *__error();
      v19 = 136446466;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      _os_log_error_impl(&dword_2998C6000, v10, OS_LOG_TYPE_ERROR, "FlatSetDisk::create_mmap : mmap failed @ %{public}s : %{darwin.errno}d", &v19, 0x12u);
    }
  }

  else
  {
    v7 = v6;
    if (!madvise(v6, a3, *(a1 + 60)))
    {
      goto LABEL_3;
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v14 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v17 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v17 = *v17;
      }

      v18 = *__error();
      v19 = 136446466;
      v20 = v17;
      v21 = 1024;
      v22 = v18;
      _os_log_error_impl(&dword_2998C6000, v14, OS_LOG_TYPE_ERROR, "FlatSetDisk::create_mmap : madvise failed @ %{public}s : %{darwin.errno}d", &v19, 0x12u);
    }

    munmap(v7, a3);
  }

  v7 = 0;
LABEL_3:
  if (close(a2))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v13 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v15 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v15 = *v15;
      }

      v16 = *__error();
      v19 = 136446466;
      v20 = v15;
      v21 = 1024;
      v22 = v16;
      _os_log_error_impl(&dword_2998C6000, v13, OS_LOG_TYPE_ERROR, "FlatSetDisk::create_mmap : close failed @ %{public}s : %{darwin.errno}d", &v19, 0x12u);
    }

    munmap(v7, a3);
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t skit::internal::IndexDiskImplV2::open(skit::internal::IndexDiskImplV2 *this)
{
  v124 = *MEMORY[0x29EDCA608];
  if (!skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::open(this))
  {
    if (*(this + 191) < 0)
    {
      v3 = *(this + 22);
      if (!v3)
      {
        goto LABEL_68;
      }

      std::string::__init_copy_ctor_external(&v123, *(this + 21), v3);
    }

    else
    {
      if (!*(this + 191))
      {
        goto LABEL_68;
      }

      *&v123.st_dev = *(this + 168);
      *&v123.st_uid = *(this + 23);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v123, ".ms", "");
    if (SHIBYTE(v123.st_gid) < 0)
    {
      std::string::__init_copy_ctor_external(&v116, *&v123.st_dev, v123.st_ino);
      if (SHIBYTE(v123.st_gid) < 0)
      {
        operator delete(*&v123.st_dev);
      }
    }

    else
    {
      *&v116.__r_.__value_.__l.__data_ = *&v123.st_dev;
      v116.__r_.__value_.__r.__words[2] = *&v123.st_uid;
    }

    if (*(this + 191) < 0)
    {
      std::string::__init_copy_ctor_external(&v123, *(this + 21), *(this + 22));
    }

    else
    {
      *&v123.st_dev = *(this + 168);
      *&v123.st_uid = *(this + 23);
    }

    std::string::append[abi:ne200100]<char const*,0>(&v123, ".ids", "");
    if (SHIBYTE(v123.st_gid) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, *&v123.st_dev, v123.st_ino);
      if (SHIBYTE(v123.st_gid) < 0)
      {
        operator delete(*&v123.st_dev);
      }
    }

    else
    {
      *&v115.__r_.__value_.__l.__data_ = *&v123.st_dev;
      v115.__r_.__value_.__r.__words[2] = *&v123.st_uid;
    }

    if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v116;
    }

    else
    {
      v4 = v116.__r_.__value_.__r.__words[0];
    }

    if (skit::internal::MmapFile::open((this + 192), v4, 2, -1, 0, 416, 3, 1025, 5, 0xFFFFFFFFFFFFFFFFLL, 0))
    {
      goto LABEL_23;
    }

    v9 = *(this + 25);
    if (v9 > 0x2F)
    {
      v10 = *(this + 24);
      if (*v10 != 621942338)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v58 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        LOWORD(v123.st_dev) = 0;
        v57 = "MetaStoreHeader::validate_ms : meta store cookie is not magic";
        v59 = v58;
        v60 = 2;
        goto LABEL_154;
      }

      v11 = *(v10 + 12);
      if (*(v10 + 40) - *(v10 + 32) != v11)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v61 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v62 = *(v10 + 12);
        v63 = *(v10 + 32);
        v64 = *(v10 + 40);
        v123.st_dev = 67109632;
        *&v123.st_mode = v62;
        LOWORD(v123.st_ino) = 2048;
        *(&v123.st_ino + 2) = v63;
        HIWORD(v123.st_uid) = 2048;
        *&v123.st_gid = v64;
        v57 = "MetaStoreHeader::validate : meta store delete count is greater than records count : %u != [%lli,%lli)";
        v59 = v61;
        v60 = 28;
        goto LABEL_154;
      }

      if (*(v10 + 16) > v11)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v65 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v67 = *(v10 + 12);
        v66 = *(v10 + 16);
        v123.st_dev = 67109376;
        *&v123.st_mode = v66;
        LOWORD(v123.st_ino) = 1024;
        *(&v123.st_ino + 2) = v67;
        v57 = "MetaStoreHeader::validate : meta store delete count is greater than records count : %u > %u";
      }

      else
      {
        v12 = *(v10 + 28);
        if (v12 <= v11)
        {
          if (v11)
          {
            v13 = 10 * v11 + 48;
          }

          else
          {
            v13 = 0;
          }

          if (v9 == v13)
          {
            *(this + 26) = v10 + 48;
            if (!v12)
            {
              goto LABEL_59;
            }

            v14 = (this + 240);
            v15 = this + 240;
            if (*(this + 263) < 0)
            {
              v15 = *v14;
            }

            if (access(v15, 0))
            {
              if (*__error() == 2)
              {
                v16 = ((*(this + 35) - 16) / 0x150uLL);
                v17 = (*(this + 35) - 16) / 0x150uLL != 0;
                *(this + 66) = 4;
                *(this + 134) = 416;
                if (v16)
                {
                  v18 = 352;
                }

                else
                {
                  v18 = 16;
                }

                if (*(this + 263) >= 0)
                {
                  v19 = this + 240;
                }

                else
                {
                  v19 = *(this + 30);
                }

                v20 = open_dprotected_np(v19, 514, 4, 0, 416);
                v21 = v20;
                if (v20 < 0)
                {
                  if (skit::internal::get_logging_context(void)::once != -1)
                  {
                  }

                  v78 = skit::internal::get_logging_context(void)::logger;
                  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                  {
                    v79 = *(this + 263);
                    v80 = *(this + 30);
                    v81 = __error();
                    if (v79 >= 0)
                    {
                      v82 = this + 240;
                    }

                    else
                    {
                      v82 = v80;
                    }

                    v83 = *v81;
                    *buf = 136446466;
                    *&buf[4] = v82;
                    *&buf[12] = 1024;
                    *&buf[14] = v83;
                    _os_log_error_impl(&dword_2998C6000, v78, OS_LOG_TYPE_ERROR, "FlatSetDisk::create_file : file open failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
                  }
                }

                else
                {
                  if (ftruncate(v20, v18))
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v84 = skit::internal::get_logging_context(void)::logger;
                    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      v98 = *(this + 263);
                      v99 = *(this + 30);
                      v100 = __error();
                      if (v98 >= 0)
                      {
                        v101 = this + 240;
                      }

                      else
                      {
                        v101 = v99;
                      }

                      v102 = *v100;
                      *buf = 136446466;
                      *&buf[4] = v101;
                      *&buf[12] = 1024;
                      *&buf[14] = v102;
                      _os_log_error_impl(&dword_2998C6000, v84, OS_LOG_TYPE_ERROR, "FlatSetDisk::create_file : file resize failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
                    }

                    close(v21);
                  }

                  else
                  {
                    mmap = skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::create_mmap(this + 216, v21, v18);
                    v24 = mmap;
                    if (mmap)
                    {
                      *mmap = (mmap + 4) >> 12;
                      mmap[1] = v17;
                      *(mmap + 1) = 0xF00000000;
                      v25 = 16 * (v16 != 0);
                      memset(mmap + 4, 128, v25);
                      *(v24 + 16 + v25 - 1) = -1;
                      *buf = 0;
                      *&buf[8] = v18;
                      *&v123.st_dev = v24;
                      v123.st_ino = v18;
                      v123.st_uid = 0;
                      std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](buf, 0);
                      *&v123.st_dev = 0;
                      std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](this + 224, v24);
                      *(this + 29) = v18;
                      v26 = *(this + 28);
                      std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](&v123, 0);
                      if (!v26)
                      {
                        goto LABEL_23;
                      }

LABEL_57:
                      v10 = *(this + 24);
                      v27 = *(*(this + 28) + 8);
                      if (*(v10 + 12) < v27 || *(v10 + 28) < v27)
                      {
LABEL_23:
                        v5 = *(this + 36);
                        if (v5)
                        {
                          munmap(v5, *(this + 37));
                        }

                        *(this + 36) = 0;
                        *(this + 37) = 0;
                        std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](this + 224, 0);
                        v6 = *(this + 24);
                        if (v6)
                        {
                          munmap(v6, *(this + 25));
                        }

                        v7 = 0;
                        *(this + 24) = 0;
                        *(this + 25) = 0;
                        goto LABEL_28;
                      }

LABEL_59:
                      if (*(v10 + 24))
                      {
                        v28 = (v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v115 : v115.__r_.__value_.__r.__words[0];
                        if ((skit::internal::MmapFile::open((this + 288), v28, 2, -1, 0, 416, 3, 1025, 5, 0xFFFFFFFFFFFFFFFFLL, 0) & 0x80000000) != 0 || *(this + 36) && *(this + 37) != *(*(this + 24) + 24))
                        {
                          goto LABEL_23;
                        }
                      }

                      v7 = 1;
LABEL_28:
                      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v115.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v116.__r_.__value_.__l.__data_);
                        if (v7)
                        {
                          goto LABEL_32;
                        }
                      }

                      else if (v7)
                      {
LABEL_32:
                        result = 0;
                        goto LABEL_74;
                      }

LABEL_68:
                      v2 = "meta store";
                      goto LABEL_69;
                    }
                  }

                  if (*(this + 263) >= 0)
                  {
                    v85 = (this + 240);
                  }

                  else
                  {
                    v85 = *(this + 30);
                  }

                  remove(v85, v23);
                }

                *buf = 0;
                *&buf[8] = 0;
                *&v123.st_dev = 0uLL;
                v123.st_uid = -1;
                std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](buf, 0);
                v54 = &v123;
                goto LABEL_117;
              }

              if (skit::internal::get_logging_context(void)::once != -1)
              {
              }

              v76 = skit::internal::get_logging_context(void)::logger;
              if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }

              if (*(this + 263) < 0)
              {
                v14 = *v14;
              }

              v77 = *__error();
              v123.st_dev = 136446466;
              *&v123.st_mode = v14;
              WORD2(v123.st_ino) = 1024;
              *(&v123.st_ino + 6) = v77;
              v57 = "FlatSetDisk::open : stat failed @ %{public}s : %{darwin.errno}d";
              v59 = v76;
              v60 = 18;
LABEL_154:
              _os_log_error_impl(&dword_2998C6000, v59, OS_LOG_TYPE_ERROR, v57, &v123, v60);
              goto LABEL_23;
            }

            if (*(this + 263) >= 0)
            {
              v31 = this + 240;
            }

            else
            {
              v31 = *(this + 30);
            }

            v32 = open_dprotected_np(v31, 2, -1, 0);
            v33 = v32;
            if (v32 < 0)
            {
              if (skit::internal::get_logging_context(void)::once != -1)
              {
              }

              v86 = skit::internal::get_logging_context(void)::logger;
              if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
              {
                v103 = *(this + 263);
                v104 = *(this + 30);
                v105 = __error();
                if (v103 >= 0)
                {
                  v106 = this + 240;
                }

                else
                {
                  v106 = v104;
                }

                v107 = *v105;
                v123.st_dev = 136446466;
                *&v123.st_mode = v106;
                WORD2(v123.st_ino) = 1024;
                *(&v123.st_ino + 6) = v107;
                _os_log_error_impl(&dword_2998C6000, v86, OS_LOG_TYPE_ERROR, "FlatSetDisk::open_existing_file : file open failed @ %{public}s : %{darwin.errno}d", &v123, 0x12u);
              }

              *&v123.st_dev = 0uLL;
              v117 = 0;
              st_size = 0;
              v119 = -1;
              v87 = &v123;
            }

            else
            {
              memset(&v123, 0, sizeof(v123));
              if (fstat(v32, &v123))
              {
                if (skit::internal::get_logging_context(void)::once != -1)
                {
                }

                v88 = skit::internal::get_logging_context(void)::logger;
                if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                {
                  v108 = *(this + 263);
                  v109 = *(this + 30);
                  v110 = __error();
                  if (v108 >= 0)
                  {
                    v111 = this + 240;
                  }

                  else
                  {
                    v111 = v109;
                  }

                  v112 = *v110;
                  *buf = 136446466;
                  *&buf[4] = v111;
                  *&buf[12] = 1024;
                  *&buf[14] = v112;
                  _os_log_error_impl(&dword_2998C6000, v88, OS_LOG_TYPE_ERROR, "FlatSetDisk::open_existing_file : fstat failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
                }

                close(v33);
              }

              else
              {
                *(this + 66) = fcntl(v33, 63);
                *(this + 134) = v123.st_mode & 0x1FF;
                v34 = skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::create_mmap(this + 216, v33, v123.st_size);
                v35 = v34;
                if (v34)
                {
                  if (v123.st_size <= 351)
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v89 = skit::internal::get_logging_context(void)::logger;
                    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      if (*(this + 263) >= 0)
                      {
                        v90 = this + 240;
                      }

                      else
                      {
                        v90 = *(this + 30);
                      }

                      *buf = 136446722;
                      *&buf[4] = v90;
                      *&buf[12] = 2048;
                      *&buf[14] = v123.st_size;
                      v121 = 2048;
                      v122 = 352;
                      _os_log_error_impl(&dword_2998C6000, v89, OS_LOG_TYPE_ERROR, "FlatSetDisk::open_existing_file : file size is too small @ %{public}s : %lli < %lli", buf, 0x20u);
                    }
                  }

                  else
                  {
                    if (v123.st_size == 336 * v34[1] + 16)
                    {
                      *buf = 0;
                      *&buf[8] = v123.st_size;
                      v117 = v34;
                      st_size = v123.st_size;
                      v119 = 0;
                      std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](buf, 0);
                      if ((v35[3] - 16) <= 0xFFFFFFF0)
                      {
                        if (skit::internal::get_logging_context(void)::once != -1)
                        {
                        }

                        v92 = skit::internal::get_logging_context(void)::logger;
                        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_115;
                        }

                        v93 = v35[3];
                        *&v123.st_dev = 0xF04000200;
                        LOWORD(v123.st_ino) = 1024;
                        *(&v123.st_ino + 2) = v93;
                        v50 = "FlatSetImpl::verify : invalid max load : [1,%u] %u";
                      }

                      else
                      {
                        v36 = v35[2];
                        v37 = 16 * v35[1];
                        v38 = v37 - 1;
                        if (v36 < v37 - 1)
                        {
                          if (*(v35 + v38 + 16) != 255)
                          {
                            if (skit::internal::get_logging_context(void)::once != -1)
                            {
                            }

                            v95 = skit::internal::get_logging_context(void)::logger;
                            if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_115;
                            }

                            v123.st_dev = 67109120;
                            *&v123.st_mode = v38;
                            v50 = "FlatSetImpl::verify : sentinel marker not found : %u";
                            v51 = v95;
                            v52 = 8;
                            goto LABEL_113;
                          }

                          v39 = 0;
                          v40 = 0;
                          v41 = 0;
                          v42 = 0;
                          v43 = -15 - (v37 - 16);
LABEL_87:
                          v44 = 0;
                          v45 = 16;
                          v46 = -1;
                          while (1)
                          {
                            v47 = *(&v35[v42 / 4 + 4] + v44);
                            if (v47 == 128)
                            {
                              ++v41;
                              if (v44 < v45)
                              {
                                v45 = v44;
                              }

                              goto LABEL_101;
                            }

                            if (v47 == 254)
                            {
                              break;
                            }

                            v48 = v42 + v44;
                            if (v47 != 255)
                            {
                              if (v47 < 0)
                              {
                                if (skit::internal::get_logging_context(void)::once != -1)
                                {
                                }

                                v49 = skit::internal::get_logging_context(void)::logger;
                                if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_115;
                                }

                                v123.st_dev = 67109376;
                                *&v123.st_mode = v48;
                                LOWORD(v123.st_ino) = 1024;
                                *(&v123.st_ino + 2) = v38;
                                v50 = "FlatSetImpl::verify : invalid ctrl marker : %u of %u";
LABEL_111:
                                v51 = v49;
                                goto LABEL_112;
                              }

                              ++v39;
                              goto LABEL_99;
                            }

                            if (v43 + v42 + v44)
                            {
                              if (skit::internal::get_logging_context(void)::once != -1)
                              {
                              }

                              v49 = skit::internal::get_logging_context(void)::logger;
                              if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_115;
                              }

                              v123.st_dev = 67109376;
                              *&v123.st_mode = v48;
                              LOWORD(v123.st_ino) = 1024;
                              *(&v123.st_ino + 2) = v38;
                              v50 = "FlatSetImpl::verify : bad sentinel marker found : %u of %u";
                              goto LABEL_111;
                            }

LABEL_101:
                            if (++v44 == 16)
                            {
                              if (v46 < v45)
                              {
                                v42 += 16;
                                if (v42 < v38)
                                {
                                  goto LABEL_87;
                                }

                                if (v39 == v36)
                                {
                                  if (v40 + v36 + v41 == v38)
                                  {
                                    v117 = 0;
                                    std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](this + 224, v35);
                                    *(this + 29) = st_size;
                                    std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](&v117, 0);
                                    goto LABEL_57;
                                  }

                                  v96 = v35[2];
                                  if (skit::internal::get_logging_context(void)::once != -1)
                                  {
                                  }

                                  v92 = skit::internal::get_logging_context(void)::logger;
                                  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                                  {
LABEL_218:
                                    v97 = v35[2];
                                    v123.st_dev = 67109376;
                                    *&v123.st_mode = v96;
                                    LOWORD(v123.st_ino) = 1024;
                                    *(&v123.st_ino + 2) = v97;
                                    v50 = "FlatSetImpl::verify : invalid header entry count : %u != %u";
                                    goto LABEL_210;
                                  }
                                }

                                else
                                {
                                  v96 = v39;
                                  if (skit::internal::get_logging_context(void)::once != -1)
                                  {
                                  }

                                  v92 = skit::internal::get_logging_context(void)::logger;
                                  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_218;
                                  }
                                }

LABEL_115:
                                v53 = skit::internal::get_logging_context(void)::logger;
                                if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                                {
                                  if (*(this + 263) < 0)
                                  {
                                    v14 = *v14;
                                  }

                                  v123.st_dev = 136446210;
                                  *&v123.st_mode = v14;
                                  _os_log_error_impl(&dword_2998C6000, v53, OS_LOG_TYPE_ERROR, "FlatSetDisk::open : verification failed for @ %{public}s", &v123, 0xCu);
                                }

LABEL_116:
                                v54 = &v117;
LABEL_117:
                                std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](v54, 0);
                                goto LABEL_23;
                              }

                              v73 = v46;
                              v74 = v45;
                              if (skit::internal::get_logging_context(void)::once != -1)
                              {
                              }

                              v75 = skit::internal::get_logging_context(void)::logger;
                              if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_115;
                              }

                              v123.st_dev = 67109632;
                              *&v123.st_mode = v42;
                              LOWORD(v123.st_ino) = 1024;
                              *(&v123.st_ino + 2) = v73;
                              HIWORD(v123.st_ino) = 1024;
                              v123.st_uid = v74;
                              v50 = "FlatSetImpl::verify : invalid empty slot found in bucket %u : %u >= %u";
                              v51 = v75;
                              v52 = 20;
LABEL_113:
                              _os_log_error_impl(&dword_2998C6000, v51, OS_LOG_TYPE_ERROR, v50, &v123, v52);
                              if (skit::internal::get_logging_context(void)::once != -1)
                              {
                              }

                              goto LABEL_115;
                            }
                          }

                          ++v40;
LABEL_99:
                          if (v46 <= v44)
                          {
                            v46 = v44;
                          }

                          goto LABEL_101;
                        }

                        if (skit::internal::get_logging_context(void)::once != -1)
                        {
                        }

                        v92 = skit::internal::get_logging_context(void)::logger;
                        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_115;
                        }

                        v94 = v35[2];
                        v123.st_dev = 67109376;
                        *&v123.st_mode = v94;
                        LOWORD(v123.st_ino) = 1024;
                        *(&v123.st_ino + 2) = v38;
                        v50 = "FlatSetImpl::verify : entry count is greater than available slots : %u > %u";
                      }

LABEL_210:
                      v51 = v92;
LABEL_112:
                      v52 = 14;
                      goto LABEL_113;
                    }

                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v91 = skit::internal::get_logging_context(void)::logger;
                    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      if (*(this + 263) >= 0)
                      {
                        v113 = this + 240;
                      }

                      else
                      {
                        v113 = *(this + 30);
                      }

                      v114 = (336 * v35[1] + 16);
                      *buf = 136446722;
                      *&buf[4] = v113;
                      *&buf[12] = 2048;
                      *&buf[14] = v123.st_size;
                      v121 = 2048;
                      v122 = v114;
                      _os_log_error_impl(&dword_2998C6000, v91, OS_LOG_TYPE_ERROR, "FlatSetDisk::open_existing_file : file size does not match expected file size @ %{public}s : %lli != %lu", buf, 0x20u);
                    }

                    munmap(v35, v123.st_size);
                  }
                }
              }

              *buf = 0;
              *&buf[8] = 0;
              v117 = 0;
              st_size = 0;
              v119 = -1;
              v87 = buf;
            }

            std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](v87, 0);
            goto LABEL_116;
          }

          if (skit::internal::get_logging_context(void)::once != -1)
          {
          }

          v55 = skit::internal::get_logging_context(void)::logger;
          if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v70 = *(this + 25);
          v71 = *(*(this + 24) + 12);
          if (v71)
          {
            v72 = 10 * v71 + 48;
          }

          else
          {
            v72 = 0;
          }

          v123.st_dev = 134218240;
          *&v123.st_mode = v70;
          WORD2(v123.st_ino) = 2048;
          *(&v123.st_ino + 6) = v72;
          v57 = "DiskMetaStore::open : meta store file size does not match the expected size : %lu != %lu";
LABEL_153:
          v59 = v55;
          v60 = 22;
          goto LABEL_154;
        }

        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v65 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v68 = *(v10 + 28);
        v69 = *(v10 + 12);
        v123.st_dev = 67109376;
        *&v123.st_mode = v68;
        LOWORD(v123.st_ino) = 1024;
        *(&v123.st_ino + 2) = v69;
        v57 = "MetaStoreHeader::validate : meta store xid count is greater than records count : %u > %u";
      }

      v59 = v65;
      v60 = 14;
      goto LABEL_154;
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v55 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v56 = *(this + 25);
    v123.st_dev = 134218240;
    *&v123.st_mode = v56;
    WORD2(v123.st_ino) = 2048;
    *(&v123.st_ino + 6) = 48;
    v57 = "DiskMetaStore::open : meta store file is too small : %lu < %lu";
    goto LABEL_153;
  }

  v2 = "term index";
LABEL_69:
  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v29 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v123.st_dev = 136446210;
    *&v123.st_mode = v2;
    _os_log_error_impl(&dword_2998C6000, v29, OS_LOG_TYPE_ERROR, "IndexDiskImplV2::open : opening %{public}s failed", &v123, 0xCu);
  }

  result = 0xFFFFFFFFLL;
LABEL_74:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998C94C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::internal::MmapFile::open(skit::internal::MmapFile *this, const char *a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, int a9, size_t a10, unint64_t a11)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(&v25, 0, sizeof(v25));
  if (!a2)
  {
    v16 = -1;
    v21 = 10;
    v22 = "path check";
    goto LABEL_18;
  }

  v15 = open_dprotected_np(a2, a3, a4, a5, a6);
  v16 = v15;
  if (v15 < 0)
  {
    v21 = 4;
    v22 = "open";
    goto LABEL_18;
  }

  if (fstat(v15, &v25))
  {
    v21 = 5;
    v22 = "fstat";
    goto LABEL_18;
  }

  v17 = v25.st_size - a11;
  if (v25.st_size < a11)
  {
    v17 = 0;
  }

  if (a10 == -1)
  {
    v18 = v17;
  }

  else
  {
    v18 = a10;
  }

  if (!skit::internal::MmapFile::open(this, v16, a7, a8, a9, v18, a11))
  {
    result = close(v16);
    if (!result)
    {
      goto LABEL_13;
    }

    v21 = 5;
    v22 = "close";
LABEL_18:
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v23 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v24 = *__error();
      *buf = 68158466;
      v27 = v21;
      v28 = 2082;
      v29 = v22;
      v30 = 2082;
      v31 = a2;
      v32 = 1024;
      v33 = v24;
      _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, "MmapFile::open : %{public}.*s failed @ %{public}s : %{darwin.errno}d", buf, 0x22u);
    }

    if (*this)
    {
      munmap(*this, *(this + 1));
    }

    *this = 0;
    *(this + 1) = 0;
    if (v16 == -1)
    {
      goto LABEL_11;
    }
  }

  close(v16);
LABEL_11:
  result = 0xFFFFFFFFLL;
LABEL_13:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t skit::internal::MmapFile::open(skit::internal::MmapFile *this, int a2, int a3, int a4, int a5, size_t a6, off_t a7)
{
  v28 = *MEMORY[0x29EDCA608];
  v11 = mmap(0, a6, a3, a4, a2, a7);
  v12 = v11;
  if (v11 == -1)
  {
    v13 = 4;
    v14 = "mmap";
  }

  else
  {
    result = madvise(v11, a6, a5);
    if (!result)
    {
      *this = v12;
      *(this + 1) = a6;
      goto LABEL_12;
    }

    v13 = 7;
    v14 = "madvise";
  }

  v15 = *__error();
  if (fcntl(a2, 50, v27) == -1)
  {
    v27[0] = 0;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v16 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    *buf = 68158466;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = v27;
    v25 = 1024;
    v26 = v15;
    _os_log_error_impl(&dword_2998C6000, v16, OS_LOG_TYPE_ERROR, "MmapFile::open : %{public}.*s failed @ %{public}s : %{darwin.errno}d", buf, 0x22u);
  }

  if (v12 != -1)
  {
    munmap(v12, a6);
  }

  result = 0xFFFFFFFFLL;
LABEL_12:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

double std::__fs::filesystem::path::stem[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__stem(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

void *std::unique_ptr<skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>,skit::FlatSetDisk<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::Deleter>::reset[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return munmap(result, *(a1 + 8));
  }

  return result;
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::open(uint64_t a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v1 = a1 + 24;
  if (!*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *a1, *(a1 + 8));
    }

    else
    {
      *&v40.st_dev = *a1;
      *&v40.st_uid = *(a1 + 16);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__replacement, ".dat");
    v3 = std::__fs::filesystem::path::replace_extension(&v40, &__replacement);
    if (SHIBYTE(v3->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v3->__pn_.__r_.__value_.__l.__data_, v3->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v3->__pn_;
    }

    v4 = (a1 + 40);
    if (*(a1 + 64) == -1)
    {
      if (*(a1 + 63) < 0)
      {
        operator delete(v4->__pn_.__r_.__value_.__l.__data_);
      }

      *&v4->__pn_.__r_.__value_.__l.__data_ = *&pn.__r_.__value_.__l.__data_;
      *(a1 + 56) = *(&pn.__r_.__value_.__l + 2);
      *(&pn.__r_.__value_.__s + 23) = 0;
      pn.__r_.__value_.__s.__data_[0] = 0;
    }

    else if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__replacement.st_gid) < 0)
    {
      operator delete(*&__replacement.st_dev);
    }

    if (SHIBYTE(v40.st_gid) < 0)
    {
      operator delete(*&v40.st_dev);
    }

    memset(&v40, 0, sizeof(v40));
    memset(&__replacement, 0, sizeof(__replacement));
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = access(v5, 0);
    v7 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v7 = v4->__pn_.__r_.__value_.__r.__words[0];
    }

    v8 = stat(v7, &__replacement);
    v9 = v8;
    if (v8)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v35 = skit::internal::get_logging_context(void)::logger;
      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 0;
      v36 = "KvStore::open : data file is missing";
    }

    else
    {
      if (v8)
      {
        goto LABEL_29;
      }

      if (v6)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v35 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 0;
        v36 = "KvStore::open : table file is missing";
      }

      else if ((__replacement.st_mode & 0x124) != 0)
      {
        if ((__replacement.st_mode & 0x92) != 0)
        {
          if ((__replacement.st_mode & 0x8000) != 0)
          {
LABEL_29:
            v11 = a1;
            if (*(a1 + 23) < 0)
            {
              v11 = *a1;
            }

            v12 = open_dprotected_np(v11, 514, *(a1 + 156), 0, *(a1 + 160));
            v13 = v12;
            if (v12 == -1)
            {
              if (skit::internal::get_logging_context(void)::once != -1)
              {
              }

              v23 = skit::internal::get_logging_context(void)::logger;
              if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
              {
                v24 = *__error();
                *buf = 67109120;
                *v43 = v24;
                _os_log_error_impl(&dword_2998C6000, v23, OS_LOG_TYPE_ERROR, "KvStore::open : table file open failed : %{darwin.errno}d", buf, 8u);
              }

              goto LABEL_52;
            }

            if (fstat(v12, &v40) == -1)
            {
              if (skit::internal::get_logging_context(void)::once != -1)
              {
              }

              v25 = skit::internal::get_logging_context(void)::logger;
              if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 0;
              v26 = "KvStore::open : failed to get table file stats";
            }

            else if ((v40.st_mode & 0x124) != 0)
            {
              if ((v40.st_mode & 0x92) != 0)
              {
                if ((v40.st_mode & 0x8000) != 0)
                {
                  if (!v6 && v40.st_size <= 39)
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v27 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    *buf = 134217984;
                    *v43 = v40.st_size;
                    v26 = "KvStore::open : table file is too small, %lli";
                    v28 = v27;
                    v29 = 12;
                    goto LABEL_150;
                  }

                  if (v6)
                  {
                    st_size = 552;
                  }

                  else
                  {
                    st_size = v40.st_size;
                  }

                  *(a1 + 32) = st_size;
                  v15 = mmap(0, st_size, 3, *(a1 + 136) | 1u, v13, 0);
                  *(a1 + 24) = v15;
                  if (v15 == -1)
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v30 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    v31 = *__error();
                    *buf = 67109120;
                    *v43 = v31;
                    v26 = "KvStore::open : mmap of table file failed : %{darwin.errno}d";
                    goto LABEL_115;
                  }

                  if (madvise(v15, *(a1 + 32), *(a1 + 140)))
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v30 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    v32 = *__error();
                    *buf = 67109120;
                    *v43 = v32;
                    v26 = "KvStore::open : madvise for table file failed : %{darwin.errno}d";
                    goto LABEL_115;
                  }

                  if (v6)
                  {
                    if (!ftruncate(v13, *(a1 + 32)))
                    {
                      skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvTableImpl::KvTableImpl(*(a1 + 24), 1);
                      *(a1 + 162) = 1;
LABEL_49:
                      if (!close(v13))
                      {
                        if (skit::internal::BlobFile::open((a1 + 40), 514, *(a1 + 156), *(a1 + 160)) || skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::mmap_data_file(a1))
                        {
                          goto LABEL_52;
                        }

                        if (v6)
                        {
                          skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(a1);
                        }

LABEL_68:
                        result = 0;
                        goto LABEL_65;
                      }

                      if (skit::internal::get_logging_context(void)::once != -1)
                      {
                      }

                      v30 = skit::internal::get_logging_context(void)::logger;
                      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                      {
LABEL_151:
                        close(v13);
LABEL_52:
                        if ((*v1 + 1) >= 2)
                        {
                          munmap(*v1, *(a1 + 32));
                        }

                        *v1 = 0;
                        *(v1 + 8) = 0;
                        skit::internal::BlobFile::close((a1 + 40));
                        v18 = *(a1 + 112);
                        if (v18 + 1 >= 2)
                        {
                          munmap(v18, *(a1 + 120));
                        }

                        *(a1 + 112) = 0;
                        *(a1 + 120) = 0;
                        if (v6)
                        {
                          v19 = a1;
                          if (*(a1 + 23) < 0)
                          {
                            v19 = *a1;
                          }

                          remove(v19, v17);
                        }

                        if (v9)
                        {
                          if (*(a1 + 63) < 0)
                          {
                            v4 = v4->__pn_.__r_.__value_.__r.__words[0];
                          }

                          remove(v4, v17);
                        }

                        goto LABEL_64;
                      }

                      v33 = *__error();
                      *buf = 67109120;
                      *v43 = v33;
                      v26 = "KvStore::open : table file close failed : %{darwin.errno}d";
                      goto LABEL_115;
                    }

                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v30 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    v34 = *__error();
                    *buf = 67109120;
                    *v43 = v34;
                    v26 = "KvStore::open : ftruncate on table file failed : %{darwin.errno}d";
LABEL_115:
                    v28 = v30;
                    v29 = 8;
LABEL_150:
                    _os_log_error_impl(&dword_2998C6000, v28, OS_LOG_TYPE_ERROR, v26, buf, v29);
                    goto LABEL_151;
                  }

                  v16 = *v1;
                  if (**v1 == 410583828)
                  {
                    if (((v16[4] << 9) | 0x28) != v40.st_size)
                    {
                      if (skit::internal::get_logging_context(void)::once != -1)
                      {
                      }

                      v37 = skit::internal::get_logging_context(void)::logger;
                      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_151;
                      }

                      v38 = *(*v1 + 16);
                      *buf = 67109632;
                      *v43 = v38;
                      *&v43[4] = 2048;
                      *&v43[6] = (v38 << 9) | 0x28;
                      v44 = 2048;
                      v45 = v40.st_size;
                      v26 = "KvStore::open : table file validation failed, bucket count does not match file size : bucket_cnt=%u, expected_size=%lu, actual_size=%lli";
                      v28 = v37;
                      v29 = 28;
                      goto LABEL_150;
                    }

                    if (__replacement.st_size == v16[6])
                    {
                      goto LABEL_49;
                    }

                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v25 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    *buf = 0;
                    v26 = "KvStore::open : table file validation failed, data file size mismatch";
                  }

                  else
                  {
                    if (skit::internal::get_logging_context(void)::once != -1)
                    {
                    }

                    v25 = skit::internal::get_logging_context(void)::logger;
                    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_151;
                    }

                    *buf = 0;
                    v26 = "KvStore::open : table file validation failed, magic cookie not found";
                  }
                }

                else
                {
                  if (skit::internal::get_logging_context(void)::once != -1)
                  {
                  }

                  v25 = skit::internal::get_logging_context(void)::logger;
                  if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_151;
                  }

                  *buf = 0;
                  v26 = "KvStore::open : table file is not a regular file";
                }
              }

              else
              {
                if (skit::internal::get_logging_context(void)::once != -1)
                {
                }

                v25 = skit::internal::get_logging_context(void)::logger;
                if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 0;
                v26 = "KvStore::open : table file does not have write permission";
              }
            }

            else
            {
              if (skit::internal::get_logging_context(void)::once != -1)
              {
              }

              v25 = skit::internal::get_logging_context(void)::logger;
              if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 0;
              v26 = "KvStore::open : table file does not have read permission";
            }

            v28 = v25;
            v29 = 2;
            goto LABEL_150;
          }

          if (skit::internal::get_logging_context(void)::once != -1)
          {
          }

          v35 = skit::internal::get_logging_context(void)::logger;
          if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 0;
          v36 = "KvStore::open : data file is not a regular file";
        }

        else
        {
          if (skit::internal::get_logging_context(void)::once != -1)
          {
          }

          v35 = skit::internal::get_logging_context(void)::logger;
          if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 0;
          v36 = "KvStore::open : data file does not have write permission";
        }
      }

      else
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v35 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 0;
        v36 = "KvStore::open : data file does not have read permission";
      }
    }

    _os_log_error_impl(&dword_2998C6000, v35, OS_LOG_TYPE_ERROR, v36, buf, 2u);
LABEL_64:
    result = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v22 = skit::internal::get_logging_context(void)::logger;
  result = os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v40.st_dev) = 0;
    _os_log_impl(&dword_2998C6000, v22, OS_LOG_TYPE_INFO, "KvStore::open : already open", &v40, 2u);
    goto LABEL_68;
  }

LABEL_65:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998CA6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::internal::MultiIndexV2::open(const std::__fs::filesystem::path *this)
{
  v1 = this;
  v55 = *MEMORY[0x29EDCA608];
  std::__fs::filesystem::__status(this, 0);
  if (__ec[0] == 255 || __ec[0] == 0)
  {
    *__ec = 0;
    *&__ec[8] = std::system_category();
    if (std::__fs::filesystem::__create_directories(v1, __ec))
    {
      v3 = 0;
      v1[12].__pn_.__r_.__value_.__s.__data_[0] = 1;
      goto LABEL_14;
    }

LABEL_13:
    v3 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  *__ec = 0;
  v4 = std::system_category();
  *&__ec[8] = v4;
  std::__fs::filesystem::__status(v1, __ec);
  if (v48.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_13;
  }

  v51 = 0;
  v52 = v4;
  MEMORY[0x29C2A3120](&v49, v1, &v51, 2);
  if (!v51)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&v48, ".tbl");
    v46 = 0;
    v47 = 0uLL;
    v5 = v49;
    v6 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = v50;
      v43.__imp_.__ptr_ = v5;
      v43.__imp_.__cntrl_ = v6;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v43.__imp_.__ptr_ = v49;
      v43.__imp_.__cntrl_ = 0;
    }

    while (1)
    {
      if (!v43.__imp_.__ptr_)
      {
        if (v43.__imp_.__cntrl_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43.__imp_.__cntrl_);
        }

        v35.__data_ = v47;
        v36 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3));
        if (v47 == v46)
        {
          v35.__size_ = 0;
        }

        else
        {
          v35.__size_ = v36;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,false>(v46, v35, 1);
        if (v46 != v47)
        {
          operator new();
        }

        size = v1[1].__pn_.__r_.__value_.__l.__size_;
        if (v1[1].__pn_.__r_.__value_.__r.__words[0] != size)
        {
          v39 = (*(*(size - 8) + 192) + 32);
          v38 = *v39;
          v40 = v39[1] - 1;
          if (v40 > *v39)
          {
            v38 = v40;
          }

          skit::internal::MetaStoreHeader::base_id(&v1[4], v38 + 1);
        }

        v3 = 0;
        v1[12].__pn_.__r_.__value_.__s.__data_[0] = 1;
        *__ec = &v46;
        std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](__ec);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        goto LABEL_79;
      }

      v10 = std::__fs::filesystem::directory_iterator::__dereference(&v43);
      v11 = v10;
      if (((1 << v10[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
      {
        std::__fs::filesystem::__status(v10, 0);
        v12 = __ec[0];
      }

      else
      {
        v12 = v10[3].__pn_.__r_.__value_.__s.__data_[0];
      }

      if (v12 == 1)
      {
        std::__fs::filesystem::path::extension[abi:ne200100](__ec, v11);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13.__data_ = &v48;
        }

        else
        {
          v13.__data_ = v48.__r_.__value_.__r.__words[0];
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13.__size_ = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v13.__size_ = v48.__r_.__value_.__l.__size_;
        }

        v14 = std::__fs::filesystem::path::__compare(__ec, v13);
        v15 = v14;
        if ((__ec[23] & 0x80000000) != 0)
        {
          operator delete(*__ec);
          if (v15)
          {
            goto LABEL_65;
          }
        }

        else if (v14)
        {
          goto LABEL_65;
        }

        std::__fs::filesystem::path::stem[abi:ne200100](__p, v11);
        v16 = v45;
        if (v45 < 0)
        {
          v17 = __p[0];
          if (__p[1] <= 6)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v45 < 7u)
          {
            goto LABEL_65;
          }

          v17 = __p;
        }

        if (strncmp(v17, "index-", 6uLL))
        {
          if ((v16 & 0x80) == 0)
          {
            goto LABEL_65;
          }

LABEL_63:
          v17 = __p[0];
LABEL_64:
          operator delete(v17);
          goto LABEL_65;
        }

        v18 = v47;
        if (v47 >= *(&v47 + 1))
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v47 + 1) - v46) >> 3) > v21)
          {
            v21 = 0x5555555555555556 * ((*(&v47 + 1) - v46) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v47 + 1) - v46) >> 3) >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          v54 = &v46;
          if (v22)
          {
            if (v22 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = (8 * ((v47 - v46) >> 3));
          *__ec = 0;
          *&__ec[8] = v24;
          *&__ec[16] = v24;
          *&__ec[24] = 0;
          if (SHIBYTE(v11->__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v24, v11->__pn_.__r_.__value_.__l.__data_, v11->__pn_.__r_.__value_.__l.__size_);
            v24 = *&__ec[8];
            v26 = *&__ec[16];
          }

          else
          {
            v25 = *&v11->__pn_.__r_.__value_.__l.__data_;
            *(8 * ((v47 - v46) >> 3) + 0x10) = *(&v11->__pn_.__r_.__value_.__l + 2);
            *&v24->__r_.__value_.__l.__data_ = v25;
            v26 = 24 * v20;
          }

          *&__ec[16] = v26 + 24;
          v28 = v46;
          v27 = v47;
          v29 = (v46 + v24 - v47);
          if (v46 != v47)
          {
            v30 = v46;
            v31 = v46 + v24 - v47;
            do
            {
              v32 = *&v30->__pn_.__r_.__value_.__l.__data_;
              *(v31 + 2) = *(&v30->__pn_.__r_.__value_.__l + 2);
              *v31 = v32;
              v31 += 24;
              v30->__pn_.__r_.__value_.__l.__size_ = 0;
              v30->__pn_.__r_.__value_.__r.__words[2] = 0;
              v30->__pn_.__r_.__value_.__r.__words[0] = 0;
              ++v30;
            }

            while (v30 != v27);
            do
            {
              if (SHIBYTE(v28->__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28->__pn_.__r_.__value_.__l.__data_);
              }

              ++v28;
            }

            while (v28 != v27);
          }

          v33 = v46;
          v34 = *(&v47 + 1);
          v46 = v29;
          v42 = *&__ec[16];
          v47 = *&__ec[16];
          *&__ec[16] = v33;
          *&__ec[24] = v34;
          *__ec = v33;
          *&__ec[8] = v33;
          std::__split_buffer<std::__fs::filesystem::path>::~__split_buffer(__ec);
          v23 = v42;
          v16 = v45;
        }

        else
        {
          if (SHIBYTE(v11->__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v47, v11->__pn_.__r_.__value_.__l.__data_, v11->__pn_.__r_.__value_.__l.__size_);
          }

          else
          {
            v19 = *&v11->__pn_.__r_.__value_.__l.__data_;
            *(v47 + 16) = *(&v11->__pn_.__r_.__value_.__l + 2);
            *v18 = v19;
          }

          v23 = v18 + 24;
        }

        *&v47 = v23;
        if ((v16 & 0x80) != 0)
        {
          goto LABEL_63;
        }
      }

LABEL_65:
      std::__fs::filesystem::directory_iterator::__increment(&v43, 0);
    }
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v41 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    if (SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v1 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    *__ec = 136446466;
    *&__ec[4] = v1;
    *&__ec[12] = 1024;
    *&__ec[14] = v51;
    _os_log_error_impl(&dword_2998C6000, v41, OS_LOG_TYPE_ERROR, "MultiIndexV2::open : failed to construct directory iterator %{public}s : %{darwin.errno}d", __ec, 0x12u);
  }

  v3 = 0xFFFFFFFFLL;
LABEL_79:
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_2998CAF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (v40 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __p = &a30;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::operator/[abi:ne200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {
    return std::string::operator=(this, &a3->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(this, v7, size);
}

void sub_2998CB168(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

skit::internal::IndexDiskImplV2 *skit::internal::IndexDiskImplV2::IndexDiskImplV2(skit::internal::IndexDiskImplV2 *this, std::__fs::filesystem::path *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = a2->__pn_;
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvStore(this, &__p, skit::default_kv_store_config, unk_2A14C0D80);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v13[7] = *(&a2->__pn_.__r_.__value_.__r.__words[1] + 7);
  v4 = a2->__pn_.__r_.__value_.__r.__words[0];
  *v13 = a2->__pn_.__r_.__value_.__l.__size_;
  v5 = *v13;
  v6 = SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]);
  a2->__pn_.__r_.__value_.__l.__size_ = 0;
  a2->__pn_.__r_.__value_.__r.__words[2] = 0;
  a2->__pn_.__r_.__value_.__r.__words[0] = 0;
  *(this + 21) = v4;
  *(this + 22) = v5;
  *(this + 183) = *&v13[7];
  *(this + 191) = v6;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v4, *(this + 22));
  }

  else
  {
    v11 = *(this + 7);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v11, ".xid", "");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    v7 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v7 = 0;
    v12 = v11;
  }

  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 10) = v12;
  *(this + 66) = -1;
  *(this + 134) = 416;
  *(this + 34) = 0x500000400;
  *(this + 35) = 10485760;
  if (v7)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  v8 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2998CB338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  skit::internal::MmapFile::~MmapFile(v22);
  if (*(v21 + 191) < 0)
  {
    operator delete(*v23);
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(v21);
  _Unwind_Resume(a1);
}

uint64_t skit::internal::BlobFile::open(skit::internal::BlobFile *this, int a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(this + 6) == -1)
  {
    v4 = this;
    if (*(this + 23) < 0)
    {
      if (!*(this + 1))
      {
LABEL_14:
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v8 = skit::internal::get_logging_context(void)::logger;
        if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        LOWORD(v21.st_dev) = 0;
        v9 = "BlobFile::open : file path not set";
        v10 = v8;
        v11 = 2;
LABEL_29:
        _os_log_error_impl(&dword_2998C6000, v10, OS_LOG_TYPE_ERROR, v9, &v21, v11);
LABEL_21:
        result = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      this = *this;
    }

    else if (!*(this + 23))
    {
      goto LABEL_14;
    }

    v5 = open_dprotected_np(this, a2, a3, 0, a4);
    *(v4 + 6) = v5;
    if (v5 < 0)
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v12 = skit::internal::get_logging_context(void)::logger;
      if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v14 = *__error();
      v21.st_dev = 136446466;
      *&v21.st_mode = v4;
      WORD2(v21.st_ino) = 1024;
      *(&v21.st_ino + 6) = v14;
      v9 = "BlobFile::open : open blob file failed @ %{public}s : %{darwin.errno}d";
      v10 = v12;
      v11 = 18;
      goto LABEL_29;
    }

    memset(&v21, 0, sizeof(v21));
    if (fstat(v5, &v21))
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v13 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v15 = v4;
        if (*(v4 + 23) < 0)
        {
          v15 = *v4;
        }

        v16 = *__error();
        *buf = 136446466;
        v18 = v15;
        v19 = 1024;
        v20 = v16;
        _os_log_error_impl(&dword_2998C6000, v13, OS_LOG_TYPE_ERROR, "BlobFile::open : stat blob file failed @ %{public}s : %{darwin.errno}d", buf, 0x12u);
      }

      close(*(v4 + 6));
      result = 0xFFFFFFFFLL;
      *(v4 + 6) = -1;
    }

    else
    {
      if (*(v4 + 8))
      {
        operator new[]();
      }

      result = 0;
      *(v4 + 4) = v21.st_size;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2998CB7BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::internal::MultiIndexV2::flush(skit::internal::MultiIndexV2 *this)
{
  v39 = *MEMORY[0x29EDCA608];
  if (*(this + 27) == *(this + 28))
  {
    v1 = 0;
    goto LABEL_68;
  }

  snprintf(__str, 0xFuLL, "index-%08x", *(this + 68));
  std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(&__p, __str);
  std::__fs::filesystem::operator/[abi:ne200100](&v25, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v3 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
  {
    v4 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v25.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
    *(__p.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_2998C6000, v3, OS_LOG_TYPE_INFO, "MultiIndexV2::flush : flushing index segment @ %{public}s", &__p, 0xCu);
  }

  if (*(this + 56) != -1 && (skit::internal::BlobFile::flush((this + 200), 0) || skit::internal::BlobFile::close((this + 200))))
  {
    goto LABEL_63;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v25;
  }

  v5 = *(this + 73);
  v6 = *(this + 148);
  v7 = *(this + 38);
  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v8 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2998C6000, v8, OS_LOG_TYPE_INFO, "IndexMemImplV2::make_disk_impl : writing index segment", &__p, 2u);
  }

  v31 = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = v24;
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::KvStore(&__p, &v30, skit::default_kv_store_config, unk_2A14C0D80);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::set_dp_class(&__p, v5);
  v38 = v6 & 0x1FF;
  if (v36 == -1)
  {
    v37 = v7;
  }

  if (v35)
  {
    v9 = *(v35 + 28);
  }

  else
  {
    v9 = *"33s?";
  }

  v10 = *(this + 9);
  if ((skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::open(&__p) & 0x80000000) != 0)
  {
    v11 = "open term index";
    goto LABEL_50;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::rehash(&__p, (ceilf(v10 / v9) + 0.5)))
  {
    v11 = "KvStore resize";
LABEL_50:
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v17 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v19 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v24.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2082;
      *&buf[14] = v19;
      _os_log_error_impl(&dword_2998C6000, v17, OS_LOG_TYPE_ERROR, "IndexMemImplV2::make_disk_imp : %{public}s failed @ %{public}s", buf, 0x16u);
    }

    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::clear(&__p);
    v18 = 0;
    goto LABEL_54;
  }

  v12 = this + 64;
  v11 = "writing posting lists";
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    v13 = *(v12 + 8);
    v26.__r_.__value_.__r.__words[0] = *(v12 + 7);
    v26.__r_.__value_.__l.__size_ = 16;
    v26.__r_.__value_.__r.__words[2] = v13;
    v14 = *(v12 + 9);
    v27 = 8 * *(v26.__r_.__value_.__r.__words[0] + 8);
    v28 = v14;
    v29 = 6 * *(v26.__r_.__value_.__r.__words[0] + 12);
    v15 = *(v12 + 6) >> 1;
    *buf = *(v12 + 2);
    *&buf[8] = v15;
    if ((skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::put(&__p, buf, &v26) & 0x80000000) != 0)
    {
      goto LABEL_50;
    }
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::flush(&__p, 0))
  {
    v11 = "flush term index";
    goto LABEL_50;
  }

  if (skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(&__p))
  {
    v11 = "close term index";
    goto LABEL_50;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v24;
  }

  v16 = skit::internal::MemMetaStore::write((this + 96), &v26, v5, v6);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    v11 = "writing meta store";
    goto LABEL_50;
  }

  v18 = 1;
LABEL_54:
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(&__p);
  std::unique_ptr<skit::internal::IndexDiskImplV2>::~unique_ptr[abi:ne200100](&v31);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_58:
    operator new();
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if (v18)
  {
    goto LABEL_58;
  }

LABEL_63:
  if (skit::internal::get_logging_context(void)::once != -1)
  {
  }

  v20 = skit::internal::get_logging_context(void)::logger;
  if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
  {
    v23 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v25.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
    *(__p.__r_.__value_.__r.__words + 4) = v23;
    _os_log_error_impl(&dword_2998C6000, v20, OS_LOG_TYPE_ERROR, "MultiIndexV2::flush : flush failed @ %{public}s", &__p, 0xCu);
  }

  v1 = 0xFFFFFFFFLL;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

LABEL_68:
  v21 = *MEMORY[0x29EDCA608];
  return v1;
}

void sub_2998CBF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(&a52);
  std::unique_ptr<skit::internal::IndexDiskImplV2>::~unique_ptr[abi:ne200100](&a45);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          skit::internal::IndexDiskImplV2::~IndexDiskImplV2(v6);
          MEMORY[0x29C2A3200]();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t skit::internal::MultiIndexV2::close(void ****this)
{
  skit::internal::MultiIndexV2::flush(this);
  v3 = this[3];
    ;
  }

  this[4] = v3;
  skit::internal::IndexMemImplV2::clear((this + 6));
  *(this + 68) = 0;
  result = std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::shrink_to_fit((this + 3));
  *(this + 288) = 0;
  return result;
}

uint64_t skit::internal::IndexMemImplV2::clear(skit::internal::IndexMemImplV2 *this)
{
  v2 = *this;
  v3 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  v16[0] = v2;
  v16[1] = v3;
  v5 = *(this + 2);
  v4 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v17[0] = v5;
  v17[1] = v4;
  v18 = *(this + 8);
  *(this + 8) = 1065353216;
  if (v4)
  {
    v6 = *(v5 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v6 >= v3)
      {
        v6 %= v3;
      }
    }

    else
    {
      v6 &= v3 - 1;
    }

    *(v2 + 8 * v6) = v17;
  }

  std::__hash_table<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::__unordered_map_hasher<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::hash<skit::internal::Term>,std::equal_to<skit::internal::Term>,true>,std::__unordered_map_equal<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::equal_to<skit::internal::Term>,std::hash<skit::internal::Term>,true>,std::allocator<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>>>::~__hash_table(v16);
  v7 = *(this + 12);
  *(this + 5) = 0;
  *(this + 12) = 621942338;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 19) = 0;
  *(this + 5) = vdupq_n_s64(1uLL);
  *(this + 13) = v7;
  if (*(this + 14) != v7)
  {
    *(this + 12) = 0;
    *(this + 13) = 0;
    *(this + 14) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  v8 = *(this + 17);
  v9 = v8[1];
  if (v9 < 2)
  {
    v14 = 16 * v9;
    memset(v8 + 4, 128, 16 * v9);
    *(v8 + (v14 - 1) + 16) = -1;
    v8[2] = 0;
  }

  else
  {
    v11 = malloc_type_aligned_alloc(0x10uLL, 0x160uLL, 0x5063A342uLL);
    v11[2] = 0x8080808080808080;
    *v11 = (v11 + 2) >> 12;
    *(v11 + 4) = 1;
    *(v11 + 3) = 15;
    v11[3] = 0x8080808080808080;
    *(v11 + 31) = -1;
    v12 = *(this + 17);
    v13 = *(this + 18);
    *(this + 60) = 0;
    *(this + 16) = 0x40000000;
    *(this + 17) = v11;
    *(this + 18) = skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::allocate_pimpl<>const::{lambda(skit::internal::FlatSetImpl<std::pair<skit::Uuid,unsigned int>>*)#1}::__invoke;
    if (v12)
    {
      v13();
    }
  }

  return skit::internal::BlobFile::clear((this + 152), v10);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::__unordered_map_hasher<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::hash<skit::internal::Term>,std::equal_to<skit::internal::Term>,true>,std::__unordered_map_equal<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::equal_to<skit::internal::Term>,std::hash<skit::internal::Term>,true>,std::allocator<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[15];
      if (v4)
      {
        v2[16] = v4;
        operator delete(v4);
      }

      v5 = v2[12];
      if (v5)
      {
        v2[13] = v5;
        operator delete(v5);
      }

      v6 = v2[2];
      if (v6 != v2 + 4)
      {
        free(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t skit::internal::BlobFile::clear(skit::internal::BlobFile *this, std::error_code *a2)
{
  result = *(this + 6);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(this + 6) = -1;
    *(this + 4) = 0;
  }

  if (*(this + 23) < 0)
  {
    if (!*(this + 1))
    {
      return result;
    }

    result = *this;
  }

  else
  {
    result = this;
    if (!*(this + 23))
    {
      return result;
    }
  }

  result = remove(result, a2);
  if (*(this + 23) < 0)
  {
    **this = 0;
    *(this + 1) = 0;
  }

  else
  {
    *this = 0;
    *(this + 23) = 0;
  }

  return result;
}

uint64_t std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::shrink_to_fit(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  v3 = *(result + 16) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 3;
    v16 = result;
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<skit::internal::IndexDiskImplV2>>>(v4 >> 3);
    }

    v7 = 8 * v6;
    v12 = 0;
    v13 = 8 * v6;
    v14 = 8 * v6;
    v15 = 0;
    if (v3 >> 3)
    {
      v8 = *(result + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v10 = *v5;
      *v5 = v9;
      v5[1] = v7;
      v11 = v5[2];
      v5[2] = 0;
      v14 = v10;
      v15 = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<std::unique_ptr<skit::internal::IndexDiskImplV2>>::~__split_buffer(&v12);
  }

  return result;
}

void sub_2998CC51C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2998CC508);
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::close(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2 && a1[9])
  {
    skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::calculate_checksums(a1);
    v2 = a1[3];
  }

  if (v2 + 1 >= 2)
  {
    v4 = munmap(v2, a1[4]);
  }

  else
  {
    v4 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  v5 = skit::internal::BlobFile::close((a1 + 5)) | v4;
  v6 = a1[14];
  if (v6 + 1 >= 2)
  {
    v5 |= munmap(v6, a1[15]);
  }

  if (v5)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  a1[14] = 0;
  a1[15] = 0;
  return result;
}

uint64_t skit::internal::BlobFile::close(skit::internal::BlobFile *this)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((*(this + 6) & 0x80000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = skit::internal::BlobFile::flush_internal_cache(this);
    if (close(*(this + 6)))
    {
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v6 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v7 = this;
        if (*(this + 23) < 0)
        {
          v7 = *this;
        }

        v8 = *__error();
        v9 = 136446466;
        v10 = v7;
        v11 = 1024;
        v12 = v8;
        _os_log_error_impl(&dword_2998C6000, v6, OS_LOG_TYPE_ERROR, "BlobFile::close : blob file close failed @ %{public}s : %{darwin.errno}d", &v9, 0x12u);
      }

      v2 = 0xFFFFFFFFLL;
    }

    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3)
    {
      MEMORY[0x29C2A31E0](v3, 0x1000C8077774924);
    }

    *(this + 6) = -1;
    *(this + 4) = 0;
    if (*(this + 23) < 0)
    {
      **this = 0;
      *(this + 1) = 0;
    }

    else
    {
      *this = 0;
      *(this + 23) = 0;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

void skit::internal::MultiIndexV2::~MultiIndexV2(skit::internal::MultiIndexV2 *this, std::error_code *a2)
{
  skit::internal::BlobFile::clear((this + 200), a2);
  skit::internal::BlobFile::~BlobFile((this + 200));
  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    (*(this + 24))();
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::__unordered_map_hasher<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::hash<skit::internal::Term>,std::equal_to<skit::internal::Term>,true>,std::__unordered_map_equal<skit::internal::Term,std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>,std::equal_to<skit::internal::Term>,std::hash<skit::internal::Term>,true>,std::allocator<std::__hash_value_type<skit::internal::Term,skit::internal::PostingListMemImplV2>>>::~__hash_table(this + 48);
  v5 = (this + 24);
  std::vector<std::unique_ptr<skit::internal::IndexDiskImplV2>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__shared_ptr_emplace<skit::internal::IndexReaderImpl>::__on_zero_shared(uint64_t a1, std::error_code *a2)
{
  skit::internal::MultiIndexV2::~MultiIndexV2((a1 + 192), a2);

  return skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(a1 + 24);
}

void skit::internal::BlobFile::~BlobFile(skit::internal::BlobFile *this)
{
  skit::internal::BlobFile::close(this);
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x29C2A31E0](v2, 0x1000C8077774924);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::~KvStore(uint64_t a1)
{
  skit::internal::BlobFile::~BlobFile((a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<skit::internal::IndexDiskImplV2>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<skit::internal::IndexDiskImplV2>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<skit::internal::IndexDiskImplV2>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void skit::internal::MetaStoreHeader::base_id(skit::internal::MetaStoreHeader *this, uint64_t a2)
{
  if (*(this + 3))
  {
    v6 = v2;
    v7 = v3;
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v4 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2998C6000, v4, OS_LOG_TYPE_ERROR, "MetaStoreHeader::set_base_doc_id : cannot reset base doc ID to a non empty meta store", v5, 2u);
    }
  }

  else
  {
    *(this + 4) = a2;
    *(this + 5) = a2;
  }
}

uint64_t skit::IndexReader::open(skit::IndexReader *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!*this)
  {
LABEL_12:
    v8 = *MEMORY[0x29EDCA608];
    return 0xFFFFFFFFLL;
  }

  v2 = (v1 + 168);
  v3 = (v1 + 168);
  if (*(v1 + 191) < 0)
  {
    v3 = *v2;
  }

  if (access(v3, 0))
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v7 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      if (*(v1 + 191) < 0)
      {
        v2 = *v2;
      }

      v9 = 136446210;
      v10 = v2;
      _os_log_error_impl(&dword_2998C6000, v7, OS_LOG_TYPE_ERROR, "IndexReaderImpl::open : index does not exist @ %{public}s", &v9, 0xCu);
    }

    goto LABEL_12;
  }

  v4 = skit::internal::MultiIndexV2::open((v1 + 168));
  LODWORD(result) = skit::KvStore<std::u16string_view,64u,skit::Hash32<std::u16string_view>,std::equal_to<void>>::open(v1);
  if (result >= v4)
  {
    result = v4;
  }

  else
  {
    result = result;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void skit::to_u16string(std::basic_string<char16_t> *this, uint64_t a2, std::basic_string<char16_t>::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  std::basic_string<char16_t>::reserve(this, __requested_capacity);
  v19 = 0;
  *__s = 0;
  if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = v6 + 1;
      v9 = *(a2 + v6);
      v10 = *(a2 + v6);
      if (v9 < 0)
      {
        if (v8 == v3)
        {
          goto LABEL_9;
        }

        if (v10 < 0xE0)
        {
          if (v10 < 0xC2)
          {
            goto LABEL_26;
          }

          v14 = v10 & 0x1F;
        }

        else
        {
          if (v10 > 0xEF)
          {
            if (v10 > 0xF4 || (v16 = v10 - 240, v17 = *(a2 + v8), ((byte_2998EC288[v17 >> 4] >> v16) & 1) == 0))
            {
LABEL_26:
              v10 = -1;
              goto LABEL_27;
            }

            v8 = v7 + 2;
            if (v7 + 2 == v3)
            {
LABEL_9:
              v10 = -1;
              LODWORD(v8) = v3;
LABEL_27:
              __s[0] = (v10 >> 10) - 10304;
              __s[1] = v10 & 0x3FF | 0xDC00;
              v11 = 2;
              goto LABEL_28;
            }

            v13 = *(a2 + v8) ^ 0x80;
            if (v13 > 0x3F)
            {
              v10 = -1;
              goto LABEL_27;
            }

            LODWORD(v12) = v17 & 0x3F | (v16 << 6);
          }

          else
          {
            v12 = v9 & 0xF;
            if (((a00000000000000_0[v12] >> (*(a2 + v8) >> 5)) & 1) == 0)
            {
              goto LABEL_26;
            }

            v13 = *(a2 + v8) & 0x3F;
          }

          LODWORD(v8) = v8 + 1;
          if (v8 == v3)
          {
            goto LABEL_9;
          }

          v14 = v13 | (v12 << 6);
        }

        v15 = *(a2 + v8) ^ 0x80;
        if (v15 > 0x3F)
        {
          goto LABEL_26;
        }

        v10 = v15 | (v14 << 6);
        LODWORD(v8) = v8 + 1;
        if (v14 > 0x3FF)
        {
          goto LABEL_27;
        }
      }

      __s[0] = v10;
      v11 = 1;
LABEL_28:
      std::basic_string<char16_t>::append(this, __s, v11);
      v6 = v8;
    }

    while (v8 < v3);
  }
}

void std::basic_string<char16_t>::reserve(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  LODWORD(v3) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = this->__r_.__value_.__r.__words[2];
    v4 = (v5 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v3 = HIBYTE(v5);
  }

  else
  {
    v4 = 10;
  }

  if (v4 < __requested_capacity)
  {
    v6 = __requested_capacity | 3;
    if ((__requested_capacity | 3) == 0xB)
    {
      v6 = 12;
    }

    if (__requested_capacity <= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x80) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v10 = this->__r_.__value_.__r.__words[2];
      v9 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v3 = HIBYTE(v10);
    }

    else
    {
      LOBYTE(size) = v3;
      v9 = 10;
    }

    v11 = v7 < 0xB;
    if (v7 >= 0xB)
    {
      if (v9 < v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
    }

    v12 = this->__r_.__value_.__r.__words[0];
    if ((v3 & 0x80) != 0)
    {
      v3 = this->__r_.__value_.__l.__size_;
      v11 = 1;
    }

    else
    {
      v3 = v3;
    }

    v13 = __CFADD__(v3, 1);
    v14 = v3 + 1;
    if (!v13)
    {
      memmove(this, v12, 2 * v14);
    }

    if (v11)
    {
      operator delete(v12);
    }

    *(&this->__r_.__value_.__s + 23) = size & 0x7F;
  }
}

void sub_2998CCF6C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 2 * size, __s, 2 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

unint64_t skit::strip_bidi(const __int16 *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  result = skit::strip_bidi(a1, v3, 0);
  v5 = *(v1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(v1 + 1);
    if (v5 >= result)
    {
      *(v1 + 1) = result;
      v1 = *v1;
      goto LABEL_12;
    }
  }

  else if (result <= v5)
  {
    *(v1 + 23) = result;
LABEL_12:
    v1[result] = 0;
    return result;
  }

  return std::basic_string<char16_t>::append(v1, result - v5, 0);
}

uint64_t skit::strip_bidi(const __int16 *a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = &a1[a2];
    v5 = 2 * a2 - 2;
    v6 = a1;
    while (1)
    {
      v7 = vld1q_dup_s16(v6);
      if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v7, xmmword_2998EB800), vceqq_s16(v7, xmmword_2998EB810))) & 0x8000) != 0)
      {
        break;
      }

      ++v6;
      v5 -= 2;
      if (v6 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v6 != v4 && v6 + 1 != v4)
    {
      v8 = 1;
      v4 = v6;
      do
      {
        v9 = v6[v8];
        v10 = vdupq_n_s16(v9);
        if ((vmaxvq_u16(vorrq_s8(vceqq_s16(v10, xmmword_2998EB800), vceqq_s16(v10, xmmword_2998EB810))) & 0x8000) == 0)
        {
          *v4++ = v9;
        }

        ++v8;
        v5 -= 2;
      }

      while (v5);
LABEL_13:
      if (!a3)
      {
        return v4 - a1;
      }

LABEL_14:
      *v4 = 0;
      return v4 - a1;
    }

    v4 = v6;
    if (a3)
    {
      goto LABEL_14;
    }

    return v4 - a1;
  }

  return v3;
}

__n128 skit::Analyzer::dedup@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,false>(v4, v5, v7, 1);
  v9 = *a1;
  v8 = a1[1];
  v10 = *a1;
  if (*a1 == v8)
  {
LABEL_24:
    if (v10 != v8)
    {
      v19 = v10 + 6;
LABEL_26:
      if (v19 != v8)
      {
        v20 = *(v10 + 23);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v10[1];
        }

        do
        {
          v22 = *(v19 + 23);
          v23 = v22;
          if (v22 < 0)
          {
            v22 = v19[1];
          }

          if (v20 != v22)
          {
            break;
          }

          if (v20)
          {
            if (v23 >= 0)
            {
              v24 = v19;
            }

            else
            {
              v24 = *v19;
            }

            v25 = *v10;
            if (v21 >= 0)
            {
              v25 = v10;
            }

            v26 = v20;
            while (*v24 == *v25)
            {
              ++v25;
              ++v24;
              v26 = (v26 - 1);
              if (!v26)
              {
                goto LABEL_41;
              }
            }

            break;
          }

LABEL_41:
          *(v10 + 19) += *(v19 + 19);
          v27 = *(v10 + 8);
          if (v27 < *(v19 + 8))
          {
            v27 = *(v19 + 8);
          }

          *(v10 + 8) = v27;
          *(v10 + 20) |= *(v19 + 20);
          v19 += 6;
        }

        while (v19 != v8);
      }

      if (v19 == v8)
      {
        v34 = v10;
      }

      else
      {
        do
        {
          v28 = *(v10 + 23);
          v29 = v28;
          if (v28 < 0)
          {
            v28 = v10[1];
          }

          v30 = *(v19 + 23);
          v31 = v30;
          if (v30 < 0)
          {
            v30 = v19[1];
          }

          if (v28 == v30)
          {
            if (!v28)
            {
              goto LABEL_26;
            }

            if (v31 >= 0)
            {
              v32 = v19;
            }

            else
            {
              v32 = *v19;
            }

            if (v29 >= 0)
            {
              v33 = v10;
            }

            else
            {
              v33 = *v10;
            }

            while (*v32 == *v33)
            {
              ++v33;
              ++v32;
              v28 = (v28 - 1);
              if (!v28)
              {
                goto LABEL_26;
              }
            }
          }

          v34 = (v10 + 6);
          if (*(v10 + 71) < 0)
          {
            operator delete(*v34);
          }

          v35 = *v19;
          v10[8] = v19[2];
          *v34 = v35;
          *(v19 + 23) = 0;
          *v19 = 0;
          v36 = *(v19 + 3);
          v10[11] = v19[5];
          *(v10 + 9) = v36;
          v19 += 6;
          v8 = a1[1];
          v10 += 6;
        }

        while (v19 != v8);
      }

      v8 = (v34 + 6);
      v9 = *a1;
    }
  }

  else
  {
    v11 = (v9 + 48);
    if ((v9 + 48) != v8)
    {
      v10 = *a1;
      do
      {
        v12 = v11;
        v13 = *(v10 + 23);
        v14 = v13;
        if (v13 < 0)
        {
          v13 = v10[1];
        }

        v15 = *(v10 + 71);
        v16 = v15;
        if (v15 < 0)
        {
          v15 = v10[7];
        }

        if (v13 == v15)
        {
          if (!v13)
          {
            goto LABEL_24;
          }

          if (v16 >= 0)
          {
            v17 = v12;
          }

          else
          {
            v17 = *v12;
          }

          if (v14 >= 0)
          {
            v18 = v10;
          }

          else
          {
            v18 = *v10;
          }

          while (*v17 == *v18)
          {
            ++v18;
            ++v17;
            v13 = (v13 - 1);
            if (!v13)
            {
              goto LABEL_24;
            }
          }
        }

        v11 = v12 + 6;
        v10 = v12;
      }

      while (v12 + 6 != v8);
    }
  }

  std::vector<skit::Token>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4));
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return result;
}

uint64_t skit::internal::AliasImpl::span_match_alias(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v65[2] = *MEMORY[0x29EDCA608];
  v54 = a4;
  v9 = *a3 + 48 * a4;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v9 = *v9;
    v10 = *(*a3 + 48 * a4 + 8);
  }

  v56 = 2 * v10;
  marisa::Agent::set_query(a6, v9);
  if (a5 <= a4 + 1)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = a5;
  }

  v55 = v11;
LABEL_7:
  while (1)
  {
    result = marisa::Trie::predictive_search((a1 + 56), a6);
    if (!result)
    {
      break;
    }

    v13 = *(a6 + 32);
    if (v13)
    {
      continue;
    }

    v14 = *(a6 + 24);
    v15 = (v14 + v56);
    v16 = *a3;
    v17 = v14 + v13;
    v18 = a4;
    while (1)
    {
      v19 = v18 + 1;
      if (v19 >= a5)
      {
        break;
      }

      if (!*v15)
      {
        goto LABEL_25;
      }

      v20 = (v16 + 48 * v19);
      v21 = v20[6] - *(v16 + 48 * v18 + 28);
      if (v21)
      {
        v22 = 2 * v21;
        v23 = v15;
        while (*v23 && *v23 == 32)
        {
          v23 += 2;
          v22 -= 2;
          if (!v22)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_7;
      }

LABEL_17:
      v24 = &v15[2 * v21];
      if (*(v20 + 23) < 0)
      {
        v25 = 2 * *(v20 + 1);
        if (v17 - v24 < v25 + 6)
        {
          goto LABEL_7;
        }

        v20 = *v20;
      }

      else
      {
        v25 = 2 * *(v20 + 23);
        if (v17 - v24 < v25 + 6)
        {
          goto LABEL_7;
        }
      }

      v26 = memcmp(v24, v20, v25);
      v15 = &v24[v25];
      v18 = v19;
      if (v26)
      {
        goto LABEL_7;
      }
    }

    v19 = v55;
    if (*v15)
    {
      continue;
    }

LABEL_25:
    v27 = *(a2 + 8);
    v28 = (v15 + 4);
    v29 = v14 + v13;
    if ((v15 + 4) < v29)
    {
      v30 = *(v15 + 1);
      v31 = v54 | (v19 << 32);
      do
      {
        v32 = *v28;
        marisa::Agent::set_query(a7);
        marisa::Trie::reverse_lookup((a1 + 48), a7);
        std::basic_string<char16_t>::basic_string[abi:ne200100](&__p, *(a7 + 24), *(a7 + 32) >> 1);
        v33 = __p;
        v64[0] = v63;
        *(v64 + 7) = *(&v63 + 7);
        v34 = HIBYTE(v63);
        __p = 0;
        v63 = 0uLL;
        v35 = *(a2 + 8);
        if (v35 == *(a2 + 12))
        {
          skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more(a2, v35 + (v35 >> 1) + 1);
          v35 = *(a2 + 8);
        }

        v36 = *a2 + 40 * v35;
        v65[0] = v64[0];
        *(v65 + 7) = *(v64 + 7);
        v64[0] = 0;
        *(v64 + 7) = 0;
        v37 = v65[0];
        *v36 = v33;
        *(v36 + 8) = v37;
        *(v36 + 15) = *(v65 + 7);
        *(v36 + 23) = v34;
        *(v36 + 24) = v31;
        *(v36 + 32) = v30;
        ++*(a2 + 8);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p);
        }

        ++v28;
      }

      while (v28 < v29);
    }

    if (v27)
    {
      v38 = 0;
      v39 = (*a2 + 28);
      while (1)
      {
        v40 = *v39;
        v39 += 10;
        if (v40 > a4)
        {
          break;
        }

        if (v27 == ++v38)
        {
          goto LABEL_7;
        }
      }

      v41 = v38;
      while (1)
      {
        while (1)
        {
          LODWORD(v42) = *(a2 + 8);
          if (v27 < v42)
          {
            break;
          }

LABEL_57:
          if (++v41 >= v27)
          {
            goto LABEL_7;
          }
        }

        v43 = v27;
        while (1)
        {
          while (1)
          {
            v44 = *a2 + 40 * v41;
            v45 = *a2 + 40 * v43;
            if (*(v44 + 32) != *(v45 + 32))
            {
              goto LABEL_56;
            }

            v46 = *(v44 + 24);
            v47 = *(v44 + 28);
            v48 = *(v45 + 24);
            v49 = *(v45 + 28);
            if (v46 == v48 && v47 == v49)
            {
              goto LABEL_56;
            }

            if (v48 < v46 || v49 > v47)
            {
              break;
            }

            skit::SmallVector<skit::AliasMatch,2u,true>::erase(a2, *a2 + 40 * v43);
            v42 = *(a2 + 8);
            if (v43 >= v42)
            {
              goto LABEL_57;
            }
          }

          if (v46 >= v48 && v47 <= v49)
          {
            break;
          }

LABEL_56:
          if (++v43 >= v42)
          {
            goto LABEL_57;
          }
        }

        skit::SmallVector<skit::AliasMatch,2u,true>::erase(a2, v44);
        v27 = (v27 - 1);
        if (v41 == v27)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v53 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2998CD898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(v23);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_string<char16_t>::basic_string[abi:ne200100](_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v6);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  return __dst;
}

size_t skit::SmallVector<skit::AliasMatch,2u,true>::_reserve_more(__int128 **a1, unsigned int a2)
{
  v3 = malloc_type_malloc(40 * a2, 0x10120408116F198uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v14, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v3;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v7 + 2) = *(v8 + 2);
      *v7 = v9;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      v10 = *(v8 + 3);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 3) = v10;
      v7 = (v7 + 40);
      v8 = (v8 + 40);
    }

    while (v8 != (v5 + 40 * v6));
    v11 = 40 * v6;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
      v11 -= 40;
    }

    while (v11);
    v5 = *a1;
  }

  if (v5 != (a1 + 2))
  {
    free(v5);
  }

  *a1 = v4;
  result = malloc_size(v4);
  *(a1 + 3) = result / 0x28;
  return result;
}

void *skit::internal::Term::Term(void *a1, __int16 a2, void *__src, uint64_t a4)
{
  v7 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x1800000000;
  v8 = 2 * a4;
  v9 = 2 * a4 + 2;
  if (v9 >= 0x19)
  {
    skit::SmallVector<std::byte,24u,false>::_reserve_more(a1, (2 * a4 + 2));
    v7 = *a1;
  }

  *(a1 + 2) = v9;
  *v7 = a2;
  memcpy((*a1 + 2), __src, v8);
  return a1;
}

void sub_2998CDAFC(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t skit::IndexWriter::append(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, iovec *a5, int a6, float a7)
{
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *(v7 + 529) = 1;
  return skit::internal::MultiIndexV2::append(v7 + 208, *a2, a2[1], a3, a4, a5, a6, 1, a7);
}

unint64_t std::__string_view_hash<char16_t>::operator()[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = 2 * a2;
  if ((2 * a2) > 0x20)
  {
    if (v2 <= 0x40)
    {
      v6 = a1 + v2;
      v7 = *(a1 + v2 - 16);
      v8 = *(a1 + v2 - 8);
      v9 = *a1 - 0x3C5A37A36834CED9 * (v7 + v2);
      v11 = a1[2];
      v10 = a1[3];
      v12 = __ROR8__(v9 + v10, 52);
      v13 = __ROR8__(v9, 37);
      v14 = v9 + a1[1];
      v15 = __ROR8__(v14, 7);
      v16 = v14 + v11;
      v17 = v15 + v13;
      v18 = *(v6 - 4) + v11;
      v19 = v8 + v10;
      v20 = __ROR8__(v19 + v18, 52);
      v21 = v17 + v12;
      v22 = __ROR8__(v18, 37);
      v23 = *(v6 - 3) + v18;
      v24 = __ROR8__(v23, 7);
      v25 = v21 + __ROR8__(v16, 31);
      v26 = v23 + v7;
      v27 = v26 + v19;
      v28 = v16 + v10 + v22 + v24 + v20 + __ROR8__(v26, 31);
      v29 = 0x9AE16A3B2F90404FLL;
      v30 = v25 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v27 + v25) - 0x651E95C4D06FBFB1 * v28) ^ ((0xC3A5C85C97CB3127 * (v27 + v25) - 0x651E95C4D06FBFB1 * v28) >> 47));
      return (v30 ^ (v30 >> 47)) * v29;
    }

    v5 = 0x9DDFEA08EB382D69;
    v37 = *(a1 + v2 - 48);
    v38 = *(a1 + v2 - 40);
    v39 = *(a1 + v2 - 24);
    v40 = *(a1 + v2 - 56);
    v41 = *(a1 + v2 - 16);
    v42 = *(a1 + v2 - 8);
    v43 = v40 + v41;
    v44 = 0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ (v37 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ (v37 + v2))));
    v45 = 0x9DDFEA08EB382D69 * (v44 ^ (v44 >> 47));
    v46 = *(a1 + v2 - 64) + v2;
    v47 = v46 + v40 + v37;
    v48 = __ROR8__(v47, 44) + v46;
    v49 = __ROR8__(v38 + v46 + v45, 21);
    v50 = v47 + v38;
    v51 = v48 + v49;
    v52 = v43 + *(a1 + v2 - 32) - 0x4B6D499041670D8DLL;
    v53 = v52 + v39 + v41;
    v54 = v53 + v42;
    v55 = __ROR8__(v53, 44) + v52 + __ROR8__(v52 + v38 + v42, 21);
    v57 = *a1;
    v56 = a1 + 4;
    v58 = v57 - 0x4B6D499041670D8DLL * v38;
    v59 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v60 = *(v56 - 3);
      v61 = v58 + v50 + v43 + v60;
      v62 = v56[2];
      v63 = v56[3];
      v64 = v56[1];
      v43 = v64 + v50 - 0x4B6D499041670D8DLL * __ROR8__(v43 + v51 + v62, 42);
      v65 = v45 + v54;
      v66 = *(v56 - 2);
      v67 = *(v56 - 1);
      v68 = *(v56 - 4) - 0x4B6D499041670D8DLL * v51;
      v69 = v68 + v54 + v67;
      v70 = v68 + v60 + v66;
      v50 = v70 + v67;
      v71 = __ROR8__(v70, 44) + v68;
      v72 = (0xB492B66FBE98F273 * __ROR8__(v61, 37)) ^ v55;
      v58 = 0xB492B66FBE98F273 * __ROR8__(v65, 33);
      v51 = v71 + __ROR8__(v69 + v72, 21);
      v73 = v58 + v55 + *v56;
      v54 = v73 + v64 + v62 + v63;
      v55 = __ROR8__(v73 + v64 + v62, 44) + v73 + __ROR8__(v43 + v66 + v73 + v63, 21);
      v56 += 8;
      v45 = v72;
      v59 += 64;
    }

    while (v59);
    v74 = v58 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v55 ^ ((0x9DDFEA08EB382D69 * (v55 ^ v51)) >> 47) ^ (0x9DDFEA08EB382D69 * (v55 ^ v51)))) ^ ((0x9DDFEA08EB382D69 * (v55 ^ ((0x9DDFEA08EB382D69 * (v55 ^ v51)) >> 47) ^ (0x9DDFEA08EB382D69 * (v55 ^ v51)))) >> 47));
    v75 = 0x9DDFEA08EB382D69 * (v74 ^ (v72 - 0x4B6D499041670D8DLL * (v43 ^ (v43 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v54 ^ ((0x9DDFEA08EB382D69 * (v54 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v54 ^ v50)))) ^ ((0x9DDFEA08EB382D69 * (v54 ^ ((0x9DDFEA08EB382D69 * (v54 ^ v50)) >> 47) ^ (0x9DDFEA08EB382D69 * (v54 ^ v50)))) >> 47))));
    v76 = 0x9DDFEA08EB382D69 * (v74 ^ (v75 >> 47) ^ v75);
    goto LABEL_13;
  }

  if (v2 > 0x10)
  {
    v31 = a1[1];
    v32 = 0xB492B66FBE98F273 * *a1;
    v33 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + v2 - 8), 30) + __ROR8__(v32 - v31, 43);
    v34 = v32 + v2 + __ROR8__(v31 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + v2 - 8);
    v35 = v34 ^ (v33 - 0x3C5A37A36834CED9 * *(a1 + v2 - 16));
    v29 = 0x9DDFEA08EB382D69;
    v36 = v34 ^ ((0x9DDFEA08EB382D69 * v35) >> 47) ^ (0x9DDFEA08EB382D69 * v35);
LABEL_8:
    v30 = 0x9DDFEA08EB382D69 * v36;
    return (v30 ^ (v30 >> 47)) * v29;
  }

  if (v2 < 9)
  {
    if (v2 >= 4)
    {
      v78 = *(a1 + v2 - 4);
      v79 = (v2 + (8 * *a1)) ^ v78;
      v29 = 0x9DDFEA08EB382D69;
      v36 = v78 ^ ((0x9DDFEA08EB382D69 * v79) >> 47) ^ (0x9DDFEA08EB382D69 * v79);
      goto LABEL_8;
    }

    v5 = 0x9AE16A3B2F90404FLL;
    if (a1 == (a1 + 2 * a2))
    {
      return v5;
    }

    v76 = (0xC949D7C7509E6557 * (v2 | (4 * *(a1 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (v2 >> 1)) << 8)));
LABEL_13:
    v5 *= v76 ^ (v76 >> 47);
    return v5;
  }

  v3 = *(a1 + v2 - 8);
  v4 = __ROR8__(v3 + v2, v2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
}

void std::__introsort<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,false>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v376[2] = *MEMORY[0x29EDCA608];
LABEL_2:
  v369 = a2 - 6;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v7) >> 4);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v170 = *MEMORY[0x29EDCA608];

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, a1 + 48, v369);
          return;
        case 4:
          v175 = *MEMORY[0x29EDCA608];

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, a1 + 48, a1 + 96, v369);
          return;
        case 5:
          v174 = *MEMORY[0x29EDCA608];

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, a1 + 48, a1 + 96, a1 + 144, v369);
          return;
      }

      goto LABEL_10;
    }

    if (v9 < 2)
    {
      goto LABEL_619;
    }

    if (v9 == 2)
    {
      break;
    }

LABEL_10:
    if (v8 <= 1151)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          goto LABEL_619;
        }

        v176 = a1 + 48;
        if ((a1 + 48) == a2)
        {
          goto LABEL_619;
        }

        v177 = a1;
        while (1)
        {
          v178 = v177;
          v177 = v176;
          v179 = v178[42];
          v180 = v178[18];
          if (v179 < v180)
          {
            goto LABEL_306;
          }

          if (v179 <= v180)
          {
            v195 = *(v178 + 23);
            v196 = v195;
            if ((v195 & 0x80u) != 0)
            {
              v195 = *(v178 + 1);
            }

            v197 = *(v178 + 71);
            v198 = v197;
            if ((v197 & 0x80u) != 0)
            {
              v197 = *(v178 + 7);
            }

            if (v195 >= v197)
            {
              v199 = v197;
            }

            else
            {
              v199 = v195;
            }

            if (v199)
            {
              if (v198 >= 0)
              {
                v200 = v177;
              }

              else
              {
                v200 = *v177;
              }

              if (v196 >= 0)
              {
                v201 = v178;
              }

              else
              {
                v201 = *v178;
              }

              while (1)
              {
                v202 = *v200;
                v203 = *v201;
                if (v202 < v203)
                {
                  break;
                }

                if (v203 < v202)
                {
                  goto LABEL_359;
                }

                ++v200;
                ++v201;
                if (!--v199)
                {
                  goto LABEL_352;
                }
              }

LABEL_306:
              v181 = *v177;
              v371 = *(v177 + 2);
              v370 = v181;
              *(v177 + 1) = 0;
              *(v177 + 2) = 0;
              *v177 = 0;
              v372 = *(v178 + 36);
              v373 = *(v178 + 11);
              v182 = WORD6(v372);
              if (v371 >= 0)
              {
                v183 = HIBYTE(v371);
              }

              else
              {
                v183 = *(&v370 + 1);
              }

              if (v371 >= 0)
              {
                v184 = &v370;
              }

              else
              {
                v184 = v370;
              }

              v185 = v177;
              while (1)
              {
                v186 = v178;
                if (*(v185 + 23) < 0)
                {
                  operator delete(*v185);
                }

                *v185 = *v186;
                *(v185 + 2) = *(v186 + 2);
                *(v186 + 23) = 0;
                *v186 = 0;
                *(v185 + 12) = *(v186 + 12);
                *(v185 + 5) = *(v186 + 5);
                if (v186 == a1)
                {
                  break;
                }

                v178 = v186 - 24;
                v187 = *(v186 - 6);
                v185 = v186;
                if (v182 >= v187)
                {
                  if (v182 > v187)
                  {
                    goto LABEL_354;
                  }

                  v188 = *(v186 - 25);
                  v189 = v188;
                  if ((v188 & 0x80u) != 0)
                  {
                    v188 = *(v186 - 5);
                  }

                  if (v188 >= v183)
                  {
                    v190 = v183;
                  }

                  else
                  {
                    v190 = v188;
                  }

                  if (v190)
                  {
                    if (v189 >= 0)
                    {
                      v191 = v186 - 24;
                    }

                    else
                    {
                      v191 = *v178;
                    }

                    v192 = v184;
                    while (1)
                    {
                      v193 = *v192;
                      v194 = *v191;
                      if (v193 < v194)
                      {
                        break;
                      }

                      if (v194 < v193)
                      {
                        goto LABEL_354;
                      }

                      ++v192;
                      ++v191;
                      if (!--v190)
                      {
                        goto LABEL_331;
                      }
                    }

                    v185 = v186;
                  }

                  else
                  {
LABEL_331:
                    v185 = v186;
                    if (v183 >= v188)
                    {
LABEL_354:
                      v204 = v186;
                      goto LABEL_356;
                    }
                  }
                }
              }

              v204 = a1;
LABEL_356:
              if (*(v204 + 23) < 0)
              {
                operator delete(*v204);
              }

              v205 = v370;
              *(v204 + 16) = v371;
              *v204 = v205;
              v206 = v372;
              *(v186 + 5) = v373;
              *(v186 + 12) = v206;
              goto LABEL_359;
            }

LABEL_352:
            if (v197 < v195)
            {
              goto LABEL_306;
            }
          }

LABEL_359:
          v176 = (v177 + 24);
          if (v177 + 24 == a2)
          {
            goto LABEL_619;
          }
        }
      }

      if (a1 == a2)
      {
        goto LABEL_619;
      }

      v338 = a1 + 48;
      if ((a1 + 48) == a2)
      {
        goto LABEL_619;
      }

      while (1)
      {
        v339 = a1;
        a1 = v338;
        v340 = v339[42];
        v341 = v339[18];
        if (v340 < v341)
        {
          goto LABEL_569;
        }

        if (v340 <= v341)
        {
          v358 = *(v339 + 23);
          v359 = v358;
          if ((v358 & 0x80u) != 0)
          {
            v358 = *(v339 + 1);
          }

          v360 = *(v339 + 71);
          v361 = v360;
          if ((v360 & 0x80u) != 0)
          {
            v360 = *(v339 + 7);
          }

          if (v358 >= v360)
          {
            v362 = v360;
          }

          else
          {
            v362 = v358;
          }

          if (v362)
          {
            if (v361 >= 0)
            {
              v363 = a1;
            }

            else
            {
              v363 = *a1;
            }

            if (v359 >= 0)
            {
              v364 = v339;
            }

            else
            {
              v364 = *v339;
            }

            while (1)
            {
              v365 = *v363;
              v366 = *v364;
              if (v365 < v366)
              {
                break;
              }

              if (v366 < v365)
              {
                goto LABEL_618;
              }

              ++v363;
              ++v364;
              if (!--v362)
              {
                goto LABEL_617;
              }
            }

LABEL_569:
            v342 = *a1;
            v371 = *(a1 + 16);
            v370 = v342;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v372 = *(v339 + 36);
            v373 = *(v339 + 11);
            v343 = WORD6(v372);
            if (v371 >= 0)
            {
              v344 = HIBYTE(v371);
            }

            else
            {
              v344 = *(&v370 + 1);
            }

            if (v371 >= 0)
            {
              v345 = &v370;
            }

            else
            {
              v345 = v370;
            }

            v346 = a1;
            while (1)
            {
              do
              {
                v347 = v339;
                if (*(v346 + 23) < 0)
                {
                  operator delete(*v346);
                }

                *v346 = *v347;
                *(v346 + 16) = *(v347 + 2);
                *(v347 + 23) = 0;
                *v347 = 0;
                *(v346 + 24) = *(v347 + 12);
                *(v346 + 40) = *(v347 + 5);
                v339 = v347 - 24;
                v348 = *(v347 - 6);
                v346 = v347;
              }

              while (v343 < v348);
              if (v343 > v348)
              {
                break;
              }

              v349 = *(v347 - 25);
              v350 = v349;
              if ((v349 & 0x80u) != 0)
              {
                v349 = *(v347 - 5);
              }

              if (v349 >= v344)
              {
                v351 = v344;
              }

              else
              {
                v351 = v349;
              }

              if (v351)
              {
                if (v350 >= 0)
                {
                  v352 = v347 - 24;
                }

                else
                {
                  v352 = *v339;
                }

                v353 = v345;
                while (1)
                {
                  v354 = *v353;
                  v355 = *v352;
                  if (v354 < v355)
                  {
                    break;
                  }

                  if (v355 < v354)
                  {
                    goto LABEL_596;
                  }

                  ++v353;
                  ++v352;
                  if (!--v351)
                  {
                    goto LABEL_593;
                  }
                }

                v346 = v347;
              }

              else
              {
LABEL_593:
                v346 = v347;
                if (v344 >= v349)
                {
                  break;
                }
              }
            }

LABEL_596:
            if (*(v347 + 23) < 0)
            {
              operator delete(*v347);
            }

            v356 = v370;
            *(v347 + 2) = v371;
            *v347 = v356;
            v357 = v372;
            *(v347 + 5) = v373;
            *(v347 + 12) = v357;
            goto LABEL_618;
          }

LABEL_617:
          if (v360 < v358)
          {
            goto LABEL_569;
          }
        }

LABEL_618:
        v338 = a1 + 48;
        if ((a1 + 48) == a2)
        {
          goto LABEL_619;
        }
      }
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v207 = v10 >> 1;
        v208 = v10 >> 1;
        while (1)
        {
          v209 = v208;
          if (v207 < v208)
          {
            goto LABEL_456;
          }

          v210 = (2 * v208) | 1;
          v211 = (a1 + 48 * v210);
          if (2 * v209 + 2 < v9)
          {
            v212 = v211[18];
            v213 = v211[42];
            if (v212 < v213)
            {
              goto LABEL_366;
            }

            if (v212 <= v213)
            {
              v214 = *(v211 + 71);
              v215 = v214;
              if ((v214 & 0x80u) != 0)
              {
                v214 = *(v211 + 7);
              }

              v216 = *(v211 + 23);
              v217 = v216;
              if ((v216 & 0x80u) != 0)
              {
                v216 = *(v211 + 1);
              }

              if (v214 >= v216)
              {
                v218 = v216;
              }

              else
              {
                v218 = v214;
              }

              if (v218)
              {
                if (v217 >= 0)
                {
                  v219 = (a1 + 48 * v210);
                }

                else
                {
                  v219 = *v211;
                }

                if (v215 >= 0)
                {
                  v220 = v211 + 24;
                }

                else
                {
                  v220 = *(v211 + 6);
                }

                while (1)
                {
                  v221 = *v219;
                  v222 = *v220;
                  if (v221 < v222)
                  {
                    break;
                  }

                  if (v222 < v221)
                  {
                    goto LABEL_386;
                  }

                  ++v219;
                  ++v220;
                  if (!--v218)
                  {
                    goto LABEL_385;
                  }
                }

LABEL_366:
                v211 += 24;
                v210 = 2 * v209 + 2;
                goto LABEL_386;
              }

LABEL_385:
              if (v216 < v214)
              {
                goto LABEL_366;
              }
            }
          }

LABEL_386:
          v223 = (a1 + 48 * v209);
          v224 = v211[18];
          v225 = *(v223 + 18);
          if (v224 < v225)
          {
            goto LABEL_456;
          }

          if (v224 <= v225)
          {
            v226 = *(v223 + 23);
            v227 = v226;
            if (v226 < 0)
            {
              v226 = v223[1];
            }

            v228 = *(v211 + 23);
            v229 = v228;
            if ((v228 & 0x80u) != 0)
            {
              v228 = *(v211 + 1);
            }

            if (v226 >= v228)
            {
              v230 = v228;
            }

            else
            {
              v230 = v226;
            }

            if (v230)
            {
              if (v229 >= 0)
              {
                v231 = v211;
              }

              else
              {
                v231 = *v211;
              }

              if (v227 >= 0)
              {
                v232 = (a1 + 48 * v209);
              }

              else
              {
                v232 = *v223;
              }

              while (1)
              {
                v233 = *v231;
                v234 = *v232;
                if (v233 < v234)
                {
                  goto LABEL_456;
                }

                if (v234 < v233)
                {
                  break;
                }

                ++v231;
                ++v232;
                v230 = (v230 - 1);
                if (!v230)
                {
                  goto LABEL_405;
                }
              }
            }

            else
            {
LABEL_405:
              if (v228 < v226)
              {
                goto LABEL_456;
              }
            }
          }

          v235 = *v223;
          v371 = v223[2];
          v370 = v235;
          v223[1] = 0;
          v223[2] = 0;
          *v223 = 0;
          v236 = *(v223 + 3);
          v373 = v223[5];
          v372 = v236;
          while (1)
          {
            v237 = v211;
            if (*(v223 + 23) < 0)
            {
              operator delete(*v223);
            }

            v238 = *v237;
            v223[2] = v237[2];
            *v223 = v238;
            *(v237 + 23) = 0;
            *v237 = 0;
            v239 = *(v237 + 3);
            v223[5] = v237[5];
            *(v223 + 3) = v239;
            if (v207 < v210)
            {
              break;
            }

            v240 = 2 * v210;
            v210 = (2 * v210) | 1;
            v211 = (a1 + 48 * v210);
            v241 = v240 + 2;
            if (v241 < v9)
            {
              v242 = v211[18];
              v243 = v211[42];
              if (v242 >= v243)
              {
                if (v242 > v243)
                {
                  goto LABEL_432;
                }

                v244 = *(v211 + 71);
                v245 = v244;
                if ((v244 & 0x80u) != 0)
                {
                  v244 = *(v211 + 7);
                }

                v246 = *(v211 + 23);
                v247 = v246;
                if ((v246 & 0x80u) != 0)
                {
                  v246 = *(v211 + 1);
                }

                if (v244 >= v246)
                {
                  v248 = v246;
                }

                else
                {
                  v248 = v244;
                }

                if (v248)
                {
                  if (v247 >= 0)
                  {
                    v249 = (a1 + 48 * v210);
                  }

                  else
                  {
                    v249 = *v211;
                  }

                  if (v245 >= 0)
                  {
                    v250 = v211 + 24;
                  }

                  else
                  {
                    v250 = *(v211 + 6);
                  }

                  while (1)
                  {
                    v251 = *v249;
                    v252 = *v250;
                    if (v251 < v252)
                    {
                      break;
                    }

                    if (v252 < v251)
                    {
                      goto LABEL_432;
                    }

                    ++v249;
                    ++v250;
                    if (!--v248)
                    {
                      goto LABEL_431;
                    }
                  }
                }

                else
                {
LABEL_431:
                  if (v246 >= v244)
                  {
                    goto LABEL_432;
                  }
                }
              }

              v211 += 24;
              v210 = v241;
            }

LABEL_432:
            v253 = v211[18];
            if (v253 < WORD6(v372))
            {
              break;
            }

            v223 = v237;
            if (v253 <= WORD6(v372))
            {
              v254 = HIBYTE(v371);
              if (v371 < 0)
              {
                v254 = *(&v370 + 1);
              }

              v255 = *(v211 + 23);
              v256 = v255;
              if ((v255 & 0x80u) != 0)
              {
                v255 = *(v211 + 1);
              }

              if (v254 >= v255)
              {
                v257 = v255;
              }

              else
              {
                v257 = v254;
              }

              if (v257)
              {
                if (v256 >= 0)
                {
                  v258 = v211;
                }

                else
                {
                  v258 = *v211;
                }

                v259 = &v370;
                if (v371 < 0)
                {
                  v259 = v370;
                }

                while (1)
                {
                  v260 = *v258;
                  v261 = *v259;
                  if (v260 < v261)
                  {
                    goto LABEL_453;
                  }

                  if (v261 < v260)
                  {
                    break;
                  }

                  ++v258;
                  ++v259;
                  if (!--v257)
                  {
                    goto LABEL_450;
                  }
                }

                v223 = v237;
              }

              else
              {
LABEL_450:
                v223 = v237;
                if (v255 < v254)
                {
                  break;
                }
              }
            }
          }

LABEL_453:
          if (*(v237 + 23) < 0)
          {
            operator delete(*v237);
          }

          v262 = v370;
          v237[2] = v371;
          *v237 = v262;
          v263 = v372;
          v237[5] = v373;
          *(v237 + 3) = v263;
LABEL_456:
          v208 = v209 - 1;
          if (!v209)
          {
            v264 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
            while (1)
            {
              v265 = 0;
              v266 = a2;
              v267 = *a1;
              v376[0] = *(a1 + 8);
              *(v376 + 7) = *(a1 + 15);
              v268 = *(a1 + 23);
              *(a1 + 8) = 0;
              *(a1 + 16) = 0;
              *a1 = 0;
              v269 = *(a1 + 24);
              v375 = *(a1 + 40);
              v270 = a1;
              v374 = v269;
              do
              {
                v271 = v270 + 48 * v265;
                v272 = (v271 + 48);
                v273 = 2 * v265;
                v265 = (2 * v265) | 1;
                v274 = v273 + 2;
                if (v274 >= v264)
                {
                  goto LABEL_481;
                }

                v275 = (v271 + 96);
                v276 = *(v271 + 84);
                v277 = *(v271 + 132);
                if (v276 < v277)
                {
                  goto LABEL_461;
                }

                if (v276 <= v277)
                {
                  v278 = *(v271 + 119);
                  v279 = v278;
                  if ((v278 & 0x80u) != 0)
                  {
                    v278 = *(v271 + 104);
                  }

                  v280 = *(v271 + 71);
                  v281 = v280;
                  v282 = *(v271 + 56);
                  if ((v280 & 0x80u) == 0)
                  {
                    v282 = v280;
                  }

                  if (v278 >= v282)
                  {
                    v283 = v282;
                  }

                  else
                  {
                    v283 = v278;
                  }

                  if (v283)
                  {
                    if (v281 >= 0)
                    {
                      v284 = v272;
                    }

                    else
                    {
                      v284 = *v272;
                    }

                    if (v279 >= 0)
                    {
                      v285 = v275;
                    }

                    else
                    {
                      v285 = *v275;
                    }

                    while (1)
                    {
                      v286 = *v284;
                      v287 = *v285;
                      if (v286 < v287)
                      {
                        break;
                      }

                      if (v287 < v286)
                      {
                        goto LABEL_481;
                      }

                      ++v284;
                      ++v285;
                      if (!--v283)
                      {
                        goto LABEL_480;
                      }
                    }

LABEL_461:
                    v272 = v275;
                    v265 = v274;
                    goto LABEL_481;
                  }

LABEL_480:
                  if (v282 < v278)
                  {
                    goto LABEL_461;
                  }
                }

LABEL_481:
                if (*(v270 + 23) < 0)
                {
                  operator delete(*v270);
                }

                v288 = *v272;
                *(v270 + 16) = v272[2];
                *v270 = v288;
                *(v272 + 23) = 0;
                *v272 = 0;
                v289 = *(v272 + 3);
                *(v270 + 40) = v272[5];
                *(v270 + 24) = v289;
                v270 = v272;
              }

              while (v265 <= ((v264 - 2) >> 1));
              a2 -= 6;
              v290 = *(v272 + 23);
              if (v272 == v266 - 6)
              {
                if (v290 < 0)
                {
                  operator delete(*v272);
                }

                *v272 = v267;
                *(v272 + 15) = *(v376 + 7);
                v272[1] = v376[0];
                *(v272 + 23) = v268;
                *(v272 + 3) = v374;
                v272[5] = v375;
              }

              else
              {
                if (v290 < 0)
                {
                  operator delete(*v272);
                }

                v291 = *a2;
                v272[2] = *(v266 - 4);
                *v272 = v291;
                *(v266 - 25) = 0;
                *(v266 - 24) = 0;
                v292 = *(v266 - 3);
                v272[5] = *(v266 - 1);
                *(v272 + 3) = v292;
                if (*(v266 - 25) < 0)
                {
                  operator delete(*a2);
                }

                v293 = v266 - 3;
                *(v266 - 6) = v267;
                v294 = v376[0];
                *(v266 - 33) = *(v376 + 7);
                *(v266 - 5) = v294;
                *(v266 - 25) = v268;
                v295 = v374;
                v293[2] = v375;
                *v293 = v295;
                v296 = v272 - a1 + 48;
                if (v296 >= 49)
                {
                  v297 = (-2 - 0x5555555555555555 * (v296 >> 4)) >> 1;
                  v298 = (a1 + 48 * v297);
                  v299 = *(v298 + 18);
                  v300 = *(v272 + 18);
                  if (v299 < v300)
                  {
                    goto LABEL_491;
                  }

                  if (v299 <= v300)
                  {
                    v319 = *(v272 + 23);
                    v320 = v319;
                    if ((v319 & 0x80u) != 0)
                    {
                      v319 = v272[1];
                    }

                    v321 = *(v298 + 23);
                    v322 = v321;
                    if (v321 < 0)
                    {
                      v321 = v298[1];
                    }

                    if (v319 >= v321)
                    {
                      v323 = v321;
                    }

                    else
                    {
                      v323 = v319;
                    }

                    if (v323)
                    {
                      if (v322 >= 0)
                      {
                        v324 = (a1 + 48 * v297);
                      }

                      else
                      {
                        v324 = *v298;
                      }

                      if (v320 >= 0)
                      {
                        v325 = v272;
                      }

                      else
                      {
                        v325 = *v272;
                      }

                      while (1)
                      {
                        v326 = *v324;
                        v327 = *v325;
                        if (v326 < v327)
                        {
                          break;
                        }

                        if (v327 < v326)
                        {
                          goto LABEL_543;
                        }

                        ++v324;
                        ++v325;
                        v323 = (v323 - 1);
                        if (!v323)
                        {
                          goto LABEL_542;
                        }
                      }

LABEL_491:
                      v301 = *v272;
                      v371 = v272[2];
                      v370 = v301;
                      v272[1] = 0;
                      v272[2] = 0;
                      *v272 = 0;
                      v302 = v272[5];
                      v372 = *(v272 + 3);
                      v373 = v302;
                      v303 = WORD6(v372);
                      if (v371 >= 0)
                      {
                        v304 = HIBYTE(v371);
                      }

                      else
                      {
                        v304 = *(&v370 + 1);
                      }

                      if (v371 >= 0)
                      {
                        v305 = &v370;
                      }

                      else
                      {
                        v305 = v370;
                      }

                      while (1)
                      {
                        v306 = v298;
                        if (*(v272 + 23) < 0)
                        {
                          operator delete(*v272);
                        }

                        v307 = *v306;
                        v272[2] = *(v306 + 2);
                        *v272 = v307;
                        *(v306 + 23) = 0;
                        *v306 = 0;
                        v308 = *(v306 + 12);
                        v272[5] = *(v306 + 5);
                        *(v272 + 3) = v308;
                        if (!v297)
                        {
                          break;
                        }

                        v297 = (v297 - 1) >> 1;
                        v298 = (a1 + 48 * v297);
                        v309 = *(v298 + 18);
                        v272 = v306;
                        if (v309 >= v303)
                        {
                          if (v309 > v303)
                          {
                            break;
                          }

                          v310 = *(v298 + 23);
                          v311 = v310;
                          if (v310 < 0)
                          {
                            v310 = v298[1];
                          }

                          if (v304 >= v310)
                          {
                            v312 = v310;
                          }

                          else
                          {
                            v312 = v304;
                          }

                          if (v312)
                          {
                            if (v311 >= 0)
                            {
                              v313 = (a1 + 48 * v297);
                            }

                            else
                            {
                              v313 = *v298;
                            }

                            v314 = v305;
                            while (1)
                            {
                              v315 = *v313;
                              v316 = *v314;
                              if (v315 < v316)
                              {
                                break;
                              }

                              if (v316 < v315)
                              {
                                goto LABEL_521;
                              }

                              ++v313;
                              ++v314;
                              v312 = (v312 - 1);
                              if (!v312)
                              {
                                goto LABEL_515;
                              }
                            }

                            v272 = v306;
                          }

                          else
                          {
LABEL_515:
                            v272 = v306;
                            if (v310 >= v304)
                            {
                              break;
                            }
                          }
                        }
                      }

LABEL_521:
                      if (*(v306 + 23) < 0)
                      {
                        operator delete(*v306);
                      }

                      v317 = v370;
                      *(v306 + 2) = v371;
                      *v306 = v317;
                      v318 = v372;
                      *(v306 + 5) = v373;
                      *(v306 + 12) = v318;
                    }

                    else
                    {
LABEL_542:
                      if (v321 < v319)
                      {
                        goto LABEL_491;
                      }
                    }
                  }
                }
              }

LABEL_543:
              if (v264-- <= 2)
              {
                goto LABEL_619;
              }
            }
          }
        }
      }

LABEL_619:
      v367 = *MEMORY[0x29EDCA608];
      return;
    }

    v11 = a1 + 48 * (v9 >> 1);
    if (v8 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(v11, a1, v369);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>(a1, v11, v369);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>((a1 + 48), v11 - 48, (a2 - 12));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>((a1 + 96), v11 + 48, (a2 - 18));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,0>((v11 - 48), v11, v11 + 48);
      v12 = *a1;
      *&v374 = *(a1 + 8);
      *(&v374 + 7) = *(a1 + 15);
      v13 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v370 = *(a1 + 24);
      v371 = *(a1 + 40);
      v14 = *(v11 + 16);
      *a1 = *v11;
      *(a1 + 16) = v14;
      v15 = *(v11 + 24);
      *(a1 + 40) = *(v11 + 40);
      *(a1 + 24) = v15;
      *v11 = v12;
      v16 = v374;
      *(v11 + 15) = *(&v374 + 7);
      *(v11 + 8) = v16;
      *(v11 + 23) = v13;
      v17 = v370;
      *(v11 + 40) = v371;
      *(v11 + 24) = v17;
    }

    --a3;
    if (a4)
    {
      goto LABEL_35;
    }

    v18 = (a1 - 48);
    v19 = *(a1 - 12);
    v20 = *(a1 + 36);
    if (v19 < v20)
    {
      goto LABEL_35;
    }

    if (v19 > v20)
    {
      goto LABEL_149;
    }

    v21 = *(a1 + 23);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 8);
    }

    v23 = *(a1 - 25);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a1 - 40);
    }

    if (v21 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v25)
    {
      if (v24 < 0)
      {
        v18 = *(a1 - 48);
      }

      if (v22 >= 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = *a1;
      }

      do
      {
        v27 = *v18;
        v28 = *v26;
        if (v27 < v28)
        {
          goto LABEL_35;
        }

        if (v28 < v27)
        {
          goto LABEL_149;
        }

        ++v18;
        ++v26;
      }

      while (--v25);
    }

    if (v23 < v21)
    {
LABEL_35:
      v29 = *a1;
      v371 = *(a1 + 16);
      v370 = v29;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v30 = *(a1 + 40);
      v372 = *(a1 + 24);
      v373 = v30;
      v31 = WORD6(v372);
      if (v371 >= 0)
      {
        v32 = HIBYTE(v371);
      }

      else
      {
        v32 = *(&v370 + 1);
      }

      if (v371 >= 0)
      {
        v33 = &v370;
      }

      else
      {
        v33 = v370;
      }

      v34 = a1;
      while (1)
      {
        do
        {
          v35 = v34;
          v34 += 6;
          v36 = *(v35 + 42);
        }

        while (v36 < WORD6(v372));
        if (v36 > WORD6(v372))
        {
          break;
        }

        v37 = *(v35 + 71);
        v38 = v37;
        if ((v37 & 0x80u) != 0)
        {
          v37 = v35[7];
        }

        if (v32 >= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v32;
        }

        if (v39)
        {
          if (v38 >= 0)
          {
            v40 = v34;
          }

          else
          {
            v40 = *v34;
          }

          v41 = v33;
          while (1)
          {
            v42 = *v40;
            v43 = *v41;
            if (v42 < v43)
            {
              break;
            }

            if (v43 < v42)
            {
              goto LABEL_58;
            }

            ++v40;
            ++v41;
            if (!--v39)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
LABEL_57:
          if (v37 >= v32)
          {
            break;
          }
        }
      }

LABEL_58:
      if (v35 != a1)
      {
        v44 = *(a2 - 6);
        v45 = a2 - 6;
        v46 = a2;
        while (v44 >= WORD6(v372))
        {
          v47 = v46;
          v46 = v45;
          if (v44 <= WORD6(v372))
          {
            v48 = *(v47 - 25);
            v49 = v48;
            v50 = *(v47 - 5);
            if ((v48 & 0x80u) != 0)
            {
              v48 = v50;
            }

            if (v32 >= v48)
            {
              v51 = v48;
            }

            else
            {
              v51 = v32;
            }

            if (v51)
            {
              if (v49 >= 0)
              {
                v52 = v45;
              }

              else
              {
                v52 = *v45;
              }

              v53 = v33;
              do
              {
                v54 = *v52;
                v55 = *v53;
                if (v54 < v55)
                {
                  goto LABEL_102;
                }

                if (v55 < v54)
                {
                  goto LABEL_76;
                }

                ++v52;
                ++v53;
              }

              while (--v51);
            }

            if (v48 < v32)
            {
              goto LABEL_102;
            }
          }

LABEL_76:
          v45 -= 6;
          v44 = *(v46 - 6);
        }

        goto LABEL_103;
      }

      v45 = a2;
      if (v34 >= a2)
      {
        goto LABEL_103;
      }

      v56 = *(a2 - 6);
      v45 = a2 - 6;
      if (v56 < WORD6(v372))
      {
        goto LABEL_103;
      }

      v45 = a2 - 6;
      v57 = a2;
      while (1)
      {
        v46 = v45;
        if (v56 > WORD6(v372))
        {
LABEL_81:
          if (v34 >= v45)
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }

        v58 = *(v57 - 25);
        v59 = v58;
        v60 = *(v57 - 5);
        if ((v58 & 0x80u) != 0)
        {
          v58 = v60;
        }

        v61 = v32 >= v58 ? v58 : v32;
        if (v61)
        {
          break;
        }

LABEL_96:
        if (v58 < v32 || v34 >= v45)
        {
          goto LABEL_102;
        }

LABEL_100:
        v45 -= 6;
        v56 = *(v46 - 6);
        v57 = v46;
        if (v56 < WORD6(v372))
        {
          goto LABEL_103;
        }
      }

      if (v59 >= 0)
      {
        v62 = v45;
      }

      else
      {
        v62 = *v45;
      }

      v63 = v33;
      while (1)
      {
        v64 = *v62;
        v65 = *v63;
        if (v64 < v65)
        {
          break;
        }

        if (v65 < v64)
        {
          goto LABEL_81;
        }

        ++v62;
        ++v63;
        if (!--v61)
        {
          goto LABEL_96;
        }
      }

LABEL_102:
      v45 = v46;
LABEL_103:
      v7 = v34;
      if (v34 < v45)
      {
        v67 = v45;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(v7, v67);
          while (1)
          {
            do
            {
              v68 = v7;
              v7 += 6;
              v69 = *(v68 + 42);
            }

            while (v69 < v31);
            if (v69 > v31)
            {
              break;
            }

            v70 = *(v68 + 71);
            v71 = v70;
            v72 = v68[7];
            if ((v70 & 0x80u) == 0)
            {
              v72 = v70;
            }

            if (v32 >= v72)
            {
              v73 = v72;
            }

            else
            {
              v73 = v32;
            }

            if (v73)
            {
              if (v71 >= 0)
              {
                v74 = v7;
              }

              else
              {
                v74 = *v7;
              }

              v75 = v33;
              while (1)
              {
                v76 = *v74;
                v77 = *v75;
                if (v76 < v77)
                {
                  break;
                }

                if (v77 < v76)
                {
                  goto LABEL_122;
                }

                ++v74;
                ++v75;
                if (!--v73)
                {
                  goto LABEL_121;
                }
              }
            }

            else
            {
LABEL_121:
              if (v72 >= v32)
              {
                break;
              }
            }
          }

LABEL_122:
          while (1)
          {
            v78 = (v67 - 6);
            v79 = *(v67 - 6);
            if (v79 < v31)
            {
              break;
            }

            v80 = v67;
            v67 -= 6;
            if (v79 <= v31)
            {
              v81 = *(v80 - 25);
              v82 = v81;
              if ((v81 & 0x80u) != 0)
              {
                v81 = *(v80 - 5);
              }

              if (v32 >= v81)
              {
                v83 = v81;
              }

              else
              {
                v83 = v32;
              }

              if (v83)
              {
                v84 = *v67;
                if (v82 >= 0)
                {
                  v84 = v67;
                }

                v85 = v33;
                while (1)
                {
                  v86 = *v84;
                  v87 = *v85;
                  if (v86 < v87)
                  {
                    break;
                  }

                  if (v87 < v86)
                  {
                    goto LABEL_122;
                  }

                  ++v84;
                  ++v85;
                  if (!--v83)
                  {
                    goto LABEL_136;
                  }
                }

LABEL_137:
                v78 = v67;
                break;
              }

LABEL_136:
              if (v81 < v32)
              {
                goto LABEL_137;
              }
            }
          }

          v67 = v78;
        }

        while (v7 < v78);
      }

      v88 = (v7 - 6);
      if (v7 - 6 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v89 = *v88;
        *(a1 + 16) = *(v7 - 4);
        *a1 = v89;
        *(v7 - 25) = 0;
        *(v7 - 24) = 0;
        v90 = *(v7 - 3);
        *(a1 + 40) = *(v7 - 1);
        *(a1 + 24) = v90;
      }

      if (*(v7 - 25) < 0)
      {
        operator delete(*v88);
      }

      v91 = v370;
      *(v7 - 4) = v371;
      *v88 = v91;
      v92 = v372;
      *(v7 - 1) = v373;
      *(v7 - 3) = v92;
      if (v34 < v45)
      {
LABEL_148:
        std::__introsort<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *,false>(a1, v7 - 6, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *>(a1, v7 - 24);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,skit::Analyzer::dedup(skit::TokenStream)::$_0 &,skit::Token *>(v7, a2))
        {
          a2 = (v7 - 6);
          if (v93)
          {
            goto LABEL_619;
          }

          goto LABEL_2;
        }

        if (!v93)
        {
          goto LABEL_148;
        }
      }
    }

    else
    {
LABEL_149:
      v94 = *a1;
      v371 = *(a1 + 16);
      v370 = v94;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v95 = *(a1 + 24);
      v373 = *(a1 + 40);
      v372 = v95;
      v96 = WORD6(v95);
      v97 = *(a2 - 6);
      if (WORD6(v95) >= v97)
      {
        if (WORD6(v372) > v97)
        {
          goto LABEL_191;
        }

        v111 = *(a2 - 25);
        v112 = v111;
        if ((v111 & 0x80u) != 0)
        {
          v111 = *(a2 - 5);
        }

        v113 = HIBYTE(v371);
        if (v371 < 0)
        {
          v113 = *(&v370 + 1);
        }

        if (v111 >= v113)
        {
          v114 = v113;
        }

        else
        {
          v114 = v111;
        }

        if (v114)
        {
          if (v371 >= 0)
          {
            v115 = &v370;
          }

          else
          {
            v115 = v370;
          }

          if (v112 >= 0)
          {
            v116 = a2 - 6;
          }

          else
          {
            v116 = *v369;
          }

          while (1)
          {
            v117 = *v115;
            v118 = *v116;
            if (v117 < v118)
            {
              break;
            }

            if (v118 < v117)
            {
              goto LABEL_191;
            }

            ++v115;
            v116 = (v116 + 2);
            if (!--v114)
            {
              goto LABEL_190;
            }
          }
        }

        else
        {
LABEL_190:
          if (v113 >= v111)
          {
LABEL_191:
            v7 = (a1 + 48);
            if (a1 + 48 >= a2)
            {
              goto LABEL_215;
            }

            v119 = HIBYTE(v371);
            if (v371 >= 0)
            {
              v120 = &v370;
            }

            else
            {
              v119 = *(&v370 + 1);
              v120 = v370;
            }

            v101 = a1;
            while (1)
            {
              v121 = v101;
              v101 = v7;
              v122 = *(v121 + 84);
              if (WORD6(v95) < v122)
              {
                goto LABEL_214;
              }

              if (WORD6(v95) <= v122)
              {
                v123 = *(v121 + 71);
                v124 = v123;
                v125 = *(v121 + 56);
                if ((v123 & 0x80u) == 0)
                {
                  v125 = v123;
                }

                if (v125 >= v119)
                {
                  v126 = v119;
                }

                else
                {
                  v126 = v125;
                }

                if (v126)
                {
                  if (v124 >= 0)
                  {
                    v127 = v7;
                  }

                  else
                  {
                    v127 = *v7;
                  }

                  v128 = v120;
                  while (1)
                  {
                    v129 = *v128;
                    v130 = *v127;
                    if (v129 < v130)
                    {
                      goto LABEL_214;
                    }

                    if (v130 < v129)
                    {
                      break;
                    }

                    ++v128;
                    ++v127;
                    if (!--v126)
                    {
                      goto LABEL_211;
                    }
                  }
                }

                else
                {
LABEL_211:
                  if (v119 < v125)
                  {
                    goto LABEL_214;
                  }
                }
              }

              v7 += 6;
              if (v101 + 48 >= a2)
              {
                goto LABEL_215;
              }
            }
          }
        }
      }

      v7 = (a1 + 48);
      v98 = *(a1 + 84);
      if (WORD6(v95) < v98)
      {
        goto LABEL_215;
      }

      v99 = HIBYTE(v371);
      if (v371 >= 0)
      {
        v100 = &v370;
      }

      else
      {
        v99 = *(&v370 + 1);
        v100 = v370;
      }

      v101 = a1;
      while (1)
      {
        v102 = v101;
        v101 = v7;
        if (WORD6(v95) <= v98)
        {
          break;
        }

LABEL_170:
        v7 += 6;
        v98 = *(v101 + 84);
        if (WORD6(v95) < v98)
        {
          goto LABEL_215;
        }
      }

      v103 = *(v102 + 71);
      v104 = v103;
      v105 = *(v102 + 56);
      if ((v103 & 0x80u) != 0)
      {
        v103 = v105;
      }

      if (v103 >= v99)
      {
        v106 = v99;
      }

      else
      {
        v106 = v103;
      }

      if (!v106)
      {
LABEL_169:
        if (v99 < v103)
        {
          goto LABEL_214;
        }

        goto LABEL_170;
      }

      if (v104 >= 0)
      {
        v107 = v7;
      }

      else
      {
        v107 = *v7;
      }

      v108 = v100;
      while (1)
      {
        v109 = *v108;
        v110 = *v107;
        if (v109 < v110)
        {
          break;
        }

        if (v110 < v109)
        {
          goto LABEL_170;
        }

        ++v108;
        ++v107;
        if (!--v106)
        {
          goto LABEL_169;
        }
      }

LABEL_214:
      v7 = v101;
LABEL_215:
      v131 = a2;
      if (v7 < a2)
      {
        v132 = HIBYTE(v371);
        if (v371 >= 0)
        {
          v133 = &v370;
        }

        else
        {
          v132 = *(&v370 + 1);
          v133 = v370;
        }

        for (i = a2; ; i -= 6)
        {
          v131 = (i - 6);
          if (WORD6(v95) >= v97)
          {
            if (WORD6(v95) > v97)
            {
              break;
            }

            v135 = *(i - 25);
            v136 = v135;
            if ((v135 & 0x80u) != 0)
            {
              v135 = *(i - 5);
            }

            if (v135 >= v132)
            {
              v137 = v132;
            }

            else
            {
              v137 = v135;
            }

            if (v137)
            {
              if (v136 >= 0)
              {
                v138 = i - 6;
              }

              else
              {
                v138 = *v131;
              }

              v139 = v133;
              while (1)
              {
                v140 = *v139;
                v141 = *v138;
                if (v140 < v141)
                {
                  break;
                }

                if (v141 < v140)
                {
                  goto LABEL_237;
                }

                ++v139;
                v138 = (v138 + 2);
                if (!--v137)
                {
                  goto LABEL_235;
                }
              }
            }

            else
            {
LABEL_235:
              if (v132 >= v135)
              {
                break;
              }
            }
          }

          v97 = *(i - 30);
        }
      }

LABEL_237:
      if (v7 >= v131)
      {
        goto LABEL_279;
      }

      if (v371 >= 0)
      {
        v142 = HIBYTE(v371);
      }

      else
      {
        v142 = *(&v370 + 1);
      }

      if (v371 >= 0)
      {
        v143 = &v370;
      }

      else
      {
        v143 = v370;
      }

      while (2)
      {
        v144 = v7;
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(v7, v131);
        v7 += 6;
        while (2)
        {
          v145 = *(v144 + 42);
          if (v96 < v145)
          {
            goto LABEL_262;
          }

          v146 = v144;
          v144 = v7;
          if (v96 > v145)
          {
            goto LABEL_261;
          }

          v147 = *(v146 + 71);
          v148 = v147;
          v149 = v146[7];
          if ((v147 & 0x80u) != 0)
          {
            v147 = v149;
          }

          if (v147 >= v142)
          {
            v150 = v142;
          }

          else
          {
            v150 = v147;
          }

          if (v150)
          {
            if (v148 >= 0)
            {
              v151 = v7;
            }

            else
            {
              v151 = *v7;
            }

            v152 = v143;
            do
            {
              v153 = *v152;
              v154 = *v151;
              if (v153 < v154)
              {
                goto LABEL_262;
              }

              if (v154 < v153)
              {
                goto LABEL_261;
              }

              ++v152;
              ++v151;
            }

            while (--v150);
          }

          if (v142 >= v147)
          {
LABEL_261:
            v7 += 6;
            continue;
          }

          break;
        }

        while (1)
        {
          do
          {
LABEL_262:
            v155 = v131;
            v131 -= 6;
            v156 = *(v155 - 6);
          }

          while (v96 < v156);
          if (v96 > v156)
          {
            break;
          }

          v157 = *(v155 - 25);
          v158 = v157;
          v159 = *(v155 - 5);
          if ((v157 & 0x80u) == 0)
          {
            v159 = v157;
          }

          if (v159 >= v142)
          {
            v160 = v142;
          }

          else
          {
            v160 = v159;
          }

          if (v160)
          {
            if (v158 >= 0)
            {
              v161 = v131;
            }

            else
            {
              v161 = *v131;
            }

            v162 = v143;
            while (1)
            {
              v163 = *v162;
              v164 = *v161;
              if (v163 < v164)
              {
                break;
              }

              if (v164 < v163)
              {
                goto LABEL_278;
              }

              ++v162;
              ++v161;
              if (!--v160)
              {
                goto LABEL_277;
              }
            }
          }

          else
          {
LABEL_277:
            if (v142 >= v159)
            {
              break;
            }
          }
        }

LABEL_278:
        if (v7 < v131)
        {
          continue;
        }

        break;
      }

LABEL_279:
      v165 = (v7 - 6);
      if (v7 - 6 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v166 = *v165;
        *(a1 + 16) = *(v7 - 4);
        *a1 = v166;
        *(v7 - 25) = 0;
        *(v7 - 24) = 0;
        v167 = *(v7 - 3);
        *(a1 + 40) = *(v7 - 1);
        *(a1 + 24) = v167;
      }

      if (*(v7 - 25) < 0)
      {
        operator delete(*v165);
      }

      a4 = 0;
      v168 = v370;
      *(v7 - 4) = v371;
      *v165 = v168;
      v169 = v372;
      *(v7 - 1) = v373;
      *(v7 - 3) = v169;
    }
  }

  v171 = *(a2 - 6);
  v172 = *(a1 + 36);
  if (v171 < v172)
  {
    goto LABEL_292;
  }

  if (v171 > v172)
  {
    goto LABEL_619;
  }

  v329 = *(a1 + 23);
  v330 = v329;
  if ((v329 & 0x80u) != 0)
  {
    v329 = *(a1 + 8);
  }

  v331 = *(a2 - 25);
  v332 = v331;
  if ((v331 & 0x80u) != 0)
  {
    v331 = *(a2 - 5);
  }

  if (v329 >= v331)
  {
    v333 = v331;
  }

  else
  {
    v333 = v329;
  }

  if (!v333)
  {
LABEL_564:
    if (v331 < v329)
    {
      goto LABEL_292;
    }

    goto LABEL_619;
  }

  if (v332 >= 0)
  {
    v334 = a2 - 6;
  }

  else
  {
    v334 = *v369;
  }

  if (v330 >= 0)
  {
    v335 = a1;
  }

  else
  {
    v335 = *a1;
  }

  while (1)
  {
    v336 = *v334;
    v337 = *v335;
    if (v336 < v337)
    {
      break;
    }

    if (v337 < v336)
    {
      goto LABEL_619;
    }

    v334 = (v334 + 2);
    ++v335;
    if (!--v333)
    {
      goto LABEL_564;
    }
  }

LABEL_292:
  v173 = *MEMORY[0x29EDCA608];

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<skit::Token *&,skit::Token *&>(a1, v369);
}

void std::vector<skit::Token>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    v8 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 4) < v7)
    {
      if (a2 <= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 4);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<skit::Token>>(v11);
      }

      std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
    }

    v14 = v4 + 48 * v7;
    do
    {
      *(v4 + 16) = 0uLL;
      *(v4 + 32) = 0uLL;
      *v4 = 0uLL;
      *(v4 + 32) = 1065353216;
      *(v4 + 38) = 196609;
      v4 += 48;
    }

    while (v4 != v14);
    a1[1] = v14;
  }

  else if (!v6)
  {
    v12 = v3 + 48 * a2;
    while (v4 != v12)
    {
      v13 = *(v4 - 25);
      v4 -= 48;
      if (v13 < 0)
      {
        operator delete(*v4);
      }
    }

    a1[1] = v12;
  }
}

void skit::Alias::match(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (*a1 && *(v3 + 64) == 1)
  {
    marisa::Agent::Agent(v9);
    marisa::Agent::Agent(v10);
    v6 = -1431655765 * ((a3[1] - *a3) >> 4);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        skit::internal::AliasImpl::span_match_alias(v3, a2, a3, i, v6, v9, v10);
      }
    }

    marisa::Agent::~Agent(v10);
    marisa::Agent::~Agent(v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_2998CFAEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  marisa::Agent::~Agent(&a9);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v18 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      v19 = (*(*v17 + 16))(v17);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v19;
      _os_log_error_impl(&dword_2998C6000, v18, OS_LOG_TYPE_ERROR, "Alias::span_match_alias : Exception thrown while searching for span matches : %{public}s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2998CFAB8);
  }

  _Unwind_Resume(a1);
}

uint64_t skit::internal::MultiIndexV2::append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, iovec *a6, int a7, int a8, float _S0)
{
  v154 = *MEMORY[0x29EDCA608];
  *uu = a4;
  *&uu[8] = a5;
  if (a2 == a3)
  {
    goto LABEL_153;
  }

  v9 = _S0;
  v10 = a3;
  v11 = a2;
  v13 = 0;
  __asm { FCVT            H9, S0 }

  v146 = *(a1 + 108);
  do
  {
    if ((*(v11 + 40) & 1) == 0)
    {
      goto LABEL_81;
    }

    v18 = *(v11 + 23);
    v147 = v13;
    if (v18 < 0)
    {
      v19 = *v11;
      v18 = *(v11 + 8);
    }

    else
    {
      v19 = v11;
    }

    skit::internal::Term::Term(&buf, *(v11 + 36), v19, v18);
    v20 = buf.__r_.__value_.__r.__words[0];
    v21 = LODWORD(buf.__r_.__value_.__r.__words[1]);
    v22 = std::__string_view_hash<char16_t>::operator()[abi:ne200100](buf.__r_.__value_.__l.__data_, LODWORD(buf.__r_.__value_.__r.__words[1]) >> 1);
    v23 = v22;
    v24 = *(a1 + 56);
    if (!*&v24)
    {
      goto LABEL_24;
    }

    v25 = vcnt_s8(v24);
    v25.i16[0] = vaddlv_u8(v25);
    v26 = v25.u32[0];
    if (v25.u32[0] > 1uLL)
    {
      v27 = v22;
      if (v22 >= *&v24)
      {
        v27 = v22 % *&v24;
      }
    }

    else
    {
      v27 = (*&v24 - 1) & v22;
    }

    v28 = *(*(a1 + 48) + 8 * v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v30 = v29[1];
      if (v30 == v23)
      {
        break;
      }

      if (v26 > 1)
      {
        if (v30 >= *&v24)
        {
          v30 %= *&v24;
        }
      }

      else
      {
        v30 &= *&v24 - 1;
      }

      if (v30 != v27)
      {
        goto LABEL_24;
      }

LABEL_23:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_24;
      }
    }

    if (*(v29 + 6) != v21 || memcmp(v29[2], v20, v21))
    {
      goto LABEL_23;
    }

    v10 = a3;
    _S12 = *(v11 + 32);
    if (*(v29 + 20) >= v146 && *(v29 + 23))
    {
      v42 = 0;
    }

    else
    {
      v32 = v29[12];
      v33 = v29[13];
      v34 = (v33 - v32) >> 3;
      v35 = v29[16];
      if (v34 < (0xAAAAAAAAAAAAAAABLL * ((v35 - v29[15]) >> 1) + 64) >> 6)
      {
        v36 = v29[14];
        if (v33 < v36)
        {
          *v33 = 0;
          v37 = v33 + 1;
          v29[13] = v37;
          v41 = v29[12];
          *(v29 + 22) = (v37 - v41) >> 3;
          v29[8] = v41;
          v35 = v29[16];
          v42 = 14;
          goto LABEL_39;
        }

        v38 = v36 - v32;
        if (v38 >> 2 <= v34 + 1)
        {
          v39 = v34 + 1;
        }

        else
        {
          v39 = v38 >> 2;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (!(v40 >> 61))
        {
          operator new();
        }

LABEL_184:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v42 = 6;
LABEL_39:
      v43 = v29[17];
      if (v35 >= v43)
      {
        v48 = v29[15];
        v49 = v35 - v48;
        v50 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v48) >> 1);
        v51 = v50 + 1;
        if (v50 + 1 > 0x2AAAAAAAAAAAAAAALL)
        {
          std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
        }

        v52 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v48) >> 1);
        if (2 * v52 > v51)
        {
          v51 = 2 * v52;
        }

        if (v52 >= 0x1555555555555555)
        {
          v53 = 0x2AAAAAAAAAAAAAAALL;
        }

        else
        {
          v53 = v51;
        }

        if (v53)
        {
          if (v53 <= 0x2AAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_184;
        }

        v54 = 6 * v50;
        *(6 * v50) = v146;
        if (_S12 <= 65504.0)
        {
          v55 = _S12;
        }

        else
        {
          v55 = 65504.0;
        }

        if (_S12 >= -65504.0)
        {
          _S0 = v55;
        }

        else
        {
          _S0 = *"";
        }

        __asm { FCVT            H0, S0 }

        *(6 * v50 + 4) = _H0;
        v47 = v54 + 6;
        v58 = v54 - v49;
        memcpy((v54 - v49), v48, v49);
        v59 = v29[15];
        v29[15] = v58;
        v29[16] = v47;
        v29[17] = 0;
        if (v59)
        {
          operator delete(v59);
        }

        v10 = a3;
      }

      else
      {
        *v35 = v146;
        if (_S12 <= 65504.0)
        {
          v44 = _S12;
        }

        else
        {
          v44 = 65504.0;
        }

        if (_S12 >= -65504.0)
        {
          _S0 = v44;
        }

        else
        {
          _S0 = *"";
        }

        __asm { FCVT            H0, S0 }

        *(v35 + 4) = _H0;
        v47 = v35 + 6;
      }

      v29[16] = v47;
      v60 = v29[15];
      *(v29 + 23) = -1431655765 * ((v47 - v60) >> 1);
      v29[9] = v60;
      v61 = *(v29 + 20);
      if (v61 <= v146)
      {
        v61 = v146;
      }

      *(v29 + 20) = v61;
      _H0 = *(v29 + 42);
      __asm
      {
        FCVT            S1, H0
        FCVT            H2, S12
      }

      if (_S12 > _S1)
      {
        _H0 = _H2;
      }

      *(v29 + 42) = _H0;
      _H0 = *(v29 + 43);
      __asm { FCVT            S1, H0 }

      if (_S1 < v9)
      {
        _H0 = _H9;
      }

      *(v29 + 43) = _H0;
      v67 = v29[13];
      v68 = *(v67 - 8);
      if (v68 <= v146)
      {
        v68 = v146;
      }

      *(v67 - 8) = v68;
      _H0 = *(v67 - 4);
      __asm { FCVT            S1, H0 }

      if (_S12 > _S1)
      {
        _H0 = _H2;
      }

      *(v67 - 4) = _H0;
      _H0 = *(v67 - 2);
      __asm { FCVT            S1, H0 }

      if (_S1 < v9)
      {
        _H0 = _H9;
      }

      *(v67 - 2) = _H0;
    }

    *(a1 + 88) += v42;
    if (buf.__r_.__value_.__l.__data_ != &buf.__r_.__value_.__r.__words[2])
    {
      free(buf.__r_.__value_.__l.__data_);
    }

    v13 = v147 + 1;
LABEL_81:
    v11 += 48;
  }

  while (v11 != v10);
  if (!v13)
  {
LABEL_153:
    v91 = 0;
    goto LABEL_152;
  }

  if (v9 <= 65504.0)
  {
    v73 = v9;
  }

  else
  {
    v73 = 65504.0;
  }

  if (v9 >= 0.0)
  {
    _S8 = v73;
  }

  else
  {
    _S8 = 0.0;
  }

  v76 = *(a1 + 152);
  v75 = *(a1 + 160);
  if (v76 >= v75)
  {
    v79 = *(a1 + 144);
    v80 = v76 - v79;
    v81 = 0xCCCCCCCCCCCCCCCDLL * ((v76 - v79) >> 1);
    v82 = v81 + 1;
    if (v81 + 1 > 0x1999999999999999)
    {
      std::vector<skit::Token>::__throw_length_error[abi:ne200100]();
    }

    v83 = 0xCCCCCCCCCCCCCCCDLL * ((v75 - v79) >> 1);
    if (2 * v83 > v82)
    {
      v82 = 2 * v83;
    }

    if (v83 >= 0xCCCCCCCCCCCCCCCLL)
    {
      v84 = 0x1999999999999999;
    }

    else
    {
      v84 = v82;
    }

    if (v84)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<skit::internal::CompressedMetaRecord>>(v84);
    }

    v85 = 10 * v81;
    __asm { FCVT            H0, S8 }

    *v85 = _H0;
    *(v85 + 2) = 0xFFFFFFFFLL;
    v78 = 10 * v81 + 10;
    v87 = 10 * v81 - v80;
    memcpy((v85 - v80), v79, v80);
    v88 = *(a1 + 144);
    *(a1 + 144) = v87;
    *(a1 + 152) = v78;
    *(a1 + 160) = 0;
    if (v88)
    {
      operator delete(v88);
    }
  }

  else
  {
    __asm { FCVT            H0, S8 }

    *v76 = _H0;
    *(v76 + 2) = 0xFFFFFFFFLL;
    v78 = v76 + 10;
  }

  *(a1 + 152) = v78;
  v89 = *(a1 + 116);
  if (v89 < _S8)
  {
    v89 = _S8;
  }

  *(a1 + 116) = v89;
  v90.i32[0] = 1;
  v90.i32[1] = _S8 < 0.00000011921;
  *(a1 + 108) = vadd_s32(*(a1 + 108), v90);
  v91 = *(a1 + 136);
  *(a1 + 136) = v91 + 1;
  if (v91 < 1)
  {
    goto LABEL_152;
  }

  if (uuid_is_null(uu))
  {
    goto LABEL_130;
  }

  v92 = *(a1 + 128);
  v93 = v91 - v92;
  if (v91 < v92 || *(a1 + 136) <= v91)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v126 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    v130 = *(a1 + 128);
    v131 = *(a1 + 136);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218496;
    *(buf.__r_.__value_.__r.__words + 4) = v130;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v131;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v153 = v91;
    v129 = "MemMetaStore::set_external_id : invalid document id : [%lli, %lli], %lli";
    goto LABEL_166;
  }

  _H0 = *(*(a1 + 144) + 10 * v93);
  __asm { FCVT            S0, H0 }

  if (_S0 < 0.00000011921)
  {
    goto LABEL_124;
  }

  *&buf.__r_.__value_.__l.__data_ = *uu;
  LODWORD(buf.__r_.__value_.__r.__words[2]) = v91 - v92;
  v96 = *(a1 + 184);
  v98 = v96[1];
  v97 = v96[2];
  v99 = v96[3];
  if (v97 + 1 > v99 * v98 - 1)
  {
    v135 = (*(a1 + 176) - 16) / 0x150uLL;
    if (v98 != v135)
    {
      v136 = v98 + (v98 >> 1);
      v137 = (v97 + v99) / v99;
      if (v136 + 1 < v135)
      {
        v138 = v136 + 1;
      }

      else
      {
        v138 = (*(a1 + 176) - 16) / 0x150uLL;
      }

      if (v136 + 1 >= v137)
      {
        v139 = v138;
      }

      else
      {
        v139 = v137;
      }

      if (!skit::FlatSet<std::pair<skit::Uuid,unsigned int>,skit::internal::HashPairAdapter<skit::Hash32<skit::Uuid>>,skit::internal::CmpPairAdapter<std::equal_to<skit::Uuid>>>::rehash(a1 + 168, v139))
      {
        v96 = *(a1 + 184);
        v98 = v96[1];
        goto LABEL_111;
      }

      goto LABEL_151;
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v141 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v129 = "FlatSetBase::ensure_capacity : required capacity exceeded the maximum";
    p_p = &__p;
    v133 = v141;
    v134 = 2;
    goto LABEL_167;
  }

LABEL_111:
  v100 = skit::internal::murmur3_32(&buf, 0x10uLL, 0);
  v101 = v96 + 4;
  v102 = v100 & 0x7F;
  v103 = 16 * ((*v96 ^ (v100 >> 7)) % v98);
  v104 = 16 * v98;
  v105 = &v96[v104 / 4 + 4];
  for (i = 16 * ((*v96 ^ (v100 >> 7)) % v98); ; i = (v107 + 1) % v104)
  {
    v107 = i;
    v108 = *(v101 + i);
    if (v108 == v102)
    {
      v109 = &v105[20 * v107];
      _ZF = buf.__r_.__value_.__r.__words[0] == *v109 && buf.__r_.__value_.__l.__size_ == *(v109 + 1);
      if (_ZF)
      {
        *(v109 + 4) = v93;
        v112 = 16;
        goto LABEL_123;
      }
    }

    if (v108 == 128)
    {
      break;
    }
  }

  if (*(v101 + v103) >= -1)
  {
    do
    {
      v103 = (v103 + 1) % v104;
    }

    while (*(v101 + v103) > -2);
  }

  v111 = &v105[20 * v103];
  *v111 = *&buf.__r_.__value_.__l.__data_;
  *(v111 + 4) = buf.__r_.__value_.__r.__words[2];
  *(v101 + v103) = v102;
  ++v96[2];
  v112 = 28;
LABEL_123:
  ++*(a1 + 96 + v112);
LABEL_124:
  if (a8)
  {
    v113 = *(a1 + 24);
    v114 = *(a1 + 32);
    if (v113 != v114)
    {
      v115 = v113 + 8;
      do
      {
        if (skit::internal::DiskMetaStore::set_doc_wgt((*(v115 - 8) + 168), uu, 0.0))
        {
          break;
        }

        _ZF = v115 == v114;
        v115 += 8;
      }

      while (!_ZF);
    }
  }

LABEL_130:
  v116 = a7;
  if (a6 && a7 >= 1)
  {
    if (*(a1 + 224) == -1)
    {
      snprintf(__str, 0xFuLL, "index-%08x", *(a1 + 272));
      std::__fs::filesystem::path::path[abi:ne200100]<char [15],void>(&__p, __str);
      std::__fs::filesystem::operator/[abi:ne200100](&buf, a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v148, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        v148 = buf;
      }

      v140 = skit::internal::IndexMemImplV2::open_doc_store((a1 + 48), &v148, *(a1 + 292), *(a1 + 296), *(a1 + 312));
      if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v148.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v116 = a7;
      if (v140)
      {
        goto LABEL_151;
      }
    }

    if (*(a1 + 128) <= v91 && *(a1 + 136) > v91)
    {
      skit::internal::BlobFile::append(&buf, (a1 + 200), a6, v116);
      if ((buf.__r_.__value_.__r.__words[2] & 0x80000000) == 0)
      {
        v117 = *(a1 + 144) + 10 * (v91 - *(a1 + 128));
        v118 = buf.__r_.__value_.__r.__words[1];
        *(v117 + 2) = buf.__r_.__value_.__l.__data_;
        *(v117 + 6) = v118;
        *(a1 + 120) += v118;
        goto LABEL_137;
      }

LABEL_151:
      v91 = -1;
      goto LABEL_152;
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v126 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    v127 = *(a1 + 128);
    v128 = *(a1 + 136);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218496;
    *(buf.__r_.__value_.__r.__words + 4) = v127;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v128;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v153 = v91;
    v129 = "MemMetaStore::set_document : invalid document id : [%lli, %lli], %lli";
LABEL_166:
    p_p = &buf;
    v133 = v126;
    v134 = 32;
LABEL_167:
    _os_log_error_impl(&dword_2998C6000, v133, OS_LOG_TYPE_ERROR, v129, p_p, v134);
    goto LABEL_151;
  }

LABEL_137:
  v119 = *(a1 + 108);
  if (v119 == *(a1 + 112))
  {
    if (v119 != -2)
    {
      goto LABEL_152;
    }
  }

  else
  {
    v120 = *(a1 + 184);
    if (*(v120 + 8))
    {
      v121 = (336 * *(v120 + 4) + 16);
    }

    else
    {
      v121 = 0;
    }

    v122 = 10 * v119 + 48;
    if (!v119)
    {
      v122 = 0;
    }

    if ((*(a1 + 88) + 14 * *(a1 + 72) + v121 + *(a1 + 232) + v122 + 40) <= *(a1 + 280) && v119 != -2)
    {
      goto LABEL_152;
    }
  }

  if ((skit::internal::MultiIndexV2::flush(a1) & 0x80000000) != 0)
  {
    goto LABEL_151;
  }

LABEL_152:
  v124 = *MEMORY[0x29EDCA608];
  return v91;
}

void sub_2998D0B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t skit::SmallVector<std::byte,24u,false>::_reserve_more(uint64_t a1, size_t size)
{
  v3 = skit::SmallVector<std::byte,24u,false>::allocate(size);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *v4++;
      *v6++ = v7;
      --v5;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = v3;
  result = malloc_size(v3);
  *(a1 + 12) = result;
  return result;
}

void *skit::SmallVector<std::byte,24u,false>::allocate(size_t size)
{
  result = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v3 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v3, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
  }

  return result;
}

uint64_t skit::internal::murmur3_32(skit::internal *this, unint64_t a2, int a3)
{
  if (a2 >= 4)
  {
    v3 = a2 >> 2;
    v4 = this;
    do
    {
      v5 = *v4;
      v4 = (v4 + 4);
      HIDWORD(v6) = (461845907 * ((380141568 * v5) | ((-862048943 * v5) >> 17))) ^ a3;
      LODWORD(v6) = HIDWORD(v6);
      a3 = 5 * (v6 >> 19) - 430675100;
      --v3;
    }

    while (v3);
    this = (this + (a2 & 0xFFFFFFFFFFFFFFFCLL));
  }

  v7 = 0;
  v8 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    do
    {
      v7 = *(this + --v8) | (v7 << 8);
    }

    while (v8);
  }

  v9 = a3 ^ a2 ^ (461845907 * ((380141568 * v7) | ((-862048943 * v7) >> 17)));
  v10 = -1028477387 * ((-2048144789 * (v9 ^ HIWORD(v9))) ^ ((-2048144789 * (v9 ^ HIWORD(v9))) >> 13));
  return v10 ^ HIWORD(v10);
}

uint64_t skit::internal::DiskMetaStore::set_doc_wgt(void *a1, skit::internal *this, float a3)
{
  v3 = a1[7];
  if (!v3)
  {
    return 0;
  }

  v7 = skit::internal::murmur3_32(this, 0x10uLL, 0);
  v8 = v3[1];
  v9 = v7 & 0x7F;
  v10 = 16 * ((*v3 ^ (v7 >> 7)) % v8);
  v11 = 16 * v8;
  v12 = v3 + 4;
  v13 = &v3[v11 / 4 + 4];
  while (1)
  {
    v14 = v10;
    v15 = *(v12 + v10);
    if (v15 == v9)
    {
      v16 = &v13[20 * v14];
      v17 = *v16;
      v18 = *(v16 + 1);
      if (*this == v17 && *(this + 1) == v18)
      {
        break;
      }
    }

    if (v15 == 128)
    {
      return 0;
    }

    v10 = (v14 + 1) % v11;
  }

  if (v11 - 1 == v14)
  {
    return 0;
  }

  v20 = (a1[5] + 10 * *&v13[20 * v14 + 16]);
  _H0 = *v20;
  __asm { FCVT            S0, H0 }

  if (_S0 >= 0.00000011921)
  {
    v26 = 65504.0;
    if (a3 <= 65504.0)
    {
      v26 = a3;
    }

    _S0 = 0.0;
    if (a3 >= 0.0)
    {
      _S0 = v26;
    }

    if (_S0 < 0.00000011921)
    {
      v28 = a1[3];
      ++*(v28 + 16);
      --*(v28 + 28);
      *(v12 + v14) = -2;
      --v3[2];
      _S0 = 0.0;
    }

    __asm { FCVT            H0, S0 }

    *v20 = _H0;
  }

  return 1;
}

void skit::internal::BlobFile::append(skit::internal::BlobFile *this, const iovec *a2, iovec *a3, unsigned int a4)
{
  v51 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = -1;
  if (a3)
  {
    v7 = 0;
    v8 = a4;
    v9 = a3;
    v10 = a4;
    do
    {
      if (!v9->iov_base)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v34 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = "BlobFile::append : invalid iov_base pointer";
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      iov_len = v9->iov_len;
      if (!iov_len)
      {
        if (skit::internal::get_logging_context(void)::once != -1)
        {
        }

        v37 = skit::internal::get_logging_context(void)::logger;
        if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
        {
          v38 = v9->iov_len;
          *buf = 134217984;
          v44 = v38;
          v24 = "BlobFile::append : invalid iov_len : %lu";
          v35 = v37;
          v36 = 12;
          goto LABEL_40;
        }

        goto LABEL_30;
      }

      v7 += iov_len;
      ++v9;
      --v10;
    }

    while (v10);
    if (a2[2].iov_base + v7 > a2[2].iov_len)
    {
      goto LABEL_30;
    }

    iov_base = a2[3].iov_base;
    if (iov_base)
    {
      v13 = a2[3].iov_len;
      if ((v13 + v7) < a2[4].iov_base)
      {
        v14 = &iov_base[v13];
        p_iov_len = &a3->iov_len;
        do
        {
          memcpy(v14, *(p_iov_len - 1), *p_iov_len);
          v16 = *p_iov_len;
          p_iov_len += 2;
          v14 += v16;
          --v8;
        }

        while (v8);
        v17 = a2[3].iov_len + v7;
LABEL_28:
        a2[3].iov_len = v17;
LABEL_29:
        v32 = a2[2].iov_base;
        *this = v32;
        *(this + 1) = v7;
        *(this + 4) = 0;
        a2[2].iov_base = &v32[v7];
        goto LABEL_30;
      }

      if (v13)
      {
        v25 = a4 + 1;
      }

      else
      {
        v25 = a4;
      }

      MEMORY[0x2A1C7C4A8]();
      v26 = &buf[-16 * v25];
      bzero(v26, v27);
      if (v13)
      {
        *v26 = iov_base;
        *(v26 + 1) = v13;
      }

      v28 = &v26[16 * (v13 != 0) + 8];
      v29 = &a3->iov_len;
      do
      {
        v30 = *v29;
        *(v28 - 1) = *(v29 - 1);
        *v28 = v30;
        v28 += 16;
        v29 += 2;
        --v8;
      }

      while (v8);
      v31 = writev(a2[1].iov_len, &buf[-16 * v25], v25);
      if (v31 == a2[3].iov_len + v7)
      {
        v17 = 0;
        goto LABEL_28;
      }

      v39 = v31;
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v20 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v40 = a2;
        if (SHIBYTE(a2[1].iov_base) < 0)
        {
          v40 = a2->iov_base;
        }

        v41 = a2[3].iov_len;
        v42 = *__error();
        *buf = 136446978;
        v44 = v40;
        v45 = 2048;
        v46 = v39;
        v47 = 2048;
        v48 = v41;
        v49 = 1024;
        v50 = v42;
        v24 = "BlobFile::append : blob write failed @ %{public}s : %li < %lu : %{darwin.errno}d";
LABEL_51:
        v35 = v20;
        v36 = 38;
        goto LABEL_40;
      }
    }

    else
    {
      v18 = writev(a2[1].iov_len, a3, a4);
      if (v18 == v7)
      {
        goto LABEL_29;
      }

      v19 = v18;
      if (skit::internal::get_logging_context(void)::once != -1)
      {
      }

      v20 = skit::internal::get_logging_context(void)::logger;
      if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
      {
        v21 = a2;
        if (SHIBYTE(a2[1].iov_base) < 0)
        {
          v21 = a2->iov_base;
        }

        v22 = a2[3].iov_len;
        v23 = *__error();
        *buf = 136446978;
        v44 = v21;
        v45 = 2048;
        v46 = v19;
        v47 = 2048;
        v48 = v22;
        v49 = 1024;
        v50 = v23;
        v24 = "BlobFile::append : blob write failed @ %{public}s : %li < %lu : %{darwin.errno}d";
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v34 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "BlobFile::append : invalid iov pointer";
LABEL_35:
      v35 = v34;
      v36 = 2;
LABEL_40:
      _os_log_error_impl(&dword_2998C6000, v35, OS_LOG_TYPE_ERROR, v24, buf, v36);
    }
  }

LABEL_30:
  v33 = *MEMORY[0x29EDCA608];
}

uint64_t skit::internal::BlobFile::flush(skit::internal::BlobFile *this, char a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((*(this + 6) & 0x80000000) != 0)
  {
    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v8 = skit::internal::get_logging_context(void)::logger;
    if (!os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v19[0] = 0;
    v9 = "BlobFile::flush : file is not open";
    v10 = v19;
    v11 = v8;
    v12 = 2;
    goto LABEL_20;
  }

  if (!skit::internal::BlobFile::flush_internal_cache(this))
  {
    v5 = *(this + 6);
    if (a2)
    {
      v6 = fcntl(v5, 51);
    }

    else
    {
      v6 = fsync(v5);
    }

    if ((v6 & 0x80000000) == 0)
    {
      result = 0;
      goto LABEL_9;
    }

    v13 = *__error();
    if (fcntl(*(this + 6), 50, v19) == -1)
    {
      LOBYTE(v19[0]) = 0;
    }

    if (skit::internal::get_logging_context(void)::once != -1)
    {
    }

    v14 = skit::internal::get_logging_context(void)::logger;
    if (os_log_type_enabled(skit::internal::get_logging_context(void)::logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v16 = v19;
      v17 = 1024;
      v18 = v13;
      v9 = "BlobFile::flush : file sync failed @ %{public}s : %{darwin.errno}d";
      v10 = buf;
      v11 = v14;
      v12 = 18;
LABEL_20:
      _os_log_error_impl(&dword_2998C6000, v11, OS_LOG_TYPE_ERROR, v9, v10, v12);
    }
  }

LABEL_3:
  result = 0xFFFFFFFFLL;
LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void skit::ContextV2::~ContextV2(skit::ContextV2 *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<skit::internal::ContextImpl>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 80));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

double std::__fs::filesystem::path::extension[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t std::__split_buffer<std::__fs::filesystem::path>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,false>(std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2, char a3)
{
  size = a2.__size_;
  data = a2.__data_;
  v204 = *MEMORY[0x29EDCA608];
LABEL_2:
  v7 = (data - 24);
  v199 = (data - 48);
  v8 = (data - 72);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = data - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((data - v9) >> 3);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        goto LABEL_202;
      }

      if (v11 == 2)
      {
        a2.__data_ = a1;
        if (!std::__fs::filesystem::operator<[abi:ne200100](data - 1, a2))
        {
          goto LABEL_202;
        }

LABEL_116:
        v135 = *&a1->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v135;
        v136 = *v7;
        a1->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
        *&a1->__pn_.__r_.__value_.__l.__data_ = v136;
        v137 = *&v202.__pn_.__r_.__value_.__l.__data_;
        v138 = v202.__pn_.__r_.__value_.__r.__words[2];
LABEL_117:
        *(data - 1) = v138;
        *v7 = v137;
        goto LABEL_202;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      a2.__data_ = a1;
      v133 = std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, a2);
      v214.__data_ = &a1[1];
      v134 = std::__fs::filesystem::operator<[abi:ne200100](data - 1, v214);
      if (v133)
      {
        if (v134)
        {
          goto LABEL_116;
        }

        v195 = *&a1->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v195;
        *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
        a1[1] = v202;
        v129.__data_ = &a1[1];
        if (std::__fs::filesystem::operator<[abi:ne200100](data - 1, v129))
        {
          v137 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
          *&v202.__pn_.__r_.__value_.__l.__data_ = v137;
          v138 = a1[1].__pn_.__r_.__value_.__r.__words[2];
          v202.__pn_.__r_.__value_.__r.__words[2] = v138;
          v196 = *(data - 1);
          *&a1[1].__pn_.__r_.__value_.__l.__data_ = *v7;
          a1[1].__pn_.__r_.__value_.__r.__words[2] = v196;
          goto LABEL_117;
        }

LABEL_202:
        v197 = *MEMORY[0x29EDCA608];
        return;
      }

      if (!v134)
      {
        goto LABEL_202;
      }

      v202 = a1[1];
      v185 = *&v202.__pn_.__r_.__value_.__l.__data_;
      v186 = v202.__pn_.__r_.__value_.__r.__words[2];
      v187 = *(data - 1);
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = *v7;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = v187;
      *(data - 1) = v186;
      *v7 = v185;
LABEL_186:
      v129.__data_ = a1;
      if (std::__fs::filesystem::operator<[abi:ne200100](a1 + 1, v129))
      {
        v188 = *&a1->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v188;
        *&a1->__pn_.__r_.__value_.__l.__data_ = *&a1[1].__pn_.__r_.__value_.__l.__data_;
        a1->__pn_.__r_.__value_.__r.__words[2] = a1[1].__pn_.__r_.__value_.__r.__words[2];
        a1[1] = v202;
      }

      goto LABEL_202;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 == 5)
    {
      v212.__data_ = &a1[1];
      v212.__size_ = &a1[2];
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v212, a1 + 3);
      v213.__data_ = &a1[3];
      if (!std::__fs::filesystem::operator<[abi:ne200100](data - 1, v213))
      {
        goto LABEL_202;
      }

      v202 = a1[3];
      v123 = *&v202.__pn_.__r_.__value_.__l.__data_;
      v124 = v202.__pn_.__r_.__value_.__r.__words[2];
      v125 = *(data - 1);
      *&a1[3].__pn_.__r_.__value_.__l.__data_ = *v7;
      a1[3].__pn_.__r_.__value_.__r.__words[2] = v125;
      *(data - 1) = v124;
      *v7 = v123;
      v122.__data_ = &a1[2];
      if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 3, v122))
      {
        goto LABEL_202;
      }

      v127 = a1[2].__pn_.__r_.__value_.__r.__words[2];
      v128 = *&a1[2].__pn_.__r_.__value_.__l.__data_;
      *&a1[2].__pn_.__r_.__value_.__l.__data_ = *&a1[3].__pn_.__r_.__value_.__l.__data_;
      a1[2].__pn_.__r_.__value_.__r.__words[2] = a1[3].__pn_.__r_.__value_.__r.__words[2];
      *&a1[3].__pn_.__r_.__value_.__l.__data_ = v128;
      a1[3].__pn_.__r_.__value_.__r.__words[2] = v127;
      v126.__data_ = &a1[1];
      if (!std::__fs::filesystem::operator<[abi:ne200100](a1 + 2, v126))
      {
        goto LABEL_202;
      }

      v130 = a1[1].__pn_.__r_.__value_.__r.__words[2];
      v131 = *&a1[1].__pn_.__r_.__value_.__l.__data_;
      *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&a1[2].__pn_.__r_.__value_.__l.__data_;
      a1[1].__pn_.__r_.__value_.__r.__words[2] = a1[2].__pn_.__r_.__value_.__r.__words[2];
      *&a1[2].__pn_.__r_.__value_.__l.__data_ = v131;
      a1[2].__pn_.__r_.__value_.__r.__words[2] = v130;
      goto LABEL_186;
    }

LABEL_10:
    if (v10 <= 575)
    {
      v140 = a1 + 1;
      v142 = a1 == data || v140 == data;
      if (a3)
      {
        if (!v142)
        {
          v143 = 0;
          v144 = a1;
          do
          {
            a2.__data_ = v144;
            v144 = v140;
            if (std::__fs::filesystem::operator<[abi:ne200100](v140, a2))
            {
              v145 = data;
              v146 = *&v144->__pn_.__r_.__value_.__l.__data_;
              v202.__pn_.__r_.__value_.__r.__words[2] = v144->__pn_.__r_.__value_.__r.__words[2];
              *&v202.__pn_.__r_.__value_.__l.__data_ = v146;
              v144->__pn_.__r_.__value_.__l.__size_ = 0;
              v144->__pn_.__r_.__value_.__r.__words[2] = 0;
              v144->__pn_.__r_.__value_.__r.__words[0] = 0;
              v147 = v143;
              do
              {
                v148 = (&a1->__pn_.__r_.__value_.__l.__data_ + v147);
                if (*(&a1[1].__pn_.__r_.__value_.__r.__words[2] + v147 + 7) < 0)
                {
                  operator delete(v148[3]);
                }

                *(v148 + 3) = *v148;
                v148[5] = v148[2];
                *(v148 + 23) = 0;
                *v148 = 0;
                if (!v147)
                {
                  v149 = a1;
                  goto LABEL_139;
                }

                v147 -= 24;
                a2.__data_ = a1 + v147;
              }

              while ((std::__fs::filesystem::operator<[abi:ne200100](&v202, a2) & 1) != 0);
              v149 = &a1[1] + v147;
              if (*(&a1[1].__pn_.__r_.__value_.__r.__words[2] + v147 + 7) < 0)
              {
                operator delete(*v149);
              }

LABEL_139:
              data = v145;
              v150 = *&v202.__pn_.__r_.__value_.__l.__data_;
              *(v149 + 16) = *(&v202.__pn_.__r_.__value_.__l + 2);
              *v149 = v150;
            }

            v140 = v144 + 1;
            v143 += 24;
          }

          while (&v144[1] != data);
        }
      }

      else if (!v142)
      {
        v189 = &a1[1].__pn_.__r_.__value_.__r.__words[2] + 7;
        do
        {
          a2.__data_ = a1;
          a1 = v140;
          if (std::__fs::filesystem::operator<[abi:ne200100](v140, a2))
          {
            v190 = *&a1->__pn_.__r_.__value_.__l.__data_;
            v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
            *&v202.__pn_.__r_.__value_.__l.__data_ = v190;
            a1->__pn_.__r_.__value_.__l.__size_ = 0;
            a1->__pn_.__r_.__value_.__r.__words[2] = 0;
            a1->__pn_.__r_.__value_.__r.__words[0] = 0;
            v191 = v189;
            do
            {
              v192 = (v191 - 23);
              if (*v191 < 0)
              {
                operator delete(*v192);
              }

              *v192 = *(v191 - 47);
              *(v191 - 7) = *(v191 - 31);
              *(v191 - 47) = 0;
              v193 = v191 - 47;
              v193[23] = 0;
              v191 -= 24;
              a2.__data_ = v193 - 24;
            }

            while ((std::__fs::filesystem::operator<[abi:ne200100](&v202, a2) & 1) != 0);
            if (v193[23] < 0)
            {
              operator delete(*v193);
            }

            v194 = *&v202.__pn_.__r_.__value_.__l.__data_;
            *(v193 + 2) = *(&v202.__pn_.__r_.__value_.__l + 2);
            *v193 = v194;
          }

          v140 = a1 + 1;
          v189 += 24;
        }

        while (&a1[1] != data);
      }

      goto LABEL_202;
    }

    if (!size)
    {
      if (a1 != data)
      {
        v200 = data;
        v151 = v12 >> 1;
        v152 = v12 >> 1;
        do
        {
          v153 = v152;
          if (v151 >= v152)
          {
            v154 = (2 * v152) | 1;
            v155 = &a1[v154];
            if (2 * v152 + 2 < v11)
            {
              a2.__data_ = &v155[1];
              if (std::__fs::filesystem::operator<[abi:ne200100](&a1[v154], a2))
              {
                ++v155;
                v154 = 2 * v153 + 2;
              }
            }

            v156 = &a1[v153];
            a2.__data_ = v156;
            if ((std::__fs::filesystem::operator<[abi:ne200100](v155, a2) & 1) == 0)
            {
              v157 = *&v156->__pn_.__r_.__value_.__l.__data_;
              v202.__pn_.__r_.__value_.__r.__words[2] = v156->__pn_.__r_.__value_.__r.__words[2];
              *&v202.__pn_.__r_.__value_.__l.__data_ = v157;
              v156->__pn_.__r_.__value_.__l.__size_ = 0;
              v156->__pn_.__r_.__value_.__r.__words[2] = 0;
              v156->__pn_.__r_.__value_.__r.__words[0] = 0;
              while (1)
              {
                v158 = v155;
                if (SHIBYTE(v156->__pn_.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v156->__pn_.__r_.__value_.__l.__data_);
                }

                v159 = *&v155->__pn_.__r_.__value_.__l.__data_;
                v156->__pn_.__r_.__value_.__r.__words[2] = v155->__pn_.__r_.__value_.__r.__words[2];
                *&v156->__pn_.__r_.__value_.__l.__data_ = v159;
                *(&v155->__pn_.__r_.__value_.__s + 23) = 0;
                v155->__pn_.__r_.__value_.__s.__data_[0] = 0;
                if (v151 < v154)
                {
                  break;
                }

                v160 = (2 * v154) | 1;
                v155 = &a1[v160];
                v161 = 2 * v154 + 2;
                if (v161 < v11)
                {
                  a2.__data_ = &v155[1];
                  if (std::__fs::filesystem::operator<[abi:ne200100](&a1[v160], a2))
                  {
                    ++v155;
                    v160 = v161;
                  }
                }

                a2.__data_ = &v202;
                v156 = v158;
                v154 = v160;
                if (std::__fs::filesystem::operator<[abi:ne200100](v155, a2))
                {
                  if (SHIBYTE(v158->__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v158->__pn_.__r_.__value_.__l.__data_);
                  }

                  break;
                }
              }

              v162 = *&v202.__pn_.__r_.__value_.__l.__data_;
              v158->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
              *&v158->__pn_.__r_.__value_.__l.__data_ = v162;
            }
          }

          v152 = v153 - 1;
        }

        while (v153);
        v163 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        v164 = v200;
        do
        {
          v165 = v164;
          v166 = 0;
          v198 = a1->__pn_.__r_.__value_.__r.__words[0];
          v203.__pn_.__r_.__value_.__r.__words[0] = a1->__pn_.__r_.__value_.__l.__size_;
          *(v203.__pn_.__r_.__value_.__r.__words + 7) = *(&a1->__pn_.__r_.__value_.__r.__words[1] + 7);
          v201 = HIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]);
          a1->__pn_.__r_.__value_.__l.__size_ = 0;
          a1->__pn_.__r_.__value_.__r.__words[2] = 0;
          a1->__pn_.__r_.__value_.__r.__words[0] = 0;
          v167 = a1;
          do
          {
            v168 = v167;
            v169 = &v167[v166];
            v167 = &v169[1];
            v170 = 2 * v166;
            v166 = (2 * v166) | 1;
            v171 = v170 + 2;
            if (v170 + 2 < v163)
            {
              v172 = v169 + 2;
              a2.__data_ = &v169[2];
              if (std::__fs::filesystem::operator<[abi:ne200100](v169 + 1, a2))
              {
                v167 = v172;
                v166 = v171;
              }

              if (SHIBYTE(v168->__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v168->__pn_.__r_.__value_.__l.__data_);
              }
            }

            v173 = *&v167->__pn_.__r_.__value_.__l.__data_;
            v168->__pn_.__r_.__value_.__r.__words[2] = v167->__pn_.__r_.__value_.__r.__words[2];
            *&v168->__pn_.__r_.__value_.__l.__data_ = v173;
            *(&v167->__pn_.__r_.__value_.__s + 23) = 0;
            v167->__pn_.__r_.__value_.__s.__data_[0] = 0;
          }

          while (v166 <= (v163 - 2) / 2);
          if (v167 == (v164 - 24))
          {
            v164 -= 24;
            v167->__pn_.__r_.__value_.__r.__words[0] = v198;
            v183 = *(v203.__pn_.__r_.__value_.__r.__words + 7);
            v167->__pn_.__r_.__value_.__l.__size_ = v203.__pn_.__r_.__value_.__r.__words[0];
            *(&v167->__pn_.__r_.__value_.__r.__words[1] + 7) = v183;
            *(&v167->__pn_.__r_.__value_.__s + 23) = v201;
          }

          else
          {
            v174 = *(v164 - 24);
            v164 -= 24;
            v167->__pn_.__r_.__value_.__r.__words[2] = *(v165 - 1);
            *&v167->__pn_.__r_.__value_.__l.__data_ = v174;
            *(v165 - 3) = v198;
            v175 = v203.__pn_.__r_.__value_.__r.__words[0];
            *(v165 - 9) = *(v203.__pn_.__r_.__value_.__r.__words + 7);
            *(v165 - 2) = v175;
            *(v165 - 1) = v201;
            v176 = v167 - a1 + 24;
            if (v176 >= 25)
            {
              v177 = (-2 - 0x5555555555555555 * (v176 >> 3)) >> 1;
              v178 = &a1[v177];
              a2.__data_ = v167;
              if (std::__fs::filesystem::operator<[abi:ne200100](v178, a2))
              {
                v179 = *&v167->__pn_.__r_.__value_.__l.__data_;
                v202.__pn_.__r_.__value_.__r.__words[2] = v167->__pn_.__r_.__value_.__r.__words[2];
                *&v202.__pn_.__r_.__value_.__l.__data_ = v179;
                v167->__pn_.__r_.__value_.__l.__size_ = 0;
                v167->__pn_.__r_.__value_.__r.__words[2] = 0;
                v167->__pn_.__r_.__value_.__r.__words[0] = 0;
                while (1)
                {
                  v180 = v178;
                  if (SHIBYTE(v167->__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v167->__pn_.__r_.__value_.__l.__data_);
                  }

                  v181 = *&v178->__pn_.__r_.__value_.__l.__data_;
                  v167->__pn_.__r_.__value_.__r.__words[2] = v178->__pn_.__r_.__value_.__r.__words[2];
                  *&v167->__pn_.__r_.__value_.__l.__data_ = v181;
                  *(&v178->__pn_.__r_.__value_.__s + 23) = 0;
                  v178->__pn_.__r_.__value_.__s.__data_[0] = 0;
                  if (!v177)
                  {
                    break;
                  }

                  v177 = (v177 - 1) >> 1;
                  v178 = &a1[v177];
                  a2.__data_ = &v202;
                  v167 = v180;
                  if ((std::__fs::filesystem::operator<[abi:ne200100](v178, a2) & 1) == 0)
                  {
                    if (SHIBYTE(v180->__pn_.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180->__pn_.__r_.__value_.__l.__data_);
                    }

                    break;
                  }
                }

                v182 = *&v202.__pn_.__r_.__value_.__l.__data_;
                v180->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
                *&v180->__pn_.__r_.__value_.__l.__data_ = v182;
              }
            }
          }
        }

        while (v163-- > 2);
      }

      goto LABEL_202;
    }

    v13 = v11 >> 1;
    v14 = &a1[v11 >> 1];
    if (v10 >= 0xC01)
    {
      a2.__data_ = a1;
      v15 = std::__fs::filesystem::operator<[abi:ne200100](v14, a2);
      v206.__data_ = v14;
      v16 = std::__fs::filesystem::operator<[abi:ne200100](data - 1, v206);
      if (v15)
      {
        if (v16)
        {
          v18 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v18;
          v19 = *v7;
          a1->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
          *&a1->__pn_.__r_.__value_.__l.__data_ = v19;
        }

        else
        {
          v37 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v37;
          v38 = *&v14->__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = v38;
          v39 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v14->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
          *&v14->__pn_.__r_.__value_.__l.__data_ = v39;
          v17.__data_ = v14;
          if (!std::__fs::filesystem::operator<[abi:ne200100](data - 1, v17))
          {
            goto LABEL_28;
          }

          v40 = *&v14->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v40;
          v41 = *v7;
          v14->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
          *&v14->__pn_.__r_.__value_.__l.__data_ = v41;
        }

        v42 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(data - 1) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *v7 = v42;
      }

      else if (v16)
      {
        v25 = *&v14->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v25;
        v26 = *v7;
        v14->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
        *&v14->__pn_.__r_.__value_.__l.__data_ = v26;
        v27 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(data - 1) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *v7 = v27;
        v17.__data_ = a1;
        if (std::__fs::filesystem::operator<[abi:ne200100](v14, v17))
        {
          v28 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v28;
          v29 = *&v14->__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = v29;
          v30 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v14->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
          *&v14->__pn_.__r_.__value_.__l.__data_ = v30;
        }
      }

LABEL_28:
      v43 = &a1[v13 - 1];
      v17.__data_ = &a1[1];
      v44 = std::__fs::filesystem::operator<[abi:ne200100](v43, v17);
      v208.__data_ = v43;
      v45 = std::__fs::filesystem::operator<[abi:ne200100](v199, v208);
      if (v44)
      {
        if (v45)
        {
          v202 = a1[1];
          v47 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v48 = v202.__pn_.__r_.__value_.__r.__words[2];
          v49 = *(data - 4);
          *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v199->__pn_.__r_.__value_.__l.__data_;
          a1[1].__pn_.__r_.__value_.__r.__words[2] = v49;
          *(data - 4) = v48;
          *&v199->__pn_.__r_.__value_.__l.__data_ = v47;
        }

        else
        {
          v202 = a1[1];
          v62 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v63 = v202.__pn_.__r_.__value_.__r.__words[2];
          v64 = a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2];
          *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v43->__pn_.__r_.__value_.__l.__data_;
          a1[1].__pn_.__r_.__value_.__r.__words[2] = v64;
          a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2] = v63;
          *&v43->__pn_.__r_.__value_.__l.__data_ = v62;
          v46.__data_ = &a1[v13 - 1];
          if (std::__fs::filesystem::operator<[abi:ne200100](v199, v46))
          {
            v65 = *&v43->__pn_.__r_.__value_.__l.__data_;
            v202.__pn_.__r_.__value_.__r.__words[2] = a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2];
            *&v202.__pn_.__r_.__value_.__l.__data_ = v65;
            v66 = *&v199->__pn_.__r_.__value_.__l.__data_;
            a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2] = *(data - 4);
            *&v43->__pn_.__r_.__value_.__l.__data_ = v66;
            v67 = *&v202.__pn_.__r_.__value_.__l.__data_;
            *(data - 4) = *(&v202.__pn_.__r_.__value_.__l + 2);
            *&v199->__pn_.__r_.__value_.__l.__data_ = v67;
          }
        }
      }

      else if (v45)
      {
        v50 = *&v43->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v50;
        v51 = *&v199->__pn_.__r_.__value_.__l.__data_;
        a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2] = *(data - 4);
        *&v43->__pn_.__r_.__value_.__l.__data_ = v51;
        v52 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(data - 4) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *&v199->__pn_.__r_.__value_.__l.__data_ = v52;
        v46.__data_ = &a1[1];
        if (std::__fs::filesystem::operator<[abi:ne200100](v43, v46))
        {
          v202 = a1[1];
          v53 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v54 = v202.__pn_.__r_.__value_.__r.__words[2];
          v55 = a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2];
          *&a1[1].__pn_.__r_.__value_.__l.__data_ = *&v43->__pn_.__r_.__value_.__l.__data_;
          a1[1].__pn_.__r_.__value_.__r.__words[2] = v55;
          a1[v13 - 1].__pn_.__r_.__value_.__r.__words[2] = v54;
          *&v43->__pn_.__r_.__value_.__l.__data_ = v53;
        }
      }

      v68 = &a1[v13];
      v46.__data_ = &a1[2];
      v69 = std::__fs::filesystem::operator<[abi:ne200100](v68 + 1, v46);
      v209.__data_ = &v68[1];
      v70 = std::__fs::filesystem::operator<[abi:ne200100](data - 3, v209);
      if (v69)
      {
        if (v70)
        {
          v72 = *&a1[2].__pn_.__r_.__value_.__l.__data_;
          *&v202.__pn_.__r_.__value_.__l.__data_ = v72;
          v73 = a1[2].__pn_.__r_.__value_.__r.__words[2];
          v202.__pn_.__r_.__value_.__r.__words[2] = v73;
          v74 = *(data - 7);
          *&a1[2].__pn_.__r_.__value_.__l.__data_ = *v8;
          a1[2].__pn_.__r_.__value_.__r.__words[2] = v74;
        }

        else
        {
          v202 = a1[2];
          v81 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v82 = v202.__pn_.__r_.__value_.__r.__words[2];
          v83 = v68[1].__pn_.__r_.__value_.__r.__words[2];
          *&a1[2].__pn_.__r_.__value_.__l.__data_ = *&v68[1].__pn_.__r_.__value_.__l.__data_;
          a1[2].__pn_.__r_.__value_.__r.__words[2] = v83;
          v68[1].__pn_.__r_.__value_.__r.__words[2] = v82;
          *&v68[1].__pn_.__r_.__value_.__l.__data_ = v81;
          v71.__data_ = &v68[1];
          if (!std::__fs::filesystem::operator<[abi:ne200100](data - 3, v71))
          {
            goto LABEL_48;
          }

          v84 = *&v68[1].__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = v68[1].__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v84;
          v85 = *v8;
          v68[1].__pn_.__r_.__value_.__r.__words[2] = *(data - 7);
          *&v68[1].__pn_.__r_.__value_.__l.__data_ = v85;
          v72 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v73 = v202.__pn_.__r_.__value_.__r.__words[2];
        }

        *(data - 7) = v73;
        *v8 = v72;
      }

      else if (v70)
      {
        v75 = *&v68[1].__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v68[1].__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v75;
        v76 = *v8;
        v68[1].__pn_.__r_.__value_.__r.__words[2] = *(data - 7);
        *&v68[1].__pn_.__r_.__value_.__l.__data_ = v76;
        v77 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(data - 7) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *v8 = v77;
        v71.__data_ = &a1[2];
        if (std::__fs::filesystem::operator<[abi:ne200100](v68 + 1, v71))
        {
          v202 = a1[2];
          v78 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v79 = v202.__pn_.__r_.__value_.__r.__words[2];
          v80 = v68[1].__pn_.__r_.__value_.__r.__words[2];
          *&a1[2].__pn_.__r_.__value_.__l.__data_ = *&v68[1].__pn_.__r_.__value_.__l.__data_;
          a1[2].__pn_.__r_.__value_.__r.__words[2] = v80;
          v68[1].__pn_.__r_.__value_.__r.__words[2] = v79;
          *&v68[1].__pn_.__r_.__value_.__l.__data_ = v78;
        }
      }

LABEL_48:
      v71.__data_ = v43;
      v86 = std::__fs::filesystem::operator<[abi:ne200100](v14, v71);
      v210.__data_ = v14;
      v87 = std::__fs::filesystem::operator<[abi:ne200100](v68 + 1, v210);
      if ((v86 & 1) == 0)
      {
        if (v87)
        {
          v89 = *&v14->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v89;
          *&v14->__pn_.__r_.__value_.__l.__data_ = *&v68[1].__pn_.__r_.__value_.__l.__data_;
          v14->__pn_.__r_.__value_.__r.__words[2] = v68[1].__pn_.__r_.__value_.__r.__words[2];
          v90 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v68[1].__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
          *&v68[1].__pn_.__r_.__value_.__l.__data_ = v90;
          v22.__data_ = v43;
          if (std::__fs::filesystem::operator<[abi:ne200100](v14, v22))
          {
            v91 = *&v43->__pn_.__r_.__value_.__l.__data_;
            v202.__pn_.__r_.__value_.__r.__words[2] = v43->__pn_.__r_.__value_.__r.__words[2];
            *&v202.__pn_.__r_.__value_.__l.__data_ = v91;
            *&v43->__pn_.__r_.__value_.__l.__data_ = *&v14->__pn_.__r_.__value_.__l.__data_;
            v43->__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
            v92 = *&v202.__pn_.__r_.__value_.__l.__data_;
            v14->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
            *&v14->__pn_.__r_.__value_.__l.__data_ = v92;
          }
        }

        goto LABEL_57;
      }

      if (v87)
      {
        v88 = *&v43->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v43->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v88;
        *&v43->__pn_.__r_.__value_.__l.__data_ = *&v68[1].__pn_.__r_.__value_.__l.__data_;
        v43->__pn_.__r_.__value_.__r.__words[2] = v68[1].__pn_.__r_.__value_.__r.__words[2];
      }

      else
      {
        v93 = *&v43->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v43->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v93;
        *&v43->__pn_.__r_.__value_.__l.__data_ = *&v14->__pn_.__r_.__value_.__l.__data_;
        v43->__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
        v94 = *&v202.__pn_.__r_.__value_.__l.__data_;
        v14->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
        *&v14->__pn_.__r_.__value_.__l.__data_ = v94;
        v22.__data_ = v14;
        if (!std::__fs::filesystem::operator<[abi:ne200100](v68 + 1, v22))
        {
LABEL_57:
          v97 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v97;
          v98 = *&v14->__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = v98;
          v99 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v14->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
          *&v14->__pn_.__r_.__value_.__l.__data_ = v99;
          goto LABEL_58;
        }

        v95 = *&v14->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v95;
        *&v14->__pn_.__r_.__value_.__l.__data_ = *&v68[1].__pn_.__r_.__value_.__l.__data_;
        v14->__pn_.__r_.__value_.__r.__words[2] = v68[1].__pn_.__r_.__value_.__r.__words[2];
      }

      v96 = *&v202.__pn_.__r_.__value_.__l.__data_;
      v68[1].__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
      *&v68[1].__pn_.__r_.__value_.__l.__data_ = v96;
      goto LABEL_57;
    }

    a2.__data_ = v14;
    v20 = std::__fs::filesystem::operator<[abi:ne200100](a1, a2);
    v207.__data_ = a1;
    v21 = std::__fs::filesystem::operator<[abi:ne200100](data - 1, v207);
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        v31 = *&a1->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v31;
        v32 = *v7;
        a1->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
        *&a1->__pn_.__r_.__value_.__l.__data_ = v32;
        v33 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(data - 1) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *v7 = v33;
        v22.__data_ = v14;
        if (std::__fs::filesystem::operator<[abi:ne200100](a1, v22))
        {
          v34 = *&v14->__pn_.__r_.__value_.__l.__data_;
          v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
          *&v202.__pn_.__r_.__value_.__l.__data_ = v34;
          v35 = *&a1->__pn_.__r_.__value_.__l.__data_;
          v14->__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
          *&v14->__pn_.__r_.__value_.__l.__data_ = v35;
          v36 = *&v202.__pn_.__r_.__value_.__l.__data_;
          a1->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
          *&a1->__pn_.__r_.__value_.__l.__data_ = v36;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v23 = *&v14->__pn_.__r_.__value_.__l.__data_;
      v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
      *&v202.__pn_.__r_.__value_.__l.__data_ = v23;
      v24 = *v7;
      v14->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
      *&v14->__pn_.__r_.__value_.__l.__data_ = v24;
    }

    else
    {
      v56 = *&v14->__pn_.__r_.__value_.__l.__data_;
      v202.__pn_.__r_.__value_.__r.__words[2] = v14->__pn_.__r_.__value_.__r.__words[2];
      *&v202.__pn_.__r_.__value_.__l.__data_ = v56;
      v57 = *&a1->__pn_.__r_.__value_.__l.__data_;
      v14->__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
      *&v14->__pn_.__r_.__value_.__l.__data_ = v57;
      v58 = *&v202.__pn_.__r_.__value_.__l.__data_;
      a1->__pn_.__r_.__value_.__r.__words[2] = v202.__pn_.__r_.__value_.__r.__words[2];
      *&a1->__pn_.__r_.__value_.__l.__data_ = v58;
      v22.__data_ = a1;
      if (!std::__fs::filesystem::operator<[abi:ne200100](data - 1, v22))
      {
        goto LABEL_58;
      }

      v59 = *&a1->__pn_.__r_.__value_.__l.__data_;
      v202.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
      *&v202.__pn_.__r_.__value_.__l.__data_ = v59;
      v60 = *v7;
      a1->__pn_.__r_.__value_.__r.__words[2] = *(data - 1);
      *&a1->__pn_.__r_.__value_.__l.__data_ = v60;
    }

    v61 = *&v202.__pn_.__r_.__value_.__l.__data_;
    *(data - 1) = *(&v202.__pn_.__r_.__value_.__l + 2);
    *v7 = v61;
LABEL_58:
    --size;
    if (a3 & 1) != 0 || (v22.__data_ = a1, (std::__fs::filesystem::operator<[abi:ne200100](a1 - 1, v22)))
    {
      v100 = *&a1->__pn_.__r_.__value_.__l.__data_;
      v203.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
      *&v203.__pn_.__r_.__value_.__l.__data_ = v100;
      a1->__pn_.__r_.__value_.__l.__size_ = 0;
      a1->__pn_.__r_.__value_.__r.__words[2] = 0;
      a1->__pn_.__r_.__value_.__r.__words[0] = 0;
      v101 = a1;
      do
      {
        v102 = v101++;
        v22.__data_ = &v203;
      }

      while ((std::__fs::filesystem::operator<[abi:ne200100](v101, v22) & 1) != 0);
      v103 = data;
      if (v102 == a1)
      {
        v103 = data;
        do
        {
          if (v101 >= v103)
          {
            break;
          }

          --v103;
          v22.__data_ = &v203;
        }

        while ((std::__fs::filesystem::operator<[abi:ne200100](v103, v22) & 1) == 0);
      }

      else
      {
        do
        {
          --v103;
          v22.__data_ = &v203;
        }

        while (!std::__fs::filesystem::operator<[abi:ne200100](v103, v22));
      }

      v9 = v101;
      if (v101 < v103)
      {
        v104 = v103;
        do
        {
          v202 = *v9;
          v105 = *&v202.__pn_.__r_.__value_.__l.__data_;
          v106 = v202.__pn_.__r_.__value_.__r.__words[2];
          v107 = v104->__pn_.__r_.__value_.__r.__words[2];
          *&v9->__pn_.__r_.__value_.__l.__data_ = *&v104->__pn_.__r_.__value_.__l.__data_;
          v9->__pn_.__r_.__value_.__r.__words[2] = v107;
          v104->__pn_.__r_.__value_.__r.__words[2] = v106;
          *&v104->__pn_.__r_.__value_.__l.__data_ = v105;
          do
          {
            ++v9;
            v22.__data_ = &v203;
          }

          while ((std::__fs::filesystem::operator<[abi:ne200100](v9, v22) & 1) != 0);
          do
          {
            --v104;
            v22.__data_ = &v203;
          }

          while (!std::__fs::filesystem::operator<[abi:ne200100](v104, v22));
        }

        while (v9 < v104);
      }

      p_data = &v9[-1].__pn_.__r_.__value_.__l.__data_;
      if (&v9[-1] == a1)
      {
        if (SHIBYTE(v9[-1].__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*p_data);
        }
      }

      else
      {
        if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a1->__pn_.__r_.__value_.__l.__data_);
        }

        v109 = *p_data;
        a1->__pn_.__r_.__value_.__r.__words[2] = v9[-1].__pn_.__r_.__value_.__r.__words[2];
        *&a1->__pn_.__r_.__value_.__l.__data_ = v109;
        *(&v9[-1].__pn_.__r_.__value_.__s + 23) = 0;
        v9[-1].__pn_.__r_.__value_.__s.__data_[0] = 0;
      }

      v110 = *&v203.__pn_.__r_.__value_.__l.__data_;
      v9[-1].__pn_.__r_.__value_.__r.__words[2] = v203.__pn_.__r_.__value_.__r.__words[2];
      *p_data = v110;
      if (v101 < v103)
      {
        goto LABEL_83;
      }

      v22.__data_ = &v9[-1];
      v111 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *>(a1, v22);
      v211.__data_ = data;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *>(v9, v211))
      {
        data = &v9[-1];
        if (!v111)
        {
          goto LABEL_2;
        }

        goto LABEL_202;
      }

      if (!v111)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,false>(a1, &v9[-1], size, a3 & 1);
        a3 = 0;
      }
    }

    else
    {
      v112 = *&a1->__pn_.__r_.__value_.__l.__data_;
      v203.__pn_.__r_.__value_.__r.__words[2] = a1->__pn_.__r_.__value_.__r.__words[2];
      *&v203.__pn_.__r_.__value_.__l.__data_ = v112;
      a1->__pn_.__r_.__value_.__l.__size_ = 0;
      a1->__pn_.__r_.__value_.__r.__words[2] = 0;
      a1->__pn_.__r_.__value_.__r.__words[0] = 0;
      v22.__data_ = data - 24;
      if (std::__fs::filesystem::operator<[abi:ne200100](&v203, v22))
      {
        v9 = a1;
        do
        {
          a2.__data_ = ++v9;
        }

        while ((std::__fs::filesystem::operator<[abi:ne200100](&v203, a2) & 1) == 0);
      }

      else
      {
        v113 = &a1[1];
        do
        {
          v9 = v113;
          if (v113 >= data)
          {
            break;
          }

          a2.__data_ = v113;
          v114 = std::__fs::filesystem::operator<[abi:ne200100](&v203, a2);
          v113 = &v9[1];
        }

        while (!v114);
      }

      v115 = data;
      if (v9 < data)
      {
        v115 = data;
        do
        {
          v115 -= 24;
          a2.__data_ = v115;
        }

        while ((std::__fs::filesystem::operator<[abi:ne200100](&v203, a2) & 1) != 0);
      }

      while (v9 < v115)
      {
        v116 = *&v9->__pn_.__r_.__value_.__l.__data_;
        v202.__pn_.__r_.__value_.__r.__words[2] = v9->__pn_.__r_.__value_.__r.__words[2];
        *&v202.__pn_.__r_.__value_.__l.__data_ = v116;
        v117 = *v115;
        v9->__pn_.__r_.__value_.__r.__words[2] = *(v115 + 2);
        *&v9->__pn_.__r_.__value_.__l.__data_ = v117;
        v118 = *&v202.__pn_.__r_.__value_.__l.__data_;
        *(v115 + 2) = *(&v202.__pn_.__r_.__value_.__l + 2);
        *v115 = v118;
        do
        {
          a2.__data_ = ++v9;
        }

        while (!std::__fs::filesystem::operator<[abi:ne200100](&v203, a2));
        do
        {
          v115 -= 24;
          a2.__data_ = v115;
        }

        while ((std::__fs::filesystem::operator<[abi:ne200100](&v203, a2) & 1) != 0);
      }

      v119 = &v9[-1].__pn_.__r_.__value_.__l.__data_;
      if (&v9[-1] == a1)
      {
        if (SHIBYTE(v9[-1].__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*v119);
        }
      }

      else
      {
        if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a1->__pn_.__r_.__value_.__l.__data_);
        }

        v120 = *v119;
        a1->__pn_.__r_.__value_.__r.__words[2] = v9[-1].__pn_.__r_.__value_.__r.__words[2];
        *&a1->__pn_.__r_.__value_.__l.__data_ = v120;
        *(&v9[-1].__pn_.__r_.__value_.__s + 23) = 0;
        v9[-1].__pn_.__r_.__value_.__s.__data_[0] = 0;
      }

      a3 = 0;
      v121 = *&v203.__pn_.__r_.__value_.__l.__data_;
      v9[-1].__pn_.__r_.__value_.__r.__words[2] = v203.__pn_.__r_.__value_.__r.__words[2];
      *v119 = v121;
    }
  }

  v139 = *MEMORY[0x29EDCA608];

  v215.__data_ = &a1[1];
  v215.__size_ = &a1[2];
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__fs::filesystem::path *,0>(a1, v215, data - 1);
}