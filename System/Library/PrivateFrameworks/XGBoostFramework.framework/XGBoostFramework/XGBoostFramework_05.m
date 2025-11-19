uint64_t std::vector<std::thread>::push_back[abi:ne200100](uint64_t result, std::__libcpp_thread_t *a2)
{
  v2 = result;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (v4 >= v3)
  {
    v6 = *result;
    v7 = v4 - *v2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    v18[4] = v2;
    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = v7;
    v12 = (8 * v7);
    v13 = &v12[-v11];
    v12->__t_ = *a2;
    v5 = v12 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v14 = v6;
      p_t = &v13->__t_;
      do
      {
        *p_t++ = v14->__t_;
        v14->__t_ = 0;
        ++v14;
      }

      while (v14 != v4);
      do
      {
        std::thread::~thread(v6);
        v6 = v16 + 1;
      }

      while (v6 != v4);
      v6 = *v2;
    }

    *v2 = v13;
    v2[1] = v5;
    v17 = v2[2];
    v2[2] = 0;
    v18[2] = v6;
    v18[3] = v17;
    v18[0] = v6;
    v18[1] = v6;
    result = std::__split_buffer<std::thread>::~__split_buffer(v18);
  }

  else
  {
    v4->__t_ = *a2;
    *a2 = 0;
    v5 = v4 + 1;
  }

  v2[1] = v5;
  return result;
}

uint64_t std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(i - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::thread>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 176 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1070C400BD5E6E0);
  }

  return a1;
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

float dmlc::ParseFloat<float,false>(unsigned __int8 *a1, unsigned __int8 **a2)
{
  while (1)
  {
    v2 = *a1;
    if (v2 > 0x2D)
    {
      break;
    }

    if (((1 << v2) & 0x100003600) == 0)
    {
      if (v2 == 43)
      {
        ++a1;
      }

      else if (v2 == 45)
      {
        v3 = 0;
        ++a1;
        goto LABEL_9;
      }

      break;
    }

    ++a1;
  }

  v3 = 1;
LABEL_9:
  v4 = 0;
  v5 = a1 + 8;
  while ((a1[v4] | 0x20) == aInfinity[v4])
  {
    if (++v4 == 8)
    {
      goto LABEL_15;
    }
  }

  v5 = &a1[v4];
  if (v4 == 8 || v4 == 3)
  {
LABEL_15:
    if (a2)
    {
      *a2 = v5;
    }

    result = -INFINITY;
    if (v3)
    {
      return INFINITY;
    }

    return result;
  }

  v7 = 0;
  v8 = a1 + 3;
  while ((a1[v7] | 0x20) == aNan[v7])
  {
    if (++v7 == 3)
    {
      if (*v8 == 40)
      {
        for (i = (a1 + 4); ; ++i)
        {
          v10 = *i;
          if ((v10 - 48) >= 0xA && v10 != 95 && (v10 & 0xFFFFFFDF) - 65 > 0x19)
          {
            break;
          }
        }

        v33 = 41;
        if (v10 != 41)
        {
          dmlc::LogCheckFormat<char,char>(i, &v33);
        }

        v8 = (i + 1);
      }

      if (a2)
      {
        *a2 = v8;
      }

      return NAN;
    }
  }

  v12 = *a1;
  result = 0.0;
  if (v12 - 48 <= 9)
  {
    v13 = 0;
    do
    {
      v13 = 10 * v13 + v12 - 48;
      v14 = *++a1;
      v12 = v14;
    }

    while (v14 - 48 < 0xA);
    result = v13;
  }

  if (v12 == 46)
  {
    v15 = *++a1;
    v12 = v15;
    v16 = 0.0;
    if (v15 - 48 <= 9)
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = 10 * v18 + v12 - 48;
        if (v17 < 0x13)
        {
          v19 *= 10;
          v18 = v20;
        }

        ++v17;
        v21 = *++a1;
        v12 = v21;
      }

      while (v21 - 48 < 0xA);
      v16 = v18 / v19;
    }

    result = result + v16;
  }

  if ((v12 | 0x20) != 0x65)
  {
    v23 = a1;
    goto LABEL_77;
  }

  v22 = a1[1];
  v23 = a1 + 2;
  v24 = v22 == 45 || v22 == 43;
  v25 = 1;
  if (v24)
  {
    v25 = 2;
  }

  else
  {
    v23 = a1 + 1;
  }

  v12 = a1[v25];
  v26 = 1.0;
  if (v12 - 48 <= 9)
  {
    v27 = 0;
    do
    {
      v27 = v12 + 10 * v27 - 48;
      v28 = *++v23;
      v12 = v28;
    }

    while (v28 - 48 < 0xA);
    if (v27 >= 0x26)
    {
      v29 = 38;
    }

    else
    {
      v29 = v27;
    }

    if (v27 < 0x26)
    {
      v26 = 1.0;
      if (v27 < 8)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v30 = 3.4028;
      v31 = result > 3.4028;
      if (v22 == 45)
      {
        v31 = result < 1.1755;
        v30 = 1.1755;
      }

      if (v31)
      {
        result = v30;
      }
    }

    v26 = 1.0;
    do
    {
      v26 = v26 * 100000000.0;
      v29 -= 8;
    }

    while (v29 > 7);
LABEL_72:
    while (v29)
    {
      v26 = v26 * 10.0;
      --v29;
    }
  }

  if (v22 == 45)
  {
    result = result / v26;
  }

  else
  {
    result = result * v26;
  }

LABEL_77:
  if ((v12 | 0x20) == 0x66)
  {
    v32 = v23 + 1;
  }

  else
  {
    v32 = v23;
  }

  if (a2)
  {
    *a2 = v32;
  }

  if (!v3)
  {
    return -result;
  }

  return result;
}

void sub_274D08C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::ParseUnsignedInt<unsigned int>(unsigned __int8 *a1)
{
  while (1)
  {
    v2 = *a1;
    if (v2 > 0x20 || ((1 << v2) & 0x100003600) == 0)
    {
      break;
    }

    ++a1;
  }

  v9 = 1;
  if (v2 == 43)
  {
    ++a1;
  }

  else if (v2 == 45)
  {
    v9 = 0;
    v8 = 1;
    dmlc::LogCheckFormat<BOOL,BOOL>(&v9, &v8);
  }

  v4 = *a1;
  if ((v4 - 48) > 9)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v6 = a1 + 1;
  do
  {
    result = (v4 + 10 * result - 48);
    v7 = *v6++;
    v4 = v7;
  }

  while ((v7 - 48) < 0xA);
  return result;
}

void sub_274D08E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::LogCheckFormat<BOOL,BOOL>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68DF0](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68DF0](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274D08FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_2883DFFA8;
  v3 = (a1 + 112);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = &unk_2883E0008;
  *(a1 + 144) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 850045863;
  v4 = (a1 + 232);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1018212795;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 1018212795;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 160) = xmmword_274E207C0;
  *(a1 + 176) = 0u;
  v6[0] = &unk_2883E0068;
  v6[1] = a2;
  v6[3] = v6;
  v5[0] = &unk_2883E00F8;
  v5[1] = a2;
  v5[3] = v5;
  atomic_store(0, (a1 + 136));
  atomic_store(0, (a1 + 140));
  atomic_store(0, (a1 + 152));
  std::mutex::lock((a1 + 232));
  v7.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 504), &v7);
  std::exception_ptr::~exception_ptr(&v7);
  std::mutex::unlock(v4);
  v7.__ptr_ = v3;
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::__value_func[abi:ne200100](&v8, v6);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, v5);
  operator new();
}

void sub_274D09318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, void *a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v22, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v23 + 40);
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::~__value_func[abi:ne200100](v23 + 8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a14);
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::~__value_func[abi:ne200100](&a20);
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::~ThreadedIter(v21);
  *v20 = &unk_2883DFF60;
  a11 = v20 + 2;
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void dmlc::data::ThreadedParser<unsigned int,float>::~ThreadedParser(uint64_t a1)
{
  dmlc::data::ThreadedParser<unsigned int,float>::~ThreadedParser(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ThreadedParser<unsigned int,float>::Next(uint64_t a1)
{
  v2 = (a1 + 512);
  v3 = *(a1 + 8);
  for (i = *(a1 + 12); ; *(a1 + 12) = i)
  {
    v5 = v3 <= i ? i : v3;
    v6 = v3 - 1;
    v7 = (176 * v3) | 8;
    while (v6 - v5 != -1)
    {
      *(a1 + 8) = v6 + 2;
      v8 = **(a1 + 512);
      v9 = *(v8 + v7) - *(v8 + v7 - 8);
      ++v6;
      v7 += 176;
      if (v9 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned int,float>::GetBlock(v15, (v8 + v7 - 184));
        v12 = v15[1];
        *(a1 + 40) = v15[0];
        *(a1 + 56) = v12;
        v13 = v15[3];
        *(a1 + 72) = v15[2];
        *(a1 + 88) = v13;
        v5 = v6;
        return v5 < i;
      }
    }

    if (*v2)
    {
      dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1 + 112);
      std::mutex::lock((a1 + 168));
      std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back((a1 + 456), v2);
      *(a1 + 512) = 0;
      if (*(a1 + 300))
      {
        explicit = atomic_load_explicit((a1 + 152), memory_order_acquire);
        std::mutex::unlock((a1 + 168));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((a1 + 304));
        }
      }

      else
      {
        std::mutex::unlock((a1 + 168));
      }

      dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1 + 112);
    }

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Next(a1 + 112, v2);
    if (!v11)
    {
      break;
    }

    v3 = 0;
    i = -1171354717 * ((*(*(a1 + 512) + 8) - **(a1 + 512)) >> 4);
    *(a1 + 8) = 0;
  }

  return v5 < i;
}

uint64_t dmlc::data::ThreadedParser<unsigned int,float>::ParseNext()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/parser.h", 116);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "cannot call ParseNext", 21);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274D09908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
  }

  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Next(a1, (a1 + 288));
}

uint64_t dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Value(uint64_t a1)
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

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(uint64_t a1)
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

void sub_274D09B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
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
    JUMPOUT(0x274D09AF0);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back(void *result, void *a2)
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

void sub_274D0A044(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Next(uint64_t a1, void *a2)
{
  v2 = (a1 + 24);
  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit(v2, memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v16);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v6 = dmlc::LogMessageFatal::GetEntry(&v16);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v16);
    }

    v9 = *(a1 + 184);
    *(a1 + 184) = v9 + 1;
    v10 = *(a1 + 336);
    if (!v10)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v10 = *(a1 + 336);
        if (v10)
        {
          v9 = *(a1 + 184) - 1;
          goto LABEL_14;
        }
      }

      v10 = *(a1 + 336);
      --*(a1 + 184);
      if (v10)
      {
        goto LABEL_15;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v11 = dmlc::LogMessageFatal::GetEntry(&v16);
        dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v12 = dmlc::LogMessageFatal::GetEntry(&v16);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v16);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_14:
    *(a1 + 184) = v9;
LABEL_15:
    v14 = *(a1 + 328);
    *a2 = *(*(*(a1 + 304) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
    *(a1 + 328) = v14 + 1;
    *(a1 + 336) = v10 - 1;
    if (v14 + 1 >= 0x400)
    {
      operator delete(**(a1 + 304));
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v15 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v15 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_27:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v15)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::ThrowExceptionIfSet(a1);
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D0A2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
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
          std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
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
        std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back(v17, &v21);
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
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274D0A724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
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
      std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
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
    JUMPOUT(0x274D0A6D4);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E0068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::operator()(uint64_t a1, void **a2)
{
  if (!**a2)
  {
    operator new();
  }

  v2 = *(**(a1 + 8) + 48);

  return v2();
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(void)#1},std::allocator<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E00F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(void)#1},std::allocator<dmlc::data::ThreadedParser<unsigned int,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned int,float> *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883E0008;
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Destroy(a1);
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

void sub_274D0ACF0(_Unwind_Exception *a1)
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

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Destroy(uint64_t a1)
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
      v5 = *(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8));
      v6 = *(v5 + 8 * (v4 & 0x1FF));
      if (v6)
      {
        v13 = *(v5 + 8 * (v4 & 0x1FF));
        std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
        MEMORY[0x277C69180](v6, 0x20C40960023A9);
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
      v9 = *(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
      v10 = *(v9 + 8 * (v8 & 0x1FF));
      if (v10)
      {
        v13 = *(v9 + 8 * (v8 & 0x1FF));
        std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
        MEMORY[0x277C69180](v10, 0x20C40960023A9);
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

  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *(a1 + 288);
    std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
    MEMORY[0x277C69180](v12, 0x20C40960023A9);
    *(a1 + 288) = 0;
  }
}

uint64_t dmlc::data::ThreadedParser<unsigned int,float>::~ThreadedParser(uint64_t a1)
{
  *a1 = &unk_2883DFFA8;
  v2 = a1 + 112;
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::Destroy(a1 + 112);
  v3 = *(a1 + 104);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 512);
  if (v4)
  {
    v6 = *(a1 + 512);
    std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x277C69180](v4, 0x20C40960023A9);
  }

  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>>::~ThreadedIter(v2);
  *a1 = &unk_2883DFF60;
  v6 = (a1 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return a1;
}

void sub_274D0B038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2883DFF60;
  a10 = (v10 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883E0228;
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 144));
  std::exception_ptr::~exception_ptr((a1 + 136));
  *a1 = &unk_2883E0278;
  v4 = (a1 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D0B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 144));
  std::exception_ptr::~exception_ptr((v10 + 136));
  *v10 = &unk_2883E0278;
  a10 = (v10 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::LibSVMParser<unsigned long long,float>::~LibSVMParser(uint64_t a1)
{
  *a1 = &unk_2883E0178;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);
}

void dmlc::data::LibSVMParser<unsigned long long,float>::~LibSVMParser(uint64_t a1)
{
  *a1 = &unk_2883E0178;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned long long,float>::Next(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v4 = v2 <= i ? i : v2;
    v5 = v2 + 1;
    v6 = 184 * v2 + 8;
    while (v5 - v4 != 1)
    {
      *(a1 + 8) = v5;
      v7 = *(a1 + 24);
      v8 = *(v7 + v6) - *(v7 + v6 - 8);
      ++v5;
      v6 += 184;
      if (v8 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned long long,float>::GetBlock(v12, (v7 + v6 - 192));
        v9 = v12[1];
        *(a1 + 48) = v12[0];
        *(a1 + 64) = v9;
        v10 = v12[3];
        *(a1 + 80) = v12[2];
        *(a1 + 96) = v10;
        v4 = v5 - 2;
        return v4 < i;
      }
    }

    if (!(*(*a1 + 48))(a1, a1 + 24))
    {
      break;
    }

    v2 = 0;
    i = 0xD37A6F4DE9BD37A7 * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    *(a1 + 8) = 0;
  }

  return v4 < i;
}

uint64_t dmlc::data::TextParserBase<unsigned long long,float>::ParseNext(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 128) + 32))(*(a1 + 128), &v19);
  if (!v4)
  {
    return v4;
  }

  v5 = *(a1 + 112);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
  v10 = v5 - v9;
  if (v5 > v9)
  {
    v11 = a2[2];
    if (0xD37A6F4DE9BD37A7 * ((v11 - v7) >> 3) < v10)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v12 = 0xD37A6F4DE9BD37A7 * ((v11 - v6) >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v5)
        {
          v13 = v5;
        }

        if (v12 >= 0xB21642C8590B21)
        {
          v14 = 0x1642C8590B21642;
        }

        else
        {
          v14 = v13;
        }

        v21[4] = a2;
        if (v14 <= 0x1642C8590B21642)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v7 + 184 * v10;
    v16 = 184 * v5 - 8 * (v8 >> 3);
    do
    {
      dmlc::data::RowBlockContainer<unsigned long long,float>::RowBlockContainer(v7);
      v7 += 184;
      v16 -= 184;
    }

    while (v16);
    goto LABEL_18;
  }

  if (v5 < v9)
  {
    v15 = v6 + 184 * v5;
    while (v7 != v15)
    {
      v7 -= 184;
      dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v7);
    }

