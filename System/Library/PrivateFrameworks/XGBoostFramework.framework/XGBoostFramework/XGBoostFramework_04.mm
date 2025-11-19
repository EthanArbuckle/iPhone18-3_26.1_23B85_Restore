void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string> &>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string,std::string> &>();
  }

  return v2;
}

void dmlc::data::DiskRowIter<unsigned int,float>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned int,float>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned int,float>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned int,float>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274CF5C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274CF5F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274CF60EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274CF60BCLL);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back(v2, v3);
  }
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274CF6654(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274CF6A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274CF6F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274CF6F10);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x277C68EC0]();
    MEMORY[0x277C69180](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *dmlc::ScopedThread::ScopedThread(void *this, std::thread a2)
{
  *this = &unk_2883E0B50;
  this[1] = a2.__t_->__sig;
  a2.__t_->__sig = 0;
  if (!this[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No thread");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return this;
}

void dmlc::ScopedThread::~ScopedThread(std::thread *this)
{
  dmlc::ScopedThread::~ScopedThread(this);

  JUMPOUT(0x277C69180);
}

{
  this->__t_ = &unk_2883E0B50;
  v1 = this + 1;
  std::thread::join(this + 1);
  std::thread::~thread(v1);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF190;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::operator()(uint64_t a1, std::vector<unsigned int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<float>::resize(v2 + 1, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 4 * v5) != 4 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(v2 + 2, __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<float>::resize(v2 + 4, __sz), __sz) && (**v3)(v3, v2[4].__begin_, 4 * v20) != 4 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<float>::resize(v2 + 5, __sz), __sz) && (**v3)(v3, v2[5].__begin_, 4 * v25) != 4 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<float>::resize(v2 + 6, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 4 * v30) != 4 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 4))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, (&v2[7].__begin_ + 4), 4))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,float>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  return a1;
}

void sub_274CF7CD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF220;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,float>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,float> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned int,float>::Push<unsigned int>(std::vector<unsigned int> *a1, uint64_t a2)
{
  v4 = &a1[1];
  v5 = a1[1].__end_ - a1[1].__begin_;
  std::vector<float>::resize(a1 + 1, *a2 + (v5 >> 2));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 4 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(&a1[2].__begin_, a1[2].__end_, v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a1[3].__begin_, a1[3].__end_, v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<float>::resize(a1 + 4, v12 + a1[4].__end_ - a1[4].__begin_);
    v13 = a1[4].__end_ == a1[4].__begin_ ? 0 : a1[4].__begin_;
    if (v10 != v11)
    {
      v14 = &v13[*(a1->__end_ - 1)];
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        begin = v18;
        *v14++ = v18;
        if (LODWORD(a1[7].__begin_) > v18)
        {
          begin = a1[7].__begin_;
        }

        LODWORD(a1[7].__begin_) = begin;
        --v16;
      }

      while (v16);
    }
  }

  v19 = v5 >> 2;
  std::vector<float>::resize(a1 + 5, v12 + a1[5].__end_ - a1[5].__begin_);
  v20 = a1[5].__begin_;
  if (a1[5].__end_ == v20)
  {
    v20 = 0;
  }

  end = a1->__end_;
  if (v10 != v11)
  {
    v22 = &v20[*(end - 1)];
    v23 = *(a2 + 48);
    v24 = v12;
    do
    {
      v26 = *v23++;
      begin_high = v26;
      *v22++ = v26;
      if (HIDWORD(a1[7].__begin_) > v26)
      {
        begin_high = HIDWORD(a1[7].__begin_);
      }

      HIDWORD(a1[7].__begin_) = begin_high;
      --v24;
    }

    while (v24);
  }

  if (*(a2 + 56))
  {
    std::vector<float>::resize(a1 + 6, v12 + a1[6].__end_ - a1[6].__begin_);
    v27 = a1[6].__begin_;
    v28 = a1[6].__end_ - v27;
    if (!v28)
    {
      v27 = 0;
    }

    memcpy(v27 + v28 + -4 * v12, *(a2 + 56), 4 * v12);
    end = a1->__end_;
  }

  v29 = *&a1->__begin_[2 * v19];
  std::vector<unsigned long>::resize(a1, *a2 + ((end - a1->__begin_) >> 3));
  if (a1->__end_ == a1->__begin_)
  {
    v30 = 0;
  }

  else
  {
    v30 = a1->__begin_;
  }

  if (*a2)
  {
    v31 = &v30[2 * v19];
    v32 = *(a2 + 8);
    v33 = 1;
    do
    {
      *&v31[2 * v33] = v32[v33] + v29 - *v32;
    }

    while (v33++ < *a2);
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,float>::Save(void *a1, uint64_t a2)
{
  v5 = (a1[1] - *a1) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, *a1, a1[1] - *a1);
  }

  v5 = (a1[4] - a1[3]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[3], a1[4] - a1[3]);
  }

  v5 = (a1[7] - a1[6]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[6], a1[7] - a1[6]);
  }

  v5 = (a1[10] - a1[9]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[9], a1[10] - a1[9]);
  }

  v5 = (a1[13] - a1[12]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[12], a1[13] - a1[12]);
  }

  v5 = (a1[16] - a1[15]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[15], a1[16] - a1[15]);
  }

  v5 = (a1[19] - a1[18]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[18], a1[19] - a1[18]);
  }

  (*(*a2 + 8))(a2, a1 + 21, 4);
  return (*(*a2 + 8))(a2, a1 + 172, 4);
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

char *std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

dmlc::LogMessage *dmlc::LogMessage::LogMessage(dmlc::LogMessage *this, const char *a2, uint64_t a3)
{
  v6 = MEMORY[0x277D82670];
  *this = MEMORY[0x277D82670];
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "[", 1);
  v8 = dmlc::DateLogger::HumanDate((this + 8));
  v9 = strlen(v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "] ", 2);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ":", 1);
  v15 = MEMORY[0x277C68E20](v14, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": ", 2);
  return this;
}

