uint64_t FlipBookFramePool::alloc(FlipBookFramePool *this, int a2)
{
  v4 = a2 + 127;
  handle = this->free_list.handle;
  if (this->free_list.handle)
  {
    begin = this->entries.__begin_;
    v7 = this->entries.__begin_ + 96 * this->free_list.handle;
    this->free_list.handle = *(v7 - 47);
    if (*(v7 - 96) == 1)
    {
      FlipBookFramePool::alloc();
    }

    if (*(v7 - 9) < (v4 & 0xFFFFFF80))
    {
      free(*(v7 - 3));
      *(v7 - 3) = malloc_type_calloc(1uLL, v4 & 0xFFFFFF80, 0x100004077774924uLL);
      *(v7 - 9) = a2;
      begin = this->entries.__begin_;
    }

    *&v22[20] = *(v7 - 72);
    *&v22[36] = *(v7 - 56);
    *&v22[52] = *(v7 - 40);
    *&v22[68] = *(v7 - 24);
    *&v22[84] = *(v7 - 1);
    *&v22[4] = *(v7 - 88);
    v8 = begin + 96 * handle;
    *(v8 - 60) = *&v22[32];
    *(v8 - 44) = *&v22[48];
    *(v8 - 28) = *&v22[64];
    *(v8 - 1) = *&v22[76];
    *(v8 - 92) = *v22;
    *(v8 - 96) = 1;
    *(v8 - 47) = 0;
    *(v8 - 76) = *&v22[16];
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, v4 & 0xFFFFFF80, 0x100004077774924uLL);
    memset(&v22[4], 0, 52);
    end = this->entries.__end_;
    cap = this->entries.__cap_;
    if (end >= cap)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((end - this->entries.__begin_) >> 5);
      v14 = v13 + 1;
      if (v13 + 1 > 0x2AAAAAAAAAAAAAALL)
      {
        std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((cap - this->entries.__begin_) >> 5);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x155555555555555)
      {
        v16 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFramePool::PoolEntry>>(this, v16);
      }

      v17 = 96 * v13;
      *(v17 + 4) = *v22;
      *v17 = 1;
      *(v17 + 2) = 0;
      *(v17 + 20) = *&v22[16];
      *(v17 + 36) = *&v22[32];
      *(v17 + 52) = *&v22[48];
      *(v17 + 60) = a2;
      *(v17 + 64) = 0;
      *(v17 + 72) = v9;
      *(v17 + 80) = 0;
      *(v17 + 88) = 0;
      v12 = (96 * v13 + 96);
      v18 = this->entries.__end_ - this->entries.__begin_;
      v19 = (96 * v13 - v18);
      memcpy(v19, this->entries.__begin_, v18);
      v20 = this->entries.__begin_;
      this->entries.__begin_ = v19;
      this->entries.__end_ = v12;
      this->entries.__cap_ = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *(end + 4) = *v22;
      *end = 1;
      *(end + 1) = 0;
      *(end + 20) = *&v22[16];
      *(end + 36) = *&v22[32];
      *(end + 52) = *&v22[48];
      *(end + 15) = a2;
      *(end + 8) = 0;
      *(end + 9) = v9;
      v12 = (end + 96);
      *(end + 10) = 0;
      *(end + 11) = 0;
    }

    this->entries.__end_ = v12;
    return -1431655765 * ((v12 - this->entries.__begin_) >> 5);
  }

  return handle;
}

FlipBookFramePool *FlipBookFramePool::free(FlipBookFramePool *this, FlipBookFrameHandle a2)
{
  if (!a2.handle || (v2 = this->entries.__begin_ + 96 * a2.handle, (*(v2 - 96) & 1) == 0))
  {
    FlipBookFramePool::free();
  }

  *(v2 - 96) = 0;
  *(v2 - 47) = this->free_list.handle;
  this->free_list = a2;
  return this;
}

void FlipBookFramePool::all_frames(FlipBookFramePool *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<FlipBookFrameHandle>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * ((this->entries.__end_ - this->entries.__begin_) >> 5));
  begin = this->entries.__begin_;
  end = this->entries.__end_;
  if (end != this->entries.__begin_)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(begin + 96 * v6) == 1)
      {
        v8 = v7 + 1;
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 1;
          if (v13 >> 1 <= -2)
          {
            std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
          }

          v15 = v9 - v12;
          if (v15 <= v14 + 1)
          {
            v16 = v14 + 1;
          }

          else
          {
            v16 = v15;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(a2, v17);
          }

          *(2 * v14) = v8;
          v11 = 2 * v14 + 2;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 2);
        }

        a2[1] = v11;
        begin = this->entries.__begin_;
        end = this->entries.__end_;
      }

      v6 = ++v7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 5) > v7);
  }
}

void sub_26C634138(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<FlipBookFrameHandle>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(result, a2);
    }

    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void FlipBookFramePool::~FlipBookFramePool(FlipBookFramePool *this)
{
  begin = this->entries.__begin_;
  end = this->entries.__end_;
  if (this->entries.__begin_ != end)
  {
    do
    {
      free(*(begin + 9));
      begin = (begin + 96);
    }

    while (begin != end);
    begin = this->entries.__begin_;
  }

  if (begin)
  {
    this->entries.__end_ = begin;
    operator delete(begin);
  }
}

id os_log_get(void)
{
  if (os_log_get(void)::once != -1)
  {
    os_log_get();
  }

  v1 = os_log_get(void)::log;

  return v1;
}

void sub_26C634AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  v26 = v24;

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_26C634CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SFUSecureFlipBookRecording;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C635318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v21 + 3);

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
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

uint64_t validate_capture_bounds(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsNull(a1))
  {
    return 0;
  }

  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  IsEmpty = CGRectIsEmpty(v7);
  if (height <= 256.0)
  {
    return (width <= 256.0) & ~IsEmpty;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<CurrentCapture>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::condition_variable::~condition_variable((v2 + 176));
    v3 = *(v2 + 64);
    if (v3)
    {
      *(v2 + 72) = v3;
      operator delete(v3);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    JUMPOUT(0x26D6A5870);
  }

  return result;
}

void sub_26C635790(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2 + 3);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_26C635C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, std::mutex *a16, uint64_t a17)
{
  if (a17 == 1)
  {
    std::mutex::unlock(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::vector<FlipBookFrameHandle>::push_back[abi:ne200100]();
}

void std::vector<FlipBookFrameHandle>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_26C636384(_Unwind_Exception *a1)
{
  std::mutex::unlock(v3 + 3);

  _Unwind_Resume(a1);
}

void sub_26C636F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13 == 1)
  {
    std::mutex::unlock(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C6392BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::mutex *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(&a39);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  a33 = &a44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::mutex::unlock(a32 + 3);
  _Unwind_Resume(a1);
}

void std::vector<FlipBookTransitionPoint>::resize(void *a1, unint64_t a2)
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

    std::vector<FlipBookTransitionPoint>::__append(a1, v5);
  }
}

id create_ranges_from_frames(ExportedFlipBookFrames *a1, uint64_t a2)
{
  v2 = *(a2 + 8) - *a2;
  v3 = v2 >> 1;
  if (!(v2 >> 1))
  {
    create_ranges_from_frames();
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v7.handle = **a2;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{ExportedFlipBookFrames::get_handle_index(a1, v7)}];
  [v6 addObject:v8];

  if (v3 != 1)
  {
    v9 = 0;
    v10 = (v2 >> 1) - 1;
    do
    {
      v11.handle = *(*a2 + 2 * v9 + 2);
      handle_index = ExportedFlipBookFrames::get_handle_index(a1, v11);
      v13.handle = *(*a2 + 2 * v9);
      if (handle_index - ExportedFlipBookFrames::get_handle_index(a1, v13) >= 2)
      {
        v14.handle = *(*a2 + 2 * v9);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{ExportedFlipBookFrames::get_handle_index(a1, v14)}];
        [v6 addObject:v15];

        v16.handle = *(*a2 + 2 * v9 + 2);
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{ExportedFlipBookFrames::get_handle_index(a1, v16)}];
        [v6 addObject:v17];
      }

      ++v9;
    }

    while (v10 != v9);
  }

  v18.handle = *(*a2 + 2 * (v3 - 1));
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{ExportedFlipBookFrames::get_handle_index(a1, v18)}];
  [v6 addObject:v19];

  return v6;
}

id create_bounding_box_dictionary_from_cgrect(CGRect a1, int a2)
{
  v3 = a1.origin.x + -0.001;
  if (a1.origin.x + -0.001 < 0.0)
  {
    v3 = 0.0;
  }

  if (a1.size.width == 0.0)
  {
    a1.origin.x = v3;
    a1.size.width = 0.002;
  }

  v4 = a1.origin.y + -0.001;
  if (a1.origin.y + -0.001 < 0.0)
  {
    v4 = 0.0;
  }

  if (a1.size.height == 0.0)
  {
    a1.origin.y = v4;
    a1.size.height = 0.002;
  }

  v5 = CGRectCreateDictionaryRepresentation(a1);
  v6 = v5;
  if (a2)
  {
    [v5 setObject:&unk_287D274D0 forKeyedSubscript:@"dynamic"];
  }

  return v6;
}

BOOL write_plist(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", a1, a2];
  v9 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v8 append:0];
  [v9 open];
  v13 = 0;
  [MEMORY[0x277CCAC58] writePropertyList:v7 toStream:v9 format:200 options:0 error:&v13];
  v10 = v13;
  if (a4 && v13)
  {
    v10 = v13;
    *a4 = v10;
  }

  v11 = v10 == 0;

  return v11;
}