LABEL_18:
    a2[1] = v15;
  }

  v17 = v20;
  *(a1 + 120) += v20;
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

  dmlc::OMPException::Rethrow((a1 + 136));
  *(a1 + 8) = 0;
  v22 = v21;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v4;
}

void sub_274D0B8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::LibSVMParser<unsigned long long,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  v80 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v80);
  v8 = *(a4 + 24);
  *(a4 + 32) = v8;
  *(a4 + 104) = *(a4 + 96);
  *(a4 + 128) = *(a4 + 120);
  *(a4 + 152) = *(a4 + 144);
  *(a4 + 56) = *(a4 + 48);
  *(a4 + 80) = *(a4 + 72);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
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
      v79 = 0;
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
          HIDWORD(v79) = dmlc::ParseFloat<float,false>(a2, 0);
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

          HIDWORD(v79) = dmlc::ParseFloat<float,false>(v17, 0);
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
                  goto LABEL_76;
                }

                v36 = *v29;
                if ((v36 - 48) < 0xA)
                {
                  break;
                }

                ++v23;
                ++v29;
                v37 = v36 - 43;
                v20 = v37 > 0x3A;
                v38 = (1 << v37) & 0x40000000400000DLL;
                if (!v20 && v38 != 0)
                {
                  goto LABEL_76;
                }
              }

              v23 = v29;
LABEL_76:
              v28 = v23;
              if (v23 != a2)
              {
                v28 = v23;
                while (1)
                {
                  v40 = *v28;
                  if ((v40 - 48) >= 0xA)
                  {
                    v41 = v40 - 43;
                    v20 = v41 > 0x3A;
                    v42 = (1 << v41) & 0x40000000400000DLL;
                    if (v20 || v42 == 0)
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

              LODWORD(v79) = dmlc::ParseFloat<float,false>(v23, 0);
              std::vector<float>::push_back[abi:ne200100]((a4 + 48), &v79);
            }

            else
            {
              v28 = v23;
            }
          }
        }

        if (*(a4 + 32) != *(a4 + 24))
        {
          v80 = (*(a4 + 128) - *(a4 + 120)) >> 3;
          std::vector<unsigned long>::push_back[abi:ne200100](a4, &v80);
        }

        std::vector<float>::push_back[abi:ne200100]((a4 + 24), &v79 + 1);
        v80 = 0;
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

        if (v28 == a2 || strncmp(v28, "qid:", 4uLL))
        {
          goto LABEL_90;
        }

        v31 = (v28 + 4);
        v80 = atoll(v28 + 4);
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
              v31 = v15 + 1;
              break;
            }
          }
        }

        std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 72), &v80);
LABEL_150:
        v28 = v31;
LABEL_90:
        while (v28 != a2)
        {
          v78 = 0;
          v77 = 0.0;
          v44 = v28 - 1;
          while (1)
          {
            v45 = v44[1];
            if (v45 != 9 && v45 != 32)
            {
              break;
            }

            ++v28;
            if (++v44 == v15)
            {
              v46 = a2;
              goto LABEL_99;
            }
          }

          v46 = v45 == 35 ? a2 : v28;
LABEL_99:
          if (v46 == a2)
          {
            break;
          }

          v47 = v46;
          while (1)
          {
            v48 = *v47;
            if ((v48 - 48) < 0xA)
            {
              break;
            }

            v49 = v48 - 43;
            v20 = v49 > 0x3A;
            v50 = (1 << v49) & 0x40000000400000DLL;
            if (!v20 && v50 != 0)
            {
              break;
            }

            v14 = v47++ == v15;
            if (v14)
            {
              goto LABEL_30;
            }
          }

          v28 = v47;
          if (v47 != a2)
          {
            v28 = v47;
            while (1)
            {
              v52 = *v28;
              if ((v52 - 48) >= 0xA)
              {
                v53 = v52 - 43;
                v20 = v53 > 0x3A;
                v54 = (1 << v53) & 0x40000000400000DLL;
                if (v20 || v54 == 0)
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

          v56 = dmlc::ParseUnsignedInt<unsigned long long>(v47);
          v78 = v56;
          if (v28 != a2)
          {
            v57 = v28 + 1;
            while (1)
            {
              v58 = *v28;
              if (v58 != 9 && v58 != 32)
              {
                break;
              }

              ++v57;
              v14 = v28++ == v15;
              if (v14)
              {
                v28 = a2;
                goto LABEL_128;
              }
            }

            if (v58 == 58)
            {
              while (1)
              {
                if (v57 - 1 == v15)
                {
                  v28 = a2;
                  goto LABEL_137;
                }

                v59 = *v57;
                if ((v59 - 48) < 0xA)
                {
                  break;
                }

                ++v28;
                ++v57;
                v60 = v59 - 43;
                v20 = v60 > 0x3A;
                v61 = (1 << v60) & 0x40000000400000DLL;
                if (!v20 && v61 != 0)
                {
                  goto LABEL_137;
                }
              }

              v28 = v57;
LABEL_137:
              v31 = v28;
              if (v28 != a2)
              {
                v31 = v28;
                while (1)
                {
                  v63 = *v31;
                  if ((v63 - 48) >= 0xA)
                  {
                    v64 = v63 - 43;
                    v20 = v64 > 0x3A;
                    v65 = (1 << v64) & 0x40000000400000DLL;
                    if (v20 || v65 == 0)
                    {
                      break;
                    }
                  }

                  v14 = v31++ == v15;
                  if (v14)
                  {
                    v31 = a2;
                    break;
                  }
                }
              }

              v77 = dmlc::ParseFloat<float,false>(v28, 0);
              v67 = v78;
              std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 120), &v78);
              if (v9 >= v67)
              {
                v9 = v67;
              }

              std::vector<float>::push_back[abi:ne200100]((a4 + 144), &v77);
              goto LABEL_150;
            }
          }

LABEL_128:
          std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 120), &v78);
          if (v9 >= v56)
          {
            v9 = v56;
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
      v80 = (*(a4 + 128) - *(a4 + 120)) >> 3;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v80);
      v8 = *(a4 + 24);
      v69 = *(a4 + 32);
    }

    a1 = v76;
  }

  if (((v69 - v8) >> 2) + 1 != (*(a4 + 8) - *a4) >> 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v80);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/./libsvm_parser.h", 157);
    v71 = dmlc::LogMessageFatal::GetEntry(&v80);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v80);
  }

  v73 = *(a1 + 232);
  if (v73 >= 1)
  {
    v74 = *(a4 + 120);
    v75 = *(a4 + 128);
LABEL_166:
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
      goto LABEL_166;
    }
  }
}

void sub_274D0C09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v4 - 184);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<dmlc::data::RowBlockContainer<unsigned long long,float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(i - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned long long,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 184 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

uint64_t dmlc::ParseUnsignedInt<unsigned long long>(unsigned __int8 *a1)
{
  while (1)
  {
    v2 = *a1;
    if (v2 > 0x20 || ((1 << v2) & 0x100003600) == 0)
    {
      break;
    }

    ++a1;
  }

  v9 = 1;
  if (v2 == 43)
  {
    ++a1;
  }

  else if (v2 == 45)
  {
    v9 = 0;
    v8 = 1;
    dmlc::LogCheckFormat<BOOL,BOOL>(&v9, &v8);
  }

  v4 = *a1;
  if (v4 - 48 > 9)
  {
    return 0;
  }

  result = 0;
  v6 = a1 + 1;
  do
  {
    result = 10 * result + v4 - 48;
    v7 = *v6++;
    v4 = v7;
  }

  while (v7 - 48 < 0xA);
  return result;
}

void sub_274D0C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_2883E02C0;
  v3 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = &unk_2883E0320;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 850045863;
  v4 = (a1 + 240);
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1018212795;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 1018212795;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 168) = xmmword_274E207C0;
  v6[0] = &unk_2883E0380;
  v6[1] = a2;
  v6[3] = v6;
  v5[0] = &unk_2883E0410;
  v5[1] = a2;
  v5[3] = v5;
  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 148));
  atomic_store(0, (a1 + 160));
  std::mutex::lock((a1 + 240));
  v7.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 512), &v7);
  std::exception_ptr::~exception_ptr(&v7);
  std::mutex::unlock(v4);
  v7.__ptr_ = v3;
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::__value_func[abi:ne200100](&v8, v6);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, v5);
  operator new();
}

void sub_274D0C7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, void *a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v22, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v23 + 40);
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::~__value_func[abi:ne200100](v23 + 8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a14);
  std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::~__value_func[abi:ne200100](&a20);
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::~ThreadedIter(v21);
  *v20 = &unk_2883E0278;
  a11 = v20 + 3;
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void dmlc::data::ThreadedParser<unsigned long long,float>::~ThreadedParser(uint64_t a1)
{
  dmlc::data::ThreadedParser<unsigned long long,float>::~ThreadedParser(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ThreadedParser<unsigned long long,float>::Next(uint64_t a1)
{
  v2 = (a1 + 520);
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v5 = v3 <= i ? i : v3;
    v6 = v3 + 1;
    v7 = 184 * v3 + 8;
    while (v6 - v5 != 1)
    {
      *(a1 + 8) = v6;
      v8 = **(a1 + 520);
      v9 = *(v8 + v7) - *(v8 + v7 - 8);
      ++v6;
      v7 += 184;
      if (v9 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned long long,float>::GetBlock(v15, (v8 + v7 - 192));
        v12 = v15[1];
        *(a1 + 48) = v15[0];
        *(a1 + 64) = v12;
        v13 = v15[3];
        *(a1 + 80) = v15[2];
        *(a1 + 96) = v13;
        v5 = v6 - 2;
        return v5 < i;
      }
    }

    if (*v2)
    {
      dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1 + 120);
      std::mutex::lock((a1 + 176));
      std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back((a1 + 464), v2);
      *(a1 + 520) = 0;
      if (*(a1 + 308))
      {
        explicit = atomic_load_explicit((a1 + 160), memory_order_acquire);
        std::mutex::unlock((a1 + 176));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((a1 + 312));
        }
      }

      else
      {
        std::mutex::unlock((a1 + 176));
      }

      dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1 + 120);
    }

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Next(a1 + 120, v2);
    if (!v11)
    {
      break;
    }

    v3 = 0;
    i = 0xD37A6F4DE9BD37A7 * ((*(*(a1 + 520) + 8) - **(a1 + 520)) >> 3);
    *(a1 + 8) = 0;
  }

  return v5 < i;
}

uint64_t dmlc::data::ThreadedParser<unsigned long long,float>::ParseNext()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/parser.h", 116);
  v1 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "cannot call ParseNext", 21);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
  return 0;
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274D0CDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
  }

  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Next(a1, (a1 + 288));
}

uint64_t dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Value(uint64_t a1)
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

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(uint64_t a1)
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

void sub_274D0CFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
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
    JUMPOUT(0x274D0CFBCLL);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back(void *result, void *a2)
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

void sub_274D0D510(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Next(uint64_t a1, void *a2)
{
  v2 = (a1 + 24);
  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit(v2, memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v16);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v6 = dmlc::LogMessageFatal::GetEntry(&v16);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v16);
    }

    v9 = *(a1 + 184);
    *(a1 + 184) = v9 + 1;
    v10 = *(a1 + 336);
    if (!v10)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v10 = *(a1 + 336);
        if (v10)
        {
          v9 = *(a1 + 184) - 1;
          goto LABEL_14;
        }
      }

      v10 = *(a1 + 336);
      --*(a1 + 184);
      if (v10)
      {
        goto LABEL_15;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v11 = dmlc::LogMessageFatal::GetEntry(&v16);
        dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v12 = dmlc::LogMessageFatal::GetEntry(&v16);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v16);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_14:
    *(a1 + 184) = v9;
LABEL_15:
    v14 = *(a1 + 328);
    *a2 = *(*(*(a1 + 304) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
    *(a1 + 328) = v14 + 1;
    *(a1 + 336) = v10 - 1;
    if (v14 + 1 >= 0x400)
    {
      operator delete(**(a1 + 304));
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v15 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v15 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_27:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v15)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::ThrowExceptionIfSet(a1);
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274D0D7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
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
          std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
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
        std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back(v17, &v21);
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
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274D0DBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
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
      std::deque<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *,std::allocator<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> *>>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
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
    JUMPOUT(0x274D0DBA0);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Init(std::function<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E0380;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::operator()(uint64_t a1, void **a2)
{
  if (!**a2)
  {
    operator new();
  }

  v2 = *(**(a1 + 8) + 48);

  return v2();
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1},std::allocator<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)#1}>,BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(void)#1},std::allocator<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E0410;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(void)#1},std::allocator<dmlc::data::ThreadedParser<unsigned long long,float>::ThreadedParser(dmlc::data::ParserImpl<unsigned long long,float> *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883E0320;
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Destroy(a1);
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

void sub_274D0E1BC(_Unwind_Exception *a1)
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

void dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Destroy(uint64_t a1)
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
      v5 = *(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8));
      v6 = *(v5 + 8 * (v4 & 0x1FF));
      if (v6)
      {
        v13 = *(v5 + 8 * (v4 & 0x1FF));
        std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
        MEMORY[0x277C69180](v6, 0x20C40960023A9);
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
      v9 = *(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
      v10 = *(v9 + 8 * (v8 & 0x1FF));
      if (v10)
      {
        v13 = *(v9 + 8 * (v8 & 0x1FF));
        std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
        MEMORY[0x277C69180](v10, 0x20C40960023A9);
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

  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *(a1 + 288);
    std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v13);
    MEMORY[0x277C69180](v12, 0x20C40960023A9);
    *(a1 + 288) = 0;
  }
}

uint64_t dmlc::data::ThreadedParser<unsigned long long,float>::~ThreadedParser(uint64_t a1)
{
  *a1 = &unk_2883E02C0;
  v2 = a1 + 120;
  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::Destroy(a1 + 120);
  v3 = *(a1 + 112);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 520);
  if (v4)
  {
    v6 = *(a1 + 520);
    std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x277C69180](v4, 0x20C40960023A9);
  }

  dmlc::ThreadedIter<std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>>::~ThreadedIter(v2);
  *a1 = &unk_2883E0278;
  v6 = (a1 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return a1;
}

void sub_274D0E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2883E0278;
  a10 = (v10 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::LibFMParser<unsigned int,float>::~LibFMParser(uint64_t a1)
{
  *a1 = &unk_2883E0490;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);
}