void dmlc::LogMessage::~LogMessage(dmlc::LogMessage *this)
{
  v1 = *this;
  v2 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, &v2, 1);
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DF130;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274CF8BD4(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Destroy(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::mutex::lock((a1 + 56));
    atomic_store(2u, (a1 + 24));
    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    std::mutex::unlock((a1 + 56));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 376);
    do
    {
      v5 = *(*(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v5)
      {
        v6 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v5);
        MEMORY[0x277C69180](v6, 0x1090C40D149B244);
        v4 = *(a1 + 376);
        v3 = *(a1 + 384);
      }

      --v3;
      *(a1 + 376) = ++v4;
      *(a1 + 384) = v3;
      if (v4 >= 0x400)
      {
        operator delete(**(a1 + 352));
        *(a1 + 352) += 8;
        v3 = *(a1 + 384);
        v4 = *(a1 + 376) - 512;
        *(a1 + 376) = v4;
      }
    }

    while (v3);
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    v8 = *(a1 + 328);
    do
    {
      v9 = *(*(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
      if (v9)
      {
        v10 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v9);
        MEMORY[0x277C69180](v10, 0x1090C40D149B244);
        v8 = *(a1 + 328);
        v7 = *(a1 + 336);
      }

      --v7;
      *(a1 + 328) = ++v8;
      *(a1 + 336) = v7;
      if (v8 >= 0x400)
      {
        operator delete(**(a1 + 304));
        *(a1 + 304) += 8;
        v7 = *(a1 + 336);
        v8 = *(a1 + 328) - 512;
        *(a1 + 328) = v8;
      }
    }

    while (v7);
  }

  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    v13 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(result);
    result = MEMORY[0x277C69180](v13, 0x1090C40D149B244);
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t dmlc::data::DiskRowIter<unsigned int,float>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DF0B0;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,float>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274CF8F64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned int,float>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 2) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 2;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274CF9228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned int,float>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF2A0;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned int,float>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF2A0;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned int,float>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void dmlc::data::DiskRowIter<unsigned long long,float>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned long long,float>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,float>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned long long,float>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274CF9674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274CF998C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274CF9B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274CF9AD4);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274CFA028(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274CFA23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274CFA6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned long long,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,float> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274CFA6ACLL);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF3D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::operator()(uint64_t a1, std::vector<unsigned int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<float>::resize(v2 + 1, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 4 * v5) != 4 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(v2 + 2, __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<unsigned long>::resize(&v2[4].__begin_, __sz), __sz) && (**v3)(v3, v2[4].__begin_, 8 * v20) != 8 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<unsigned long>::resize(&v2[5].__begin_, __sz), __sz) && (**v3)(v3, v2[5].__begin_, 8 * v25) != 8 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<float>::resize(v2 + 6, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 4 * v30) != 4 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 8))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7].__end_, 8))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,float> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned long long,float>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_274CFB28C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF468;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,float>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,float> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned long long,float>::Push<unsigned long long>(std::vector<unsigned int> *a1, uint64_t a2)
{
  v4 = &a1[1];
  v5 = a1[1].__end_ - a1[1].__begin_;
  std::vector<float>::resize(a1 + 1, *a2 + (v5 >> 2));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 4 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(&a1[2].__begin_, a1[2].__end_, v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a1[3].__begin_, a1[3].__end_, v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<unsigned long>::resize(&a1[4].__begin_, v12 + ((a1[4].__end_ - a1[4].__begin_) >> 3));
    v13 = a1[4].__end_ == a1[4].__begin_ ? 0 : a1[4].__begin_;
    if (v10 != v11)
    {
      v14 = &v13[2 * *(a1->__end_ - 1)];
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        begin = v18;
        *v14++ = v18;
        if (a1[7].__begin_ > v18)
        {
          begin = a1[7].__begin_;
        }

        a1[7].__begin_ = begin;
        --v16;
      }

      while (v16);
    }
  }

  v19 = v5 >> 2;
  std::vector<unsigned long>::resize(&a1[5].__begin_, v12 + ((a1[5].__end_ - a1[5].__begin_) >> 3));
  v20 = a1[5].__begin_;
  if (a1[5].__end_ == v20)
  {
    v20 = 0;
  }

  end = a1->__end_;
  if (v10 != v11)
  {
    v22 = &v20[2 * *(end - 1)];
    v23 = *(a2 + 48);
    v24 = v12;
    do
    {
      v26 = *v23++;
      v25 = v26;
      *v22++ = v26;
      if (a1[7].__end_ > v26)
      {
        v25 = a1[7].__end_;
      }

      a1[7].__end_ = v25;
      --v24;
    }

    while (v24);
  }

  if (*(a2 + 56))
  {
    std::vector<float>::resize(a1 + 6, v12 + a1[6].__end_ - a1[6].__begin_);
    v27 = a1[6].__begin_;
    v28 = a1[6].__end_ - v27;
    if (!v28)
    {
      v27 = 0;
    }

    memcpy(v27 + v28 + -4 * v12, *(a2 + 56), 4 * v12);
    end = a1->__end_;
  }

  v29 = *&a1->__begin_[2 * v19];
  std::vector<unsigned long>::resize(a1, *a2 + ((end - a1->__begin_) >> 3));
  if (a1->__end_ == a1->__begin_)
  {
    v30 = 0;
  }

  else
  {
    v30 = a1->__begin_;
  }

  if (*a2)
  {
    v31 = &v30[2 * v19];
    v32 = *(a2 + 8);
    v33 = 1;
    do
    {
      *&v31[2 * v33] = v32[v33] + v29 - *v32;
    }

    while (v33++ < *a2);
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned long long,float>::Save(void *a1, uint64_t a2)
{
  v5 = (a1[1] - *a1) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, *a1, a1[1] - *a1);
  }

  v5 = (a1[4] - a1[3]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[3], a1[4] - a1[3]);
  }

  v5 = (a1[7] - a1[6]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[6], a1[7] - a1[6]);
  }

  v5 = (a1[10] - a1[9]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[9], a1[10] - a1[9]);
  }

  v5 = (a1[13] - a1[12]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[12], a1[13] - a1[12]);
  }

  v5 = (a1[16] - a1[15]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[15], a1[16] - a1[15]);
  }

  v5 = (a1[19] - a1[18]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[18], a1[19] - a1[18]);
  }

  (*(*a2 + 8))(a2, a1 + 21, 8);
  return (*(*a2 + 8))(a2, a1 + 22, 8);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DF378;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274CFBB5C(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Destroy(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::mutex::lock((a1 + 56));
    atomic_store(2u, (a1 + 24));
    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    std::mutex::unlock((a1 + 56));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 376);
    do
    {
      v5 = *(*(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v5)
      {
        v6 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v5);
        MEMORY[0x277C69180](v6, 0x1090C40783A93ABLL);
        v4 = *(a1 + 376);
        v3 = *(a1 + 384);
      }

      --v3;
      *(a1 + 376) = ++v4;
      *(a1 + 384) = v3;
      if (v4 >= 0x400)
      {
        operator delete(**(a1 + 352));
        *(a1 + 352) += 8;
        v3 = *(a1 + 384);
        v4 = *(a1 + 376) - 512;
        *(a1 + 376) = v4;
      }
    }

    while (v3);
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    v8 = *(a1 + 328);
    do
    {
      v9 = *(*(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
      if (v9)
      {
        v10 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v9);
        MEMORY[0x277C69180](v10, 0x1090C40783A93ABLL);
        v8 = *(a1 + 328);
        v7 = *(a1 + 336);
      }

      --v7;
      *(a1 + 328) = ++v8;
      *(a1 + 336) = v7;
      if (v8 >= 0x400)
      {
        operator delete(**(a1 + 304));
        *(a1 + 304) += 8;
        v7 = *(a1 + 336);
        v8 = *(a1 + 328) - 512;
        *(a1 + 328) = v8;
      }
    }

    while (v7);
  }

  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    v13 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(result);
    result = MEMORY[0x277C69180](v13, 0x1090C40783A93ABLL);
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,float>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DF2F8;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,float>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274CFBE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned long long,float>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 2) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 3;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274CFC0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned long long,float>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF4E8;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned long long,float>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF4E8;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned long long,float>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void dmlc::data::DiskRowIter<unsigned int,int>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned int,int>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned int,int>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned int,int>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274CFC530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274CFC848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274CFC9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274CFC990);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274CFCEE4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274CFD0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274CFD5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned int,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,int> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274CFD568);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::operator()(uint64_t a1, std::vector<int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<int>::resize(v2 + 1, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 4 * v5) != 4 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(&v2[2], __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<float>::resize(&v2[4], __sz), __sz) && (**v3)(v3, v2[4].__begin_, 4 * v20) != 4 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<float>::resize(&v2[5], __sz), __sz) && (**v3)(v3, v2[5].__begin_, 4 * v25) != 4 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<int>::resize(v2 + 6, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 4 * v30) != 4 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 4))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, (&v2[7].__begin_ + 4), 4))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,int>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  return a1;
}