id compare_dic(NSDictionary *a1, NSDictionary *a2, NSSet *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = a3;
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___ZL11compare_dicP12NSDictionaryS0_P5NSSet_block_invoke;
  v24[3] = &unk_279D425F0;
  v9 = v19;
  v25 = v9;
  v10 = v6;
  v26 = v10;
  v11 = v18;
  v27 = v11;
  v12 = v8;
  v28 = v12;
  [(NSDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___ZL11compare_dicP12NSDictionaryS0_P5NSSet_block_invoke_2;
  v20[3] = &unk_279D42618;
  v13 = v9;
  v21 = v13;
  v14 = v5;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  [(NSDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v20];
  if ([v11 count] || objc_msgSend(v15, "count") || objc_msgSend(v12, "count"))
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    if ([v11 count])
    {
      [v16 setObject:v11 forKeyedSubscript:@"added"];
    }

    if ([v15 count])
    {
      [v16 setObject:v15 forKeyedSubscript:@"removed"];
    }

    if ([v12 count])
    {
      [v16 setObject:v12 forKeyedSubscript:@"modified"];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D424B8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFramePool::PoolEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ___ZL10os_log_getv_block_invoke()
{
  os_log_get(void)::log = os_log_create("com.apple.SystemUISecureFlipBookUtilities", "SFUSecureFlipBookRecorder");

  return MEMORY[0x2821F96F8]();
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

double ___ZL17host_time_to_timey_block_invoke()
{
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 * 0.000000001;
    host_time_to_time(unsigned long long)::time_scale = *&result;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<FlipBookTransitionPoint>::__emplace_back_slow_path<FlipBookTransitionPoint>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookTransitionPoint>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(&v15);
  return v14;
}

void sub_26C63BF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookTransitionPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<FlipBookTransitionPoint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FlipBookTransitionPoint>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::vector<CGRect>::__assign_with_size[abi:ne200100]<CGRect const*,CGRect const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGRect>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 32;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

void std::vector<CGRect>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, a2);
  }

  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
  }
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

void resolve_transition(const void **a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(a5, a1) && !std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a6, a1))
  {
    if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, a1))
    {
      v21 = a1;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a5, a1);
      std::vector<FlipBookTransitionPoint>::push_back[abi:ne200100](v12 + 5, a4);
    }

    else
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a6, a1);
      v13 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, a1);
      if (v13)
      {
        v14 = v13;
        LODWORD(v21) = *a4;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(&v22, *(a4 + 8), *(a4 + 16), (*(a4 + 16) - *(a4 + 8)) >> 1);
        for (i = v14[7]; i; i = *i)
        {
          if (i[6] - i[5] != 32)
          {
            __assert_rtn("resolve_transition", "SFUSecureFlipBookRecorder.mm", 1117, "it->second.size() == 1");
          }

          v17 = v21;
          __dst = 0;
          v20 = 0;
          __p = 0;
          std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(&__p, v22, v23, (v23 - v22) >> 1);
          if (v22 == v23)
          {
            v16 = i[5];
            v17 = *v16;
            if (&v17 != v16)
            {
              std::vector<FlipBookFrameHandle>::__assign_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(&__p, v16[1], v16[2], (v16[2] - v16[1]) >> 1);
            }
          }

          else
          {
            std::vector<FlipBookFrameHandle>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FlipBookFrameHandle const*>,std::__wrap_iter<FlipBookFrameHandle const*>>(&__p, __dst, *(i[5] + 8), *(i[5] + 16), (*(i[5] + 16) - *(i[5] + 8)) >> 1);
          }

          resolve_transition(i + 2, a2, a3, &v17, a5, a6);
          if (__p)
          {
            __dst = __p;
            operator delete(__p);
          }
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }
      }
    }
  }
}

void sub_26C63C5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
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
    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
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
    *(24 * v2 + 0x10) = *(a2 + 2);
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C63CBCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
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

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::string *std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>::pair[abi:ne200100]<std::string const&,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__hash_table(&this[1], a3);
  return this;
}

uint64_t std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::vector<FlipBookTransitionPoint>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<FlipBookTransitionPoint>::__emplace_back_slow_path<FlipBookTransitionPoint const&>(a1, a2);
  }

  else
  {
    std::vector<FlipBookTransitionPoint>::__construct_one_at_end[abi:ne200100]<FlipBookTransitionPoint const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::vector<FlipBookTransitionPoint>::__construct_one_at_end[abi:ne200100]<FlipBookTransitionPoint const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(v3 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t std::vector<FlipBookTransitionPoint>::__emplace_back_slow_path<FlipBookTransitionPoint const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookTransitionPoint>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = (32 * v2);
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(32 * v2 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(&v15);
  return v14;
}

void sub_26C63D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C63DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C63DBF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<FlipBookFrameHandle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C63DCD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<FlipBookFrameHandle>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(a1, a2);
  }

  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
}

void *std::vector<FlipBookFrameHandle>::__assign_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<FlipBookFrameHandle>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char *std::vector<FlipBookFrameHandle>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FlipBookFrameHandle const*>,std::__wrap_iter<FlipBookFrameHandle const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<FlipBookTransitionPoint>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<FlipBookTransitionPoint>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__construct_node_hash<std::pair<std::string const,std::vector<FlipBookTransitionPoint>> const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C63E3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<FlipBookTransitionPoint>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::vector<FlipBookTransitionPoint>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<FlipBookTransitionPoint>::__init_with_size[abi:ne200100]<FlipBookTransitionPoint*,FlipBookTransitionPoint*>(&this[1], *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 5);
  return this;
}

void sub_26C63E4F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<FlipBookTransitionPoint>::__init_with_size[abi:ne200100]<FlipBookTransitionPoint*,FlipBookTransitionPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<FlipBookTransitionPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26C63E57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<FlipBookTransitionPoint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<FlipBookTransitionPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookTransitionPoint>>(a1, a2);
  }

  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*,FlipBookTransitionPoint*,FlipBookTransitionPoint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      std::vector<FlipBookFrameHandle>::__init_with_size[abi:ne200100]<FlipBookFrameHandle*,FlipBookFrameHandle*>(v4 + 8, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 1);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<FlipBookTransitionPoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<FlipBookTransitionPoint>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<FlipBookTransitionPoint>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<FlipBookTransitionPoint>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<FlipBookTransitionPoint>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<FlipBookTransitionPoint>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

char *std::vector<FlipBookFrameHandle>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FlipBookFrameHandle*>,std::__wrap_iter<FlipBookFrameHandle*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFrameHandle>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::__emplace_unique_key_args<FlipBookFrameHandle,FlipBookFrameHandle const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(void *a1, unsigned __int16 *a2)
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
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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
      if (*(result + 8) == v3)
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