void dmlc::data::LibFMParser<unsigned int,float>::~LibFMParser(uint64_t a1)
{
  *a1 = &unk_2883E0490;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::data::LibFMParser<unsigned int,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  v88 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v88);
  *(a4 + 32) = *(a4 + 24);
  *(a4 + 104) = *(a4 + 96);
  v8 = *(a4 + 120);
  *(a4 + 128) = v8;
  *(a4 + 152) = *(a4 + 144);
  *(a4 + 56) = *(a4 + 48);
  *(a4 + 80) = *(a4 + 72);
  *(a4 + 168) = 0;
  if (a2 == a3)
  {
    v72 = 0;
    v71 = 0;
    v70 = v8;
  }

  else
  {
    v84 = a1;
    v85 = -1;
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
      v87 = 0;
      while (1)
      {
        v16 = *v10;
        if ((v16 - 48) < 0xA)
        {
          break;
        }

        v17 = v16 - 43;
        v18 = v17 > 0x3A;
        v19 = (1 << v17) & 0x40000000400000DLL;
        if (!v18 && v19 != 0)
        {
          break;
        }

        v14 = v10++ == v15;
        if (v14)
        {
          goto LABEL_120;
        }
      }

      if (v10 == a2)
      {
        HIDWORD(v87) = dmlc::ParseFloat<float,false>(a2, 0);
LABEL_40:
        v26 = a2;
      }

      else
      {
        v21 = v10;
        while (1)
        {
          v22 = *v21;
          if ((v22 - 48) >= 0xA)
          {
            v23 = v22 - 43;
            v18 = v23 > 0x3A;
            v24 = (1 << v23) & 0x40000000400000DLL;
            if (v18 || v24 == 0)
            {
              break;
            }
          }

          v14 = v21++ == v15;
          if (v14)
          {
            v21 = a2;
            break;
          }
        }

        HIDWORD(v87) = dmlc::ParseFloat<float,false>(v10, 0);
        v26 = a2;
        if (v21 != a2)
        {
          v27 = v21 + 1;
          while (1)
          {
            v28 = *v21;
            if (v28 != 9 && v28 != 32)
            {
              break;
            }

            ++v27;
            v14 = v21++ == v15;
            if (v14)
            {
              goto LABEL_40;
            }
          }

          if (v28 == 58)
          {
            while (1)
            {
              if (v27 - 1 == v15)
              {
                v21 = a2;
                goto LABEL_129;
              }

              v62 = *v27;
              if ((v62 - 48) < 0xA)
              {
                break;
              }

              ++v21;
              ++v27;
              v63 = v62 - 43;
              v18 = v63 > 0x3A;
              v64 = (1 << v63) & 0x40000000400000DLL;
              if (!v18 && v64 != 0)
              {
                goto LABEL_129;
              }
            }

            v21 = v27;
LABEL_129:
            v26 = v21;
            if (v21 != a2)
            {
              v26 = v21;
              while (1)
              {
                v66 = *v26;
                if ((v66 - 48) >= 0xA)
                {
                  v67 = v66 - 43;
                  v18 = v67 > 0x3A;
                  v68 = (1 << v67) & 0x40000000400000DLL;
                  if (v18 || v68 == 0)
                  {
                    break;
                  }
                }

                v14 = v26++ == v15;
                if (v14)
                {
                  v26 = a2;
                  break;
                }
              }
            }

            LODWORD(v87) = dmlc::ParseFloat<float,false>(v21, 0);
            std::vector<float>::push_back[abi:ne200100]((a4 + 48), &v87);
          }

          else
          {
            v26 = v21;
          }
        }
      }

      if (*(a4 + 32) != *(a4 + 24))
      {
        v88 = (*(a4 + 128) - *(a4 + 120)) >> 2;
        std::vector<unsigned long>::push_back[abi:ne200100](a4, &v88);
      }

      std::vector<float>::push_back[abi:ne200100]((a4 + 24), &v87 + 1);
      if (v26 != a2)
      {
LABEL_44:
        LODWORD(v88) = 0;
        v86 = 0;
        while (v26 != a2)
        {
          v29 = *v26;
          if ((v29 - 48) < 0xA || ((v30 = v29 - 43, v18 = v30 > 0x3A, v31 = (1 << v30) & 0x40000000400000DLL, !v18) ? (v32 = v31 == 0) : (v32 = 1), !v32))
          {
            v33 = v26;
            if (v26 != a2)
            {
              v33 = v26;
              while (1)
              {
                v34 = *v33;
                if ((v34 - 48) >= 0xA)
                {
                  v35 = v34 - 43;
                  v18 = v35 > 0x3A;
                  v36 = (1 << v35) & 0x40000000400000DLL;
                  if (v18 || v36 == 0)
                  {
                    break;
                  }
                }

                if (++v33 == a2)
                {
                  v33 = a2;
                  break;
                }
              }
            }

            LODWORD(v88) = dmlc::ParseUnsignedInt<unsigned int>(v26);
            if (v33 != a2)
            {
              v38 = v33 + 1;
              while (1)
              {
                v39 = *v33;
                if (v39 != 9 && v39 != 32)
                {
                  break;
                }

                ++v33;
                ++v38;
                if (v33 == a2)
                {
                  v33 = a2;
                  goto LABEL_114;
                }
              }

              if (v39 == 58)
              {
                v40 = v33;
                while (1)
                {
                  if (v38 == a2)
                  {
                    v40 = a2;
                    goto LABEL_76;
                  }

                  v41 = *v38;
                  if ((v41 - 48) < 0xA)
                  {
                    break;
                  }

                  ++v40;
                  ++v38;
                  v42 = v41 - 43;
                  v18 = v42 > 0x3A;
                  v43 = (1 << v42) & 0x40000000400000DLL;
                  if (!v18 && v43 != 0)
                  {
                    goto LABEL_76;
                  }
                }

                v40 = v38;
LABEL_76:
                v33 = v40;
                if (v40 != a2)
                {
                  while (1)
                  {
                    v45 = *v33;
                    if ((v45 - 48) >= 0xA)
                    {
                      v46 = v45 - 43;
                      v18 = v46 > 0x3A;
                      v47 = (1 << v46) & 0x40000000400000DLL;
                      if (v18 || v47 == 0)
                      {
                        break;
                      }
                    }

                    if (++v33 == a2)
                    {
                      v33 = a2;
                      break;
                    }
                  }
                }

                HIDWORD(v86) = dmlc::ParseUnsignedInt<unsigned int>(v40);
                if (v33 == a2)
                {
                  goto LABEL_107;
                }

                v49 = v33 + 1;
                while (1)
                {
                  v50 = *v33;
                  if (v50 != 9 && v50 != 32)
                  {
                    break;
                  }

                  ++v33;
                  ++v49;
                  if (v33 == a2)
                  {
                    v51 = 0;
                    v33 = a2;
                    goto LABEL_108;
                  }
                }

                if (v50 != 58)
                {
LABEL_107:
                  v51 = 0;
                }

                else
                {
                  while (1)
                  {
                    if (v49 == a2)
                    {
                      v33 = a2;
                      goto LABEL_97;
                    }

                    v52 = *v49;
                    if ((v52 - 48) < 0xA)
                    {
                      break;
                    }

                    ++v33;
                    ++v49;
                    v53 = v52 - 43;
                    v18 = v53 > 0x3A;
                    v54 = (1 << v53) & 0x40000000400000DLL;
                    if (!v18 && v54 != 0)
                    {
                      goto LABEL_97;
                    }
                  }

                  v33 = v49;
LABEL_97:
                  v56 = v33;
                  if (v33 != a2)
                  {
                    v56 = v33;
                    while (1)
                    {
                      v57 = *v56;
                      if ((v57 - 48) >= 0xA)
                      {
                        v58 = v57 - 43;
                        v18 = v58 > 0x3A;
                        v59 = (1 << v58) & 0x40000000400000DLL;
                        if (v18 || v59 == 0)
                        {
                          break;
                        }
                      }

                      if (++v56 == a2)
                      {
                        v56 = a2;
                        break;
                      }
                    }
                  }

                  LODWORD(v86) = dmlc::ParseFloat<float,false>(v33, 0);
                  v51 = 1;
                  v33 = v56;
                }

LABEL_108:
                std::vector<unsigned int>::push_back[abi:ne200100]((a4 + 96), &v88);
                std::vector<unsigned int>::push_back[abi:ne200100]((a4 + 120), &v86 + 1);
                v61 = v85;
                if (v85 >= v88)
                {
                  v61 = v88;
                }

                v85 = v61;
                if (v9 >= HIDWORD(v86))
                {
                  v9 = HIDWORD(v86);
                }

                if (v51)
                {
                  std::vector<float>::push_back[abi:ne200100]((a4 + 144), &v86);
                }
              }
            }

LABEL_114:
            v26 = v33;
            if (v33 != a2)
            {
              goto LABEL_44;
            }

            break;
          }

          ++v26;
        }
      }

LABEL_120:
      ;
    }

    while (a2 != a3);
    v8 = *(a4 + 120);
    v70 = *(a4 + 128);
    v71 = v9 == 0;
    v72 = v85 == 0;
    if (*(a4 + 32) != *(a4 + 24))
    {
      v88 = (v70 - v8) >> 2;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v88);
      v8 = *(a4 + 120);
      v70 = *(a4 + 128);
    }

    a1 = v84;
  }

  if (*(a4 + 104) - *(a4 + 96) != v70 - v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v88);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/libfm_parser.h", 127);
    v74 = dmlc::LogMessageFatal::GetEntry(&v88);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Check failed: out->field.size() == out->index.size()", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v88);
  }

  if (((*(a4 + 32) - *(a4 + 24)) >> 2) + 1 != (*(a4 + 8) - *a4) >> 3)
  {
    v76 = dmlc::LogMessageFatal::GetEntry(&v88);
    dmlc::LogMessageFatal::Entry::Init(v76, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/libfm_parser.h", 128);
    v77 = dmlc::LogMessageFatal::GetEntry(&v88);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v88);
  }

  v79 = *(a1 + 224);
  if (v79 < 1)
  {
    if ((v79 & 0x80000000) == 0)
    {
      return;
    }

    v80 = *(a4 + 120);
    v81 = *(a4 + 128);
    if (v80 == v81 || v71 || *(a4 + 96) == *(a4 + 104) || v72)
    {
      return;
    }
  }

  else
  {
    v80 = *(a4 + 120);
    v81 = *(a4 + 128);
  }

  while (v80 != v81)
  {
    --*v80++;
  }

  v82 = *(a4 + 96);
  v83 = *(a4 + 104);
  while (v82 != v83)
  {
    --*v82++;
  }
}

void sub_274D0EDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<std::string,char [6]>(uint64_t a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " (", 2);
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

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " vs. ", 5);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "libfm", 5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
  operator new();
}

void sub_274D0EF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::LibFMParser<unsigned long long,float>::~LibFMParser(uint64_t a1)
{
  *a1 = &unk_2883E04F8;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);
}

void dmlc::data::LibFMParser<unsigned long long,float>::~LibFMParser(uint64_t a1)
{
  *a1 = &unk_2883E04F8;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::data::LibFMParser<unsigned long long,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a4 + 8) = *a4;
  v95 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v95);
  v8 = (a4 + 24);
  *(a4 + 32) = *(a4 + 24);
  *(a4 + 104) = *(a4 + 96);
  v9 = *(a4 + 120);
  *(a4 + 128) = v9;
  *(a4 + 152) = *(a4 + 144);
  *(a4 + 56) = *(a4 + 48);
  *(a4 + 80) = *(a4 + 72);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  if (a2 == a3)
  {
    v76 = 0;
    v75 = 0;
    v74 = v9;
  }

  else
  {
    v88 = a1;
    v89 = -1;
    v90 = -1;
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
      v94 = 0.0;
      v93 = 0.0;
      while (1)
      {
        v16 = *v10;
        if ((v16 - 48) < 0xA)
        {
          break;
        }

        v17 = v16 - 43;
        v18 = v17 > 0x3A;
        v19 = (1 << v17) & 0x40000000400000DLL;
        if (!v18 && v19 != 0)
        {
          break;
        }

        v14 = v10++ == v15;
        if (v14)
        {
          goto LABEL_121;
        }
      }

      if (v10 == a2)
      {
        v94 = dmlc::ParseFloat<float,false>(a2, 0);
LABEL_40:
        v26 = a2;
      }

      else
      {
        v21 = v10;
        while (1)
        {
          v22 = *v21;
          if ((v22 - 48) >= 0xA)
          {
            v23 = v22 - 43;
            v18 = v23 > 0x3A;
            v24 = (1 << v23) & 0x40000000400000DLL;
            if (v18 || v24 == 0)
            {
              break;
            }
          }

          v14 = v21++ == v15;
          if (v14)
          {
            v21 = a2;
            break;
          }
        }

        v94 = dmlc::ParseFloat<float,false>(v10, 0);
        v26 = a2;
        if (v21 != a2)
        {
          v27 = v21 + 1;
          while (1)
          {
            v28 = *v21;
            if (v28 != 9 && v28 != 32)
            {
              break;
            }

            ++v27;
            v14 = v21++ == v15;
            if (v14)
            {
              goto LABEL_40;
            }
          }

          if (v28 == 58)
          {
            while (1)
            {
              if (v27 - 1 == v15)
              {
                v21 = a2;
                goto LABEL_130;
              }

              v66 = *v27;
              if ((v66 - 48) < 0xA)
              {
                break;
              }

              ++v21;
              ++v27;
              v67 = v66 - 43;
              v18 = v67 > 0x3A;
              v68 = (1 << v67) & 0x40000000400000DLL;
              if (!v18 && v68 != 0)
              {
                goto LABEL_130;
              }
            }

            v21 = v27;
LABEL_130:
            v26 = v21;
            if (v21 != a2)
            {
              v26 = v21;
              while (1)
              {
                v70 = *v26;
                if ((v70 - 48) >= 0xA)
                {
                  v71 = v70 - 43;
                  v18 = v71 > 0x3A;
                  v72 = (1 << v71) & 0x40000000400000DLL;
                  if (v18 || v72 == 0)
                  {
                    break;
                  }
                }

                v14 = v26++ == v15;
                if (v14)
                {
                  v26 = a2;
                  break;
                }
              }
            }

            v93 = dmlc::ParseFloat<float,false>(v21, 0);
            std::vector<float>::push_back[abi:ne200100]((a4 + 48), &v93);
          }

          else
          {
            v26 = v21;
          }
        }
      }

      if (*(a4 + 32) != *(a4 + 24))
      {
        v95 = (*(a4 + 128) - *(a4 + 120)) >> 3;
        std::vector<unsigned long>::push_back[abi:ne200100](a4, &v95);
      }

      std::vector<float>::push_back[abi:ne200100](v8, &v94);
      if (v26 != a2)
      {
LABEL_44:
        v95 = 0;
        v92 = 0;
        v91 = 0.0;
        while (v26 != a2)
        {
          v29 = *v26;
          if ((v29 - 48) < 0xA || ((v30 = v29 - 43, v18 = v30 > 0x3A, v31 = (1 << v30) & 0x40000000400000DLL, !v18) ? (v32 = v31 == 0) : (v32 = 1), !v32))
          {
            v33 = v26;
            if (v26 != a2)
            {
              v33 = v26;
              while (1)
              {
                v34 = *v33;
                if ((v34 - 48) >= 0xA)
                {
                  v35 = v34 - 43;
                  v18 = v35 > 0x3A;
                  v36 = (1 << v35) & 0x40000000400000DLL;
                  if (v18 || v36 == 0)
                  {
                    break;
                  }
                }

                if (++v33 == a2)
                {
                  v33 = a2;
                  break;
                }
              }
            }

            v38 = dmlc::ParseUnsignedInt<unsigned long long>(v26);
            v95 = v38;
            if (v33 != a2)
            {
              v39 = v38;
              v40 = v33 + 1;
              while (1)
              {
                v41 = *v33;
                if (v41 != 9 && v41 != 32)
                {
                  break;
                }

                ++v33;
                ++v40;
                if (v33 == a2)
                {
                  v33 = a2;
                  goto LABEL_115;
                }
              }

              if (v41 == 58)
              {
                v42 = v33;
                while (1)
                {
                  if (v40 == a2)
                  {
                    v42 = a2;
                    goto LABEL_76;
                  }

                  v43 = *v40;
                  if ((v43 - 48) < 0xA)
                  {
                    break;
                  }

                  ++v42;
                  ++v40;
                  v44 = v43 - 43;
                  v18 = v44 > 0x3A;
                  v45 = (1 << v44) & 0x40000000400000DLL;
                  if (!v18 && v45 != 0)
                  {
                    goto LABEL_76;
                  }
                }

                v42 = v40;
LABEL_76:
                v33 = v42;
                if (v42 != a2)
                {
                  while (1)
                  {
                    v47 = *v33;
                    if ((v47 - 48) >= 0xA)
                    {
                      v48 = v47 - 43;
                      v18 = v48 > 0x3A;
                      v49 = (1 << v48) & 0x40000000400000DLL;
                      if (v18 || v49 == 0)
                      {
                        break;
                      }
                    }

                    if (++v33 == a2)
                    {
                      v33 = a2;
                      break;
                    }
                  }
                }

                v51 = dmlc::ParseUnsignedInt<unsigned long long>(v42);
                v92 = v51;
                if (v33 == a2)
                {
                  goto LABEL_107;
                }

                v52 = v33 + 1;
                while (1)
                {
                  v53 = *v33;
                  if (v53 != 9 && v53 != 32)
                  {
                    break;
                  }

                  ++v33;
                  ++v52;
                  if (v33 == a2)
                  {
                    v54 = 0;
                    v33 = a2;
                    goto LABEL_108;
                  }
                }

                if (v53 != 58)
                {
LABEL_107:
                  v54 = 0;
                }

                else
                {
                  while (1)
                  {
                    if (v52 == a2)
                    {
                      v33 = a2;
                      goto LABEL_97;
                    }

                    v55 = *v52;
                    if ((v55 - 48) < 0xA)
                    {
                      break;
                    }

                    ++v33;
                    ++v52;
                    v56 = v55 - 43;
                    v18 = v56 > 0x3A;
                    v57 = (1 << v56) & 0x40000000400000DLL;
                    if (!v18 && v57 != 0)
                    {
                      goto LABEL_97;
                    }
                  }

                  v33 = v52;
LABEL_97:
                  v59 = v33;
                  if (v33 != a2)
                  {
                    v59 = v33;
                    while (1)
                    {
                      v60 = *v59;
                      if ((v60 - 48) >= 0xA)
                      {
                        v61 = v60 - 43;
                        v18 = v61 > 0x3A;
                        v62 = (1 << v61) & 0x40000000400000DLL;
                        if (v18 || v62 == 0)
                        {
                          break;
                        }
                      }

                      if (++v59 == a2)
                      {
                        v59 = a2;
                        break;
                      }
                    }
                  }

                  v91 = dmlc::ParseFloat<float,false>(v33, 0);
                  v39 = v95;
                  v54 = 1;
                  v51 = v92;
                  v33 = v59;
                  v8 = (a4 + 24);
                }

LABEL_108:
                std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 96), &v95);
                std::vector<unsigned long>::push_back[abi:ne200100]((a4 + 120), &v92);
                v64 = v89;
                if (v90 >= v39)
                {
                  v65 = v39;
                }

                else
                {
                  v65 = v90;
                }

                if (v89 >= v51)
                {
                  v64 = v51;
                }

                v89 = v64;
                v90 = v65;
                if (v54)
                {
                  std::vector<float>::push_back[abi:ne200100]((a4 + 144), &v91);
                }
              }
            }

LABEL_115:
            v26 = v33;
            if (v33 != a2)
            {
              goto LABEL_44;
            }

            break;
          }

          ++v26;
        }
      }