void sub_274CFE148(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF6B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,int>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,int> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned int,int>::Push<unsigned int>(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 3;
  v5 = a1[4] - a1[3];
  std::vector<int>::resize(a1 + 1, *a2 + (v5 >> 2));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 4 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(a1 + 6, a1[7], v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a1 + 9, a1[10], v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<float>::resize(a1 + 4, v12 + ((a1[13] - a1[12]) >> 2));
    v13 = a1[13] == a1[12] ? 0 : a1[12];
    if (v10 != v11)
    {
      v14 = (v13 + 4 * *(a1[1] - 8));
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        v17 = v18;
        *v14++ = v18;
        if (*(a1 + 42) > v18)
        {
          v17 = *(a1 + 42);
        }

        *(a1 + 42) = v17;
        --v16;
      }

      while (v16);
    }
  }

  v19 = v5 >> 2;
  std::vector<float>::resize(a1 + 5, v12 + ((a1[16] - a1[15]) >> 2));
  v20 = a1[15];
  if (a1[16] == v20)
  {
    v20 = 0;
  }

  v21 = a1[1];
  if (v10 != v11)
  {
    v22 = (v20 + 4 * *(v21 - 8));
    v23 = *(a2 + 48);
    v24 = v12;
    do
    {
      v26 = *v23++;
      v25 = v26;
      *v22++ = v26;
      if (*(a1 + 43) > v26)
      {
        v25 = *(a1 + 43);
      }

      *(a1 + 43) = v25;
      --v24;
    }

    while (v24);
  }

  if (*(a2 + 56))
  {
    std::vector<int>::resize(a1 + 6, v12 + ((a1[19] - a1[18]) >> 2));
    v27 = a1[18];
    v28 = a1[19] - v27;
    if (!v28)
    {
      v27 = 0;
    }

    memcpy((v27 + v28 - 4 * v12), *(a2 + 56), 4 * v12);
    v21 = a1[1];
  }

  v29 = *(*a1 + 8 * v19);
  std::vector<unsigned long>::resize(a1, *a2 + ((v21 - *a1) >> 3));
  if (a1[1] == *a1)
  {
    v30 = 0;
  }

  else
  {
    v30 = *a1;
  }

  if (*a2)
  {
    v31 = v30 + 8 * v19;
    v32 = *(a2 + 8);
    v33 = 1;
    do
    {
      *(v31 + 8 * v33) = v32[v33] + v29 - *v32;
    }

    while (v33++ < *a2);
  }
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DF5C0;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274CFE644(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Destroy(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::mutex::lock((a1 + 56));
    atomic_store(2u, (a1 + 24));
    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    std::mutex::unlock((a1 + 56));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 376);
    do
    {
      v5 = *(*(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v5)
      {
        v6 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v5);
        MEMORY[0x277C69180](v6, 0x1090C4087115870);
        v4 = *(a1 + 376);
        v3 = *(a1 + 384);
      }

      --v3;
      *(a1 + 376) = ++v4;
      *(a1 + 384) = v3;
      if (v4 >= 0x400)
      {
        operator delete(**(a1 + 352));
        *(a1 + 352) += 8;
        v3 = *(a1 + 384);
        v4 = *(a1 + 376) - 512;
        *(a1 + 376) = v4;
      }
    }

    while (v3);
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    v8 = *(a1 + 328);
    do
    {
      v9 = *(*(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
      if (v9)
      {
        v10 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v9);
        MEMORY[0x277C69180](v10, 0x1090C4087115870);
        v8 = *(a1 + 328);
        v7 = *(a1 + 336);
      }

      --v7;
      *(a1 + 328) = ++v8;
      *(a1 + 336) = v7;
      if (v8 >= 0x400)
      {
        operator delete(**(a1 + 304));
        *(a1 + 304) += 8;
        v7 = *(a1 + 336);
        v8 = *(a1 + 328) - 512;
        *(a1 + 328) = v8;
      }
    }

    while (v7);
  }

  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    v13 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(result);
    result = MEMORY[0x277C69180](v13, 0x1090C4087115870);
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t dmlc::data::DiskRowIter<unsigned int,int>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DF540;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274CFE908(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned int,int>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 2) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 2;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274CFEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned int,int>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF730;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned int,int>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF730;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned int,int>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void dmlc::data::DiskRowIter<unsigned long long,int>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned long long,int>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,int>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned long long,int>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274CFF018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274CFF330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274CFF4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274CFF478);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274CFF9CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274CFFBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274D000A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned long long,int> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,int> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274D00050);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF868;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::operator()(uint64_t a1, std::vector<int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<int>::resize(v2 + 1, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 4 * v5) != 4 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(&v2[2], __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<unsigned long>::resize(&v2[4].__begin_, __sz), __sz) && (**v3)(v3, v2[4].__begin_, 8 * v20) != 8 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<unsigned long>::resize(&v2[5].__begin_, __sz), __sz) && (**v3)(v3, v2[5].__begin_, 8 * v25) != 8 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<int>::resize(v2 + 6, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 4 * v30) != 4 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 8))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7].__end_, 8))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,int> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned long long,int>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_274D00C30(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DF8F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,int>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,int> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned long long,int>::Push<unsigned long long>(std::vector<int> *a1, uint64_t a2)
{
  v4 = &a1[1];
  v5 = a1[1].__end_ - a1[1].__begin_;
  std::vector<int>::resize(a1 + 1, *a2 + (v5 >> 2));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 4 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(&a1[2].__begin_, a1[2].__end_, v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a1[3].__begin_, a1[3].__end_, v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<unsigned long>::resize(&a1[4].__begin_, v12 + ((a1[4].__end_ - a1[4].__begin_) >> 3));
    v13 = a1[4].__end_ == a1[4].__begin_ ? 0 : a1[4].__begin_;
    if (v10 != v11)
    {
      v14 = &v13[2 * *(a1->__end_ - 1)];
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        begin = v18;
        *v14++ = v18;
        if (a1[7].__begin_ > v18)
        {
          begin = a1[7].__begin_;
        }

        a1[7].__begin_ = begin;
        --v16;
      }

      while (v16);
    }
  }

  v19 = v5 >> 2;
  std::vector<unsigned long>::resize(&a1[5].__begin_, v12 + ((a1[5].__end_ - a1[5].__begin_) >> 3));
  v20 = a1[5].__begin_;
  if (a1[5].__end_ == v20)
  {
    v20 = 0;
  }

  end = a1->__end_;
  if (v10 != v11)
  {
    v22 = &v20[2 * *(end - 1)];
    v23 = *(a2 + 48);
    v24 = v12;
    do
    {
      v26 = *v23++;
      v25 = v26;
      *v22++ = v26;
      if (a1[7].__end_ > v26)
      {
        v25 = a1[7].__end_;
      }

      a1[7].__end_ = v25;
      --v24;
    }

    while (v24);
  }

  if (*(a2 + 56))
  {
    std::vector<int>::resize(a1 + 6, v12 + a1[6].__end_ - a1[6].__begin_);
    v27 = a1[6].__begin_;
    v28 = a1[6].__end_ - v27;
    if (!v28)
    {
      v27 = 0;
    }

    memcpy(v27 + v28 + -4 * v12, *(a2 + 56), 4 * v12);
    end = a1->__end_;
  }

  v29 = *&a1->__begin_[2 * v19];
  std::vector<unsigned long>::resize(a1, *a2 + ((end - a1->__begin_) >> 3));
  if (a1->__end_ == a1->__begin_)
  {
    v30 = 0;
  }

  else
  {
    v30 = a1->__begin_;
  }

  if (*a2)
  {
    v31 = &v30[2 * v19];
    v32 = *(a2 + 8);
    v33 = 1;
    do
    {
      *&v31[2 * v33] = v32[v33] + v29 - *v32;
    }

    while (v33++ < *a2);
  }
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DF808;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274D0112C(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Destroy(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::mutex::lock((a1 + 56));
    atomic_store(2u, (a1 + 24));
    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    std::mutex::unlock((a1 + 56));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 376);
    do
    {
      v5 = *(*(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v5)
      {
        v6 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v5);
        MEMORY[0x277C69180](v6, 0x1090C40257C4FA6);
        v4 = *(a1 + 376);
        v3 = *(a1 + 384);
      }

      --v3;
      *(a1 + 376) = ++v4;
      *(a1 + 384) = v3;
      if (v4 >= 0x400)
      {
        operator delete(**(a1 + 352));
        *(a1 + 352) += 8;
        v3 = *(a1 + 384);
        v4 = *(a1 + 376) - 512;
        *(a1 + 376) = v4;
      }
    }

    while (v3);
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    v8 = *(a1 + 328);
    do
    {
      v9 = *(*(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
      if (v9)
      {
        v10 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v9);
        MEMORY[0x277C69180](v10, 0x1090C40257C4FA6);
        v8 = *(a1 + 328);
        v7 = *(a1 + 336);
      }

      --v7;
      *(a1 + 328) = ++v8;
      *(a1 + 336) = v7;
      if (v8 >= 0x400)
      {
        operator delete(**(a1 + 304));
        *(a1 + 304) += 8;
        v7 = *(a1 + 336);
        v8 = *(a1 + 328) - 512;
        *(a1 + 328) = v8;
      }
    }

    while (v7);
  }

  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  result = *(a1 + 288);
  if (result)
  {
    v13 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(result);
    result = MEMORY[0x277C69180](v13, 0x1090C40257C4FA6);
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,int>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DF788;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274D013F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned long long,int>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 2) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 3;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274D016B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned long long,int>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF978;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned long long,int>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DF978;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned long long,int>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void dmlc::data::DiskRowIter<unsigned int,long long>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned int,long long>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned int,long long>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned int,long long>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274D01B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D01E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274D01F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274D01F60);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274D024B4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274D026C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274D02B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned int,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,long long> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274D02B38);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DFAB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::operator()(uint64_t a1, std::vector<unsigned int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<unsigned long>::resize(&v2[1].__begin_, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 8 * v5) != 8 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(v2 + 2, __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<float>::resize(v2 + 4, __sz), __sz) && (**v3)(v3, v2[4].__begin_, 4 * v20) != 4 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<float>::resize(v2 + 5, __sz), __sz) && (**v3)(v3, v2[5].__begin_, 4 * v25) != 4 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<unsigned long>::resize(&v2[6].__begin_, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 8 * v30) != 8 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 4))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, (&v2[7].__begin_ + 4), 4))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned int,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,long long>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  return a1;
}