unsigned __int16 *std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v134 = a2 - 1;
    v10 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v10, v10 + 1, v134, a3);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v10, v10 + 1, v10 + 2, v134, a3);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v10, v10 + 1, v10 + 2, v10 + 3, v134, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v59 = **a3;
              v60 = v59 + 96 * *(a2 - 1);
              if ((*(v60 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }

              v61 = *v10;
              v62 = v59 + 96 * *v10;
              if ((*(v62 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }

              if (*(v60 - 16) < *(v62 - 16))
              {
                *v10 = *(a2 - 1);
                *(a2 - 1) = v61;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (v10 != a2)
              {
                v63 = v10 + 1;
                if (v10 + 1 != a2)
                {
                  v64 = 0;
                  v65 = **a3;
                  v66 = v10;
                  do
                  {
                    v67 = v63;
                    v68 = v66[1];
                    v69 = v65 + 96 * v68;
                    if ((*(v69 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v70 = *v66;
                    v71 = v65 + 96 * v70;
                    if ((*(v71 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v72 = *(v69 - 16);
                    if (v72 < *(v71 - 16))
                    {
                      v73 = v64;
                      while (1)
                      {
                        *(v10 + v73 + 2) = v70;
                        if (!v73)
                        {
                          break;
                        }

                        LOWORD(v70) = *(v10 + v73 - 2);
                        v74 = v65 + 96 * v70;
                        if ((*(v74 - 96) & 1) == 0)
                        {
                          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                        }

                        v73 -= 2;
                        if (v72 >= *(v74 - 16))
                        {
                          v75 = (v10 + v73 + 2);
                          goto LABEL_103;
                        }
                      }

                      v75 = v10;
LABEL_103:
                      *v75 = v68;
                    }

                    v63 = v67 + 1;
                    v64 += 2;
                    v66 = v67;
                  }

                  while (v67 + 1 != a2);
                }
              }
            }

            else if (v10 != a2)
            {
              v124 = v10 + 1;
              if (v10 + 1 != a2)
              {
                v125 = **a3;
                do
                {
                  v126 = v124;
                  v127 = v9[1];
                  v128 = v125 + 96 * v127;
                  if ((*(v128 - 96) & 1) == 0)
                  {
                    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                  }

                  v129 = *v9;
                  v130 = v125 + 96 * *v9;
                  if ((*(v130 - 96) & 1) == 0)
                  {
                    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                  }

                  v131 = *(v128 - 16);
                  if (v131 < *(v130 - 16))
                  {
                    v132 = v126;
                    do
                    {
                      *v132 = v129;
                      v129 = *(v132 - 2);
                      v133 = v125 + 96 * v129;
                      if ((*(v133 - 96) & 1) == 0)
                      {
                        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                      }

                      --v132;
                    }

                    while (v131 < *(v133 - 16));
                    *v132 = v127;
                  }

                  v124 = v126 + 1;
                  v9 = v126;
                }

                while (v126 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v76 = (v11 - 2) >> 1;
              v77 = *a3;
              v78 = v76;
              do
              {
                v79 = v78;
                if (v76 >= v78)
                {
                  v80 = (2 * v78) | 1;
                  v81 = &v10[v80];
                  if (2 * v79 + 2 >= v11)
                  {
                    v89 = *v81;
                    v83 = *v77;
                  }

                  else
                  {
                    v82 = v81 + 1;
                    v83 = *v77;
                    v84 = *v77 + 96 * *v81;
                    if ((*(v84 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v85 = v83 + 96 * *v82;
                    if ((*(v85 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v86 = *(v84 - 16);
                    v87 = *(v85 - 16);
                    v88 = v86 >= v87;
                    if (v86 >= v87)
                    {
                      v89 = *v81;
                    }

                    else
                    {
                      v89 = *v82;
                    }

                    if (!v88)
                    {
                      ++v81;
                      v80 = 2 * v79 + 2;
                    }
                  }

                  v90 = v83 + 96 * v89;
                  if ((*(v90 - 96) & 1) == 0)
                  {
                    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                  }

                  v91 = &v10[v79];
                  v92 = *v91;
                  v93 = v83 + 96 * *v91;
                  if ((*(v93 - 96) & 1) == 0)
                  {
                    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                  }

                  v94 = *(v90 - 16);
                  v95 = *(v93 - 16);
                  if (v94 >= v95)
                  {
                    do
                    {
                      *v91 = v89;
                      v91 = v81;
                      if (v76 < v80)
                      {
                        break;
                      }

                      v96 = (2 * v80) | 1;
                      v81 = &v10[v96];
                      v80 = 2 * v80 + 2;
                      if (v80 >= v11)
                      {
                        v89 = *v81;
                        v80 = v96;
                      }

                      else
                      {
                        v97 = v81 + 1;
                        v89 = *v81;
                        v98 = v83 + 96 * *v81;
                        if ((*(v98 - 96) & 1) == 0)
                        {
                          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                        }

                        v99 = v83 + 96 * *v97;
                        if ((*(v99 - 96) & 1) == 0)
                        {
                          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                        }

                        if (*(v98 - 16) >= *(v99 - 16))
                        {
                          v80 = v96;
                        }

                        else
                        {
                          v89 = *v97;
                          ++v81;
                        }
                      }

                      v100 = v83 + 96 * v89;
                      if ((*(v100 - 96) & 1) == 0)
                      {
                        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                      }
                    }

                    while (*(v100 - 16) >= v95);
                    *v91 = v92;
                  }
                }

                v78 = v79 - 1;
              }

              while (v79);
              do
              {
                v101 = 0;
                v102 = *v10;
                v103 = *a3;
                v104 = v10;
                do
                {
                  result = &v104[v101];
                  v105 = result + 1;
                  v106 = result[1];
                  v107 = (2 * v101) | 1;
                  v101 = 2 * v101 + 2;
                  if (v101 >= v11)
                  {
                    v101 = v107;
                  }

                  else
                  {
                    v108 = *v103 + 96 * result[1];
                    if ((*(v108 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v110 = result[2];
                    result += 2;
                    v109 = v110;
                    v111 = *v103 + 96 * v110;
                    if ((*(v111 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    if (*(v108 - 16) >= *(v111 - 16))
                    {
                      v101 = v107;
                    }

                    else
                    {
                      v106 = v109;
                      v105 = result;
                    }
                  }

                  *v104 = v106;
                  v104 = v105;
                }

                while (v101 <= ((v11 - 2) >> 1));
                if (v105 == --a2)
                {
                  *v105 = v102;
                }

                else
                {
                  *v105 = *a2;
                  *a2 = v102;
                  v112 = (v105 - v10 + 2) >> 1;
                  v113 = v112 < 2;
                  v114 = v112 - 2;
                  if (!v113)
                  {
                    v115 = v114 >> 1;
                    v116 = &v10[v115];
                    v117 = *v116;
                    v118 = *v103;
                    v119 = v118 + 96 * *v116;
                    if ((*(v119 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    v120 = *v105;
                    v121 = v118 + 96 * *v105;
                    if ((*(v121 - 96) & 1) == 0)
                    {
                      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                    }

                    result = *(v119 - 16);
                    v122 = *(v121 - 16);
                    if (result < v122)
                    {
                      do
                      {
                        *v105 = v117;
                        v105 = v116;
                        if (!v115)
                        {
                          break;
                        }

                        v115 = (v115 - 1) >> 1;
                        v116 = &v10[v115];
                        v117 = *v116;
                        v123 = v118 + 96 * *v116;
                        result = *(v123 - 96);
                        if ((result & 1) == 0)
                        {
                          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                        }
                      }

                      while (*(v123 - 16) < v122);
                      *v105 = v120;
                    }
                  }
                }

                v113 = v11-- <= 2;
              }

              while (!v113);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(&v9[v11 >> 1], v9, v134, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v9, &v9[v11 >> 1], v134, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v9 + 1, v13 - 1, a2 - 2, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v9 + 2, &v9[v12 + 1], a2 - 3, a3);
            result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(v13 - 1, v13, &v9[v12 + 1], a3);
            v14 = *v9;
            *v9 = *v13;
            *v13 = v14;
          }

          --a4;
          v15 = *a3;
          if (a5)
          {
            v16 = *v9;
            v17 = *v15;
            break;
          }

          v17 = *v15;
          v18 = v17 + 96 * *(v9 - 1);
          if ((*(v18 - 96) & 1) == 0)
          {
            std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
          }

          v16 = *v9;
          v19 = v17 + 96 * *v9;
          if ((*(v19 - 96) & 1) == 0)
          {
            std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
          }

          v20 = *(v18 - 16);
          v21 = *(v19 - 16);
          if (v20 < v21)
          {
            break;
          }

          v43 = v17 + 96 * *v134;
          if ((*(v43 - 96) & 1) == 0)
          {
            std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
          }

          if (v21 >= *(v43 - 16))
          {
            v46 = v9 + 1;
            do
            {
              v10 = v46;
              if (v46 >= a2)
              {
                break;
              }

              v47 = v17 + 96 * *v46;
              if ((*(v47 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }

              v48 = *(v47 - 16);
              v46 = v10 + 1;
            }

            while (v21 >= v48);
          }

          else
          {
            v10 = v9;
            do
            {
              v44 = v10[1];
              ++v10;
              v45 = v17 + 96 * v44;
              if ((*(v45 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }
            }

            while (v21 >= *(v45 - 16));
          }

          v49 = a2;
          if (v10 < a2)
          {
            v49 = a2;
            do
            {
              v50 = *--v49;
              v51 = v17 + 96 * v50;
              if ((*(v51 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }
            }

            while (v21 < *(v51 - 16));
          }

          if (v10 < v49)
          {
            v52 = *v10;
            v53 = *v49;
            do
            {
              *v10 = v53;
              *v49 = v52;
              do
              {
                v54 = v10[1];
                ++v10;
                v52 = v54;
                v55 = v17 + 96 * v54;
                if ((*(v55 - 96) & 1) == 0)
                {
                  std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                }
              }

              while (v21 >= *(v55 - 16));
              do
              {
                v56 = *--v49;
                v53 = v56;
                v57 = v17 + 96 * v56;
                if ((*(v57 - 96) & 1) == 0)
                {
                  std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
                }
              }

              while (v21 < *(v57 - 16));
            }

            while (v10 < v49);
          }

          v58 = v10 - 1;
          if (v10 - 1 != v9)
          {
            *v9 = *v58;
          }

          a5 = 0;
          *v58 = v16;
        }

        v22 = 0;
        v23 = v17 + 96 * v16;
        do
        {
          v24 = v9[v22 + 1];
          v25 = v17 + 96 * v24;
          if ((*(v25 - 96) & 1) == 0)
          {
            std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
          }

          if ((*(v23 - 96) & 1) == 0)
          {
            std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
          }

          v26 = *(v23 - 16);
          ++v22;
        }

        while (*(v25 - 16) < v26);
        v27 = &v9[v22];
        v28 = a2;
        if (v22 == 1)
        {
          v28 = a2;
          do
          {
            if (v27 >= v28)
            {
              break;
            }

            v31 = *--v28;
            v32 = v17 + 96 * v31;
            if ((*(v32 - 96) & 1) == 0)
            {
              std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
            }
          }

          while (*(v32 - 16) >= v26);
        }

        else
        {
          do
          {
            v29 = *--v28;
            v30 = v17 + 96 * v29;
            if ((*(v30 - 96) & 1) == 0)
            {
              std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
            }
          }

          while (*(v30 - 16) >= v26);
        }

        if (v27 >= v28)
        {
          v41 = v27 - 1;
        }

        else
        {
          v33 = *v28;
          v34 = v24;
          v35 = v27;
          v36 = v28;
          do
          {
            *v35 = v33;
            *v36 = v34;
            do
            {
              v37 = v35[1];
              ++v35;
              v34 = v37;
              v38 = v17 + 96 * v37;
              if ((*(v38 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }
            }

            while (*(v38 - 16) < v26);
            do
            {
              v39 = *--v36;
              v33 = v39;
              v40 = v17 + 96 * v39;
              if ((*(v40 - 96) & 1) == 0)
              {
                std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
              }
            }

            while (*(v40 - 16) >= v26);
          }

          while (v35 < v36);
          v41 = v35 - 1;
        }

        if (v41 != v9)
        {
          *v9 = *v41;
        }

        *v41 = v16;
        if (v27 >= v28)
        {
          break;
        }

LABEL_47:
        result = std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>(v9, v41, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v41 + 1;
      }

      v42 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *>(v9, v41, a3);
      v10 = v41 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *>(v41 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_47;
      }
    }

    a2 = v41;
    if (!v42)
    {
      continue;
    }

    return result;
  }
}

unsigned __int16 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = **a4;
  v6 = v5 + 96 * *a2;
  if ((*(v6 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  v7 = *result;
  v8 = v5 + 96 * *result;
  if ((*(v8 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  v9 = *(v6 - 16);
  v10 = *(v8 - 16);
  v11 = *a3;
  v12 = v5 + 96 * *a3;
  if (v9 >= v10)
  {
    if ((*(v12 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    if (*(v12 - 16) < v9)
    {
      *a2 = v11;
      *a3 = v4;
      v13 = v5 + 96 * *a2;
      if ((*(v13 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      v14 = *result;
      v15 = v5 + 96 * *result;
      if ((*(v15 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      if (*(v13 - 16) < *(v15 - 16))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  else
  {
    if ((*(v12 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    if (*(v12 - 16) < v9)
    {
      *result = v11;
LABEL_16:
      *a3 = v7;
      return result;
    }

    *result = v4;
    *a2 = v7;
    v16 = v5 + 96 * *a3;
    if ((*(v16 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    if (*(v16 - 16) < v10)
    {
      *a2 = *a3;
      goto LABEL_16;
    }
  }

  return result;
}

unsigned __int16 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t **a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a2, a3, a5);
  v11 = **a5;
  v12 = v11 + 96 * *a4;
  if ((*(v12 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  v13 = *a3;
  v14 = v11 + 96 * *a3;
  if ((*(v14 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  if (*(v12 - 16) < *(v14 - 16))
  {
    *a3 = *a4;
    *a4 = v13;
    v15 = v11 + 96 * *a3;
    if ((*(v15 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    v16 = *a2;
    v17 = v11 + 96 * *a2;
    if ((*(v17 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    if (*(v15 - 16) < *(v17 - 16))
    {
      *a2 = *a3;
      *a3 = v16;
      v18 = v11 + 96 * *a2;
      if ((*(v18 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      v19 = *a1;
      v20 = v11 + 96 * *a1;
      if ((*(v20 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      if (*(v18 - 16) < *(v20 - 16))
      {
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

unsigned __int16 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t **a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a2, a3, a4, a6);
  v13 = **a6;
  v14 = v13 + 96 * *a5;
  if ((*(v14 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  v15 = *a4;
  v16 = v13 + 96 * *a4;
  if ((*(v16 - 96) & 1) == 0)
  {
    std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
  }

  if (*(v14 - 16) < *(v16 - 16))
  {
    *a4 = *a5;
    *a5 = v15;
    v17 = v13 + 96 * *a4;
    if ((*(v17 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    v18 = *a3;
    v19 = v13 + 96 * *a3;
    if ((*(v19 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    if (*(v17 - 16) < *(v19 - 16))
    {
      *a3 = *a4;
      *a4 = v18;
      v20 = v13 + 96 * *a3;
      if ((*(v20 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      v21 = *a2;
      v22 = v13 + 96 * *a2;
      if ((*(v22 - 96) & 1) == 0)
      {
        std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
      }

      if (*(v20 - 16) < *(v22 - 16))
      {
        *a2 = *a3;
        *a3 = v21;
        v23 = v13 + 96 * *a2;
        if ((*(v23 - 96) & 1) == 0)
        {
          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
        }

        v24 = *a1;
        v25 = v13 + 96 * *a1;
        if ((*(v25 - 96) & 1) == 0)
        {
          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
        }

        if (*(v23 - 16) < *(v25 - 16))
        {
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = **a3;
        v8 = v7 + 96 * *(a2 - 1);
        if ((*(v8 - 96) & 1) == 0)
        {
          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
        }

        v9 = *a1;
        v10 = v7 + 96 * *a1;
        if ((*(v10 - 96) & 1) == 0)
        {
          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
        }

        if (*(v8 - 16) < *(v10 - 16))
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = **a3;
  for (i = 6; ; i += 2)
  {
    v16 = *v12;
    v17 = v14 + 96 * *v12;
    if ((*(v17 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    v18 = *v11;
    v19 = v14 + 96 * *v11;
    if ((*(v19 - 96) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
    }

    v20 = *(v17 - 16);
    if (v20 < *(v19 - 16))
    {
      v21 = i;
      while (1)
      {
        *(a1 + v21) = v18;
        v22 = v21 - 2;
        if (v21 == 2)
        {
          break;
        }

        v18 = *(a1 + v21 - 4);
        v23 = v14 + 96 * v18;
        if ((*(v23 - 96) & 1) == 0)
        {
          std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>();
        }

        v24 = *(v23 - 16);
        v21 = v22;
        if (v20 >= v24)
        {
          v25 = (a1 + v22);
          goto LABEL_24;
        }
      }

      v25 = a1;
LABEL_24:
      *v25 = v16;
      if (++v13 == 8)
      {
        break;
      }
    }

    v11 = v12++;
    if (v12 == a2)
    {
      return 1;
    }
  }

  return v12 + 1 == a2;
}

void *std::vector<ExportedFlipBookFrame>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ExportedFlipBookFrame>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C63FD18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ExportedFlipBookFrame>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ExportedFlipBookFrame>>(a1, a2);
  }

  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ExportedFlipBookFrame>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(uint64_t a1)
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

uint64_t rgba_swizzle_from_cgimage(CGImage *a1)
{
  AlphaInfo = CGImageGetAlphaInfo(a1);
  if ((CGImageGetByteOrderInfo(a1) & 0xFFFFDFFF) != 0)
  {
    if (AlphaInfo == kCGImageAlphaFirst)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    if (AlphaInfo == kCGImageAlphaFirst)
    {
      v4 = 768;
    }

    else
    {
      v4 = 512;
    }

    if (AlphaInfo == kCGImageAlphaFirst)
    {
      v5 = 0x20000;
    }

    else
    {
      v5 = 0x10000;
    }

    if (AlphaInfo == kCGImageAlphaFirst)
    {
      v6 = 0x1000000;
    }

    else
    {
      v6 = 0;
    }

    if (AlphaInfo == kCGImageAlphaPremultipliedFirst)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    if (AlphaInfo == kCGImageAlphaPremultipliedFirst)
    {
      v8 = 768;
    }

    else
    {
      v8 = v4;
    }

    if (AlphaInfo == kCGImageAlphaPremultipliedFirst)
    {
      v9 = 0x20000;
    }

    else
    {
      v9 = v5;
    }

    if (AlphaInfo == kCGImageAlphaPremultipliedFirst)
    {
      v10 = 0x1000000;
    }

    else
    {
      v10 = v6;
    }
  }

  else if (AlphaInfo == kCGImageAlphaFirst || AlphaInfo == kCGImageAlphaPremultipliedFirst)
  {
    v10 = 0;
    v9 = 196608;
    v8 = 512;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v10 = 50331648;
    v9 = 0x20000;
    v8 = 256;
  }

  return v8 | v7 | v9 | v10;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26C63FF18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::__unordered_map_hasher<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,true>,std::__unordered_map_equal<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::equal_to<FlipBookFrameHandle>,FlipBookFrameHandleHasher,true>,std::allocator<std::__hash_value_type<FlipBookFrameHandle,unsigned int>>>::__emplace_unique_key_args<FlipBookFrameHandle,std::piecewise_construct_t const&,std::tuple<FlipBookFrameHandle const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<FlipBookTransitionPoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
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

    v18 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookTransitionPoint>>(a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = 32 * v8 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FlipBookTransitionPoint>,FlipBookTransitionPoint*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(&v15);
  }
}

void sub_26C64040C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FlipBookTransitionPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ExportedFlipBookFrames::get_handle_index(ExportedFlipBookFrames *this, FlipBookFrameHandle a2)
{
  handle = a2.handle;
  v2 = std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(this + 6, &handle);
  if (!v2)
  {
    ExportedFlipBookFrames::get_handle_index();
  }

  return *(v2 + 5);
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

void FlipBookFramePool::FlipBookFramePool(FlipBookFramePool *this)
{
  this->entries.__begin_ = 0;
  this->entries.__end_ = 0;
  this->free_list.handle = 0;
  this->entries.__cap_ = 0;
  std::vector<FlipBookFramePool::PoolEntry>::reserve(this, 0x100uLL);
}

void sub_26C640534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<FlipBookFramePool::PoolEntry>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FlipBookFramePool::PoolEntry>>(result, a2);
    }

    std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ___ZL11compare_dicP12NSDictionaryS0_P5NSSet_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = compare_dic(v6, v7, *(a1 + 32));
        if (v8)
        {
          [*(a1 + 56) setObject:v8 forKeyedSubscript:v5];
        }
      }

      else if (([(NSDictionary *)v6 isEqual:v7]& 1) == 0)
      {
        v10[0] = @"from";
        v10[1] = @"to";
        v11[0] = v6;
        v11[1] = v7;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
        [*(a1 + 56) setObject:v9 forKeyedSubscript:v5];
      }
    }

    else
    {
      [*(a1 + 48) setObject:v6 forKeyedSubscript:v5];
    }
  }
}

void ___ZL11compare_dicP12NSDictionaryS0_P5NSSet_block_invoke_2(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v7] & 1) == 0)
  {
    v6 = [a1[5] objectForKeyedSubscript:v7];
    if (!v6)
    {
      [a1[6] setObject:v5 forKeyedSubscript:v7];
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C640AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
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
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26C640E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_26C64107C()
{
  v0 = sub_26C64D928();
  __swift_allocate_value_buffer(v0, qword_2804A7F28);
  __swift_project_value_buffer(v0, qword_2804A7F28);
  return sub_26C64D918();
}

uint64_t sub_26C6410F4(uint64_t a1, id *a2)
{
  result = sub_26C64D9D8();
  *a2 = 0;
  return result;
}

uint64_t sub_26C64116C(uint64_t a1, id *a2)
{
  v3 = sub_26C64D9E8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26C6411EC@<X0>(uint64_t *a1@<X8>)
{
  sub_26C64D9F8();
  v2 = sub_26C64D9C8();

  *a1 = v2;
  return result;
}

uint64_t sub_26C641230()
{
  v0 = sub_26C64D9F8();
  v1 = MEMORY[0x26D6A52D0](v0);

  return v1;
}

uint64_t sub_26C64126C()
{
  sub_26C64D9F8();
  sub_26C64DA08();
}

uint64_t sub_26C6412C0()
{
  sub_26C64D9F8();
  sub_26C64DC38();
  sub_26C64DA08();
  v0 = sub_26C64DC48();

  return v0;
}

uint64_t sub_26C641334(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A73D8, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26C6413A0(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A73D8, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26C641410(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_26C64148C()
{
  v0 = sub_26C64D9F8();
  v2 = v1;
  if (v0 == sub_26C64D9F8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26C64DBE8();
  }

  return v5 & 1;
}

uint64_t sub_26C641524(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_26C641590(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_26C6415FC(void *a1, uint64_t a2)
{
  v4 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_26C6416B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26C64172C()
{
  sub_26C64DC38();
  sub_26C64D9B8();
  return sub_26C64DC48();
}

void *sub_26C64178C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26C6417A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26C64D9C8();

  *a1 = v2;
  return result;
}

uint64_t sub_26C6417F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C64D9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C64181C(uint64_t a1)
{
  v2 = sub_26C641968(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v3 = sub_26C641968(&qword_2804A73B0, type metadata accessor for CaptureCoordinatorOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26C641968(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C641AB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C641AD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26C641B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C641968(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_26C641DAC()
{
  result = qword_2804A7400;
  if (!qword_2804A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A7400);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C641EB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C641ED0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_26C641F20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id SFUDisplayLinkDrivenTimer.init(identifier:forUseIn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26C64D9C8();

  v6 = [v4 initWithIdentifier:v5 forUseInWindow:a3];

  return v6;
}

char *SFUDisplayLinkDrivenTimer.init(identifier:forUseIn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [v3 init];
  v8 = &v7[OBJC_IVAR___SFUDisplayLinkDrivenTimer__identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = v7;

  v10 = [a3 screen];
  result = [v10 displayLinkWithTarget:v9 selector:sel_displayLinkCallbackWithSender_];
  if (result)
  {
    v12 = result;

    v13 = OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink;
    v14 = *&v9[OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink];
    *&v9[OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink] = v12;

    [v10 maximumFramesPerSecond];
    v15 = *&v9[v13];
    sub_26C64DAA8();
    [v15 setPreferredFrameRateRange_];

    [*&v9[v13] setHighFrameRateReason_];
    [*&v9[v13] setPaused_];
    v16 = *&v9[v13];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 mainRunLoop];
    [v18 addToRunLoop:v19 forMode:*MEMORY[0x277CBE738]];

    v9[OBJC_IVAR___SFUDisplayLinkDrivenTimer__valid] = 1;
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26C6424F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_26C64264C(void *a1)
{
  v2 = v1;
  v4 = sub_26C64D938();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C64D958();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 timestamp];
  v13 = v12;
  result = [v2 _fireDate];
  if (v15 <= v13)
  {
    v16 = [v2 _clientHandlerQueue];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      aBlock[4] = sub_26C6432AC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26C64CFF0;
      aBlock[3] = &block_descriptor_8;
      v19 = _Block_copy(aBlock);
      v20 = v2;
      sub_26C64D948();
      v23[1] = MEMORY[0x277D84F90];
      sub_26C6432B4();
      v23[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A75A8);
      sub_26C643354();
      sub_26C64DB08();
      MEMORY[0x26D6A5370](0, v11, v7, v19);
      _Block_release(v19);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v23[0]);
    }

    else
    {
      v21 = [v2 _clientHandler];
      if (v21)
      {
        v22 = v21;
        (*(v21 + 2))(v21, v2);
        _Block_release(v22);
      }
    }

    result = [v2 _valid];
    if (result)
    {
      return [v2 cancel];
    }
  }

  return result;
}

void sub_26C642974(void *a1)
{
  v2 = [a1 _clientHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, a1);

    _Block_release(v3);
  }
}

void SFUDisplayLinkDrivenTimer.schedule(withFireInterval:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  [v4 set:CACurrentMediaTime() + a4 fireDate:?];
  sub_26C6431E0(0, &qword_2804A7448);
  sub_26C6431E0(0, &qword_2804A7450);
  v9 = sub_26C64DAC8();
  v10 = sub_26C64DAE8();

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  [v5 set:v11 clientHandlerQueue:?];
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26C6424F8;
  v14[3] = &block_descriptor;
  v12 = _Block_copy(v14);

  [v5 set:v12 clientHandler:?];
  _Block_release(v12);
  v13 = [v5 _displayLink];
  [v13 setPaused_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id SFUDisplayLinkDrivenTimer.identifier.getter()
{
  result = [v0 _identifier];
  if (result)
  {
    v2 = result;
    v3 = sub_26C64D9F8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SFUDisplayLinkDrivenTimer.isScheduled.getter()
{
  v1 = [v0 _displayLink];
  v2 = [v1 isPaused];

  return v2 ^ 1;
}

void SFUDisplayLinkDrivenTimer.timeRemaining.getter()
{
  if ([v0 isScheduled])
  {
    [v0 _fireDate];
    v1 = [v0 _displayLink];
    [v1 timestamp];
  }
}

Swift::Void __swiftcall SFUDisplayLinkDrivenTimer.cancel()()
{
  v1 = [v0 _displayLink];
  [v1 setPaused_];
}

Swift::Void __swiftcall SFUDisplayLinkDrivenTimer.invalidate()()
{
  v1 = [v0 _displayLink];
  [v1 setPaused_];

  v2 = [v0 _displayLink];
  [v2 invalidate];

  [v0 set:0 valid:?];
}

uint64_t sub_26C6431E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26C643228()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C643274()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26C6432B4()
{
  result = qword_2804A75A0;
  if (!qword_2804A75A0)
  {
    sub_26C64D938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A75A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26C643354()
{
  result = qword_2804A75B0;
  if (!qword_2804A75B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A75A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A75B0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26C643400(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id SFUCaptureCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t SFUCaptureCoordinator.init()()
{
  *&v0[OBJC_IVAR___SFUCaptureCoordinator_currentRecording] = 0;
  *&v0[OBJC_IVAR___SFUCaptureCoordinator_loopStateSingleLoopDuration] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___SFUCaptureCoordinator_currentCaptureData] = 0;
  v1 = [objc_opt_self() tokenForCurrentProcess];
  v2 = sub_26C64D9C8();
  v3 = [v1 hasEntitlement_];

  if (v3 && (v4 = sub_26C64D9C8(), v5 = [v1 hasEntitlement_], v4, (v5 & 1) != 0))
  {
    v8.receiver = v0;
    v8.super_class = SFUCaptureCoordinator;
    v6 = objc_msgSendSuper2(&v8, sel_init);

    return v6;
  }

  else
  {
    result = sub_26C64DB88();
    __break(1u);
  }

  return result;
}

void SFUCaptureCoordinator.generateFlipBook(from:userInfo:options:constraintBoundingBoxes:resultHandler:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  v7 = v6;
  v13 = a1;
  v70 = *MEMORY[0x277D85DE8];
  *&aBlock = 0;
  if (![v7 _validateDescription_error_])
  {
    v16 = aBlock;
    v17 = sub_26C64D8F8();

    swift_willThrow();
    v18 = v17;
    a5(0, v17);

    return;
  }

  v64 = a4;
  v14 = aBlock;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = sub_26C6497F8(MEMORY[0x277D84F90]);
  }

  v19 = *(v15 + 16);

  if (v19 && (v20 = sub_26C648170(@"recordingName"), (v21 & 1) != 0))
  {
    sub_26C64AA4C(*(v15 + 56) + 32 * v20, &aBlock);
    sub_26C64CEC0(&aBlock, &qword_2804A7638);
  }

  else
  {
    aBlock = 0u;
    v66 = 0u;
    sub_26C64CEC0(&aBlock, &qword_2804A7638);
    v22 = [v13 flipBookName];
    v23 = sub_26C64D9F8();
    v25 = v24;

    *(&v66 + 1) = MEMORY[0x277D837D0];
    *&aBlock = v23;
    *(&aBlock + 1) = v25;
    sub_26C649920(&aBlock, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C648D1C(v69, @"recordingName", isUniquelyReferenced_nonNull_native);
  }

  swift_getKeyPath();

  sub_26C64A5E4(v15, sub_26C64D044);

  v27 = objc_allocWithZone(SFUSecureFlipBookRecording);
  v28 = sub_26C64D998();

  v29 = [v27 initWithOptions_];

  [v7 setCurrentRecording_];
  if (a2)
  {
    v30 = [v7 currentRecording];
    if (v30)
    {
      v31 = v30;
      v32 = sub_26C64D998();
      [v31 setUserInfo_];
    }
  }

  v33 = v64;
  if (v64)
  {
    v63 = a5;
    if (v64 >> 62)
    {
      v58 = sub_26C64DB98();
      v33 = v64;
      v34 = v58;
    }

    else
    {
      v34 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v36 = v33;
      v59 = v15;
      v60 = v7;
      v61 = v13;
      v62 = a6;
      *&aBlock = MEMORY[0x277D84F90];
      sub_26C6494FC(0, v34 & ~(v34 >> 63), 0);
      if (v34 < 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      v35 = aBlock;
      sub_26C64DA88();
      v37 = 0;
      v38 = v36;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x26D6A5400](v37, v38);
        }

        else
        {
          v39 = *(v38 + 8 * v37 + 32);
        }

        v40 = v39;
        sub_26C64DA78();
        sub_26C64DA68();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v40 bs_CGRectValue];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        *&aBlock = v35;
        v50 = *(v35 + 16);
        v49 = *(v35 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_26C6494FC((v49 > 1), v50 + 1, 1);
          v35 = aBlock;
        }

        ++v37;
        *(v35 + 16) = v50 + 1;
        v51 = (v35 + 32 * v50);
        v51[4] = v42;
        v51[5] = v44;
        v51[6] = v46;
        v51[7] = v48;
        v38 = v64;
      }

      while (v34 != v37);
      v13 = v61;
      a6 = v62;
      v7 = v60;
    }

    sub_26C64DA88();
    sub_26C64DA78();
    sub_26C64DA68();
    a5 = v63;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v52 = [v7 currentRecording];
    if (!v52)
    {

      goto LABEL_34;
    }

    if (!HIDWORD(*(v35 + 16)))
    {
      v53 = v52;
      [v52 setConstraintBoundingBoxes:v35 + 32 count:?];

      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
  }

LABEL_34:
  v54 = [v13 states];
  if (!v54)
  {
    sub_26C64DA58();
    v54 = sub_26C64DA48();
  }

  v55 = swift_allocObject();
  v55[2] = v7;
  v55[3] = a5;
  v55[4] = a6;
  v67 = sub_26C64AA28;
  v68 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v66 = sub_26C64CFF0;
  *(&v66 + 1) = &block_descriptor_0;
  v56 = _Block_copy(&aBlock);
  v57 = v7;

  [v57 _captureWithStates_for_completion_];
  _Block_release(v56);
}

uint64_t sub_26C643D04()
{
  v0 = sub_26C64D9F8();
  v2 = v1;
  if (v0 == sub_26C64D9F8() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_26C64DBE8();

  if (v5)
  {
    goto LABEL_14;
  }

  v6 = sub_26C64D9F8();
  v8 = v7;
  if (v6 == sub_26C64D9F8() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = sub_26C64DBE8();

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = sub_26C64D9F8();
  v14 = v13;
  if (v12 == sub_26C64D9F8() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_26C64DBE8();

  if ((v17 & 1) == 0)
  {
    v18 = sub_26C64D9F8();
    v20 = v19;
    if (v18 == sub_26C64D9F8() && v20 == v21)
    {
      goto LABEL_13;
    }

    v22 = sub_26C64DBE8();

    if ((v22 & 1) == 0)
    {
      v23 = sub_26C64D9F8();
      v25 = v24;
      if (v23 == sub_26C64D9F8() && v25 == v26)
      {
        goto LABEL_13;
      }

      v27 = sub_26C64DBE8();

      if ((v27 & 1) == 0)
      {
        v28 = sub_26C64D9F8();
        v30 = v29;
        if (v28 == sub_26C64D9F8() && v30 == v31)
        {
          goto LABEL_13;
        }

        v32 = sub_26C64DBE8();

        if ((v32 & 1) == 0)
        {
          v33 = sub_26C64D9F8();
          v35 = v34;
          if (v33 == sub_26C64D9F8() && v35 == v36)
          {
            goto LABEL_13;
          }

          v37 = sub_26C64DBE8();

          if ((v37 & 1) == 0)
          {
            v38 = sub_26C64D9F8();
            v40 = v39;
            if (v38 == sub_26C64D9F8() && v40 == v41)
            {
              goto LABEL_13;
            }

            v42 = sub_26C64DBE8();

            if ((v42 & 1) == 0)
            {
              v43 = sub_26C64D9F8();
              v45 = v44;
              if (v43 == sub_26C64D9F8() && v45 == v46)
              {
                goto LABEL_13;
              }

              v47 = sub_26C64DBE8();

              if (v47)
              {
                goto LABEL_14;
              }

              v48 = sub_26C64D9F8();
              v50 = v49;
              if (v48 == sub_26C64D9F8() && v50 == v51)
              {
                goto LABEL_13;
              }

              v52 = sub_26C64DBE8();

              if (v52)
              {
                goto LABEL_14;
              }

              v53 = sub_26C64D9F8();
              v55 = v54;
              if (v53 == sub_26C64D9F8() && v55 == v56)
              {
LABEL_13:

                goto LABEL_14;
              }

              sub_26C64DBE8();
            }
          }
        }
      }
    }
  }

LABEL_14:

  return sub_26C64D9F8();
}

id sub_26C644240(void *a1, void (*a2)(id, void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 currentRecording];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v12[0] = 0;
  v5 = v4;
  v6 = [v4 generateSecureAsset_];

  v7 = v12[0];
  if (v6)
  {
LABEL_5:
    a2(v6, 0);

    return [a1 setCurrentRecording_];
  }

  v8 = v7;
  v9 = sub_26C64D8F8();

  swift_willThrow();
  v10 = v9;
  a2(0, v9);

  return [a1 setCurrentRecording_];
}

uint64_t sub_26C64436C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26C644598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26C64D8E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_26C644614(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void SFUCaptureCoordinator.generateFlipBook(from:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26C644614;
  v6[3] = &block_descriptor_3;
  v5 = _Block_copy(v6);

  [v3 generateFlipBookFromDescription:a1 userInfo:0 options:0 constraintBoundingBoxes:0 resultHandler:v5];
  _Block_release(v5);
}

void SFUCaptureCoordinator.createFlipBook(from:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_26C64ABF0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26C644614;
  v9[3] = &block_descriptor_9;
  v8 = _Block_copy(v9);

  [v3 generateFlipBookFromDescription:a1 resultHandler:v8];
  _Block_release(v8);
}

uint64_t sub_26C644B80(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v6 = a2;
    if (qword_2804A7380 != -1)
    {
      swift_once();
    }

    v7 = sub_26C64D928();
    __swift_project_value_buffer(v7, qword_2804A7F28);
    v8 = a2;
    v9 = sub_26C64D908();
    v10 = sub_26C64DA98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_26C632000, v9, v10, "Failed to create flip book with error: %@", v11, 0xCu);
      sub_26C64CEC0(v12, &qword_2804A7740);
      MEMORY[0x26D6A5F50](v12, -1, -1);
      MEMORY[0x26D6A5F50](v11, -1, -1);
    }

    a3(0);
  }

  else
  {
    a3(a1);
  }
}

id sub_26C64522C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_26C6452F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + *a5);
  *(a1 + *a5) = a3;
  v8 = a3;
}

id sub_26C645428()
{
  v2.receiver = v0;
  v2.super_class = _s18CurrentCaptureDataCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26C645460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = a1;
    if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(a1 + 24) >> 1)
    {
      v15 = sub_26C647A78(isUniquelyReferenced_nonNull_native, v5, 1, a1);
    }

    sub_26C64B7A0(0, 1, 0);
    v12 = sub_26C64DA48();

    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C64CFF0;
    aBlock[3] = &block_descriptor_91;
    v13 = _Block_copy(aBlock);

    [a2 _captureWithStates_for_completion_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_26C6456CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1;
    if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > *(a1 + 24) >> 1)
    {
      v18 = sub_26C647A78(isUniquelyReferenced_nonNull_native, v7, 1, a1);
    }

    sub_26C64B7A0(0, 1, 0);
    v14 = sub_26C64D9C8();
    v15 = sub_26C64DA48();

    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C64CFF0;
    aBlock[3] = &block_descriptor_78;
    v16 = _Block_copy(aBlock);

    [a2 _captureFromState_toStates_forDescription_completion_];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_26C645984(void *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void), uint64_t a12)
{
  v17 = sub_26C64D9C8();
  v18 = sub_26C64D9C8();
  [a1 _secureFlipBookRecordingEndCaptureFromState_toState_];

  v19 = a2 + a3;
  if (v19 <= a4)
  {
    v20 = sub_26C64D9C8();
    v21 = sub_26C64D9C8();
    type metadata accessor for CaptureCoordinatorOption(0);
    sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
    v22 = sub_26C64D998();
    aBlock[4] = a11;
    aBlock[5] = a12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C64CFF0;
    aBlock[3] = &block_descriptor_62;
    v23 = _Block_copy(aBlock);

    [a1 _captureFromState_toState_forDescription_options_currentSequenceExitTime_sequenceExitTimeInterval_maxDuration_completion_];
    _Block_release(v23);
  }

  else
  {
    a11();
  }
}

uint64_t sub_26C645B90(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a8;
  v43 = a9;
  v38[0] = a5;
  v38[1] = a7;
  v39 = a1;
  v41 = a10;
  v45 = sub_26C64D938();
  v48 = *(v45 - 8);
  (MEMORY[0x28223BE20])();
  v44 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C64D958();
  v46 = *(v13 - 8);
  v47 = v13;
  (MEMORY[0x28223BE20])();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C64D978();
  v40 = v16;
  v17 = *(v16 - 8);
  v18 = (MEMORY[0x28223BE20])();
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v38 - v21;
  v23 = sub_26C64D9C8();
  v24 = sub_26C64D9C8();
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v25 = sub_26C64D998();
  v26 = v39;
  [v39 _secureFlipBookRecordingBeginCaptureFromState_toState_options_];

  sub_26C6431E0(0, &qword_2804A7450);
  v27 = sub_26C64DAC8();
  sub_26C64D968();
  sub_26C64D988();
  v28 = *(v17 + 8);
  v28(v20, v16);
  v29 = swift_allocObject();
  *(v29 + 16) = v38[0];
  *(v29 + 24) = a6;
  *(v29 + 32) = a2;
  v31 = v42;
  v30 = v43;
  *(v29 + 40) = v26;
  *(v29 + 48) = v31;
  v32 = v41;
  *(v29 + 56) = v30;
  *(v29 + 64) = v32;
  aBlock[4] = sub_26C64CC48;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C64CFF0;
  aBlock[3] = &block_descriptor_56;
  v33 = _Block_copy(aBlock);

  v34 = v26;
  swift_unknownObjectRetain();

  sub_26C64D948();
  v49 = MEMORY[0x277D84F90];
  sub_26C64CD48(&qword_2804A75A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A75A8);
  sub_26C643354();
  v35 = v44;
  v36 = v45;
  sub_26C64DB08();
  MEMORY[0x26D6A5350](v22, v15, v35, v33);
  _Block_release(v33);

  (*(v48 + 8))(v35, v36);
  (*(v46 + 8))(v15, v47);
  v28(v22, v40);
}

void sub_26C646040(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2804A7380 != -1)
  {
    swift_once();
  }

  v14 = sub_26C64D928();
  __swift_project_value_buffer(v14, qword_2804A7F28);

  v15 = sub_26C64D908();
  v16 = sub_26C64DA98();

  if (os_log_type_enabled(v15, v16))
  {
    v28 = a5;
    v17 = a4;
    v18 = swift_slowAlloc();
    v19 = a3;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_26C647B84(a1, a2, aBlock);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a7;
    _os_log_impl(&dword_26C632000, v15, v16, "Start transition for: '%s' at: %f", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a3 = v19;
    MEMORY[0x26D6A5F50](v21, -1, -1);
    v22 = v18;
    a4 = v17;
    a5 = v28;
    MEMORY[0x26D6A5F50](v22, -1, -1);
  }

  v23 = [a3 currentRecording];
  if (v23)
  {
    v24 = v23;
    v25 = sub_26C64D9C8();
    [v24 startTransitionTo_];
  }

  v26 = sub_26C64D9C8();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C64CFF0;
  aBlock[3] = &block_descriptor_59;
  v27 = _Block_copy(aBlock);

  [a4 transitionToState:v26 completion:v27];
  _Block_release(v27);
}

void sub_26C646510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a7;
  v17[8] = a8;
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a6;
  v18[8] = a5;
  v18[9] = sub_26C64CA0C;
  v18[10] = v17;
  v19 = v8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v20 = v19;

  swift_unknownObjectRetain();

  v21 = sub_26C64D9C8();
  v23[4] = sub_26C64CA84;
  v23[5] = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_26C64CFF0;
  v23[3] = &block_descriptor_34;
  v22 = _Block_copy(v23);

  [a5 resetToState:v21 completion:v22];
  _Block_release(v22);
}

uint64_t sub_26C6466D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = sub_26C64D9C8();
  v9 = sub_26C64D9C8();
  [a1 _secureFlipBookRecordingEndCaptureFromState_toState_];

  return a6();
}

void sub_26C646760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_26C64D9C8();
  v13 = sub_26C64D9C8();
  type metadata accessor for CaptureCoordinatorOption(0);
  sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
  v14 = sub_26C64D998();
  [a1 _secureFlipBookRecordingBeginCaptureFromState_toState_options_];

  v15 = sub_26C64D9C8();
  v17[4] = a8;
  v17[5] = a9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26C64CFF0;
  v17[3] = &block_descriptor_37;
  v16 = _Block_copy(v17);

  [a7 transitionToState:v15 completion:v16];
  _Block_release(v16);
}

void sub_26C646AE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [v5 currentCaptureData];
  if (!v12)
  {
    v22 = [objc_allocWithZone(_s18CurrentCaptureDataCMa()) init];
    *&v22[OBJC_IVAR____TtCE31SystemUISecureFlipBookUtilitiesCSo21SFUCaptureCoordinatorP33_9773103F5CDE8D35EE70D2357E21529718CurrentCaptureData_beginTime] = CACurrentMediaTime();
    [v5 setCurrentCaptureData_];
    if (a1 == a3 && a2 == a4 || (sub_26C64DBE8() & 1) != 0)
    {
    }

    else
    {
      v23[0] = a1;
      v23[1] = a2;

      MEMORY[0x26D6A52B0](540945696, 0xE400000000000000);
      MEMORY[0x26D6A52B0](a3, a4);
    }

    if (qword_2804A7380 != -1)
    {
      swift_once();
    }

    v13 = sub_26C64D928();
    __swift_project_value_buffer(v13, qword_2804A7F28);

    v14 = sub_26C64D908();
    v15 = sub_26C64DA98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = sub_26C647B84(a1, a2, v23);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_26C632000, v14, v15, "Beginning capture for: '%s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D6A5F50](v17, -1, -1);
      MEMORY[0x26D6A5F50](v16, -1, -1);
    }

    else
    {
    }

    v19 = [v6 currentRecording];
    if (v19)
    {
      v20 = v19;
      swift_getKeyPath();

      sub_26C64A5E4(a5, sub_26C64C990);

      v21 = sub_26C64D998();

      [v20 beginCaptureWithOptions_];
    }

    v12 = v22;
  }
}

uint64_t sub_26C646DE4(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

void sub_26C646FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v4 currentCaptureData];
  if (v10)
  {
    v33 = v10;
    v11 = CACurrentMediaTime();
    v12 = OBJC_IVAR____TtCE31SystemUISecureFlipBookUtilitiesCSo21SFUCaptureCoordinatorP33_9773103F5CDE8D35EE70D2357E21529718CurrentCaptureData_endTime;
    *&v33[OBJC_IVAR____TtCE31SystemUISecureFlipBookUtilitiesCSo21SFUCaptureCoordinatorP33_9773103F5CDE8D35EE70D2357E21529718CurrentCaptureData_endTime] = v11;
    v13 = a1 == a3 && a2 == a4;
    v14 = v13;
    if (v13 || (sub_26C64DBE8() & 1) != 0)
    {

      v32 = a1;
      v15 = a2;
    }

    else
    {
      v34[0] = a1;
      v34[1] = a2;

      MEMORY[0x26D6A52B0](540945696, 0xE400000000000000);
      MEMORY[0x26D6A52B0](a3, a4);
      v15 = a2;
      v32 = a1;
    }

    if (qword_2804A7380 != -1)
    {
      swift_once();
    }

    v16 = sub_26C64D928();
    __swift_project_value_buffer(v16, qword_2804A7F28);

    v17 = sub_26C64D908();
    v18 = sub_26C64DA98();

    if (os_log_type_enabled(v17, v18))
    {
      v30 = v14;
      v19 = swift_slowAlloc();
      v31 = v12;
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315138;
      v21 = sub_26C647B84(v32, v15, v34);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_26C632000, v17, v18, "Finished capture for: '%s'", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v22 = v20;
      v12 = v31;
      MEMORY[0x26D6A5F50](v22, -1, -1);
      v23 = v19;
      v14 = v30;
      MEMORY[0x26D6A5F50](v23, -1, -1);
    }

    else
    {
    }

    v24 = [v5 currentRecording];
    [v24 endCapture];

    if (v14 & 1) != 0 || (sub_26C64DBE8())
    {
      v25 = *&v33[v12] - *&v33[OBJC_IVAR____TtCE31SystemUISecureFlipBookUtilitiesCSo21SFUCaptureCoordinatorP33_9773103F5CDE8D35EE70D2357E21529718CurrentCaptureData_beginTime];
      v26 = [v5 loopStateSingleLoopDuration];
      v27 = sub_26C64D9A8();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v27;
      sub_26C648E5C(a1, a2, isUniquelyReferenced_nonNull_native, v25);
      v29 = sub_26C64D998();

      [v5 setLoopStateSingleLoopDuration_];
    }

    [v5 setCurrentCaptureData_];
  }
}

uint64_t sub_26C6475F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26C64D9C8();
  [a1 maximumLatencyToExitLoopingState_];

  v9 = [v4 loopStateSingleLoopDuration];
  v10 = sub_26C64D9A8();

  if (*(v10 + 16))
  {
    sub_26C648204(a2, a3, sub_26C6479C0);
  }
}

unint64_t sub_26C6479C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26C64DBE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_26C647A78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A7700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26C647B84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C647C50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26C64AA4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26C647C50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26C647D5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26C64DB78();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26C647D5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26C647DA8(a1, a2);
  sub_26C647ED8(&unk_287D25878);
  return v3;
}

uint64_t sub_26C647DA8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26C647FC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26C64DB78();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26C64DA28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C647FC4(v10, 0);
        result = sub_26C64DB58();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26C647ED8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C648038(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26C647FC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7688);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26C648038(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26C64812C(uint64_t a1)
{
  v2 = sub_26C64DB28();

  return sub_26C649048(a1, v2);
}

unint64_t sub_26C648170(uint64_t a1)
{
  sub_26C64D9F8();
  sub_26C64DC38();
  sub_26C64DA08();
  v2 = sub_26C64DC48();

  return sub_26C649110(a1, v2);
}

uint64_t sub_26C648204(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_26C64DC38();
  sub_26C64DA08();
  v5 = sub_26C64DC48();

  return a3(a1, a2, v5);
}

double sub_26C648288@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_26C648170(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C649214();
      v9 = v11;
    }

    sub_26C649920((*(v9 + 56) + 32 * v7), a2);
    sub_26C648B54(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26C648328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7730);
  result = sub_26C64DBB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_26C649920((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_26C64CE10(v23, &v36);
        sub_26C64AA4C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_26C64DB28();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_26C649920(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C6485E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A76F8);
  v35 = a2;
  result = sub_26C64DBB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_26C649920(v22, v36);
      }

      else
      {
        sub_26C64AA4C(v22, v36);
        v23 = v21;
      }

      sub_26C64D9F8();
      sub_26C64DC38();
      sub_26C64DA08();
      v24 = sub_26C64DC48();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_26C649920(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26C6488B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7690);
  v33 = a2;
  result = sub_26C64DBB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_26C64DC38();
      sub_26C64DA08();
      result = sub_26C64DC48();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_26C648B54(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C64DB18() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_26C64D9F8();
      sub_26C64DC38();
      v11 = v10;
      sub_26C64DA08();
      v12 = sub_26C64DC48();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

_OWORD *sub_26C648D1C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26C648170(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_26C649214();
      v8 = v16;
      goto LABEL_8;
    }

    sub_26C6485E0(v13, a3 & 1);
    v8 = sub_26C648170(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CaptureCoordinatorOption(0);
      result = sub_26C64DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_26C649920(a1, v19);
  }

  else
  {
    sub_26C648FE0(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_26C648E5C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26C648204(a1, a2, sub_26C6479C0);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_26C6488B0(v16, a3 & 1);
      result = sub_26C648204(a1, a2, sub_26C6479C0);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26C64DBF8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26C649394();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_26C648FE0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26C649920(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_26C649048(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26C64CE10(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6A53D0](v9, a1);
      sub_26C64CE6C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26C649110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26C64D9F8();
      v8 = v7;
      if (v6 == sub_26C64D9F8() && v8 == v9)
      {
        break;
      }

      v11 = sub_26C64DBE8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_26C649214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A76F8);
  v2 = *v0;
  v3 = sub_26C64DBA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_26C64AA4C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_26C649920(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C649394()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7690);
  v2 = *v0;
  v3 = sub_26C64DBA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_26C6494FC(char *a1, int64_t a2, char a3)
{
  result = sub_26C64953C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C64951C(char *a1, int64_t a2, char a3)
{
  result = sub_26C649640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C64953C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_26C649640(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A7700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C64974C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_26C6497F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A76F8);
    v3 = sub_26C64DBC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C64CF20(v4, &v11, &qword_2804A7678);
      v5 = v11;
      result = sub_26C648170(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26C649920(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_26C649920(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26C649930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C643D04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26C64995C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7730);
    v3 = sub_26C64DBC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C64CF20(v4, v13, &qword_2804A7738);
      result = sub_26C64812C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26C649920(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26C649A98(uint64_t a1)
{

  v2 = sub_26C64995C(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v50 = a1;

  v8 = 0;
  v9 = &unk_2804A7728;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v11);
        ++v8;
        if (v6)
        {
          v8 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_12:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    v13 = *(*(v50 + 48) + 8 * v12);
    sub_26C64AA4C(*(v50 + 56) + 32 * v12, &v60);
    v59 = v13;
    v56 = v13;
    v14 = v13;

    v15 = v14;
    swift_getAtKeyPath();

    v56 = v58[0];
    *&v57 = v58[1];
    sub_26C64DB48();

    v16 = v9;
    sub_26C64CF20(&v59, &v56, v9);
    sub_26C649920(&v57, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v2;
    v19 = sub_26C64812C(v58);
    v20 = *(v2 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_41;
    }

    v23 = v18;
    if (*(v2 + 24) >= v22)
    {
      break;
    }

    sub_26C648328(v22, isUniquelyReferenced_nonNull_native);
    v24 = v54;
    v25 = sub_26C64812C(v58);
    if ((v23 & 1) != (v26 & 1))
    {
      goto LABEL_44;
    }

    v19 = v25;
    if (v23)
    {
LABEL_5:
      v10 = (*(v24 + 56) + 32 * v19);
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_26C649920(v55, v10);
      goto LABEL_6;
    }

LABEL_19:
    *(v24 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    sub_26C64CE10(v58, *(v24 + 48) + 40 * v19);
    sub_26C649920(v55, (*(v24 + 56) + 32 * v19));
    v27 = *(v24 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_42;
    }

    *(v24 + 16) = v29;
LABEL_6:
    v6 &= v6 - 1;
    sub_26C64CE6C(v58);

    v9 = v16;
    sub_26C64CEC0(&v59, v16);
    v2 = v24;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = v2;
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7730);
  v30 = sub_26C64DBA8();
  v24 = v30;
  if (!*(v2 + 16))
  {
LABEL_37:

    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v31 = (v30 + 64);
  v32 = (v2 + 64);
  v33 = ((1 << *(v24 + 32)) + 63) >> 6;
  if (v24 != v2 || v31 >= &v32[8 * v33])
  {
    memmove(v31, v32, 8 * v33);
  }

  v34 = 0;
  *(v24 + 16) = *(v2 + 16);
  v35 = 1 << *(v2 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v2 + 64);
  v38 = (v35 + 63) >> 6;
  v46 = v38;
  if (v37)
  {
    do
    {
      v39 = __clz(__rbit64(v37));
      v49 = (v37 - 1) & v37;
LABEL_35:
      v48 = v39 | (v34 << 6);
      v47 = 40 * v48;
      sub_26C64CE10(*(v2 + 48) + 40 * v48, v52);
      v48 *= 32;
      sub_26C64AA4C(*(v2 + 56) + v48, v51);
      v42 = *(v24 + 48) + v47;
      v43 = v52[0];
      v44 = v52[1];
      *(v42 + 32) = v53;
      *v42 = v43;
      *(v42 + 16) = v44;
      sub_26C649920(v51, (*(v24 + 56) + v48));
      v38 = v46;
      v37 = v49;
    }

    while (v49);
  }

  v40 = v34;
  while (1)
  {
    v34 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v34 >= v38)
    {
      goto LABEL_37;
    }

    v41 = *(v2 + 64 + 8 * v34);
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v49 = (v41 - 1) & v41;
      goto LABEL_35;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:

  result = sub_26C64DBF8();
  __break(1u);
  return result;
}

void sub_26C649F1C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, void (**a6)(void, void, void))
{
  v65 = *MEMORY[0x277D85DE8];
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *&aBlock = 0;
  _Block_copy(a6);
  if (![a5 _validateDescription_error_])
  {
    v15 = aBlock;
    v16 = sub_26C64D8F8();

    swift_willThrow();
    v17 = v16;
    v18 = sub_26C64D8E8();
    (a6)[2](a6, 0, v18);

    return;
  }

  v13 = aBlock;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = sub_26C6497F8(MEMORY[0x277D84F90]);
  }

  v19 = *(v14 + 16);

  v59 = a4;
  if (v19 && (v20 = sub_26C648170(@"recordingName"), (v21 & 1) != 0))
  {
    sub_26C64AA4C(*(v14 + 56) + 32 * v20, &aBlock);
    sub_26C64CEC0(&aBlock, &qword_2804A7638);
  }

  else
  {
    v22 = MEMORY[0x277D837D0];
    aBlock = 0u;
    v61 = 0u;
    sub_26C64CEC0(&aBlock, &qword_2804A7638);
    v23 = [a1 flipBookName];
    v24 = sub_26C64D9F8();
    v26 = v25;

    *(&v61 + 1) = v22;
    a4 = v59;
    *&aBlock = v24;
    *(&aBlock + 1) = v26;
    sub_26C649920(&aBlock, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C648D1C(v64, @"recordingName", isUniquelyReferenced_nonNull_native);
  }

  swift_getKeyPath();

  sub_26C649A98(v14);

  v28 = objc_allocWithZone(SFUSecureFlipBookRecording);
  v29 = sub_26C64D998();

  v30 = [v28 initWithOptions_];

  [a5 setCurrentRecording_];
  if (a2)
  {
    v31 = [a5 currentRecording];
    if (v31)
    {
      v32 = v31;
      v33 = sub_26C64D998();
      [v32 setUserInfo_];
    }
  }

  if (a4)
  {
    if (a4 >> 62)
    {
      v34 = sub_26C64DB98();
    }

    else
    {
      v34 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v57 = a5;
      v58 = v12;
      *&aBlock = MEMORY[0x277D84F90];
      sub_26C6494FC(0, v34 & ~(v34 >> 63), 0);
      if (v34 < 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      v35 = aBlock;
      sub_26C64DA88();
      v36 = 0;
      v37 = a4 & 0xC000000000000001;
      do
      {
        if (v37)
        {
          v38 = MEMORY[0x26D6A5400](v36, a4);
        }

        else
        {
          v38 = *(a4 + 8 * v36 + 32);
        }

        v39 = v38;
        sub_26C64DA78();
        sub_26C64DA68();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v39 bs_CGRectValue];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        *&aBlock = v35;
        v49 = *(v35 + 16);
        v48 = *(v35 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_26C6494FC((v48 > 1), v49 + 1, 1);
          v35 = aBlock;
        }

        ++v36;
        *(v35 + 16) = v49 + 1;
        v50 = (v35 + 32 * v49);
        v50[4] = v41;
        v50[5] = v43;
        v50[6] = v45;
        v50[7] = v47;
        a4 = v59;
      }

      while (v34 != v36);
      v12 = v58;
      a5 = v57;
    }

    sub_26C64DA88();
    sub_26C64DA78();
    sub_26C64DA68();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v51 = [a5 currentRecording];
    if (!v51)
    {

      goto LABEL_34;
    }

    if (!HIDWORD(*(v35 + 16)))
    {
      v52 = v51;
      [v51 setConstraintBoundingBoxes:v35 + 32 count:?];

      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
  }

LABEL_34:
  v53 = [a1 states];
  if (!v53)
  {
    sub_26C64DA58();
    v53 = sub_26C64DA48();
  }

  v54 = swift_allocObject();
  v54[2] = a5;
  v54[3] = sub_26C64CFF8;
  v54[4] = v12;
  v62 = sub_26C64D048;
  v63 = v54;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_26C64CFF0;
  *(&v61 + 1) = &block_descriptor_122;
  v55 = _Block_copy(&aBlock);
  v56 = a5;

  [v56 _captureWithStates_for_completion_];
  _Block_release(v55);
}

uint64_t sub_26C64A5E4(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = sub_26C64995C(MEMORY[0x277D84F90]);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v51 = a1;

  v9 = 0;
  v10 = &unk_2804A7728;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v8)
        {

          return v3;
        }

        v7 = *(v4 + 8 * v12);
        ++v9;
        if (v7)
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v51 + 48) + 8 * v13);
    sub_26C64AA4C(*(v51 + 56) + 32 * v13, &v61);
    v60 = v14;
    v57 = a2(v14);
    *&v58 = v15;
    sub_26C64DB48();
    v16 = v10;
    sub_26C64CF20(&v60, &v57, v10);
    sub_26C649920(&v58, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v3;
    v19 = sub_26C64812C(v59);
    v20 = *(v3 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_41;
    }

    v23 = v18;
    if (*(v3 + 24) >= v22)
    {
      break;
    }

    sub_26C648328(v22, isUniquelyReferenced_nonNull_native);
    v24 = v55;
    v25 = sub_26C64812C(v59);
    if ((v23 & 1) != (v26 & 1))
    {
      goto LABEL_44;
    }

    v19 = v25;
    if (v23)
    {
LABEL_5:
      v11 = (*(v24 + 56) + 32 * v19);
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_26C649920(v56, v11);
      goto LABEL_6;
    }

LABEL_19:
    *(v24 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    sub_26C64CE10(v59, *(v24 + 48) + 40 * v19);
    sub_26C649920(v56, (*(v24 + 56) + 32 * v19));
    v27 = *(v24 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_42;
    }

    *(v24 + 16) = v29;
LABEL_6:
    v7 &= v7 - 1;
    sub_26C64CE6C(v59);

    v10 = v16;
    sub_26C64CEC0(&v60, v16);
    v3 = v24;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = v3;
    if (v18)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7730);
  v30 = sub_26C64DBA8();
  v24 = v30;
  if (!*(v3 + 16))
  {
LABEL_37:

    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v31 = (v30 + 64);
  v32 = (v3 + 64);
  v33 = ((1 << *(v24 + 32)) + 63) >> 6;
  if (v24 != v3 || v31 >= &v32[8 * v33])
  {
    memmove(v31, v32, 8 * v33);
  }

  v34 = 0;
  *(v24 + 16) = *(v3 + 16);
  v35 = 1 << *(v3 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v3 + 64);
  v38 = (v35 + 63) >> 6;
  v46 = v38;
  if (v37)
  {
    do
    {
      v39 = __clz(__rbit64(v37));
      v49 = (v37 - 1) & v37;
LABEL_35:
      v48 = v39 | (v34 << 6);
      v47 = 40 * v48;
      sub_26C64CE10(*(v3 + 48) + 40 * v48, v53);
      v48 *= 32;
      sub_26C64AA4C(*(v3 + 56) + v48, v52);
      v42 = *(v24 + 48) + v47;
      v43 = v53[0];
      v44 = v53[1];
      *(v42 + 32) = v54;
      *v42 = v43;
      *(v42 + 16) = v44;
      sub_26C649920(v52, (*(v24 + 56) + v48));
      v38 = v46;
      v37 = v49;
    }

    while (v49);
  }

  v40 = v34;
  while (1)
  {
    v34 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v34 >= v38)
    {
      goto LABEL_37;
    }

    v41 = *(v3 + 64 + 8 * v34);
    ++v40;
    if (v41)
    {
      v39 = __clz(__rbit64(v41));
      v49 = (v41 - 1) & v41;
      goto LABEL_35;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:

  result = sub_26C64DBF8();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C64AA4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26C64AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = sub_26C64D998();
  }

  else
  {
    v8 = 0;
  }

  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26C644614;
  v10[3] = &block_descriptor_125;
  v9 = _Block_copy(v10);

  [v4 generateFlipBookFromDescription:a1 userInfo:v8 options:0 constraintBoundingBoxes:0 resultHandler:v9];
  _Block_release(v9);
}

uint64_t sub_26C64ABB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C64AC30(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26C64DBE8() & 1;
  }
}

unint64_t sub_26C64AC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A7710);
    v3 = sub_26C64DBC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26C64CF20(v4, &v13, &qword_2804A7718);
      v5 = v13;
      v6 = v14;
      result = sub_26C648204(v13, v14, sub_26C6479C0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26C649920(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_26C64ADCC(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    v2 = [a1 captureBoundsDefiningView];
    [v2 frame];
    Width = CGRectGetWidth(v9);
    [v2 frame];
    if (Width != CGRectGetHeight(v10))
    {
      type metadata accessor for CaptureCoordinatorError(0);
      sub_26C64AC88(MEMORY[0x277D84F90]);
      sub_26C64CD48(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);
      sub_26C64D8D8();
      swift_willThrow();
    }
  }

  else if ([a1 respondsToSelector_])
  {
    [a1 captureBounds];
    x = v11.origin.x;
    y = v11.origin.y;
    v6 = v11.size.width;
    height = v11.size.height;
    v8 = CGRectGetWidth(v11);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = v6;
    v12.size.height = height;
    if (v8 != CGRectGetHeight(v12))
    {
      type metadata accessor for CaptureCoordinatorError(0);
      sub_26C64AC88(MEMORY[0x277D84F90]);
      sub_26C64CD48(&qword_2804A7410, type metadata accessor for CaptureCoordinatorError);
      sub_26C64D8D8();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26C64AFD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_26C64B0B8(void *a1, void *a2, void *a3, char *a4)
{
  v53 = a3;
  v7 = sub_26C64D928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  if (qword_2804A7380 != -1)
  {
LABEL_36:
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_2804A7F28);
  (*(v8 + 16))(v10, v12, v7);
  if (!a1[2])
  {
    v26 = sub_26C64D908();
    v27 = sub_26C64DA98();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26C632000, v26, v27, "Finished all captures for this asset description!", v28, 2u);
      MEMORY[0x26D6A5F50](v28, -1, -1);
    }

    (*(a4 + 2))(a4);
    (*(v8 + 8))(v10, v7);
  }

  v51 = v11;
  v13 = a1[4];
  v14 = a1[5];
  v49 = a1;

  v15 = sub_26C64D9C8();
  v16 = [a2 allowedNextStatesForState_];

  v17 = sub_26C64DA58();
  v54 = v13;
  a1 = sub_26C64D9C8();
  v50 = a2;
  LOBYTE(v16) = [v53 _isLoopingState_forDescription_];

  v52 = v7;
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  v47 = v10;
  v10 = *(v17 + 16);
  if (!v10)
  {
    v48 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v18 = 0;
  v19 = v17 + 40;
  v44 = v10 - 1;
  v48 = MEMORY[0x277D84F90];
  v45 = v17 + 40;
  v46 = v8;
  do
  {
    v8 = v19 + 16 * v18;
    a4 = v18;
    while (1)
    {
      if (a4 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      a2 = *(v8 - 8);
      a1 = *v8;
      sub_26C64DA88();

      sub_26C64DA78();
      v7 = sub_26C64DA68();
      v11 = v20;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (a2 != v54 || a1 != v14)
      {
        break;
      }

LABEL_8:
      ++a4;
      v8 += 16;
      if (v10 == a4)
      {
        v8 = v46;
        goto LABEL_27;
      }
    }

    v11 = sub_26C64DBE8();

    if (v11)
    {

      goto LABEL_8;
    }

    v21 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26C64951C(0, *(v21 + 16) + 1, 1);
      v21 = aBlock[0];
    }

    v8 = v46;
    v11 = *(v21 + 16);
    v23 = *(v21 + 24);
    v24 = v11 + 1;
    if (v11 >= v23 >> 1)
    {
      v48 = v11 + 1;
      sub_26C64951C((v23 > 1), v11 + 1, 1);
      v24 = v48;
      v21 = aBlock[0];
    }

    v18 = a4 + 1;
    *(v21 + 16) = v24;
    v48 = v21;
    v25 = v21 + 16 * v11;
    *(v25 + 32) = a2;
    *(v25 + 40) = a1;
    v19 = v45;
  }

  while (v44 != a4);
LABEL_27:

  v29 = v48;
  v30 = *(v48 + 16);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v29;
  if (!v31 || v30 >= *(v29 + 24) >> 1)
  {
    v56 = sub_26C647A78(v31, v30 + 1, 1, v29);
  }

  v10 = v47;
  sub_26C64AFD4(0, 0, 1, v54, v14);

LABEL_31:

  v32 = sub_26C64D908();
  v33 = sub_26C64DA98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_26C647B84(v54, v14, aBlock);
    _os_log_impl(&dword_26C632000, v32, v33, "Beginning capturing transitions from state: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D6A5F50](v35, -1, -1);
    MEMORY[0x26D6A5F50](v34, -1, -1);
  }

  v36 = sub_26C64D9C8();

  v37 = sub_26C64DA48();

  v38 = swift_allocObject();
  v39 = v50;
  v40 = v53;
  v38[2] = v49;
  v38[3] = v40;
  v38[4] = v39;
  v38[5] = sub_26C64CFFC;
  v38[6] = v51;
  aBlock[4] = sub_26C64CD38;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C64CFF0;
  aBlock[3] = &block_descriptor_88;
  v41 = _Block_copy(aBlock);

  v42 = v40;
  swift_unknownObjectRetain();

  [v42 _captureFromState_toStates_forDescription_completion_];
  _Block_release(v41);

  (*(v8 + 8))(v10, v52);
}

unint64_t sub_26C64B7A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_26C64B860(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void (**a6)(void))
{
  v12 = sub_26C64D928();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  _Block_copy(a6);
  if (qword_2804A7380 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_2804A7F28);
  (*(v13 + 16))(v15, v17, v12);
  if (a3[2])
  {
    v55 = v15;
    v56 = v13;
    v57 = v12;
    v18 = a3[4];
    v19 = a3[5];
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a5;
    v20[4] = a1;
    v20[5] = a2;
    v20[6] = a4;
    v20[7] = sub_26C64CFFC;
    v20[8] = v16;

    v21 = a5;
    swift_unknownObjectRetain();
    v58 = v16;

    v22 = sub_26C64D9C8();
    HIDWORD(v52) = [v21 _isLoopingState_forDescription_];

    v23 = sub_26C64D9C8();
    v54 = v18;
    v24 = v21;
    v25 = sub_26C64D9C8();
    v26 = [v24 _captureOptionsForCaptureFromState_toState_forDescription_];

    type metadata accessor for CaptureCoordinatorOption(0);
    v28 = v27;
    sub_26C64CD48(&qword_2804A73A8, type metadata accessor for CaptureCoordinatorOption);
    v53 = v28;
    v29 = sub_26C64D9A8();

    v30 = sub_26C64D9C8();
    [v24 _sequenceExitTimeIntervalForDescription_fromState_];
    v32 = v31;

    v33 = [v24 loopStateSingleLoopDuration];
    v34 = sub_26C64D9A8();

    v35 = 0.0;
    if (*(v34 + 16))
    {
      v36 = sub_26C648204(a1, a2, sub_26C6479C0);
      if (v37)
      {
        v35 = *(*(v34 + 56) + 8 * v36);
      }
    }

    if (!HIDWORD(v52) || v54 == a1 && v19 == a2 || (sub_26C64DBE8() & 1) != 0 || v32 >= v35)
    {
      v38 = sub_26C64D9C8();
      v39 = sub_26C64D9C8();

      v40 = sub_26C64D998();

      v63 = sub_26C64CCB4;
      v64 = v20;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v61 = sub_26C64CFF0;
      v62 = &block_descriptor_72;
      v41 = _Block_copy(&aBlock);

      [v24 _captureFromState_toState_forDescription_options_completion_];
      _Block_release(v41);
    }

    else
    {
      v59 = v29;
      v48 = @"captureToState";
      sub_26C648288(v48, &aBlock);

      sub_26C64CEC0(&aBlock, &qword_2804A7638);
      v49 = sub_26C64D9C8();
      v50 = sub_26C64D9C8();

      v40 = sub_26C64D998();

      v63 = sub_26C64CCB4;
      v64 = v20;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v61 = sub_26C64CFF0;
      v62 = &block_descriptor_75;
      v51 = _Block_copy(&aBlock);

      [v24 _captureFromState_toState_forDescription_options_currentSequenceExitTime_sequenceExitTimeInterval_maxDuration_completion_];
      _Block_release(v51);
    }

    (*(v56 + 8))(v55, v57);
  }

  else
  {

    v42 = sub_26C64D908();
    v43 = sub_26C64DA98();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v58 = v16;
      v45 = v44;
      v46 = swift_slowAlloc();
      *&aBlock = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_26C647B84(a1, a2, &aBlock);
      _os_log_impl(&dword_26C632000, v42, v43, "Finished capturing transitions from state: '%s'", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D6A5F50](v46, -1, -1);
      MEMORY[0x26D6A5F50](v45, -1, -1);
    }

    a6[2](a6);
    (*(v13 + 8))(v15, v12);
  }
}