LABEL_121:
      ;
    }

    while (a2 != a3);
    v9 = *(a4 + 120);
    v74 = *(a4 + 128);
    v75 = v89 == 0;
    v76 = v90 == 0;
    if (*(a4 + 32) != *(a4 + 24))
    {
      v95 = (v74 - v9) >> 3;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v95);
      v9 = *(a4 + 120);
      v74 = *(a4 + 128);
    }

    a1 = v88;
  }

  if (*(a4 + 104) - *(a4 + 96) != v74 - v9)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v95);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/libfm_parser.h", 127);
    v78 = dmlc::LogMessageFatal::GetEntry(&v95);
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Check failed: out->field.size() == out->index.size()", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v95);
  }

  if (((*(a4 + 32) - *(a4 + 24)) >> 2) + 1 != (*(a4 + 8) - *a4) >> 3)
  {
    v80 = dmlc::LogMessageFatal::GetEntry(&v95);
    dmlc::LogMessageFatal::Entry::Init(v80, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/libfm_parser.h", 128);
    v81 = dmlc::LogMessageFatal::GetEntry(&v95);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v95);
  }

  v83 = *(a1 + 232);
  if (v83 < 1)
  {
    if ((v83 & 0x80000000) == 0)
    {
      return;
    }

    v84 = *(a4 + 120);
    v85 = *(a4 + 128);
    if (v84 == v85 || v75 || *(a4 + 96) == *(a4 + 104) || v76)
    {
      return;
    }
  }

  else
  {
    v84 = *(a4 + 120);
    v85 = *(a4 + 128);
  }

  while (v84 != v85)
  {
    --*v84++;
  }

  v86 = *(a4 + 96);
  v87 = *(a4 + 104);
  while (v86 != v87)
  {
    --*v86++;
  }
}

uint64_t dmlc::data::CSVParser<unsigned int,float>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0560;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned int,float>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0560;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  dmlc::data::TextParserBase<unsigned int,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::data::CSVParser<unsigned int,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  v62 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v62);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v57 = v4 + 15;
  v4[16] = v4[15];
  v55 = v4 + 3;
  v56 = v4 + 18;
  v4[19] = v4[18];
  v54 = v4 + 6;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v9 = *a2;
      if (v9 != 13 && v9 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v53 = v4;
    while (1)
    {
      if (!a2)
      {
        v16 = 0;
        v18 = 0;
        goto LABEL_34;
      }

      v11 = 0;
      do
      {
        v12 = a2[v11];
        if (v12 != 239 && v11 == 0)
        {
          v16 = 0;
LABEL_33:
          v18 = &a2[v11];
          goto LABEL_34;
        }

        if (v12 != 187 && v11 == 1)
        {
          v16 = 1;
          goto LABEL_33;
        }

        if (v12 != 191 && v11 == 2)
        {
          v16 = 2;
          goto LABEL_33;
        }

        v16 = v11 + 1;
        v17 = v11;
        if (&a2[v11 + 1] == a3)
        {
          break;
        }

        ++v11;
      }

      while (v17 < 2);
      v18 = &a2[v16];
      if (v17 > 1)
      {
        goto LABEL_35;
      }

      v16 = v16;
LABEL_34:
      v18 -= v16;
LABEL_35:
      v19 = v18 + 1;
      while (v19 != a3)
      {
        v21 = *v19++;
        v20 = v21;
        if (v21 == 13 || v20 == 10)
        {
          a2 = v19 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v23 = 0;
      v24 = 0;
      v60 = 2143289344;
      v61 = 0.0;
      do
      {
        v62 = 0;
        v59 = 0.0;
        v25 = dmlc::ParseFloat<float,false>(v18, &v62);
        v59 = v25;
        if (v24 == *(a1 + 224))
        {
          v61 = v25;
        }

        else if (v24 == *(a1 + 256))
        {
          v60 = LODWORD(v25);
        }

        else
        {
          if (v62 != v18)
          {
            std::vector<float>::push_back[abi:ne200100](v56, &v59);
            v58 = v23;
            std::vector<unsigned int>::push_back[abi:ne200100](v57, &v58);
          }

          ++v23;
        }

        if (v62 >= a2)
        {
          v26 = a2;
        }

        else
        {
          v26 = v62;
        }

        v18 = (v26 - 1);
        do
        {
          v28 = v18 + 1;
          v27 = v18[1];
          v29 = (a1 + 232);
          if (*(a1 + 255) < 0)
          {
            v29 = *(a1 + 232);
          }

          ++v18;
        }

        while (v28 != a2 && v27 != *v29);
        if (v18 == a2 && !v23)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v58);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v31 = dmlc::LogMessageFatal::GetEntry(&v58);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Delimiter '", 11);
          v33 = *(a1 + 255);
          if (v33 >= 0)
          {
            v34 = a1 + 232;
          }

          else
          {
            v34 = *(a1 + 232);
          }

          if (v33 >= 0)
          {
            v35 = *(a1 + 255);
          }

          else
          {
            v35 = *(a1 + 240);
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "' is not found in the line. ", 28);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Expected '", 10);
          v39 = *(a1 + 255);
          if (v39 >= 0)
          {
            v40 = a1 + 232;
          }

          else
          {
            v40 = *(a1 + 232);
          }

          if (v39 >= 0)
          {
            v41 = *(a1 + 255);
          }

          else
          {
            v41 = *(a1 + 240);
          }

          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v58);
        }

        ++v24;
        if (v28 != a2)
        {
          ++v18;
        }
      }

      while (v18 != a2);
      v4 = v53;
      while (1)
      {
        v43 = *a2;
        if (v43 != 13 && v43 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<float>::push_back[abi:ne200100](v55, &v61);
      std::vector<float>::push_back[abi:ne200100](v54, &v60);
      v62 = (v53[16] - v53[15]) >> 2;
      std::vector<unsigned long>::push_back[abi:ne200100](v53, &v62);
      if (a2 == a3)
      {
        v8 = v53[3];
        v45 = v53[4];
        goto LABEL_91;
      }
    }
  }

  v45 = v8;
LABEL_91:
  if (((v45 - v8) >> 2) + 1 != (v4[1] - *v4) >> 3)
  {
    v46 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v46, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v47 = dmlc::LogMessageFatal::GetEntry(&v62);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  v49 = v4[7] - v4[6];
  if (v49)
  {
    if ((v49 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v50 = dmlc::LogMessageFatal::GetEntry(&v62);
      dmlc::LogMessageFatal::Entry::Init(v50, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v51 = dmlc::LogMessageFatal::GetEntry(&v62);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v62);
    }
  }
}

void sub_274D0FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<std::string,char [4]>(uint64_t a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " (", 2);
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

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " vs. ", 5);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "csv", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
  operator new();
}

void sub_274D10008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::CSVParser<unsigned long long,float>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E05C8;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned long long,float>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E05C8;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  dmlc::data::TextParserBase<unsigned long long,float>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::data::CSVParser<unsigned long long,float>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  v62 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v62);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v57 = v4 + 15;
  v4[16] = v4[15];
  v55 = v4 + 3;
  v56 = v4 + 18;
  v4[19] = v4[18];
  v54 = v4 + 6;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  v4[22] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v9 = *a2;
      if (v9 != 13 && v9 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v53 = v4;
    while (1)
    {
      if (!a2)
      {
        v16 = 0;
        v18 = 0;
        goto LABEL_34;
      }

      v11 = 0;
      do
      {
        v12 = a2[v11];
        if (v12 != 239 && v11 == 0)
        {
          v16 = 0;
LABEL_33:
          v18 = &a2[v11];
          goto LABEL_34;
        }

        if (v12 != 187 && v11 == 1)
        {
          v16 = 1;
          goto LABEL_33;
        }

        if (v12 != 191 && v11 == 2)
        {
          v16 = 2;
          goto LABEL_33;
        }

        v16 = v11 + 1;
        v17 = v11;
        if (&a2[v11 + 1] == a3)
        {
          break;
        }

        ++v11;
      }

      while (v17 < 2);
      v18 = &a2[v16];
      if (v17 > 1)
      {
        goto LABEL_35;
      }

      v16 = v16;
LABEL_34:
      v18 -= v16;
LABEL_35:
      v19 = v18 + 1;
      while (v19 != a3)
      {
        v21 = *v19++;
        v20 = v21;
        if (v21 == 13 || v20 == 10)
        {
          a2 = v19 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v23 = 0;
      v24 = 0;
      v60 = 2143289344;
      v61 = 0.0;
      do
      {
        v62 = 0;
        v59 = 0.0;
        v25 = dmlc::ParseFloat<float,false>(v18, &v62);
        v59 = v25;
        if (v24 == *(a1 + 232))
        {
          v61 = v25;
        }

        else if (v24 == *(a1 + 264))
        {
          v60 = LODWORD(v25);
        }

        else
        {
          if (v62 != v18)
          {
            std::vector<float>::push_back[abi:ne200100](v56, &v59);
            v58 = v23;
            std::vector<unsigned long>::push_back[abi:ne200100](v57, &v58);
          }

          ++v23;
        }

        if (v62 >= a2)
        {
          v26 = a2;
        }

        else
        {
          v26 = v62;
        }

        v18 = (v26 - 1);
        do
        {
          v28 = v18 + 1;
          v27 = v18[1];
          v29 = (a1 + 240);
          if (*(a1 + 263) < 0)
          {
            v29 = *(a1 + 240);
          }

          ++v18;
        }

        while (v28 != a2 && v27 != *v29);
        if (v18 == a2 && !v23)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v58);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v31 = dmlc::LogMessageFatal::GetEntry(&v58);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Delimiter '", 11);
          v33 = *(a1 + 263);
          if (v33 >= 0)
          {
            v34 = a1 + 240;
          }

          else
          {
            v34 = *(a1 + 240);
          }

          if (v33 >= 0)
          {
            v35 = *(a1 + 263);
          }

          else
          {
            v35 = *(a1 + 248);
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "' is not found in the line. ", 28);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Expected '", 10);
          v39 = *(a1 + 263);
          if (v39 >= 0)
          {
            v40 = a1 + 240;
          }

          else
          {
            v40 = *(a1 + 240);
          }

          if (v39 >= 0)
          {
            v41 = *(a1 + 263);
          }

          else
          {
            v41 = *(a1 + 248);
          }

          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v58);
        }

        ++v24;
        if (v28 != a2)
        {
          ++v18;
        }
      }

      while (v18 != a2);
      v4 = v53;
      while (1)
      {
        v43 = *a2;
        if (v43 != 13 && v43 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<float>::push_back[abi:ne200100](v55, &v61);
      std::vector<float>::push_back[abi:ne200100](v54, &v60);
      v62 = (v53[16] - v53[15]) >> 3;
      std::vector<unsigned long>::push_back[abi:ne200100](v53, &v62);
      if (a2 == a3)
      {
        v8 = v53[3];
        v45 = v53[4];
        goto LABEL_91;
      }
    }
  }

  v45 = v8;
LABEL_91:
  if (((v45 - v8) >> 2) + 1 != (v4[1] - *v4) >> 3)
  {
    v46 = dmlc::LogMessageFatal::GetEntry(&v62);
    dmlc::LogMessageFatal::Entry::Init(v46, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v47 = dmlc::LogMessageFatal::GetEntry(&v62);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v62);
  }

  v49 = v4[7] - v4[6];
  if (v49)
  {
    if ((v49 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v50 = dmlc::LogMessageFatal::GetEntry(&v62);
      dmlc::LogMessageFatal::Entry::Init(v50, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v51 = dmlc::LogMessageFatal::GetEntry(&v62);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v62);
    }
  }
}

void sub_274D105DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::TextParserBase<unsigned int,int>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883E06E0;
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 136));
  std::exception_ptr::~exception_ptr((a1 + 128));
  *a1 = &unk_2883E0730;
  v4 = (a1 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D106C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 136));
  std::exception_ptr::~exception_ptr((v10 + 128));
  *v10 = &unk_2883E0730;
  a10 = (v10 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::CSVParser<unsigned int,int>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0630;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return dmlc::data::TextParserBase<unsigned int,int>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned int,int>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0630;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  dmlc::data::TextParserBase<unsigned int,int>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned int,int>::Next(uint64_t a1)
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
        dmlc::data::RowBlockContainer<unsigned int,int>::GetBlock(v12, (v7 + v6 - 184));
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

uint64_t dmlc::data::TextParserBase<unsigned int,int>::ParseNext(uint64_t a1, uint64_t *a2)
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
      dmlc::data::RowBlockContainer<unsigned int,int>::RowBlockContainer(v7);
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

void sub_274D10E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::CSVParser<unsigned int,int>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  __endptr = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &__endptr);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v9 = v4 + 15;
  v4[16] = v4[15];
  v10 = v4 + 18;
  v4[19] = v4[18];
  v57 = v4 + 6;
  v58 = v4 + 3;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v11 = *a2;
      if (v11 != 13 && v11 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v56 = v4;
    while (1)
    {
      if (!a2)
      {
        v18 = 0;
        v20 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      do
      {
        v14 = a2[v13];
        if (v14 != 239 && v13 == 0)
        {
          v18 = 0;
LABEL_33:
          v20 = &a2[v13];
          goto LABEL_34;
        }

        if (v14 != 187 && v13 == 1)
        {
          v18 = 1;
          goto LABEL_33;
        }

        if (v14 != 191 && v13 == 2)
        {
          v18 = 2;
          goto LABEL_33;
        }

        v18 = v13 + 1;
        v19 = v13;
        if (&a2[v13 + 1] == a3)
        {
          break;
        }

        ++v13;
      }

      while (v19 < 2);
      v20 = &a2[v18];
      if (v19 > 1)
      {
        goto LABEL_35;
      }

      v18 = v18;
LABEL_34:
      v20 -= v18;
LABEL_35:
      v21 = v20 + 1;
      while (v21 != a3)
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 13 || v22 == 10)
        {
          a2 = v21 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v25 = 0;
      v26 = 0;
      v61 = 2143289344;
      v62 = 0;
      do
      {
        __endptr = 0;
        v60 = 0;
        v27 = strtoll(v20, &__endptr, 0);
        v60 = v27;
        if (v26 == *(a1 + 224))
        {
          v62 = v27;
          v28 = __endptr;
        }

        else
        {
          v28 = __endptr;
          if (__endptr != v20)
          {
            std::vector<int>::push_back[abi:ne200100](v10, &v60);
            v59 = v25;
            std::vector<unsigned int>::push_back[abi:ne200100](v9, &v59);
          }

          ++v25;
        }

        if (v28 >= a2)
        {
          v29 = a2;
        }

        else
        {
          v29 = v28;
        }

        v20 = (v29 - 1);
        do
        {
          v31 = v20 + 1;
          v30 = v20[1];
          v32 = (a1 + 232);
          if (*(a1 + 255) < 0)
          {
            v32 = *(a1 + 232);
          }

          ++v20;
        }

        while (v31 != a2 && v30 != *v32);
        if (v20 == a2 && !v25)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v59);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v34 = dmlc::LogMessageFatal::GetEntry(&v59);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Delimiter '", 11);
          v36 = *(a1 + 255);
          if (v36 >= 0)
          {
            v37 = a1 + 232;
          }

          else
          {
            v37 = *(a1 + 232);
          }

          if (v36 >= 0)
          {
            v38 = *(a1 + 255);
          }

          else
          {
            v38 = *(a1 + 240);
          }

          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "' is not found in the line. ", 28);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Expected '", 10);
          v42 = *(a1 + 255);
          if (v42 >= 0)
          {
            v43 = a1 + 232;
          }

          else
          {
            v43 = *(a1 + 232);
          }

          if (v42 >= 0)
          {
            v44 = *(a1 + 255);
          }

          else
          {
            v44 = *(a1 + 240);
          }

          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v59);
        }

        ++v26;
        if (v31 != a2)
        {
          ++v20;
        }
      }

      while (v20 != a2);
      v4 = v56;
      while (1)
      {
        v46 = *a2;
        if (v46 != 13 && v46 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<int>::push_back[abi:ne200100](v58, &v62);
      std::vector<float>::push_back[abi:ne200100](v57, &v61);
      __endptr = ((v56[16] - v56[15]) >> 2);
      std::vector<unsigned long>::push_back[abi:ne200100](v56, &__endptr);
      if (a2 == a3)
      {
        v8 = v56[3];
        v48 = v56[4];
        goto LABEL_89;
      }
    }
  }

  v48 = v8;