void sub_274D03718(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DFB40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned int,long long>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned int,long long> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned int,long long>::Push<unsigned int>(std::vector<unsigned int> *a1, uint64_t a2)
{
  v4 = &a1[1];
  v5 = a1[1].__end_ - a1[1].__begin_;
  std::vector<unsigned long>::resize(&a1[1].__begin_, *a2 + (v5 >> 3));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 8 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(&a1[2].__begin_, a1[2].__end_, v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a1[3].__begin_, a1[3].__end_, v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<float>::resize(a1 + 4, v12 + a1[4].__end_ - a1[4].__begin_);
    v13 = a1[4].__end_ == a1[4].__begin_ ? 0 : a1[4].__begin_;
    if (v10 != v11)
    {
      v14 = &v13[*(a1->__end_ - 1)];
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        begin = v18;
        *v14++ = v18;
        if (LODWORD(a1[7].__begin_) > v18)
        {
          begin = a1[7].__begin_;
        }

        LODWORD(a1[7].__begin_) = begin;
        --v16;
      }

      while (v16);
    }
  }

  std::vector<float>::resize(a1 + 5, v12 + a1[5].__end_ - a1[5].__begin_);
  v19 = a1[5].__begin_;
  if (a1[5].__end_ == v19)
  {
    v19 = 0;
  }

  end = a1->__end_;
  if (v10 != v11)
  {
    v21 = &v19[*(end - 1)];
    v22 = *(a2 + 48);
    v23 = v12;
    do
    {
      v25 = *v22++;
      begin_high = v25;
      *v21++ = v25;
      if (HIDWORD(a1[7].__begin_) > v25)
      {
        begin_high = HIDWORD(a1[7].__begin_);
      }

      HIDWORD(a1[7].__begin_) = begin_high;
      --v23;
    }

    while (v23);
  }

  if (*(a2 + 56))
  {
    std::vector<unsigned long>::resize(&a1[6].__begin_, v12 + ((a1[6].__end_ - a1[6].__begin_) >> 3));
    v26 = a1[6].__begin_;
    v27 = a1[6].__end_ - v26;
    if (!v27)
    {
      v26 = 0;
    }

    memcpy(v26 + v27 + -8 * v12, *(a2 + 56), 8 * v12);
    end = a1->__end_;
  }

  v28 = *(a1->__begin_ + v5);
  std::vector<unsigned long>::resize(a1, *a2 + ((end - a1->__begin_) >> 3));
  if (a1->__end_ == a1->__begin_)
  {
    v29 = 0;
  }

  else
  {
    v29 = a1->__begin_;
  }

  if (*a2)
  {
    v30 = v29 + v5;
    v31 = *(a2 + 8);
    v32 = 1;
    do
    {
      *(v30 + 8 * v32) = v31[v32] + v28 - *v31;
    }

    while (v32++ < *a2);
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned int,long long>::Save(void *a1, uint64_t a2)
{
  v5 = (a1[1] - *a1) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, *a1, a1[1] - *a1);
  }

  v5 = (a1[4] - a1[3]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[3], a1[4] - a1[3]);
  }

  v5 = (a1[7] - a1[6]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[6], a1[7] - a1[6]);
  }

  v5 = (a1[10] - a1[9]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[9], a1[10] - a1[9]);
  }

  v5 = (a1[13] - a1[12]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[12], a1[13] - a1[12]);
  }

  v5 = (a1[16] - a1[15]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[15], a1[16] - a1[15]);
  }

  v5 = (a1[19] - a1[18]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[18], a1[19] - a1[18]);
  }

  (*(*a2 + 8))(a2, a1 + 21, 4);
  return (*(*a2 + 8))(a2, a1 + 172, 4);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DFA50;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274D03FE4(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::data::DiskRowIter<unsigned int,long long>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DF9D0;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,int>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned int,long long>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274D040FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned int,long long>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 3) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 2;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274D043C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned int,long long>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DFBC0;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned int,long long>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DFBC0;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned int,long long>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void dmlc::data::DiskRowIter<unsigned long long,long long>::~DiskRowIter(uint64_t a1)
{
  dmlc::data::DiskRowIter<unsigned long long,long long>::~DiskRowIter(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,long long>::Next(_OWORD *a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Next((a1 + 7));
  v3 = v2;
  if (v2)
  {
    v4 = dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Value((a1 + 7));
    dmlc::data::RowBlockContainer<unsigned long long,long long>::GetBlock(v8, v4);
    v5 = v8[1];
    a1[3] = v8[0];
    a1[4] = v5;
    v6 = v8[3];
    a1[5] = v8[2];
    a1[6] = v6;
  }

  return v3;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274D0480C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit((a1 + 24), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v4 = dmlc::LogMessageFatal::GetEntry(&v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }

    v7 = *(a1 + 184);
    *(a1 + 184) = v7 + 1;
    v8 = *(a1 + 336);
    if (!v8)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v8 = *(a1 + 336);
        if (v8)
        {
          v7 = *(a1 + 184) - 1;
          goto LABEL_20;
        }
      }

      v8 = *(a1 + 336);
      --*(a1 + 184);
      if (v8)
      {
        goto LABEL_21;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v9 = dmlc::LogMessageFatal::GetEntry(&v15);
        dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v10 = dmlc::LogMessageFatal::GetEntry(&v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v15);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_20:
    *(a1 + 184) = v7;
LABEL_21:
    v12 = *(a1 + 304);
    v13 = *(a1 + 328);
    *(a1 + 288) = (*(v12 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)))[v13 & 0x1FF];
    *(a1 + 328) = ++v13;
    *(a1 + 336) = v8 - 1;
    if (v13 >= 0x400)
    {
      operator delete(*v12);
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v14 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_33:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v14)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(a1);
LABEL_30:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D04B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274D04C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274D04C6CLL);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    result[4] = v8 - 512;
    v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(result, &v14);
    v4 = v3[1];
    v7 = v3[5];
    v9 = v3[4] + v7;
  }

  *(*&v4[(v9 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void sub_274D051C0(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274D053D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274D05894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::data::RowBlockContainer<unsigned long long,long long> *,std::allocator<dmlc::data::RowBlockContainer<unsigned long long,long long> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274D05844);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::Init(std::function<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DFCF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::operator()(uint64_t a1, std::vector<unsigned int> ***a2)
{
  v2 = **a2;
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 8);
  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8)
  {
    return 0;
  }

  v4 = __sz;
  std::vector<unsigned long>::resize(v2, __sz);
  if (__sz)
  {
    if ((**v3)(v3, v2->__begin_, 8 * v4) != 8 * v4)
    {
      return 0;
    }
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v5 = __sz, std::vector<unsigned long>::resize(&v2[1].__begin_, __sz), __sz) && (**v3)(v3, v2[1].__begin_, 8 * v5) != 8 * v5)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 206);
    v7 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: fi->Read(&label)", 30);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v10 = __sz, std::vector<float>::resize(v2 + 2, __sz), __sz) && (**v3)(v3, v2[2].__begin_, 4 * v10) != 4 * v10)
  {
    v11 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 207);
    v12 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: fi->Read(&weight)", 31);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v15 = __sz, std::vector<unsigned long>::resize(&v2[3].__begin_, __sz), __sz) && (**v3)(v3, v2[3].__begin_, 8 * v15) != 8 * v15)
  {
    v16 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 208);
    v17 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi->Read(&qid)", 28);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v20 = __sz, std::vector<unsigned long>::resize(&v2[4].__begin_, __sz), __sz) && (**v3)(v3, v2[4].__begin_, 8 * v20) != 8 * v20)
  {
    v21 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 209);
    v22 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: fi->Read(&field)", 30);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v25 = __sz, std::vector<unsigned long>::resize(&v2[5].__begin_, __sz), __sz) && (**v3)(v3, v2[5].__begin_, 8 * v25) != 8 * v25)
  {
    v26 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 210);
    v27 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: fi->Read(&index)", 30);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  __sz = 0;
  if ((**v3)(v3, &__sz, 8) != 8 || (v30 = __sz, std::vector<unsigned long>::resize(&v2[6].__begin_, __sz), __sz) && (**v3)(v3, v2[6].__begin_, 8 * v30) != 8 * v30)
  {
    v31 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 211);
    v32 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: fi->Read(&value)", 30);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7], 8))
  {
    v35 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v35, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 212);
    v36 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: fi->Read(&max_field, sizeof(IndexType))", 53);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  if (!(**v3)(v3, &v2[7].__end_, 8))
  {
    v39 = dmlc::LogMessageFatal::GetEntry(&__sz);
    dmlc::LogMessageFatal::Entry::Init(v39, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 213);
    v40 = dmlc::LogMessageFatal::GetEntry(&__sz);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: fi->Read(&max_index, sizeof(IndexType))", 53);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Bad RowBlock format", 19);
    dmlc::LogMessageFatal::~LogMessageFatal(&__sz);
  }

  return 1;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(dmlc::data::RowBlockContainer<unsigned long long,long long> **)#1}>,BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned long long,long long>::RowBlockContainer(uint64_t a1)
{
  *(a1 + 160) = 0;
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
  v3 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1, &v3);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_274D06424(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    *(v1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 72);
  if (v6)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    *(v1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883DFD88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(void)#1},std::allocator<dmlc::data::DiskRowIter<unsigned long long,long long>::TryLoadCache(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::data::RowBlockContainer<unsigned long long,long long> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

void dmlc::data::RowBlockContainer<unsigned long long,long long>::Push<unsigned long long>(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 3;
  v5 = a1[4] - a1[3];
  std::vector<unsigned long>::resize(a1 + 3, *a2 + (v5 >> 3));
  if (v4[1] == *v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  memcpy((v6 + v5), *(a2 + 16), 8 * *a2);
  v7 = *(a2 + 24);
  if (v7)
  {
    std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(a1 + 6, a1[7], v7, &v7[4 * *a2], *a2);
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a1 + 9, a1[10], v8, &v8[8 * *a2], *a2);
  }

  v9 = *(a2 + 8);
  v10 = v9[*a2];
  v11 = *v9;
  v12 = v10 - *v9;
  if (*(a2 + 40))
  {
    std::vector<unsigned long>::resize(a1 + 12, v12 + ((a1[13] - a1[12]) >> 3));
    v13 = a1[13] == a1[12] ? 0 : a1[12];
    if (v10 != v11)
    {
      v14 = (v13 + 8 * *(a1[1] - 8));
      v15 = *(a2 + 40);
      v16 = v12;
      do
      {
        v18 = *v15++;
        v17 = v18;
        *v14++ = v18;
        if (a1[21] > v18)
        {
          v17 = a1[21];
        }

        a1[21] = v17;
        --v16;
      }

      while (v16);
    }
  }

  std::vector<unsigned long>::resize(a1 + 15, v12 + ((a1[16] - a1[15]) >> 3));
  v19 = a1[15];
  if (a1[16] == v19)
  {
    v19 = 0;
  }

  v20 = a1[1];
  if (v10 != v11)
  {
    v21 = (v19 + 8 * *(v20 - 8));
    v22 = *(a2 + 48);
    v23 = v12;
    do
    {
      v25 = *v22++;
      v24 = v25;
      *v21++ = v25;
      if (a1[22] > v25)
      {
        v24 = a1[22];
      }

      a1[22] = v24;
      --v23;
    }

    while (v23);
  }

  if (*(a2 + 56))
  {
    std::vector<unsigned long>::resize(a1 + 18, v12 + ((a1[19] - a1[18]) >> 3));
    v26 = a1[18];
    v27 = a1[19] - v26;
    if (!v27)
    {
      v26 = 0;
    }

    memcpy((v26 + v27 - 8 * v12), *(a2 + 56), 8 * v12);
    v20 = a1[1];
  }

  v28 = *(*a1 + v5);
  std::vector<unsigned long>::resize(a1, *a2 + ((v20 - *a1) >> 3));
  if (a1[1] == *a1)
  {
    v29 = 0;
  }

  else
  {
    v29 = *a1;
  }

  if (*a2)
  {
    v30 = v29 + v5;
    v31 = *(a2 + 8);
    v32 = 1;
    do
    {
      *(v30 + 8 * v32) = v31[v32] + v28 - *v31;
    }

    while (v32++ < *a2);
  }
}

uint64_t dmlc::data::RowBlockContainer<unsigned long long,long long>::Save(void *a1, uint64_t a2)
{
  v5 = (a1[1] - *a1) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, *a1, a1[1] - *a1);
  }

  v5 = (a1[4] - a1[3]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[3], a1[4] - a1[3]);
  }

  v5 = (a1[7] - a1[6]) >> 2;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[6], a1[7] - a1[6]);
  }

  v5 = (a1[10] - a1[9]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[9], a1[10] - a1[9]);
  }

  v5 = (a1[13] - a1[12]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[12], a1[13] - a1[12]);
  }

  v5 = (a1[16] - a1[15]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[15], a1[16] - a1[15]);
  }

  v5 = (a1[19] - a1[18]) >> 3;
  (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    (*(*a2 + 8))(a2, a1[18], a1[19] - a1[18]);
  }

  (*(*a2 + 8))(a2, a1 + 21, 8);
  return (*(*a2 + 8))(a2, a1 + 22, 8);
}