LABEL_89:
  if (((v48 - v8) >> 2) + 1 != (v4[1] - *v4) >> 3)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&__endptr);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v50 = dmlc::LogMessageFatal::GetEntry(&__endptr);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__endptr);
  }

  v52 = v4[7] - v4[6];
  if (v52)
  {
    if ((v52 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v53 = dmlc::LogMessageFatal::GetEntry(&__endptr);
      dmlc::LogMessageFatal::Entry::Init(v53, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v54 = dmlc::LogMessageFatal::GetEntry(&__endptr);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__endptr);
    }
  }
}

void sub_274D1139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,int>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,int>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 176 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t dmlc::data::TextParserBase<unsigned long long,int>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883E0828;
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 144));
  std::exception_ptr::~exception_ptr((a1 + 136));
  *a1 = &unk_2883E0878;
  v4 = (a1 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D1173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 144));
  std::exception_ptr::~exception_ptr((v10 + 136));
  *v10 = &unk_2883E0878;
  a10 = (v10 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::CSVParser<unsigned long long,int>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0778;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return dmlc::data::TextParserBase<unsigned long long,int>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned long long,int>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0778;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  dmlc::data::TextParserBase<unsigned long long,int>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned long long,int>::Next(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v4 = v2 <= i ? i : v2;
    v5 = v2 + 1;
    v6 = 184 * v2 + 8;
    while (v5 - v4 != 1)
    {
      *(a1 + 8) = v5;
      v7 = *(a1 + 24);
      v8 = *(v7 + v6) - *(v7 + v6 - 8);
      ++v5;
      v6 += 184;
      if (v8 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned long long,int>::GetBlock(v12, (v7 + v6 - 192));
        v9 = v12[1];
        *(a1 + 48) = v12[0];
        *(a1 + 64) = v9;
        v10 = v12[3];
        *(a1 + 80) = v12[2];
        *(a1 + 96) = v10;
        v4 = v5 - 2;
        return v4 < i;
      }
    }

    if (!(*(*a1 + 48))(a1, a1 + 24))
    {
      break;
    }

    v2 = 0;
    i = 0xD37A6F4DE9BD37A7 * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    *(a1 + 8) = 0;
  }

  return v4 < i;
}

uint64_t dmlc::data::TextParserBase<unsigned long long,int>::ParseNext(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 128) + 32))(*(a1 + 128), &v19);
  if (!v4)
  {
    return v4;
  }

  v5 = *(a1 + 112);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
  v10 = v5 - v9;
  if (v5 > v9)
  {
    v11 = a2[2];
    if (0xD37A6F4DE9BD37A7 * ((v11 - v7) >> 3) < v10)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v12 = 0xD37A6F4DE9BD37A7 * ((v11 - v6) >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v5)
        {
          v13 = v5;
        }

        if (v12 >= 0xB21642C8590B21)
        {
          v14 = 0x1642C8590B21642;
        }

        else
        {
          v14 = v13;
        }

        v21[4] = a2;
        if (v14 <= 0x1642C8590B21642)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v7 + 184 * v10;
    v16 = 184 * v5 - 8 * (v8 >> 3);
    do
    {
      dmlc::data::RowBlockContainer<unsigned long long,int>::RowBlockContainer(v7);
      v7 += 184;
      v16 -= 184;
    }

    while (v16);
    goto LABEL_18;
  }

  if (v5 < v9)
  {
    v15 = v6 + 184 * v5;
    while (v7 != v15)
    {
      v7 -= 184;
      dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v7);
    }

LABEL_18:
    a2[1] = v15;
  }

  v17 = v20;
  *(a1 + 120) += v20;
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

  dmlc::OMPException::Rethrow((a1 + 136));
  *(a1 + 8) = 0;
  v22 = v21;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v4;
}

void sub_274D11EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::CSVParser<unsigned long long,int>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  __endptr = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &__endptr);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v9 = v4 + 15;
  v4[16] = v4[15];
  v10 = v4 + 18;
  v4[19] = v4[18];
  v57 = v4 + 6;
  v58 = v4 + 3;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  v4[22] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v11 = *a2;
      if (v11 != 13 && v11 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v56 = v4;
    while (1)
    {
      if (!a2)
      {
        v18 = 0;
        v20 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      do
      {
        v14 = a2[v13];
        if (v14 != 239 && v13 == 0)
        {
          v18 = 0;
LABEL_33:
          v20 = &a2[v13];
          goto LABEL_34;
        }

        if (v14 != 187 && v13 == 1)
        {
          v18 = 1;
          goto LABEL_33;
        }

        if (v14 != 191 && v13 == 2)
        {
          v18 = 2;
          goto LABEL_33;
        }

        v18 = v13 + 1;
        v19 = v13;
        if (&a2[v13 + 1] == a3)
        {
          break;
        }

        ++v13;
      }

      while (v19 < 2);
      v20 = &a2[v18];
      if (v19 > 1)
      {
        goto LABEL_35;
      }

      v18 = v18;
LABEL_34:
      v20 -= v18;
LABEL_35:
      v21 = v20 + 1;
      while (v21 != a3)
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 13 || v22 == 10)
        {
          a2 = v21 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v25 = 0;
      v26 = 0;
      v61 = 2143289344;
      v62 = 0;
      do
      {
        __endptr = 0;
        v60 = 0;
        v27 = strtoll(v20, &__endptr, 0);
        v60 = v27;
        if (v26 == *(a1 + 232))
        {
          v62 = v27;
          v28 = __endptr;
        }

        else
        {
          v28 = __endptr;
          if (__endptr != v20)
          {
            std::vector<int>::push_back[abi:ne200100](v10, &v60);
            v59 = v25;
            std::vector<unsigned long>::push_back[abi:ne200100](v9, &v59);
          }

          ++v25;
        }

        if (v28 >= a2)
        {
          v29 = a2;
        }

        else
        {
          v29 = v28;
        }

        v20 = (v29 - 1);
        do
        {
          v31 = v20 + 1;
          v30 = v20[1];
          v32 = (a1 + 240);
          if (*(a1 + 263) < 0)
          {
            v32 = *(a1 + 240);
          }

          ++v20;
        }

        while (v31 != a2 && v30 != *v32);
        if (v20 == a2 && !v25)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v59);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v34 = dmlc::LogMessageFatal::GetEntry(&v59);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Delimiter '", 11);
          v36 = *(a1 + 263);
          if (v36 >= 0)
          {
            v37 = a1 + 240;
          }

          else
          {
            v37 = *(a1 + 240);
          }

          if (v36 >= 0)
          {
            v38 = *(a1 + 263);
          }

          else
          {
            v38 = *(a1 + 248);
          }

          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "' is not found in the line. ", 28);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Expected '", 10);
          v42 = *(a1 + 263);
          if (v42 >= 0)
          {
            v43 = a1 + 240;
          }

          else
          {
            v43 = *(a1 + 240);
          }

          if (v42 >= 0)
          {
            v44 = *(a1 + 263);
          }

          else
          {
            v44 = *(a1 + 248);
          }

          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v59);
        }

        ++v26;
        if (v31 != a2)
        {
          ++v20;
        }
      }

      while (v20 != a2);
      v4 = v56;
      while (1)
      {
        v46 = *a2;
        if (v46 != 13 && v46 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<int>::push_back[abi:ne200100](v58, &v62);
      std::vector<float>::push_back[abi:ne200100](v57, &v61);
      __endptr = ((v56[16] - v56[15]) >> 3);
      std::vector<unsigned long>::push_back[abi:ne200100](v56, &__endptr);
      if (a2 == a3)
      {
        v8 = v56[3];
        v48 = v56[4];
        goto LABEL_89;
      }
    }
  }

  v48 = v8;
LABEL_89:
  if (((v48 - v8) >> 2) + 1 != (v4[1] - *v4) >> 3)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&__endptr);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v50 = dmlc::LogMessageFatal::GetEntry(&__endptr);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__endptr);
  }

  v52 = v4[7] - v4[6];
  if (v52)
  {
    if ((v52 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v53 = dmlc::LogMessageFatal::GetEntry(&__endptr);
      dmlc::LogMessageFatal::Entry::Init(v53, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v54 = dmlc::LogMessageFatal::GetEntry(&__endptr);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__endptr);
    }
  }
}

void sub_274D12414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned long long,int>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned long long,int>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 184 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

uint64_t dmlc::data::TextParserBase<unsigned int,long long>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883E0970;
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 136));
  std::exception_ptr::~exception_ptr((a1 + 128));
  *a1 = &unk_2883E09C0;
  v4 = (a1 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D126D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 136));
  std::exception_ptr::~exception_ptr((v10 + 128));
  *v10 = &unk_2883E09C0;
  a10 = (v10 + 16);
  std::vector<dmlc::data::RowBlockContainer<unsigned int,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::CSVParser<unsigned int,long long>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E08C0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  return dmlc::data::TextParserBase<unsigned int,long long>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned int,long long>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E08C0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  dmlc::data::TextParserBase<unsigned int,long long>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned int,long long>::Next(uint64_t a1)
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
        dmlc::data::RowBlockContainer<unsigned int,long long>::GetBlock(v12, (v7 + v6 - 184));
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

uint64_t dmlc::data::TextParserBase<unsigned int,long long>::ParseNext(uint64_t a1, uint64_t *a2)
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
      dmlc::data::RowBlockContainer<unsigned int,long long>::RowBlockContainer(v7);
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

void sub_274D12E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::CSVParser<unsigned int,long long>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  v63 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v63);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v9 = v4 + 15;
  v4[16] = v4[15];
  v10 = v4 + 18;
  v4[19] = v4[18];
  v57 = v4 + 6;
  v58 = v4 + 3;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v11 = *a2;
      if (v11 != 13 && v11 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v56 = v4;
    while (1)
    {
      if (!a2)
      {
        v18 = 0;
        v20 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      do
      {
        v14 = a2[v13];
        if (v14 != 239 && v13 == 0)
        {
          v18 = 0;
LABEL_33:
          v20 = &a2[v13];
          goto LABEL_34;
        }

        if (v14 != 187 && v13 == 1)
        {
          v18 = 1;
          goto LABEL_33;
        }

        if (v14 != 191 && v13 == 2)
        {
          v18 = 2;
          goto LABEL_33;
        }

        v18 = v13 + 1;
        v19 = v13;
        if (&a2[v13 + 1] == a3)
        {
          break;
        }

        ++v13;
      }

      while (v19 < 2);
      v20 = &a2[v18];
      if (v19 > 1)
      {
        goto LABEL_35;
      }

      v18 = v18;
LABEL_34:
      v20 -= v18;
LABEL_35:
      v21 = v20 + 1;
      while (v21 != a3)
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 13 || v22 == 10)
        {
          a2 = v21 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v25 = 0;
      v26 = 0;
      v63 = 0;
      v62 = 2143289344;
      do
      {
        v60 = 0;
        __endptr = 0;
        v27 = strtoll(v20, &__endptr, 0);
        v60 = v27;
        if (v26 == *(a1 + 224))
        {
          v63 = v27;
          v28 = __endptr;
        }

        else
        {
          v28 = __endptr;
          if (__endptr != v20)
          {
            std::vector<unsigned long>::push_back[abi:ne200100](v10, &v60);
            v59 = v25;
            std::vector<unsigned int>::push_back[abi:ne200100](v9, &v59);
          }

          ++v25;
        }

        if (v28 >= a2)
        {
          v29 = a2;
        }

        else
        {
          v29 = v28;
        }

        v20 = (v29 - 1);
        do
        {
          v31 = v20 + 1;
          v30 = v20[1];
          v32 = (a1 + 232);
          if (*(a1 + 255) < 0)
          {
            v32 = *(a1 + 232);
          }

          ++v20;
        }

        while (v31 != a2 && v30 != *v32);
        if (v20 == a2 && !v25)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v59);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v34 = dmlc::LogMessageFatal::GetEntry(&v59);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Delimiter '", 11);
          v36 = *(a1 + 255);
          if (v36 >= 0)
          {
            v37 = a1 + 232;
          }

          else
          {
            v37 = *(a1 + 232);
          }

          if (v36 >= 0)
          {
            v38 = *(a1 + 255);
          }

          else
          {
            v38 = *(a1 + 240);
          }

          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "' is not found in the line. ", 28);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Expected '", 10);
          v42 = *(a1 + 255);
          if (v42 >= 0)
          {
            v43 = a1 + 232;
          }

          else
          {
            v43 = *(a1 + 232);
          }

          if (v42 >= 0)
          {
            v44 = *(a1 + 255);
          }

          else
          {
            v44 = *(a1 + 240);
          }

          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v59);
        }

        ++v26;
        if (v31 != a2)
        {
          ++v20;
        }
      }

      while (v20 != a2);
      v4 = v56;
      while (1)
      {
        v46 = *a2;
        if (v46 != 13 && v46 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<unsigned long>::push_back[abi:ne200100](v58, &v63);
      std::vector<float>::push_back[abi:ne200100](v57, &v62);
      __endptr = ((v56[16] - v56[15]) >> 2);
      std::vector<unsigned long>::push_back[abi:ne200100](v56, &__endptr);
      if (a2 == a3)
      {
        v8 = v56[3];
        v48 = v56[4];
        goto LABEL_89;
      }
    }
  }

  v48 = v8;
LABEL_89:
  if (((v48 - v8) >> 3) + 1 != (v4[1] - *v4) >> 3)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&v63);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v50 = dmlc::LogMessageFatal::GetEntry(&v63);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v63);
  }

  v52 = v4[7] - v4[6];
  if (v52)
  {
    if ((v52 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v53 = dmlc::LogMessageFatal::GetEntry(&v63);
      dmlc::LogMessageFatal::Entry::Init(v53, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v54 = dmlc::LogMessageFatal::GetEntry(&v63);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v63);
    }
  }
}

void sub_274D133AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,long long>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,long long>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 176 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

uint64_t dmlc::data::TextParserBase<unsigned long long,long long>::~TextParserBase(uint64_t a1)
{
  *a1 = &unk_2883E0AB8;
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  std::mutex::~mutex((a1 + 144));
  std::exception_ptr::~exception_ptr((a1 + 136));
  *a1 = &unk_2883E0B08;
  v4 = (a1 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void sub_274D1366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 144));
  std::exception_ptr::~exception_ptr((v10 + 136));
  *v10 = &unk_2883E0B08;
  a10 = (v10 + 24);
  std::vector<dmlc::data::RowBlockContainer<unsigned long long,float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t dmlc::data::CSVParser<unsigned long long,long long>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0A08;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  return dmlc::data::TextParserBase<unsigned long long,long long>::~TextParserBase(a1);
}

void dmlc::data::CSVParser<unsigned long long,long long>::~CSVParser(uint64_t a1)
{
  *a1 = &unk_2883E0A08;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  dmlc::data::TextParserBase<unsigned long long,long long>::~TextParserBase(a1);

  JUMPOUT(0x277C69180);
}

BOOL dmlc::data::ParserImpl<unsigned long long,long long>::Next(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v4 = v2 <= i ? i : v2;
    v5 = v2 + 1;
    v6 = 184 * v2 + 8;
    while (v5 - v4 != 1)
    {
      *(a1 + 8) = v5;
      v7 = *(a1 + 24);
      v8 = *(v7 + v6) - *(v7 + v6 - 8);
      ++v5;
      v6 += 184;
      if (v8 != 8)
      {
        dmlc::data::RowBlockContainer<unsigned long long,long long>::GetBlock(v12, (v7 + v6 - 192));
        v9 = v12[1];
        *(a1 + 48) = v12[0];
        *(a1 + 64) = v9;
        v10 = v12[3];
        *(a1 + 80) = v12[2];
        *(a1 + 96) = v10;
        v4 = v5 - 2;
        return v4 < i;
      }
    }

    if (!(*(*a1 + 48))(a1, a1 + 24))
    {
      break;
    }

    v2 = 0;
    i = 0xD37A6F4DE9BD37A7 * ((*(a1 + 32) - *(a1 + 24)) >> 3);
    *(a1 + 8) = 0;
  }

  return v4 < i;
}

uint64_t dmlc::data::TextParserBase<unsigned long long,long long>::ParseNext(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 128) + 32))(*(a1 + 128), &v19);
  if (!v4)
  {
    return v4;
  }

  v5 = *(a1 + 112);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = 0xD37A6F4DE9BD37A7 * (v8 >> 3);
  v10 = v5 - v9;
  if (v5 > v9)
  {
    v11 = a2[2];
    if (0xD37A6F4DE9BD37A7 * ((v11 - v7) >> 3) < v10)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v12 = 0xD37A6F4DE9BD37A7 * ((v11 - v6) >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v5)
        {
          v13 = v5;
        }

        if (v12 >= 0xB21642C8590B21)
        {
          v14 = 0x1642C8590B21642;
        }

        else
        {
          v14 = v13;
        }

        v21[4] = a2;
        if (v14 <= 0x1642C8590B21642)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v7 + 184 * v10;
    v16 = 184 * v5 - 8 * (v8 >> 3);
    do
    {
      dmlc::data::RowBlockContainer<unsigned long long,long long>::RowBlockContainer(v7);
      v7 += 184;
      v16 -= 184;
    }

    while (v16);
    goto LABEL_18;
  }

  if (v5 < v9)
  {
    v15 = v6 + 184 * v5;
    while (v7 != v15)
    {
      v7 -= 184;
      dmlc::data::RowBlockContainer<unsigned int,float>::~RowBlockContainer(v7);
    }

LABEL_18:
    a2[1] = v15;
  }

  v17 = v20;
  *(a1 + 120) += v20;
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

  dmlc::OMPException::Rethrow((a1 + 136));
  *(a1 + 8) = 0;
  v22 = v21;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v22);
  return v4;
}

void sub_274D13E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::thread a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = a14;
  a14 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v21);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::data::CSVParser<unsigned long long,long long>::ParseBlock(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, const void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  v63 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a4, &v63);
  v8 = v4[3];
  v4[4] = v8;
  v4[13] = v4[12];
  v9 = v4 + 15;
  v4[16] = v4[15];
  v10 = v4 + 18;
  v4[19] = v4[18];
  v57 = v4 + 6;
  v58 = v4 + 3;
  v4[7] = v4[6];
  v4[10] = v4[9];
  v4[21] = 0;
  v4[22] = 0;
  if (a2 != a3)
  {
    while (1)
    {
      v11 = *a2;
      if (v11 != 13 && v11 != 10)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (a2 != a3)
  {
    v56 = v4;
    while (1)
    {
      if (!a2)
      {
        v18 = 0;
        v20 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      do
      {
        v14 = a2[v13];
        if (v14 != 239 && v13 == 0)
        {
          v18 = 0;
LABEL_33:
          v20 = &a2[v13];
          goto LABEL_34;
        }

        if (v14 != 187 && v13 == 1)
        {
          v18 = 1;
          goto LABEL_33;
        }

        if (v14 != 191 && v13 == 2)
        {
          v18 = 2;
          goto LABEL_33;
        }

        v18 = v13 + 1;
        v19 = v13;
        if (&a2[v13 + 1] == a3)
        {
          break;
        }

        ++v13;
      }

      while (v19 < 2);
      v20 = &a2[v18];
      if (v19 > 1)
      {
        goto LABEL_35;
      }

      v18 = v18;
LABEL_34:
      v20 -= v18;
LABEL_35:
      v21 = v20 + 1;
      while (v21 != a3)
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 13 || v22 == 10)
        {
          a2 = v21 - 1;
          goto LABEL_44;
        }
      }

      a2 = a3;
LABEL_44:
      v25 = 0;
      v26 = 0;
      v63 = 0;
      v62 = 2143289344;
      do
      {
        v60 = 0;
        __endptr = 0;
        v27 = strtoll(v20, &__endptr, 0);
        v60 = v27;
        if (v26 == *(a1 + 232))
        {
          v63 = v27;
          v28 = __endptr;
        }

        else
        {
          v28 = __endptr;
          if (__endptr != v20)
          {
            std::vector<unsigned long>::push_back[abi:ne200100](v10, &v60);
            v59 = v25;
            std::vector<unsigned long>::push_back[abi:ne200100](v9, &v59);
          }

          ++v25;
        }

        if (v28 >= a2)
        {
          v29 = a2;
        }

        else
        {
          v29 = v28;
        }

        v20 = (v29 - 1);
        do
        {
          v31 = v20 + 1;
          v30 = v20[1];
          v32 = (a1 + 240);
          if (*(a1 + 263) < 0)
          {
            v32 = *(a1 + 240);
          }

          ++v20;
        }

        while (v31 != a2 && v30 != *v32);
        if (v20 == a2 && !v25)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v59);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 130);
          v34 = dmlc::LogMessageFatal::GetEntry(&v59);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Delimiter '", 11);
          v36 = *(a1 + 263);
          if (v36 >= 0)
          {
            v37 = a1 + 240;
          }

          else
          {
            v37 = *(a1 + 240);
          }

          if (v36 >= 0)
          {
            v38 = *(a1 + 263);
          }

          else
          {
            v38 = *(a1 + 248);
          }

          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "' is not found in the line. ", 28);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Expected '", 10);
          v42 = *(a1 + 263);
          if (v42 >= 0)
          {
            v43 = a1 + 240;
          }

          else
          {
            v43 = *(a1 + 240);
          }

          if (v42 >= 0)
          {
            v44 = *(a1 + 263);
          }

          else
          {
            v44 = *(a1 + 248);
          }

          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "' as the delimiter to separate fields.", 38);
          dmlc::LogMessageFatal::~LogMessageFatal(&v59);
        }

        ++v26;
        if (v31 != a2)
        {
          ++v20;
        }
      }

      while (v20 != a2);
      v4 = v56;
      while (1)
      {
        v46 = *a2;
        if (v46 != 13 && v46 != 10)
        {
          break;
        }

        if (a2 == a3)
        {
          a2 = a3;
          break;
        }

        ++a2;
      }

      std::vector<unsigned long>::push_back[abi:ne200100](v58, &v63);
      std::vector<float>::push_back[abi:ne200100](v57, &v62);
      __endptr = ((v56[16] - v56[15]) >> 3);
      std::vector<unsigned long>::push_back[abi:ne200100](v56, &__endptr);
      if (a2 == a3)
      {
        v8 = v56[3];
        v48 = v56[4];
        goto LABEL_89;
      }
    }
  }

  v48 = v8;
LABEL_89:
  if (((v48 - v8) >> 3) + 1 != (v4[1] - *v4) >> 3)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&v63);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 145);
    v50 = dmlc::LogMessageFatal::GetEntry(&v63);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: out->label.size() + 1 == out->offset.size()", 57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v63);
  }

  v52 = v4[7] - v4[6];
  if (v52)
  {
    if ((v52 >> 2) + 1 != (v4[1] - *v4) >> 3)
    {
      v53 = dmlc::LogMessageFatal::GetEntry(&v63);
      dmlc::LogMessageFatal::Entry::Init(v53, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/data/csv_parser.h", 146);
      v54 = dmlc::LogMessageFatal::GetEntry(&v63);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "Check failed: out->weight.size() == 0 || out->weight.size() + 1 == out->offset.size()", 85);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v63);
    }
  }
}

void sub_274D14344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned long long,long long>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned long long,long long>> *)::{lambda(void)#1}>>(uint64_t *a1)
{
  v18 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v18[2];
  v5 = *(v18[1] + 8);
  v7 = *(v18 + 8);
  v6 = *(v18 + 9);
  v8 = (v5 + v7 - 1) / v7;
  if (v5 >= v8 * v6)
  {
    v9 = v8 * v6;
  }

  else
  {
    v9 = *(v18[1] + 8);
  }

  v10 = v8 * (v6 + 1);
  if (v5 >= v10)
  {
    v5 = v10;
  }

  v11 = v18[2];
  if (v9)
  {
    v11 = (v4 + v9);
    while (1)
    {
      v12 = *v11;
      if (v12 == 10 || v12 == 13)
      {
        break;
      }

      if (--v11 == v4)
      {
        v11 = v18[2];
        break;
      }
    }
  }

  if (v6 + 1 == v7)
  {
    v14 = (v4 + v5);
  }

  else if (v5)
  {
    v14 = (v4 + v5);
    while (1)
    {
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (--v14 == v4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    v14 = v18[2];
  }

  (*(*v18[5] + 56))(v18[5], v11, v14, *v18[3] + 184 * v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::data::TextParserBase<unsigned int,float>::FillData(std::vector<dmlc::data::RowBlockContainer<unsigned int,float>> *)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v18);
  return 0;
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void xgboost::tree::ColMaker::~ColMaker(void **this)
{
  xgboost::tree::ColMaker::~ColMaker(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E0C00;
  v2 = this + 24;
  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  v5 = this + 30;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 27;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = v2;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = this[21];
  if (v3)
  {
    this[22] = v3;
    operator delete(v3);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v4 = this[12];
  if (v4)
  {
    this[13] = v4;
    operator delete(v4);
  }
}

void xgboost::tree::ColMaker::LoadConfig(xgboost::tree::ColMaker *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, &__p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 16), v19);
  v14[0] = v19;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v14);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "colmaker_train_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, v14);
  v6 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v5);
  v21 = 0;
  v22 = 0;
  __p = &v21;
  v7 = *(v6 + 2);
  v8 = (v6 + 24);
  if (v7 != (v6 + 24))
  {
    do
    {
      v9 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v7[7]);
      v23 = v7 + 4;
      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v7 + 4);
      v6 = std::string::operator=((v10 + 56), (v9 + 16));
      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  if (*(this + 152) == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::tree::ColMakerTrainParam::__MANAGER__(v6);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6218, this + 152, __p, &v21, 0, &v16, 0);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::tree::ColMakerTrainParam::__MANAGER__(v6);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6218, this + 152, __p, &v21, &v16, 0);
    *(this + 152) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v21);
  __p = &v16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_274D148D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, int a23, __int16 a24, char a25, char a26)
{
  *(v26 - 56) = &a15;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v26 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a21, a22);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::ColMaker::SaveConfig(xgboost::tree::ColMaker *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 16), &v4);
  std::string::basic_string[abi:ne200100]<0>(&__p, "train_param");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void xgboost::tree::ColMaker::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v8);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 152);
  v4 = (a1 + 152);
  memset(v7, 0, sizeof(v7));
  xgboost::tree::ColMakerTrainParam::__MANAGER__(v6);
  if (v5 == 1)
  {
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6218, v4, *a2, a2[1], 0, v7, 0);
  }

  else
  {
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6218, v4, *a2, a2[1], v7, 0);
    *v4 = 1;
  }

  v9 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_274D14D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 40) = &a10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v10 - 40));
  _Unwind_Resume(a1);
}