uint64_t dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883DFC98;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274D06CF0(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::data::DiskRowIter<unsigned long long,long long>::~DiskRowIter(uint64_t a1)
{
  *a1 = &unk_2883DFC18;
  v2 = a1 + 112;
  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,int>>::Destroy(a1 + 112);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::data::RowBlockContainer<unsigned long long,long long>>::~ThreadedIter(v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_274D06E08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::RowBlockContainer<unsigned long long,long long>::GetBlock(void *a1, uint64_t *a2)
{
  v4 = a2[4] - a2[3];
  if (v4)
  {
    v24 = (a2[1] - *a2) >> 3;
    v25 = (v4 >> 3) + 1;
    if (v25 != v24)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
    }
  }

  v5 = a2[1];
  v25 = (a2[16] - a2[15]) >> 3;
  v7 = *(v5 - 8);
  v6 = (v5 - 8);
  if (v7 != v25)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v6, &v25);
  }

  v8 = a2[1];
  v10 = a2[18];
  v9 = a2[19];
  if (v9 != v10 && *(v8 - 8) != (v9 - v10) >> 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./row_block.h", 177);
    v12 = dmlc::LogMessageFatal::GetEntry(&v26);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: offset.back() == value.size() || value.size() == 0", 64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
    v8 = a2[1];
    v10 = a2[18];
    v9 = a2[19];
  }

  v14 = *a2;
  v16 = v8 - *a2;
  v15 = v16 == 0;
  v17 = v16 >> 3;
  if (v15)
  {
    v14 = 0;
  }

  *a1 = v17 - 1;
  a1[1] = v14;
  if (a2[4] == a2[3])
  {
    v18 = 0;
  }

  else
  {
    v18 = a2[3];
  }

  if (a2[7] == a2[6])
  {
    v19 = 0;
  }

  else
  {
    v19 = a2[6];
  }

  a1[2] = v18;
  a1[3] = v19;
  if (a2[10] == a2[9])
  {
    v20 = 0;
  }

  else
  {
    v20 = a2[9];
  }

  if (a2[13] == a2[12])
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[12];
  }

  a1[4] = v20;
  a1[5] = v21;
  if (a2[16] == a2[15])
  {
    v22 = 0;
  }

  else
  {
    v22 = a2[15];
  }

  if (v9 == v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  a1[6] = v22;
  a1[7] = v23;
}