std::string *xgboost::tree::ColMaker::Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  Engine = rabit::engine::GetEngine(a1);
  if ((*(*Engine + 80))(Engine))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 103);
    v9 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  if (((*(*a3 + 40))(a3) & 1) == 0)
  {
    v10 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v10, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 107);
    v11 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  if (*(a1 + 168) == *(a1 + 176))
  {
    v12 = (**a3)(a3);
    std::vector<unsigned long>::vector[abi:ne200100](&__p, *(v12 + 8));
    (*(*a3 + 88))(&v43, a3);
    v42[2] = v43;
    v42[3] = v44;
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v42, 0);
  }

  v13 = *(a1 + 20);
  *(a1 + 20) = v13 / (a4[1] - *a4);
  v14 = (**a3)(a3);
  result = xgboost::FeatureInteractionConstraintHost::Configure((a1 + 192), (a1 + 16), *v14);
  if (*a4 != a4[1])
  {
    v16 = **a4;
    if (!*(a1 + 8))
    {
      v19 = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(v19, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 117);
      v20 = dmlc::LogMessageFatal::GetEntry(&__p);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Check failed: ctx_", 18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }

    v23 = 0;
    v22 = 0uLL;
    std::vector<std::unordered_set<unsigned int>>::__init_with_size[abi:ne200100]<std::unordered_set<unsigned int>*,std::unordered_set<unsigned int>*>(&v22, *(a1 + 192), *(a1 + 200), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 200) - *(a1 + 192)) >> 3));
    v24 = 0uLL;
    v25 = 0;
    std::vector<std::unordered_set<unsigned int>>::__init_with_size[abi:ne200100]<std::unordered_set<unsigned int>*,std::unordered_set<unsigned int>*>(&v24, *(a1 + 216), *(a1 + 224), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 224) - *(a1 + 216)) >> 3));
    v26 = 0uLL;
    v27 = 0;
    std::vector<std::unordered_set<unsigned int>>::__init_with_size[abi:ne200100]<std::unordered_set<unsigned int>*,std::unordered_set<unsigned int>*>(&v26, *(a1 + 240), *(a1 + 248), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 248) - *(a1 + 240)) >> 3));
    if (*(a1 + 287) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      v28 = *(a1 + 264);
    }

    v29 = *(a1 + 288);
    v30 = *(a1 + 292);
    v17 = *(a1 + 8);
    __p = &unk_2883E0C70;
    v32 = (a1 + 16);
    v33 = a1 + 152;
    v34 = v17;
    xgboost::common::ColumnSampler::ColumnSampler(v35);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *&v35[2584] = 0u;
    v36 = 0u;
    v18 = *(a1 + 176) - *(a1 + 168);
    xgboost::tree::TreeEvaluator::TreeEvaluator(&v41, v32);
  }

  *(a1 + 20) = v13;
  return result;
}

void xgboost::FeatureInteractionConstraintHost::~FeatureInteractionConstraintHost(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
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

void xgboost::tree::ColMaker::Builder::Update(uint64_t a1, float32x2_t **a2, uint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v50 = (a1 + 2616);
  std::vector<int>::resize((a1 + 2616), a2[1] - *a2);
  v7 = (*(*a3 + 24))(a3);
  __p.n128_u64[0] = (*(a1 + 2624) - *(a1 + 2616)) >> 2;
  if (*v7 != __p.n128_u64[0])
  {
    dmlc::LogCheckFormat<unsigned long long,unsigned long>(v7, &__p);
  }

  v8 = *(a1 + 2616);
  v9 = *(a1 + 2624);
  v10 = (v9 - v8) >> 2;
  if (v10 >= 1)
  {
    bzero(*(a1 + 2616), v9 - v8);
  }

  if (v9 != v8)
  {
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v9 - v8) >> 2;
    }

    v12 = *a2 + 1;
    do
    {
      if (*v12 < 0.0)
      {
        *v8 = ~*v8;
      }

      ++v8;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v13 = *(a1 + 8);
  if (*(v13 + 48) < 1.0)
  {
    v15 = *(v13 + 52);
    v14 = (v13 + 52);
    __p.n128_u32[0] = 0;
    if (v15)
    {
      dmlc::LogCheckFormat<int,xgboost::tree::TrainParam::SamplingMethod>(v14, &__p);
    }

    v16 = *(*(a1 + 8) + 48);
    v17 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v18 = *(a1 + 2616);
    if (*(a1 + 2624) != v18)
    {
      v19 = v17;
      v20 = 0;
      v21 = v16;
      v22 = 1;
      do
      {
        if ((*a2)->f32[v22] >= 0.0)
        {
          v23 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v19);
          v24 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v19);
          v18 = *v50;
          if ((v23 + v24 * 4294967300.0) * 5.42101086e-20 >= v21)
          {
            *(v18 + 4 * v20) = ~*(v18 + 4 * v20);
          }
        }

        ++v20;
        v22 += 2;
      }

      while (v20 < (*(a1 + 2624) - v18) >> 2);
    }
  }

  v25 = *((*(*a3 + 24))(a3) + 8);
  v26 = *((*(*a3 + 24))(a3) + 176);
  v56 = 0;
  __p = 0uLL;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v26, v26[1], (v26[1] - *v26) >> 2);
  xgboost::common::ColumnSampler::Init((a1 + 32), v25, &__p, *(*(a1 + 8) + 56), *(*(a1 + 8) + 60), *(*(a1 + 8) + 64));
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v27 = *(a1 + 2648);
  v28 = *(a1 + 2640);
  if (v27 == v28)
  {
    v29 = 0;
    v52 = 0;
    v53 = 0;
    v31 = v27;
    v54 = 0;
LABEL_33:
    v32 = *(a1 + 2656);
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3) < 1 - v29)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v27) >> 3);
      v34 = 2 * v33;
      if (2 * v33 <= 1)
      {
        v34 = 1;
      }

      if (v33 >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v34;
      }

      v59 = (a1 + 2640);
      if (v35 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = &v28[24 * (1 - v29)];
    v36 = 24 - 24 * v29;
    do
    {
      *v28 = 0;
      *(v28 + 1) = 0;
      *(v28 + 2) = 0;
      std::vector<xgboost::tree::ColMaker::ThreadEntry>::__init_with_size[abi:ne200100]<xgboost::tree::ColMaker::ThreadEntry*,xgboost::tree::ColMaker::ThreadEntry*>(v28, v52, v53, 0x4EC4EC4EC4EC4EC5 * ((v53 - v52) >> 3));
      v28 += 24;
      v36 -= 24;
    }

    while (v36);
    goto LABEL_43;
  }

  do
  {
    v27 -= 24;
    v58.__ptr_ = v27;
    std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](&v58);
  }

  while (v27 != v28);
  v27 = *(a1 + 2640);
  *(a1 + 2648) = v28;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3);
  if (v28 == v27)
  {
    v31 = v28;
    goto LABEL_33;
  }

  if (v29 < 2)
  {
    goto LABEL_44;
  }

  v30 = v27 + 24;
  while (v28 != v30)
  {
    v28 -= 24;
    v58.__ptr_ = v28;
    std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](&v58);
  }

LABEL_43:
  *(a1 + 2648) = v30;
LABEL_44:
  v58.__ptr_ = &v52;
  std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](&v58);
  v37 = *(a1 + 2640);
  for (i = *(a1 + 2648); v37 != i; v37 += 3)
  {
    std::vector<xgboost::tree::ColMaker::ThreadEntry>::clear[abi:ne200100](v37);
    if ((0x4EC4EC4EC4EC4EC5 * ((v37[2] - *v37) >> 3)) <= 0xFF)
    {
      v39 = v37[1];
      v59 = v37;
      operator new();
    }
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 2680) - *(a1 + 2664)) >> 3)) <= 0xFF)
  {
    v40 = *(a1 + 2672);
    v59 = (a1 + 2664);
    operator new();
  }

  std::vector<int>::reserve((a1 + 2688), 0x100uLL);
  *(a1 + 2696) = *(a1 + 2688);
  LODWORD(v58.__ptr_) = 0;
  std::vector<int>::push_back[abi:ne200100]((a1 + 2688), &v58);
  xgboost::tree::ColMaker::Builder::InitNewNode(a1, (a1 + 2688), a2, a3, a4);
  __p.n128_u32[0] = *(*(a1 + 8) + 12);
  LODWORD(v52) = 0;
  if (__p.n128_i32[0] < 1)
  {
    dmlc::LogCheckFormat<int,int>(&__p, &v52);
  }

  if (*(*(a1 + 8) + 12) > 0)
  {
    xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 2712), &v58);
    xgboost::common::ColumnSampler::GetFeatureSet((a1 + 32), 0, &__p);
    (*(*a3 + 88))(&v52, a3);
    v57[2].__ptr_ = v52;
    v57[3].__ptr_ = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
    }

    xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v57, 0);
  }

  v41 = *(a1 + 2688);
  for (j = *(a1 + 2696); v41 != j; *(v44 + 4) = -1)
  {
    v43 = *v41++;
    v44 = *(a4 + 160) + 20 * v43;
    *(v44 + 16) = *(*(a1 + 2664) + 104 * v43 + 20) * *(*(a1 + 8) + 4);
  }

  v45 = *(a4 + 12);
  if (v45 >= 1)
  {
    v46 = (*(a1 + 2664) + 24);
    v47 = (*(a4 + 208) + 8);
    do
    {
      *(v47 - 2) = *v46;
      *v47 = *(v46 - 1);
      v48 = *(v46 - 2);
      *(v47 - 1) = v48;
      v46 += 13;
      v47 += 4;
      --v45;
    }

    while (v45);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_274D166AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::mutex::~mutex((v34 + 8));
  std::exception_ptr::~exception_ptr(&v37);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(v35);
}

void sub_274D167BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_274D167E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  JUMPOUT(0x274D16820);
}

uint64_t xgboost::BatchIterator<xgboost::SortedCSCPage>::operator!=(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 442);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 32))(v2) ^ 1;
}

uint64_t xgboost::BatchIterator<xgboost::SortedCSCPage>::operator*(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 437);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 16))(v2);
}

uint64_t *xgboost::BatchIterator<xgboost::SortedCSCPage>::operator++(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 431);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  (*(*v2 + 24))(v2);
  return a1;
}

void sub_274D16AD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>::reset[abi:ne200100]<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>,0>(a1, a2);
}

void sub_274D16B18(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274D16BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>,xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>,xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>,xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SortedCSCPage>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::unordered_set<unsigned int>>::__init_with_size[abi:ne200100]<std::unordered_set<unsigned int>*,std::unordered_set<unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<unsigned int>>>(result, a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_set<unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, i + 4);
  }

  return a1;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void xgboost::tree::ColMaker::Builder::UpdateSolution(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v8 = a3[1];
  if (!*(a1 + 24))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v21);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 451);
    v17 = dmlc::LogMessageFatal::GetEntry(&v21);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: this->ctx_", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v21);
  }

  v10 = **a2;
  v11 = *a2[1];
  v12 = a2[1][1] - v11;
  v19[0] = ((*a2)[1] - v10) >> 3;
  v19[1] = v10;
  v19[2] = v12 >> 3;
  v19[3] = v11;
  v21.__ptr_ = 0;
  v22.__m_.__sig = 850045863;
  memset(v22.__m_.__opaque, 0, sizeof(v22.__m_.__opaque));
  if (v8 != v9)
  {
    v13 = 0;
    v14 = (v8 - v9) >> 2;
    do
    {
      v20[0] = a1;
      v20[1] = a3;
      v20[2] = v19;
      v20[3] = a4;
      _ZN4dmlc12OMPException3RunIZN7xgboost4tree8ColMaker7Builder14UpdateSolutionERKNS2_13SortedCSCPageERKNSt3__16vectorIjNS9_9allocatorIjEEEERKNSA_INS2_6detail20GradientPairInternalIfEENSB_ISI_EEEEPNS2_7DMatrixEEUlT_E_JmEEEvSP_DpT0_(&v21, v20, v13++);
    }

    while (v14 != v13);
  }

  dmlc::OMPException::Rethrow(&v21);
  std::mutex::~mutex(&v22);
  std::exception_ptr::~exception_ptr(&v21);
  v15 = *MEMORY[0x277D85DE8];
}

void xgboost::tree::ColMaker::Builder::SyncBestSolution(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(a1 + 2664);
      if (!*(a1 + 24))
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v18);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 542);
        v16 = dmlc::LogMessageFatal::GetEntry(&v18);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: this->ctx_", 24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v18);
      }

      v7 = **(a1 + 2640) + 104 * v5;
      v9 = *(v7 + 24);
      v8 = v7 + 24;
      v10 = v9;
      if (fabsf(v9) == INFINITY)
      {
        goto LABEL_12;
      }

      v11 = v6 + 104 * v5;
      v12 = (v11 + 24);
      v13 = *(v8 + 4);
      v14 = *(v11 + 24);
      if ((*(v11 + 28) & 0x7FFFFFFFu) <= (v13 & 0x7FFFFFFFu))
      {
        if (v14 < v10)
        {
LABEL_9:
          *v12 = v10;
          *(v11 + 28) = v13;
          *(v11 + 32) = *(v8 + 8);
          *(v11 + 64) = *(v8 + 40);
          if (v12 != v8)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v11 + 40), *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 2);
          }

          *(v11 + 72) = *(v8 + 48);
          *(v11 + 88) = *(v8 + 64);
        }
      }

      else if (v14 <= v10)
      {
        goto LABEL_9;
      }

LABEL_12:
      ++v2;
    }

    while (v2 != v3);
  }
}

void xgboost::tree::ColMaker::Builder::SetNonDefaultPosition(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(&__src, 0, sizeof(__src));
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *(a4 + 160) + 20 * *v5;
      if (*(v8 + 4) != -1)
      {
        v9 = *(v8 + 12) & 0x7FFFFFFF;
        if (v7 >= __src.__end_cap_.__value_)
        {
          begin = __src.__begin_;
          v11 = v7 - __src.__begin_;
          v12 = v7 - __src.__begin_;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v14 = __src.__end_cap_.__value_ - __src.__begin_;
          if ((__src.__end_cap_.__value_ - __src.__begin_) >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v15);
          }

          v16 = v12;
          v17 = (4 * v12);
          v18 = &v17[-v16];
          *v17 = v9;
          v7 = (v17 + 1);
          memcpy(v18, begin, v11);
          v19 = __src.__begin_;
          __src.__begin_ = v18;
          __src.__end_ = v7;
          __src.__end_cap_.__value_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v7++ = v9;
        }

        __src.__end_ = v7;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v20 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(__src.__begin_, __src.__end_);
  std::vector<float>::resize(&__src, (v20 - __src.__begin_) >> 2);
  (*(*a3 + 88))(&v23);
  v22[2] = v23;
  v22[3] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SortedCSCPage>::BatchIterator(v22, 0);
}