void sub_274D070CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void *dmlc::data::BasicRowIter<unsigned long long,long long>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DFE08;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));
  return a1;
}

void dmlc::data::BasicRowIter<unsigned long long,long long>::~BasicRowIter(void *a1)
{
  *a1 = &unk_2883DFE08;
  dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer((a1 + 10));

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::data::BasicRowIter<unsigned long long,long long>::Next(uint64_t a1)
{
  result = *(a1 + 8);
  if (result == 1)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

void std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<dmlc::ParamFieldInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<dmlc::ParamFieldInfo>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      v4 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 12;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883DFF10;
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 136));
  std::exception_ptr::~exception_ptr((a1 + 128));
  *a1 = &unk_2883DFF60;
  v4 = (a1 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D073EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 136));
  std::exception_ptr::~exception_ptr((v10 + 128));
  *v10 = &unk_2883DFF60;
  a10 = (v10 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::LibSVMParser<unsigned int,float>::~LibSVMParser(uint64_t a1)
{
  *a1 = &unk_2883DFE60;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);
}

void dmlc::data::LibSVMParser<unsigned int,float>::~LibSVMParser(uint64_t a1)
{
  *a1 = &unk_2883DFE60;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned int,float>::Next(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 12); ; *(a1 + 12) = i)
  {
    v4 = v2 <= i ? i : v2;
    v5 = v2 - 1;
    v6 = (176 * v2) | 8;
    while (v5 - v4 != -1)
    {
      *(a1 + 8) = v5 + 2;
      v7 = *(a1 + 16);
      v8 = *(v7 + v6) - *(v7 + v6 - 8);
      ++v5;
      v6 += 176;
      if (v8 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned int,float>::GetBlock(v12, (v7 + v6 - 184));
        v9 = v12[1];
        *(a1 + 40) = v12[0];
        *(a1 + 56) = v9;
        v10 = v12[3];
        *(a1 + 72) = v12[2];
        *(a1 + 88) = v10;
        v4 = v5;
        return v4 < i;
      }
    }

    if (!(*(*a1 + 48))(a1, a1 + 16))
    {
      break;
    }

    v2 = 0;
    i = -1171354717 * ((*(a1 + 24) - *(a1 + 16)) >> 4);
    *(a1 + 8) = 0;
  }

  return v4 < i;
}

uint64_t dmlc::data::TextParserBase<unsigned int,float>::ParseNext(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 120) + 32))(*(a1 + 120), &v19);
  if (!v4)
  {
    return v4;
  }

  v5 = *(a1 + 104);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 4);
  v10 = v5 - v9;
  if (v5 > v9)
  {
    v11 = a2[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v11 - v7) >> 4) < v10)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v12 = 0x2E8BA2E8BA2E8BA3 * ((v11 - v6) >> 4);
        v13 = 2 * v12;
        if (2 * v12 <= v5)
        {
          v13 = v5;
        }

        if (v12 >= 0xBA2E8BA2E8BA2ELL)
        {
          v14 = 0x1745D1745D1745DLL;
        }

        else
        {
          v14 = v13;
        }

        v21[4] = a2;
        if (v14 <= 0x1745D1745D1745DLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v7 + 176 * v10;
    v16 = 176 * v5 - 16 * (v8 >> 4);
    do
    {
      dmlc::data::RowBlockContainer<unsigned int,float>::RowBlockContainer(v7);
      v7 += 176;
      v16 -= 176;
    }

    while (v16);
    goto LABEL_18;
  }

  if (v5 < v9)
  {
    v15 = v6 + 176 * v5;
    while (v7 != v15)
    {
      v7 -= 176;
      dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v7);
    }

LABEL_18:
    a2[1] = v15;
  }

  v17 = v20;
  *(a1 + 112) += v20;
  LODWORD(v22) = 0;
  if (!v17)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v20, &v22);
  }

  memset(v21, 0, 24);
  if (v5 >= 1)
  {
    operator new();
  }

  dmlc::OMPException::Rethrow((a1 + 128));
  *(a1 + 8) = 0;
  v22 = v21;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v4;
}