void sub_274D17980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, std::exception_ptr a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xgboost::common::ColumnSampler *xgboost::common::ColumnSampler::ColumnSampler(xgboost::common::ColumnSampler *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 8) = _D0;
  *(this + 18) = 1065353216;
  v7 = 5489;
  v8 = 1;
  v9 = 21;
  *(this + 20) = 5489;
  do
  {
    v10 = 1812433253 * (v7 ^ (v7 >> 30));
    v7 = v10 + v8;
    *(this + v9) = v9 + v10 - 20;
    ++v8;
    ++v9;
  }

  while (v9 != 644);
  *(this + 322) = 0;
  v11 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
  v19 = v12;
  Engine = rabit::engine::GetEngine(v12);
  (*(*Engine + 16))(Engine, &v19, 4, 0);
  v14 = v19;
  *(this + 20) = v19;
  v15 = 1;
  for (i = 21; i != 644; ++i)
  {
    v17 = 1812433253 * (v14 ^ (v14 >> 30));
    v14 = v17 + v15;
    *(this + i) = i + v17 - 20;
    ++v15;
  }

  *(this + 322) = 0;
  return this;
}

void sub_274D17B28(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(v2, *(v1 + 24));
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

uint64_t xgboost::tree::TrainParam::MaxNodes(xgboost::tree::TrainParam *this)
{
  if (!*(this + 3) && !*(this + 4))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/param.h", 207);
    v3 = dmlc::LogMessageFatal::GetEntry(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Max leaves and max depth cannot both be unconstrained.", 54);
    dmlc::LogMessageFatal::~LogMessageFatal(&v10);
  }

  v4 = *(this + 4);
  if (v4 >= 1)
  {
    return (2 * v4 - 1);
  }

  v6 = *(this + 3);
  v11 = 31;
  v12 = v6;
  if (v6 > 31)
  {
    dmlc::LogCheckFormat<int,int>(&v12, &v11);
  }

  v7 = *(this + 3);
  v8 = __CFADD__(v7, 1);
  v9 = -1 << (v7 + 1);
  result = ~v9;
  v11 = 0;
  v12 = ~v9;
  if (v8)
  {
    dmlc::LogCheckFormat<int,int>(&v12, &v11);
  }

  return result;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_274E1F3B0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_274E1FC60)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_274E1F3B0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_274E1FC60)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
}

void std::vector<xgboost::tree::ColMaker::NodeEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 8);
        if (v6)
        {
          *(v4 - 7) = v6;
          operator delete(v6);
        }

        v4 -= 104;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<xgboost::tree::ColMaker::ThreadEntry>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<xgboost::tree::ColMaker::ThreadEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::tree::ColMaker::ThreadEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::tree::ColMaker::ThreadEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 104)
  {
    v4 = *(i - 64);
    if (v4)
    {
      *(i - 56) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void xgboost::common::ColumnSampler::~ColumnSampler(xgboost::common::ColumnSampler *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(this + 16, *(this + 3));
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void _ZN4dmlc12OMPException3RunIZN7xgboost4tree8ColMaker7Builder14UpdateSolutionERKNS2_13SortedCSCPageERKNSt3__16vectorIjNS9_9allocatorIjEEEERKNSA_INS2_6detail20GradientPairInternalIfEENSB_ISI_EEEEPNS2_7DMatrixEEUlT_E_JmEEEvSP_DpT0_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((*a2 + 2712), v17);
  v6 = a2[2];
  v7 = *(*a2[1] + 4 * a3);
  v9 = *(*(v6 + 8) + 8 * v7);
  v8 = *(*(v6 + 8) + 8 * v7 + 8);
  v10 = *(v6 + 24);
  if (v8 != v9 && v10 == 0)
  {
    std::terminate();
  }

  v12 = v10 + 8 * v9;
  v13 = (v10 + 8 * v8);
  v14 = v8 == v9 || *(v12 + 4) != *(v13 - 1);
  v15 = *(v5 + 16);
  v16 = *(v15 + 8);
  if (v16 == 2)
  {
    goto LABEL_11;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  if (*(v15 + 4) > *(**(v5 + 2848) + 4 * v7) && v14)
  {
LABEL_11:
    xgboost::tree::ColMaker::Builder::EnumerateSplit(v5, v12, v13, 1, v7, a2[3], *(v5 + 2640), v17);
    v16 = *(*(v5 + 16) + 8);
LABEL_12:
    if (v16 == 2)
    {
      return;
    }
  }

  xgboost::tree::ColMaker::Builder::EnumerateSplit(v5, v13 - 2, (v12 - 8), -1, v7, a2[3], *(v5 + 2640), v17);
}

uint64_t **xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 6) == -1)
  {
    v4 = result[1];
    v3 = *result[2];
    v2 = (result[2][1] - v3) >> 2;
    v5 = **result;
    *(a2 + 16) = ((*result)[1] - v5) >> 2;
    *(a2 + 24) = v5;
    v7 = v4;
    v6 = *v4;
    *(a2 + 32) = (v7[1] - v6) >> 2;
    *(a2 + 40) = v6;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 48) = *(result + 28);
  return result;
}

void xgboost::tree::ColMaker::Builder::EnumerateSplit(void *a1, unsigned int *a2, unsigned int *a3, int a4, unsigned int a5, uint64_t *a6, uint64_t *a7, void *a8)
{
  v78 = *MEMORY[0x277D85DE8];
  v73 = a7;
  v74 = a4;
  if ((*(a1[1] + 76) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v76);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_colmaker.cc", 369);
    v66 = dmlc::LogMessageFatal::GetEntry(v76);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Check failed: param_.cache_opt", 30);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v76);
    a7 = v73;
    a4 = v74;
  }

  v11 = a1[336];
  for (i = a1[337]; v11 != i; v14[1] = 0)
  {
    v13 = *v11++;
    v14 = (*a7 + 104 * v13);
    *v14 = 0;
  }

  v75 = 0uLL;
  memset(v77, 0, sizeof(v77));
  memset(v76, 0, sizeof(v76));
  v15 = a3;
  if (a4 <= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  if (a4 > 0)
  {
    v15 = a2;
  }

  v17 = 32;
  if (a4 <= 0)
  {
    v17 = -32;
  }

  v18 = ((v16 - v15) >> 3) / v17;
  v71 = &a2[64 * v18];
  if (v18)
  {
    v19 = 8 * v74;
    do
    {
      v20 = 0;
      v21 = a1[327];
      v22 = *a6;
      v23 = a2;
      do
      {
        v24 = *v23;
        *(v77 + v20) = *(v21 + 4 * v24);
        *(v76 + v20++) = *(v22 + 8 * v24);
        v23 = (v23 + v19);
      }

      while (v20 != 32);
      v25 = 0;
      v26 = 4;
      v27 = v76 + 1;
      do
      {
        v28 = *(v77 + v25);
        if ((v28 & 0x80000000) == 0 && xgboost::FeatureInteractionConstraintHost::Query((a1 + 343), *(v77 + v25), a5))
        {
          v29.i32[0] = *(v27 - 1);
          v30.i32[0] = *v27;
          xgboost::tree::ColMaker::Builder::UpdateEnumeration(a1, v28, v74, a5, v75.i64, *v73, a8, v29, v30, *(a2 + v26));
        }

        v25 += 4;
        v27 += 2;
        v26 += v19;
      }

      while (v25 != 128);
      a2 += 64 * v74;
    }

    while (a2 != v71);
  }

  if (v71 != a3)
  {
    v31 = a1[327];
    v32 = *a6;
    v33 = v76;
    v34 = v77;
    v35 = v71;
    do
    {
      v36 = *v35;
      *v34++ = *(v31 + 4 * v36);
      *v33++ = *(v32 + 8 * v36);
      v35 += 2 * v74;
    }

    while (v35 != a3);
    v37 = v76 + 1;
    v38 = v77;
    do
    {
      v40 = *v38++;
      v39 = v40;
      if ((v40 & 0x80000000) == 0 && xgboost::FeatureInteractionConstraintHost::Query((a1 + 343), v39, a5))
      {
        v41.i32[0] = *(v37 - 1);
        v42.i32[0] = *v37;
        xgboost::tree::ColMaker::Builder::UpdateEnumeration(a1, v39, v74, a5, v75.i64, *v73, a8, v41, v42, *(v71 + 1));
      }

      v37 += 2;
      v71 += 2 * v74;
    }

    while (v71 != a3);
  }

  v43 = a1[336];
  v44 = a1[337];
  v45 = v73;
  for (j = v74; v43 != v44; ++v43)
  {
    v47 = *v43;
    v48 = *v45 + 104 * *v43;
    v49 = *v48;
    v52 = vsubq_f64(*(a1[333] + 104 * *v43), *v48);
    v75 = v52;
    v49.i64[0] = *(v48 + 8);
    v50 = a1[1];
    v51 = v50[8];
    v52.i32[1] = v52.i32[3];
    if (*v49.i64 < v51 || *&v52.i64[1] < v51)
    {
      continue;
    }

    *v52.i32 = fabsf(*(v48 + 16));
    v54 = *v52.i32 + 0.000001;
    if (j == -1)
    {
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a8, v50, v47, a5, v75.i64, v48, v52, v49);
      v59 = v58 - *(a1[333] + 104 * v47 + 16);
      v45 = v73;
      j = v74;
      if (fabsf(v59) != INFINITY)
      {
        v60 = *(v48 + 24);
        if ((*(v48 + 28) & 0x7FFFFFFFu) > a5)
        {
          if (v60 > v59)
          {
            continue;
          }

LABEL_49:
          v61 = *(v48 + 16) - v54;
          *(v48 + 24) = v59;
          *(v48 + 28) = a5 | 0x80000000;
          v63 = &v75;
          v62 = v48;
LABEL_50:
          *(v48 + 32) = v61;
          *(v48 + 64) = 0;
          *(v48 + 72) = *v63;
          *(v48 + 88) = *v62;
          continue;
        }

        if (v60 < v59)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      *v52.i32 = -v54;
      if (j != 1)
      {
        v54 = -v54;
      }

      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a8, v50, v47, a5, v48, v75.i64, v52, v49);
      v56 = v55 - *(a1[333] + 104 * v47 + 16);
      v45 = v73;
      j = v74;
      if (fabsf(v56) == INFINITY)
      {
        continue;
      }

      v57 = *(v48 + 24);
      if ((*(v48 + 28) & 0x7FFFFFFFu) > a5)
      {
        if (v57 > v56)
        {
          continue;
        }

LABEL_47:
        v61 = v54 + *(v48 + 16);
        *(v48 + 24) = v56;
        *(v48 + 28) = a5;
        v62 = &v75;
        v63 = v48;
        goto LABEL_50;
      }

      if (v57 < v56)
      {
        goto LABEL_47;
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_274D18B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

BOOL xgboost::FeatureInteractionConstraintHost::Query(xgboost::FeatureInteractionConstraintHost *this, int a2, unsigned int a3)
{
  v8 = a3;
  if (*(this + 100) != 1)
  {
    return 1;
  }

  v4 = *(this + 3);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - v4) >> 3) <= a2 || (v5 = a2, v6 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((v4 + 40 * a2), &v8), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - *(this + 3)) >> 3) <= v5))
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
  }

  return v6 != 0;
}

void xgboost::tree::ColMaker::Builder::UpdateEnumeration(uint64_t a1, unsigned int a2, int a3, unsigned int a4, double *a5, uint64_t a6, void *a7, int8x16_t a8, int8x16_t a9, float a10)
{
  v11 = a6 + 104 * a2;
  v12 = *(v11 + 8);
  if (v12 != 0.0)
  {
    v13 = (v11 + 16);
    if (*(v11 + 16) == a10)
    {
      goto LABEL_6;
    }

    v16 = *(a1 + 8);
    v17 = v16[8];
    if (v12 < v17)
    {
      goto LABEL_6;
    }

    v18 = a5;
    v19 = a2;
    v20 = (*(a1 + 2664) + 104 * a2);
    v21 = v20[1] - v12;
    *a5 = *v20 - *v11;
    a5[1] = v21;
    if (v21 < v17)
    {
      goto LABEL_6;
    }

    v33 = a8.i32[0];
    v34 = a9.i32[0];
    if (a3 != -1)
    {
      xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, v16, a2, a4, v11, a5, a8, a9);
      v24 = v23 - *(*(a1 + 2664) + 104 * v19 + 16);
      v25 = *(v11 + 16);
      if (((v25 + a10) * 0.5) == a10)
      {
        a8.i32[0] = v33;
        a9.i32[0] = v34;
        if (fabsf(v24) != INFINITY)
        {
          v26 = *(v11 + 24);
          if ((*(v11 + 28) & 0x7FFFFFFFu) <= a4)
          {
            if (v26 < v24)
            {
LABEL_28:
              *(v11 + 24) = v24;
              *(v11 + 28) = a4;
LABEL_33:
              v32 = v11;
LABEL_37:
              *(v11 + 32) = v25;
              *(v11 + 64) = 0;
              *(v11 + 72) = *v32;
              *(v11 + 88) = *v18;
            }
          }

          else if (v26 <= v24)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        a8.i32[0] = v33;
        a9.i32[0] = v34;
        if (fabsf(v24) != INFINITY)
        {
          v30 = *(v11 + 24);
          if ((*(v11 + 28) & 0x7FFFFFFFu) <= a4)
          {
            if (v30 >= v24)
            {
              goto LABEL_6;
            }
          }

          else if (v30 > v24)
          {
            goto LABEL_6;
          }

          *(v11 + 24) = v24;
          *(v11 + 28) = a4;
          v25 = (v25 + a10) * 0.5;
          goto LABEL_33;
        }
      }

LABEL_6:
      a8.i32[1] = a9.i32[0];
      *v11 = vaddq_f64(*v11, vcvtq_f64_f32(*a8.i8));
      goto LABEL_7;
    }

    xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcSplitGain(a7, v16, a2, a4, a5, v11, a8, a9);
    v28 = v27 - *(*(a1 + 2664) + 104 * v19 + 16);
    v25 = *(v11 + 16);
    if (((v25 + a10) * 0.5) == a10)
    {
      a8.i32[0] = v33;
      a9.i32[0] = v34;
      if (fabsf(v28) == INFINITY)
      {
        goto LABEL_6;
      }

      v29 = *(v11 + 24);
      if ((*(v11 + 28) & 0x7FFFFFFFu) <= a4)
      {
        if (v29 >= v28)
        {
          goto LABEL_6;
        }
      }

      else if (v29 > v28)
      {
        goto LABEL_6;
      }

      *(v11 + 24) = v28;
      *(v11 + 28) = a4 | 0x80000000;
    }

    else
    {
      a8.i32[0] = v33;
      a9.i32[0] = v34;
      if (fabsf(v28) == INFINITY)
      {
        goto LABEL_6;
      }

      v31 = *(v11 + 24);
      if ((*(v11 + 28) & 0x7FFFFFFFu) <= a4)
      {
        if (v31 >= v28)
        {
          goto LABEL_6;
        }
      }

      else if (v31 > v28)
      {
        goto LABEL_6;
      }

      *(v11 + 24) = v28;
      *(v11 + 28) = a4 | 0x80000000;
      v25 = (v25 + a10) * 0.5;
    }

    v32 = v18;
    v18 = v11;
    goto LABEL_37;
  }

  *v11 = *v11 + *a8.i32;
  *(v11 + 8) = v12 + *a9.i32;
  v13 = (v11 + 16);
LABEL_7:
  *v13 = a10;
}