void sub_274D07B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::LibSVMParser<unsigned int,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  v79 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v79);
  v8 = *(a4 + 24);
  *(a4 + 32) = v8;
  *(a4 + 104) = *(a4 + 96);
  *(a4 + 128) = *(a4 + 120);
  *(a4 + 152) = *(a4 + 144);
  *(a4 + 56) = *(a4 + 48);
  *(a4 + 80) = *(a4 + 72);
  *(a4 + 168) = 0;
  if (a2 == a3)
  {
    v68 = 0;
    v69 = v8;
  }

  else
  {
    v76 = a1;
    v9 = -1;
    do
    {
      v10 = a2;
      v11 = a2 + 1;
      while (v11 != a3)
      {
        v13 = *v11++;
        v12 = v13;
        v14 = v13 == 13 || v12 == 10;
        if (v14)
        {
          v15 = v11 - 2;
          a2 = v11 - 1;
          goto LABEL_12;
        }
      }

      v15 = a3 - 1;
      a2 = a3;
LABEL_12:
      v78 = 0;
      while (1)
      {
        v16 = *v10;
        if (v16 != 9 && v16 != 32)
        {
          break;
        }

        v14 = v10++ == v15;
        if (v14)
        {
          v10 = a2;
          goto LABEL_20;
        }
      }

      if (v16 == 35)
      {
        v10 = a2;
      }

LABEL_20:
      if (v10 != a2)
      {
        v17 = v10;
        while (1)
        {
          v18 = *v17;
          if ((v18 - 48) < 0xA)
          {
            break;
          }

          v19 = v18 - 43;
          v20 = v19 > 0x3A;
          v21 = (1 << v19) & 0x40000000400000DLL;
          if (!v20 && v21 != 0)
          {
            break;
          }

          v14 = v17++ == v15;
          if (v14)
          {
            goto LABEL_30;
          }
        }

        if (v17 == a2)
        {
          HIDWORD(v78) = dmlc::ParseFloat<float,false>(a2, 0);
LABEL_50:
          v28 = a2;
        }

        else
        {
          v23 = v17;
          while (1)
          {
            v24 = *v23;
            if ((v24 - 48) >= 0xA)
            {
              v25 = v24 - 43;
              v20 = v25 > 0x3A;
              v26 = (1 << v25) & 0x40000000400000DLL;
              if (v20 || v26 == 0)
              {
                break;
              }
            }

            v14 = v23++ == v15;
            if (v14)
            {
              v23 = a2;
              break;
            }
          }

          HIDWORD(v78) = dmlc::ParseFloat<float,false>(v17, 0);
          v28 = a2;
          if (v23 != a2)
          {
            v29 = v23 + 1;
            while (1)
            {
              v30 = *v23;
              if (v30 != 9 && v30 != 32)
              {
                break;
              }

              ++v29;
              v14 = v23++ == v15;
              if (v14)
              {
                goto LABEL_50;
              }
            }

            if (v30 == 58)
            {
              while (1)
              {
                if (v29 - 1 == v15)
                {
                  v23 = a2;
                  goto LABEL_138;
                }

                v60 = *v29;
                if ((v60 - 48) < 0xA)
                {
                  break;
                }

                ++v23;
                ++v29;
                v61 = v60 - 43;
                v20 = v61 > 0x3A;
                v62 = (1 << v61) & 0x40000000400000DLL;
                if (!v20 && v62 != 0)
                {
                  goto LABEL_138;
                }
              }

              v23 = v29;
LABEL_138:
              v28 = v23;
              if (v23 != a2)
              {
                v28 = v23;
                while (1)
                {
                  v64 = *v28;
                  if ((v64 - 48) >= 0xA)
                  {
                    v65 = v64 - 43;
                    v20 = v65 > 0x3A;
                    v66 = (1 << v65) & 0x40000000400000DLL;
                    if (v20 || v66 == 0)
                    {
                      break;
                    }
                  }

                  v14 = v28++ == v15;
                  if (v14)
                  {
                    v28 = a2;
                    break;
                  }
                }
              }

              LODWORD(v78) = dmlc::ParseFloat<float,false>(v23, 0);
              std::vector<float>::push_back[abi:ne200100]((a4 + 48), &v78);
            }

            else
            {
              v28 = v23;
            }
          }
        }

        if (*(a4 + 32) != *(a4 + 24))
        {
          v79 = (*(a4 + 128) - *(a4 + 120)) >> 2;
          std::vector<unsigned long>::push_back[abi:ne200100](a4, &v79);
        }

        std::vector<float>::push_back[abi:ne200100]((a4 + 24), &v78 + 1);
        v79 = 0;
        if (v28 != a3)
        {
          while (*v28 == 32)
          {
            if (++v28 == a3)
            {
              v28 = a3;
              break;
            }
          }
        }

        if (v28 != a2 && !strncmp(v28, "qid:", 4uLL))
        {
          v31 = v28 + 4;
          v79 = atoll(v28 + 4);
          if (v28 + 4 != a2)
          {
            while (1)
            {
              v32 = *v31;
              if ((v32 - 48) >= 0xA)
              {
                v33 = v32 - 43;
                v20 = v33 > 0x3A;
                v34 = (1 << v33) & 0x40000000400000DLL;
                if (v20 || v34 == 0)
                {
                  break;
                }
              }

              v14 = v31++ == v15;
              if (v14)
              {
                v31 = (v15 + 1);
                break;
              }
            }
          }

          std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 72), &v79);
          v28 = v31;
        }

        while (v28 != a2)
        {
          v77 = 0;
          v36 = v28 - 1;
          while (1)
          {
            v37 = v36[1];
            if (v37 != 9 && v37 != 32)
            {
              break;
            }

            ++v28;
            if (++v36 == v15)
            {
              v38 = a2;
              goto LABEL_78;
            }
          }

          v38 = v37 == 35 ? a2 : v28;
LABEL_78:
          if (v38 == a2)
          {
            break;
          }

          v39 = v38;
          while (1)
          {
            v40 = *v39;
            if ((v40 - 48) < 0xA)
            {
              break;
            }

            v41 = v40 - 43;
            v20 = v41 > 0x3A;
            v42 = (1 << v41) & 0x40000000400000DLL;
            if (!v20 && v42 != 0)
            {
              break;
            }

            v14 = v39++ == v15;
            if (v14)
            {
              goto LABEL_30;
            }
          }

          v28 = v39;
          if (v39 != a2)
          {
            v28 = v39;
            while (1)
            {
              v44 = *v28;
              if ((v44 - 48) >= 0xA)
              {
                v45 = v44 - 43;
                v20 = v45 > 0x3A;
                v46 = (1 << v45) & 0x40000000400000DLL;
                if (v20 || v46 == 0)
                {
                  break;
                }
              }

              v14 = v28++ == v15;
              if (v14)
              {
                v28 = a2;
                break;
              }
            }
          }

          HIDWORD(v77) = dmlc::ParseUnsignedInt<unsigned int>(v39);
          if (v28 == a2)
          {
            goto LABEL_124;
          }

          v48 = v28 + 1;
          while (1)
          {
            v49 = *v28;
            if (v49 != 9 && v49 != 32)
            {
              break;
            }

            ++v48;
            v14 = v28++ == v15;
            if (v14)
            {
              v50 = 0;
              v28 = a2;
              goto LABEL_125;
            }
          }

          if (v49 != 58)
          {
LABEL_124:
            v50 = 0;
          }

          else
          {
            while (1)
            {
              if (v48 - 1 == v15)
              {
                v28 = a2;
                goto LABEL_113;
              }

              v51 = *v48;
              if ((v51 - 48) < 0xA)
              {
                break;
              }

              ++v28;
              ++v48;
              v52 = v51 - 43;
              v20 = v52 > 0x3A;
              v53 = (1 << v52) & 0x40000000400000DLL;
              if (!v20 && v53 != 0)
              {
                goto LABEL_113;
              }
            }

            v28 = v48;
LABEL_113:
            v55 = v28;
            if (v28 != a2)
            {
              v55 = v28;
              while (1)
              {
                v56 = *v55;
                if ((v56 - 48) >= 0xA)
                {
                  v57 = v56 - 43;
                  v20 = v57 > 0x3A;
                  v58 = (1 << v57) & 0x40000000400000DLL;
                  if (v20 || v58 == 0)
                  {
                    break;
                  }
                }

                v14 = v55++ == v15;
                if (v14)
                {
                  v55 = a2;
                  break;
                }
              }
            }

            LODWORD(v77) = dmlc::ParseFloat<float,false>(v28, 0);
            v50 = 1;
            v28 = v55;
          }

LABEL_125:
          std::vector<unsigned int>::push_back[abi:ne200100]((a4 + 120), &v77 + 1);
          if (v9 >= HIDWORD(v77))
          {
            v9 = HIDWORD(v77);
          }

          if (v50)
          {
            std::vector<float>::push_back[abi:ne200100]((a4 + 144), &v77);
          }
        }
      }

LABEL_30:
      ;
    }

    while (a2 != a3);
    v8 = *(a4 + 32);
    v68 = v9 == 0;
    if (v8 == *(a4 + 24))
    {
      v69 = *(a4 + 32);
    }

    else
    {
      v79 = (*(a4 + 128) - *(a4 + 120)) >> 2;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v79);
      v8 = *(a4 + 24);
      v69 = *(a4 + 32);
    }

    a1 = v76;
  }

  if (((v69 - v8) >> 2) + 1 != (*(a4 + 8) - *a4) >> 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v79);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./libsvm_parser.h", 157);
    v71 = dmlc::LogMessageFatal::GetEntry(&v79);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v79);
  }

  v73 = *(a1 + 224);
  if (v73 >= 1)
  {
    v74 = *(a4 + 120);
    v75 = *(a4 + 128);
LABEL_165:
    while (v74 != v75)
    {
      --*v74++;
    }

    return;
  }

  if (v73 < 0)
  {
    v74 = *(a4 + 120);
    v75 = *(a4 + 128);
    if (v74 != v75 && !v68)
    {
      goto LABEL_165;
    }
  }
}

void sub_274D0834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v4 - 176);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}