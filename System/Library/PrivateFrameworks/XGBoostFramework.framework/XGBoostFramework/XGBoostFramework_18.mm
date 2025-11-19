void xgboost::gbm::GBTreeModel::LoadModel(xgboost::gbm::GBTreeModel *this, const xgboost::Json *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree_model_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v4);
  v33.__m_.__sig = 0;
  *v33.__m_.__opaque = 0;
  v32.__ptr_ = &v33;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v31.__ptr_ = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v32, v6 + 4);
      v5 = std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
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
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  memset(v28, 0, sizeof(v28));
  v13 = xgboost::gbm::GBTreeModelParam::__MANAGER__(v5);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v13, this + 16, v32.__ptr_, &v33, 0, v28, 0);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v32, v33.__m_.__sig);
  v32.__ptr_ = v28;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](this + 22);
  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](this + 25);
  std::string::basic_string[abi:ne200100]<0>(&v32, "trees");
  v14 = (*(**a2 + 24))(*a2, &v32);
  v15 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v14);
  if (v33.__m_.__opaque[7] < 0)
  {
    operator delete(v32.__ptr_);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::resize(this + 22, (v15[3] - v15[2]) >> 3);
  if (!*(this + 31))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v32);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree_model.cc", 99);
    v26 = dmlc::LogMessageFatal::GetEntry(&v32);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: ctx_", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v32);
  }

  v17 = v15[2];
  v16 = v15[3];
  v32.__ptr_ = 0;
  v33.__m_.__sig = 850045863;
  memset(v33.__m_.__opaque, 0, sizeof(v33.__m_.__opaque));
  if (v16 != v17)
  {
    v18 = v15[2];
    std::string::basic_string[abi:ne200100]<0>(__p, "id");
    v19 = (*(**v18 + 24))(*v18, __p);
    v20 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v19) + 2);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < (*(this + 23) - *(this + 22)) >> 3)
    {
      operator new();
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
  }

  dmlc::OMPException::Rethrow(&v32);
  std::mutex::~mutex(&v33);
  std::exception_ptr::~exception_ptr(&v32);
  std::vector<int>::resize((this + 224), *(this + 4));
  std::string::basic_string[abi:ne200100]<0>(&v32, "tree_info");
  v21 = (*(**a2 + 24))(*a2, &v32);
  v22 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v21);
  if (v33.__m_.__opaque[7] < 0)
  {
    operator delete(v32.__ptr_);
  }

  if (*(this + 4) >= 1)
  {
    v23 = 0;
    do
    {
      *(*(this + 28) + 4 * v23) = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v22[2] + 8 * v23)) + 2);
      ++v23;
    }

    while (v23 < *(this + 4));
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_274E0C740(_Unwind_Exception *a1)
{
  std::mutex::~mutex(&v3);
  std::exception_ptr::~exception_ptr(&v2);
  _Unwind_Resume(a1);
}

void sub_274E0C79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::GradientIndexPageSource::Fetch(xgboost::data::GradientIndexPageSource *this)
{
  if (*(this + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_source.h", 107);
    v27 = dmlc::LogMessageFatal::GetEntry(__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  if (**(this + 14) != 1)
  {
    v12 = *(this + 26);
    if (v12 && (*(this + 160) & 1) == 0)
    {
      xgboost::data::SparsePageSource::operator++(*(this + 18));
      v12 = *(this + 26);
    }

    LODWORD(v31[0]) = *(*(this + 18) + 104);
    if (v12 != LODWORD(v31[0]))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(this + 26, v31);
    }

    (*(**(this + 18) + 40))(&v29);
    operator new();
  }

  v2 = *(this + 16);
  if (v2)
  {
    *(this + 16) = 0;
    (*(*v2 + 24))(v2);
    v3 = *(this + 17);
    v4 = *(this + 27);
    v5 = *v3;
    v6 = v3[1];
    v7 = (v6 - *v3) >> 3;
    if (v4 <= v7)
    {
      if (v4 < v7)
      {
        std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](*(this + 17), v5 + 8 * v4);
      }
    }

    else
    {
      v8 = v4 - v7;
      v9 = v3[2];
      if (v8 > (v9 - v6) >> 3)
      {
        v10 = v9 - v5;
        if (v10 >> 2 > v4)
        {
          v4 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v4;
        }

        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(v3[1], 8 * v8);
      v3[1] = v6 + 8 * v8;
    }
  }

  v13 = *(this + 27);
  if (v13 >= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v33[0] = v14;
  LODWORD(v31[0]) = 0;
  if (!v13)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v33, v31);
  }

  v15 = *(this + 26);
  v30 = v15;
  if (v33[0])
  {
    v16 = 0;
    do
    {
      v17 = v15 % *(this + 27);
      v30 = v17;
      v18 = **(this + 17);
      if (v17 >= (*(*(this + 17) + 8) - v18) >> 3)
      {
        std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
      }

      if (!*(v18 + 8 * v17))
      {
        v31[0] = ((*(*(this + 14) + 64) - *(*(this + 14) + 56)) >> 3);
        if (v17 >= v31[0])
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v30, v31);
        }

        operator new();
      }

      ++v16;
      v15 = v17 + 1;
      v30 = v15;
    }

    while (v16 < v33[0]);
  }

  v19 = *(this + 17);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      if (*v20++)
      {
        ++v22;
      }
    }

    while (v20 != v21);
  }

  v31[0] = v22;
  if (v22 != v33[0])
  {
    dmlc::LogCheckFormat<long,unsigned long>(v31, v33);
  }

  std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>::get((**(this + 17) + 8 * *(this + 26)), __p);
  v24 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v25 = *(this + 10);
  *(this + 72) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }
}

void sub_274E0D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0D6E4);
}

void xgboost::data::GradientIndexPageSource::~GradientIndexPageSource(xgboost::data::GradientIndexPageSource *this)
{
  *this = &unk_2883E73E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *this = &unk_2883E73E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::__on_zero_shared(a1);
}

void sub_274E0D9B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274E0D9A4);
}

void sub_274E0D9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>>::set_value<std::shared_ptr<xgboost::GHistIndexMatrix>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}::operator()(uint64_t a1, void *a2)
{
  std::chrono::steady_clock::now();
  std::chrono::steady_clock::now();
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  xgboost::data::CreatePageFormat<xgboost::GHistIndexMatrix>(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::data::Cache::ShardName(*(a2[1] + 112), v10);
  v3 = *(*(a2[1] + 112) + 56);
  if (*a2 < ((*(*(a2[1] + 112) + 64) - v3) >> 3))
  {
    v9 = *(v3 + 8 * *a2);
    if (v11 >= 0)
    {
      v4 = v10;
    }

    else
    {
      v4 = v10[0];
    }

    v5 = dmlc::SeekStream::CreateForRead(v4, 0);
    (*(*v5 + 32))(v5, v9);
    v6 = (*(*v5 + 40))(v5);
    if (v6 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v9);
    }

    operator new();
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_274E0DE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  (*(*v22 + 24))(v22);
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_274E0DF44(uint64_t a1, ...)
{
  va_start(va, a1);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0DF50);
}

uint64_t xgboost::data::CreatePageFormat<xgboost::GHistIndexMatrix>(uint64_t a1)
{
  dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get();
  v2 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get();
  v3 = v2 + 7;
  v4 = *(v2 + 7);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v2 + 7;
  do
  {
    v6 = std::less<std::string>::operator()[abi:ne200100]((v3 - 1), v4 + 4, a1);
    v7 = v6;
    if (!v6)
    {
      v5 = v4;
    }

    v4 = v4[v7];
  }

  while (v4);
  if (v5 == v3 || std::less<std::string>::operator()[abi:ne200100]((v3 - 1), a1, v5 + 4) || (v8 = v5[7]) == 0)
  {
LABEL_16:
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_writer.h", 60);
    v13 = dmlc::LogMessageFatal::GetEntry(&v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown format type ", 20);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    return 0;
  }

  else
  {
    v9 = v8[12];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v10 = *(*v9 + 48);

    return v10();
  }
}

void std::__shared_ptr_emplace<xgboost::GHistIndexMatrix>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E74B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_274E0E1E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::metric::AFTNLogLikDispatcher::~AFTNLogLikDispatcher(xgboost::metric::AFTNLogLikDispatcher *this)
{
  *this = &unk_2883E7570;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2883E7570;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::metric::AFTNLogLikDispatcher::LoadConfig(xgboost::metric::AFTNLogLikDispatcher *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "aft_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::common::AFTParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274E0E49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::metric::AFTNLogLikDispatcher::SaveConfig(xgboost::metric::AFTNLogLikDispatcher *this, xgboost::Json *a2)
{
  v3 = (*(*this + 48))(this);
  std::string::basic_string[abi:ne200100]<0>(v5, v3);
  v7 = &unk_2883E6F38;
  v8 = 0;
  *v9 = *v5;
  v10 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

uint64_t xgboost::metric::AFTNLogLikDispatcher::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v8);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v4 = *(a1 + 20);
  switch(v4)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  Entry = dmlc::LogMessageFatal::GetEntry(&v9);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 266);
  v6 = dmlc::LogMessageFatal::GetEntry(&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown probability distribution", 32);
  dmlc::LogMessageFatal::~LogMessageFatal(&v9);
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
}

void sub_274E0E8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::metric::AFTNLogLikDispatcher::Eval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 245);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: metric_", 21);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "AFT metric must be configured first, with distribution type and scale", 69);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    v8 = *(a1 + 32);
  }

  return (*(*v8 + 40))(v8, a2, a3, a4);
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::NormalDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v8);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::NormalDistribution>>::Eval(float *a1, float ***a2, void *a3, int a4)
{
  v7 = a1;
  v54 = *MEMORY[0x277D85DE8];
  __p = ((*a2)[1] - **a2);
  v47 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v47)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v47);
  }

  __p = ((*a2)[1] - **a2);
  v47 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v47)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v47);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v52);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v44 = dmlc::LogMessageFatal::GetEntry(&v52);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v52);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v51 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v51 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v51, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *a2;
    v52.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v46 = a4;
    v52.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v47, 1uLL);
    v16 = v51;
    v52.__ptr_ = 0;
    v53.__m_.__sig = 850045863;
    memset(v53.__m_.__opaque, 0, sizeof(v53.__m_.__opaque));
    if (v51)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v17;
      v25 = v47;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v24;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22 * ((v32 - v31) / v22) * -0.5) / 2.50662827 / (v22 * v28);
        }

        else
        {
          v35 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v35 = (erf((v33 - v31) / v22 / 1.41421356) + 1.0) * 0.5;
          }

          v36 = 0.0;
          if (v27 > 0.0)
          {
            v36 = (erf((v32 - v31) / v22 / 1.41421356) + 1.0) * 0.5;
          }

          v34 = v35 - v36;
        }

        *v23 = *v23 - log(fmax(v34, 1.0e-12)) * v26;
        ++v21;
        *v25 = v26 + *v25;
        ++v20;
        ++v19;
        ++v24;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v52);
    std::mutex::~mutex(&v53);
    std::exception_ptr::~exception_ptr(&v52);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v50)
    {
      v37 = __p;
      do
      {
        v38 = *v37++;
        v9 = v9 + v38;
      }

      while (v37 != v50);
    }

    a4 = v46;
    if (v47 != v48)
    {
      v10 = 0.0;
      v39 = v47;
      do
      {
        v40 = *v39++;
        v10 = v10 + v40;
      }

      while (v39 != v48);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
      a1 = __p;
    }

    if (a1)
    {
      v50 = a1;
      operator delete(a1);
    }
  }

  v52.__ptr_ = *&v9;
  *&v53.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v52, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::LogisticDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v8);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::LogisticDistribution>>::Eval(float *a1, float ***a2, void *a3, int a4)
{
  v7 = a1;
  v58 = *MEMORY[0x277D85DE8];
  __p = ((*a2)[1] - **a2);
  v51 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v51)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v51);
  }

  __p = ((*a2)[1] - **a2);
  v51 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v51)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v51);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v56);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v48 = dmlc::LogMessageFatal::GetEntry(&v56);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v56);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v55 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v55 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v55, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *a2;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v50 = a4;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v51, 1uLL);
    v16 = v55;
    v56.__ptr_ = 0;
    v57.__m_.__sig = 850045863;
    memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
    if (v55)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v51;
      v25 = v17;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v25;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22);
          v35 = 0.0;
          if (fabs(v34) != INFINITY && fabs(v34 * v34) != INFINITY)
          {
            v35 = v34 / ((v34 + 1.0) * (v34 + 1.0));
          }

          v36 = v35 / (v22 * v28);
        }

        else
        {
          v37 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v38 = exp((v33 - v31) / v22);
            if (fabs(v38) != INFINITY)
            {
              v37 = v38 / (v38 + 1.0);
            }
          }

          v39 = 0.0;
          if (v27 > 0.0)
          {
            v40 = exp((v32 - v31) / v22);
            v39 = 1.0;
            if (fabs(v40) != INFINITY)
            {
              v39 = v40 / (v40 + 1.0);
            }
          }

          v36 = v37 - v39;
        }

        *v23 = *v23 - log(fmax(v36, 1.0e-12)) * v26;
        ++v21;
        *v24 = v26 + *v24;
        ++v20;
        ++v19;
        ++v25;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v56);
    std::mutex::~mutex(&v57);
    std::exception_ptr::~exception_ptr(&v56);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v54)
    {
      v41 = __p;
      do
      {
        v42 = *v41++;
        v9 = v9 + v42;
      }

      while (v41 != v54);
    }

    a4 = v50;
    if (v51 != v52)
    {
      v10 = 0.0;
      v43 = v51;
      do
      {
        v44 = *v43++;
        v10 = v10 + v44;
      }

      while (v43 != v52);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
      a1 = __p;
    }

    if (a1)
    {
      v54 = a1;
      operator delete(a1);
    }
  }

  v56.__ptr_ = *&v9;
  *&v57.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v56, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::ExtremeDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v8);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::ExtremeDistribution>>::Eval(float *a1, float ***a2, void *a3, int a4)
{
  v7 = a1;
  v58 = *MEMORY[0x277D85DE8];
  __p = ((*a2)[1] - **a2);
  v51 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v51)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v51);
  }

  __p = ((*a2)[1] - **a2);
  v51 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v51)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v51);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v56);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v48 = dmlc::LogMessageFatal::GetEntry(&v56);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v56);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v55 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v55 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v55, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *a2;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v50 = a4;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v51, 1uLL);
    v16 = v55;
    v56.__ptr_ = 0;
    v57.__m_.__sig = 850045863;
    memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
    if (v55)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v51;
      v25 = v17;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v25;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22);
          v35 = 0.0;
          if (fabs(v34) != INFINITY)
          {
            v35 = v34 * exp(-v34);
          }

          v36 = v35 / (v22 * v28);
        }

        else
        {
          v37 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v38 = exp((v33 - v31) / v22);
            v37 = 1.0 - exp(-v38);
          }

          v39 = 0.0;
          if (v27 > 0.0)
          {
            v40 = exp((v32 - v31) / v22);
            v39 = 1.0 - exp(-v40);
          }

          v36 = v37 - v39;
        }

        *v23 = *v23 - log(fmax(v36, 1.0e-12)) * v26;
        ++v21;
        *v24 = v26 + *v24;
        ++v20;
        ++v19;
        ++v25;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v56);
    std::mutex::~mutex(&v57);
    std::exception_ptr::~exception_ptr(&v56);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v54)
    {
      v41 = __p;
      do
      {
        v42 = *v41++;
        v9 = v9 + v42;
      }

      while (v41 != v54);
    }

    a4 = v50;
    if (v51 != v52)
    {
      v10 = 0.0;
      v43 = v51;
      do
      {
        v44 = *v43++;
        v10 = v10 + v44;
      }

      while (v43 != v52);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
      a1 = __p;
    }

    if (a1)
    {
      v54 = a1;
      operator delete(a1);
    }
  }

  v56.__ptr_ = *&v9;
  *&v57.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v56, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalIntervalRegressionAccuracy>::Configure(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v4);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v2 = dmlc::LogMessageFatal::GetEntry(&v4);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalIntervalRegressionAccuracy>::Eval(void *a1, float ***a2, void *a3, int a4)
{
  v7 = a1;
  v51 = *MEMORY[0x277D85DE8];
  __p = ((*a2)[1] - **a2);
  v44 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v44)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v44);
  }

  __p = ((*a2)[1] - **a2);
  v44 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v44)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v44);
  }

  v8 = a1[1];
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v49);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v42 = dmlc::LogMessageFatal::GetEntry(&v49);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v49);
    v8 = v7[1];
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v48 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v48 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v48, &__p);
    }

    v12 = a3[13];
    v13 = a3[14];
    v14 = a3[9];
    v15 = *a2;
    v49.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL);
    v16 = a4;
    v49.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v44, 1uLL);
    v17 = v48;
    v49.__ptr_ = 0;
    v50.__m_.__sig = 850045863;
    memset(v50.__m_.__opaque, 0, sizeof(v50.__m_.__opaque));
    if (v48)
    {
      v18 = *v14;
      v19 = v14[1];
      v20 = *v12;
      v21 = *v13;
      v22 = *v15;
      v23 = __p;
      v24 = v44;
      v25 = *v14;
      do
      {
        v26 = 1.0;
        if (v18 != v19)
        {
          v26 = *v25;
        }

        v27 = *v20++;
        v28 = v27;
        v29 = *v21++;
        v30 = v29;
        v31 = *v22++;
        v32 = exp(v31);
        if (v32 > v30 || v32 < v28)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = 1.0;
        }

        *v23 = *v23 + v34 * v26;
        *v24 = v26 + *v24;
        ++v25;
        --v17;
      }

      while (v17);
    }

    dmlc::OMPException::Rethrow(&v49);
    std::mutex::~mutex(&v50);
    std::exception_ptr::~exception_ptr(&v49);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v47)
    {
      v35 = __p;
      do
      {
        v36 = *v35++;
        v9 = v9 + v36;
      }

      while (v35 != v47);
    }

    a4 = v16;
    if (v44 != v45)
    {
      v10 = 0.0;
      v37 = v44;
      do
      {
        v38 = *v37++;
        v10 = v10 + v38;
      }

      while (v37 != v45);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
      a1 = __p;
    }

    if (a1)
    {
      v47 = a1;
      operator delete(a1);
    }
  }

  v49.__ptr_ = *&v9;
  *&v50.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1);
    (*(*Engine + 8))(Engine, &v49, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

char *XGBGetLastError()
{
  {
    v2 = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    _tlv_atexit(XGBAPIErrorEntry::~XGBAPIErrorEntry, v2);
  }

  result = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void XGBAPISetLastError(const char *a1)
{
  {
    v2 = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    _tlv_atexit(XGBAPIErrorEntry::~XGBAPIErrorEntry, v2);
  }

  dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);

  JUMPOUT(0x277C68BE0);
}

void XGBAPIErrorEntry::~XGBAPIErrorEntry(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<xgboost::data::$_0,std::allocator<xgboost::data::$_0>,xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7860;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7860;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, unint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E10F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::Write(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 1);
  v11 = v7 - 1;
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E11264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::data::$_1,std::allocator<xgboost::data::$_1>,xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7948;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7948;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, unint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E1177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::Write(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 1);
  v11 = v7 - 1;
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E11A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::data::$_2,std::allocator<xgboost::data::$_2>,xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7A30;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7A30;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, unint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E11F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::Write(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 1);
  v11 = v7 - 1;
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E12224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::RecordIOSplitter::SeekRecordBegin(uint64_t a1, uint64_t (***a2)(void, uint64_t *, uint64_t))
{
  v10 = 0;
  v3 = 0;
  while ((**a2)(a2, (&v10 + 4), 4))
  {
    if (HIDWORD(v10) == -824761590)
    {
      if (!(**a2)(a2, &v10, 4))
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v9);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 16);
        v5 = dmlc::LogMessageFatal::GetEntry(&v9);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: fi->Read(&lrec, sizeof(lrec)) != 0", 48);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "invalid record io format", 24);
        dmlc::LogMessageFatal::~LogMessageFatal(&v9);
      }

      if (!(v10 >> 30))
      {
        return v3;
      }

      v3 += 8;
    }

    else
    {
      v3 += 4;
    }
  }

  return v3;
}

const char *dmlc::io::RecordIOSplitter::FindLastRecordBegin(dmlc::io::RecordIOSplitter *this, const char *a2, const char *a3)
{
  v4 = a2;
  v10 = 0;
  v11 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  v10 = 0;
  v11 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  if (a2 + 8 > a3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 32);
    v6 = dmlc::LogMessageFatal::GetEntry(&v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: p >= pbegin + 2", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }

  v8 = a3 - 8;
  if (a3 - 8 != v4)
  {
    while (*v8 != -824761590 || *(v8 + 1) >> 30)
    {
      v8 -= 4;
      if (v8 == v4)
      {
        return v4;
      }
    }

    return v8;
  }

  return v4;
}

void sub_274E12628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::io::RecordIOSplitter::ExtractNextRecord(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v37 = a3[1];
  if (*a3 != v37)
  {
    LOBYTE(v6) = *a3;
    v7 = a3[1];
    if (v3 + 8 > v37)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 46);
      v9 = dmlc::LogMessageFatal::GetEntry(&v40);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
      v6 = *a3;
    }

    v38 = 0;
    v39 = v6 & 3;
    if ((v6 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v39, &v38);
    }

    v12 = a3[1];
    v38 = 0;
    v39 = v12 & 3;
    if ((v12 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v39, &v38);
    }

    v13 = *(*a3 + 4);
    v14 = v13 & 0x1FFFFFFF;
    v15 = *a3 + 8;
    *a2 = v15;
    v16 = v15 + ((v14 + 3) & 0x3FFFFFFC);
    *a3 = v16;
    if (v16 > a3[1])
    {
      v17 = dmlc::LogMessageFatal::GetEntry(&v40);
      dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 57);
      v18 = dmlc::LogMessageFatal::GetEntry(&v40);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Check failed: chunk->begin <= chunk->end", 40);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v40);
    }

    v21 = v13 >> 29;
    a2[1] = v14;
    if (v21)
    {
      if (v21 == 1 || (v22 = dmlc::LogMessageFatal::GetEntry(&v40), dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 62), v23 = dmlc::LogMessageFatal::GetEntry(&v40), v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: cflag == 1U", 25), v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Invalid RecordIO Format", 23), dmlc::LogMessageFatal::~LogMessageFatal(&v40), v21 != 3))
      {
        v26 = *a3;
        do
        {
          if ((v26 + 2) > a3[1])
          {
            v27 = dmlc::LogMessageFatal::GetEntry(&v40);
            dmlc::LogMessageFatal::Entry::Init(v27, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 64);
            v28 = dmlc::LogMessageFatal::GetEntry(&v40);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v40);
            v26 = *a3;
          }

          if (*v26 != -824761590)
          {
            v30 = dmlc::LogMessageFatal::GetEntry(&v40);
            dmlc::LogMessageFatal::Entry::Init(v30, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 66);
            v31 = dmlc::LogMessageFatal::GetEntry(&v40);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v40);
          }

          v33 = v26[1];
          *(*a2 + a2[1]) = -824761590;
          v34 = a2[1] + 4;
          a2[1] = v34;
          v35 = v33 & 0x1FFFFFFF;
          if ((v33 & 0x1FFFFFFF) != 0)
          {
            memmove((*a2 + v34), (*a3 + 8), v33 & 0x1FFFFFFF);
            a2[1] += v35;
          }

          v26 = (*a3 + ((v35 + 3) & 0x3FFFFFFC) + 8);
          *a3 = v26;
        }

        while (v33 >> 29 != 3);
      }
    }
  }

  return v3 != v37;
}

void sub_274E12AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::io::RecordIOSplitter::~RecordIOSplitter(dmlc::io::RecordIOSplitter *this)
{
  dmlc::io::InputSplitBase::~InputSplitBase(this);

  JUMPOUT(0x277C69180);
}

void xgboost::common::ColumnSampler::ColSample(uint64_t ***a1@<X1>, uint64_t ***a2@<X8>, float a3@<S0>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (a3 != 1.0)
  {
    v6 = *v4;
    v8 = **v4;
    v7 = (*v4)[1];
    LODWORD(v11) = 0;
    v9 = v7 - v8;
    v12 = v9 >> 2;
    if (v9)
    {
      v6[1];
      *v6;
      _ZNSt3__115allocate_sharedB8ne200100IN7xgboost16HostDeviceVectorIjEENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    dmlc::LogCheckFormat<unsigned long,int>(&v12, &v11);
  }

  v5 = a1[1];
  *a2 = v4;
  a2[1] = v5;
  *a1 = 0;
  a1[1] = 0;
  v10 = *MEMORY[0x277D85DE8];
}

void sub_274E13134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  v20 = a17;
  a17 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a17, v20);
  }

  v21 = *(v18 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *result, uint64_t *a2, unint64_t **a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    v10 = **a3;
    if (v10 > v9)
    {
      v11 = *result;
      if (v10 > *result)
      {
        if (*((*a3)[1] + 4 * v9) > *((*a3)[1] + 4 * v11))
        {
          *result = v9;
          *(a2 - 1) = v11;
        }

        return result;
      }
    }

    goto LABEL_43;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v13 = result + 1;
    if (result + 1 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *a3;
    v16 = result;
    while (1)
    {
      v17 = v13;
      v18 = *v13;
      if (*v15 <= v18)
      {
        break;
      }

      v19 = *v16;
      if (*v15 <= *v16)
      {
        break;
      }

      v20 = v15[1];
      v21 = *(v20 + 4 * v18);
      if (v21 > *(v20 + 4 * v19))
      {
        v22 = v14;
        while (1)
        {
          *(result + v22 + 8) = v19;
          if (!v22)
          {
            break;
          }

          if (*v15 <= v18)
          {
            goto LABEL_43;
          }

          v19 = *(result + v22 - 8);
          if (*v15 <= v19)
          {
            goto LABEL_43;
          }

          v22 -= 8;
          if (v21 <= *(v20 + 4 * v19))
          {
            v23 = (result + v22 + 8);
            goto LABEL_22;
          }
        }

        v23 = result;
LABEL_22:
        *v23 = v18;
      }

      v13 = v17 + 1;
      v14 += 8;
      v16 = v17;
      if (v17 + 1 == a2)
      {
        return result;
      }
    }

LABEL_43:
    std::terminate();
  }

  v25 = a5;
  v26 = a4 >> 1;
  v27 = &result[a4 >> 1];
  v28 = a4 >> 1;
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5);
    v29 = &v25[v26];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v29);
    v30 = &v25[a4];
    v31 = *a3;
    v32 = v29;
    while (v32 != v30)
    {
      v33 = *v32;
      if (*v31 <= *v32 || *v31 <= *v25)
      {
        goto LABEL_43;
      }

      v34 = v31[1];
      v35 = *(v34 + 4 * v33);
      v36 = *(v34 + 4 * *v25);
      if (v35 <= v36)
      {
        v33 = *v25;
      }

      v25 += v35 <= v36;
      v32 += v35 > v36;
      *v8 = v33;
      v8 += 8;
      if (v25 == v29)
      {
        while (v32 != v30)
        {
          v38 = *v32++;
          *v8 = v38;
          v8 += 8;
        }

        return result;
      }
    }

    while (v25 != v29)
    {
      v37 = *v25++;
      *v8 = v37;
      v8 += 8;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v25, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v25, a6);
  }

  return result;
}

unint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(unint64_t *result, uint64_t *a2, unint64_t **a3, unint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      if (v11 > v10 && v11 > *result)
      {
        v12 = (*a3)[1];
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * *result);
        if (v13 <= v14)
        {
          v10 = *result;
        }

        *a5 = v10;
        v5 = a5 + 1;
        if (v13 <= v14)
        {
          v7 = a2 - 1;
        }

        goto LABEL_10;
      }

LABEL_45:
      std::terminate();
    }

    if (a4 > 8)
    {
      v26 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v26, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v27 = *a3;
      v28 = &v7[a4 >> 1];
      while (v28 != a2)
      {
        v29 = *v28;
        if (*v27 <= *v28 || *v27 <= *v7)
        {
          goto LABEL_45;
        }

        v30 = v27[1];
        v31 = *(v30 + 4 * v29);
        v32 = *(v30 + 4 * *v7);
        if (v31 <= v32)
        {
          v29 = *v7;
        }

        v28 += v31 > v32;
        v7 += v31 <= v32;
        *v5++ = v29;
        if (v7 == v26)
        {
          while (v28 != a2)
          {
            v34 = *v28++;
            *v5++ = v34;
          }

          return result;
        }
      }

      while (v7 != v26)
      {
        v33 = *v7++;
        *v5++ = v33;
      }
    }

    else if (result != a2)
    {
      v15 = *a3;
      v16 = (result + 1);
      *a5 = *result;
      if (result + 1 != a2)
      {
        v17 = 0;
        v18 = a5;
        while (1)
        {
          v19 = *v16;
          if (*v15 <= *v16)
          {
            goto LABEL_45;
          }

          v20 = *v18;
          if (*v15 <= *v18)
          {
            goto LABEL_45;
          }

          v21 = v18 + 1;
          v22 = v15[1];
          if (*(v22 + 4 * v19) <= *(v22 + 4 * v20))
          {
            *v21 = v19;
          }

          else
          {
            v18[1] = v20;
            v23 = a5;
            if (v18 != a5)
            {
              v24 = v17;
              while (1)
              {
                if (*v15 <= *v16)
                {
                  goto LABEL_45;
                }

                v25 = *(a5 + v24 - 8);
                if (*v15 <= v25)
                {
                  goto LABEL_45;
                }

                if (*(v22 + 4 * *v16) <= *(v22 + 4 * v25))
                {
                  break;
                }

                *(a5 + v24) = v25;
                v24 -= 8;
                if (!v24)
                {
                  v23 = a5;
                  goto LABEL_28;
                }
              }

              v23 = (a5 + v24);
            }

LABEL_28:
            *v23 = *v16;
          }

          ++v16;
          v17 += 8;
          v18 = v21;
          if (v16 == a2)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_274E13764(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

rabit::engine::AllreduceBase *rabit::engine::AllreduceBase::AllreduceBase(rabit::engine::AllreduceBase *this)
{
  *this = &unk_2883E7B40;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 104) = 0u;
  v2 = (this + 104);
  *(this + 152) = 0u;
  v3 = this + 152;
  *(this + 200) = 0u;
  v4 = this + 200;
  *(this + 142) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 27) = 0;
  *(this + 36) = 1800;
  *(this + 148) = 0;
  MEMORY[0x277C68BE0](this + 176, "NULL");
  *(this + 56) = 9000;
  MEMORY[0x277C68BE0](v3, &unk_274E44C6E);
  *(this + 228) = 0x3E800002332;
  *(this + 34) = 0xFFFFFFFF00000000;
  *(this + 70) = 5;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 16) = xmmword_274E27D80;
  MEMORY[0x277C68BE0](this + 128, "NULL");
  *(this + 7) = 0;
  MEMORY[0x277C68BE0](v4, "worker");
  (*(*this + 136))(this, "rabit_reduce_buffer", "256MB");
  v6 = *(this + 14);
  v5 = *(this + 15);
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v2) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v53.__end_cap_.__value_ = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v11);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v8);
    v53.__end_ = (24 * v8);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v8), "DMLC_TASK_ID");
    v7 = (24 * v8 + 24);
    v12 = *(this + 13);
    v13 = *(this + 14) - v12;
    v14 = v53.__begin_ - v13;
    memcpy(v53.__begin_ - v13, v12, v13);
    v15 = *(this + 13);
    *(this + 13) = v14;
    *(this + 14) = v7;
    v16 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v15;
    v53.__end_cap_.__value_ = v16;
    v53.__first_ = v15;
    v53.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(*(this + 14), "DMLC_TASK_ID");
    v7 = v6 + 1;
    *(this + 14) = v7;
  }

  *(this + 14) = v7;
  v17 = *(this + 15);
  if (v7 >= v17)
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v2) >> 3);
    if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v2) >> 3);
    v21 = 2 * v20;
    if (2 * v20 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v21;
    }

    v53.__end_cap_.__value_ = v2;
    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v22);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v19);
    v53.__end_ = (24 * v19);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v19), "DMLC_ROLE");
    v18 = v53.__end_ + 1;
    v23 = *(this + 13);
    v24 = *(this + 14) - v23;
    v25 = v53.__begin_ - v24;
    memcpy(v53.__begin_ - v24, v23, v24);
    v26 = *(this + 13);
    *(this + 13) = v25;
    *(this + 14) = v18;
    v27 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v26;
    v53.__end_cap_.__value_ = v27;
    v53.__first_ = v26;
    v53.__begin_ = v26;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "DMLC_ROLE");
    v18 = v7 + 1;
    *(this + 14) = v18;
  }

  *(this + 14) = v18;
  if (v18 >= *(this + 15))
  {
    v28 = std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(v2, "DMLC_NUM_ATTEMPT");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "DMLC_NUM_ATTEMPT");
    v28 = v18 + 1;
    *(this + 14) = v28;
  }

  *(this + 14) = v28;
  if (v28 >= *(this + 15))
  {
    v29 = std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(v2, "DMLC_TRACKER_URI");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "DMLC_TRACKER_URI");
    v29 = v28 + 1;
    *(this + 14) = v29;
  }

  *(this + 14) = v29;
  v30 = *(this + 15);
  if (v29 >= v30)
  {
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v2) >> 3);
    if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v2) >> 3);
    v34 = 2 * v33;
    if (2 * v33 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x555555555555555)
    {
      v35 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v35 = v34;
    }

    v53.__end_cap_.__value_ = v2;
    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v35);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v32);
    v53.__end_ = (24 * v32);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v32), "DMLC_TRACKER_PORT");
    v31 = v53.__end_ + 1;
    v36 = *(this + 13);
    v37 = *(this + 14) - v36;
    v38 = v53.__begin_ - v37;
    memcpy(v53.__begin_ - v37, v36, v37);
    v39 = *(this + 13);
    *(this + 13) = v38;
    *(this + 14) = v31;
    v40 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v39;
    v53.__end_cap_.__value_ = v40;
    v53.__first_ = v39;
    v53.__begin_ = v39;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v29, "DMLC_TRACKER_PORT");
    v31 = v29 + 1;
    *(this + 14) = v31;
  }

  *(this + 14) = v31;
  v41 = *(this + 15);
  if (v31 < v41)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "DMLC_WORKER_CONNECT_RETRY");
    v42 = v31 + 1;
    *(this + 14) = v31 + 1;
    goto LABEL_51;
  }

  v43 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v2) >> 3);
  if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_52:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v44 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v2) >> 3);
  v45 = 2 * v44;
  if (2 * v44 <= v43 + 1)
  {
    v45 = v43 + 1;
  }

  if (v44 >= 0x555555555555555)
  {
    v46 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v46 = v45;
  }

  v53.__end_cap_.__value_ = v2;
  if (v46)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v46);
  }

  v53.__first_ = 0;
  v53.__begin_ = (24 * v43);
  v53.__end_ = (24 * v43);
  v53.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v43), "DMLC_WORKER_CONNECT_RETRY");
  v42 = v53.__end_ + 1;
  v47 = *(this + 13);
  v48 = *(this + 14) - v47;
  v49 = v53.__begin_ - v48;
  memcpy(v53.__begin_ - v48, v47, v48);
  v50 = *(this + 13);
  *(this + 13) = v49;
  *(this + 14) = v42;
  v51 = *(this + 15);
  *(this + 15) = v53.__end_cap_.__value_;
  v53.__end_ = v50;
  v53.__end_cap_.__value_ = v51;
  v53.__first_ = v50;
  v53.__begin_ = v50;
  std::__split_buffer<std::string>::~__split_buffer(&v53);
LABEL_51:
  *(this + 14) = v42;
  return this;
}

void sub_274E13D3C(_Unwind_Exception *a1, std::__split_buffer<std::string> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  std::__split_buffer<std::string>::~__split_buffer(&a10);
  if (*(v10 + 223) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 199) < 0)
  {
    operator delete(*(v10 + 176));
  }

  if (*(v10 + 175) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 151) < 0)
  {
    operator delete(*(v10 + 128));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  v15 = *v13;
  if (*v13)
  {
    *(v10 + 72) = v15;
    operator delete(v15);
  }

  std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::Init(rabit::engine::AllreduceBase *this, int a2, const char **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(this + 13);
  v7 = *(this + 14);
  while (v6 != v7)
  {
    if (*(v6 + 23) < 0)
    {
      v10 = *v6;
      v11 = getenv(*v6);
      if (!v11)
      {
        goto LABEL_9;
      }

      v9 = v11;
    }

    else
    {
      v8 = getenv(v6);
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = v8;
      v10 = v6;
    }

    (*(*this + 136))(this, v10, v9);
LABEL_9:
    v6 += 24;
  }

  if (a2 >= 1)
  {
    v12 = a2;
    do
    {
      if (sscanf(*a3, "%[^=]=%s", &v35, &v33) == 2)
      {
        (*(*this + 136))(this, &v35, &v33);
      }

      ++a3;
      --v12;
    }

    while (v12);
  }

  v14 = getenv("mapred_tip_id");
  if (!v14)
  {
    v14 = getenv("mapreduce_task_id");
  }

  if (*(this + 16) == 1)
  {
    rabit::utils::Check(v14 != 0, "hadoop_mode is set but cannot find mapred_task_id", v13);
  }

  if (v14)
  {
    (*(*this + 136))(this, "rabit_task_id", v14);
    (*(*this + 136))(this, "rabit_hadoop_mode", "1");
  }

  v15 = getenv("mapred_task_id");
  if (v15)
  {
    v16 = strrchr(v15, 95);
    LODWORD(v35.__r_.__value_.__l.__data_) = 0;
    if (v16)
    {
      v17 = v16;
      if (sscanf(v16 + 1, "%d", &v35) == 1)
      {
        (*(*this + 136))(this, "rabit_num_trial", v17 + 1);
      }
    }
  }

  v19 = getenv("mapred_map_tasks");
  if (!v19)
  {
    v19 = getenv("mapreduce_job_maps");
  }

  if (*(this + 16) == 1)
  {
    rabit::utils::Check(v19 != 0, "hadoop_mode is set but cannot find mapred_map_tasks", v18);
  }

  if (v19)
  {
    (*(*this + 136))(this, "rabit_world_size", v19);
  }

  v20 = this + 200;
  v21 = *(this + 223);
  if (v21 < 0)
  {
    if (*(this + 26) != 6)
    {
      goto LABEL_40;
    }

    v20 = *v20;
  }

  else if (v21 != 6)
  {
    goto LABEL_40;
  }

  v22 = *v20;
  v23 = *(v20 + 2);
  if (v22 != 1802661751 || v23 != 29285)
  {
LABEL_40:
    Entry = dmlc::LogMessageFatal::GetEntry(&v35);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc", 107);
    v26 = dmlc::LogMessageFatal::GetEntry(&v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Rabit Module currently only work with dmlc worker", 49);
    dmlc::LogMessageFatal::~LogMessageFatal(&v35);
  }

  *(this + 68) = -1;
  rabit::utils::Assert(*(this + 5) == *(this + 4), "can only call Init once", v18);
  memset(&v35, 0, sizeof(v35));
  std::string::resize(&v35, 0x100uLL, 0);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v35;
  }

  else
  {
    v27 = v35.__r_.__value_.__r.__words[0];
  }

  v28 = gethostname(v27, 0x100uLL) != -1;
  rabit::utils::Check(v28, "fail to get host name", v29);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v35;
  }

  else
  {
    v30 = v35.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&v33, v30);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  *(this + 152) = v33;
  *(this + 21) = v34;
  result = rabit::engine::AllreduceBase::ReConnectLinks(this, "start");
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rabit::engine::AllreduceBase::ReConnectLinks(rabit::engine::AllreduceBase *this, char *a2)
{
  v313 = *MEMORY[0x277D85DE8];
  v4 = (this + 176);
  v5 = *(this + 199);
  if (v5 < 0)
  {
    if (*(this + 23) != 4)
    {
      goto LABEL_7;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
    goto LABEL_7;
  }

  if (*v4 == 1280070990)
  {
    *(this + 34) = 0x100000000;
    goto LABEL_322;
  }

LABEL_7:
  v6 = rabit::engine::AllreduceBase::ConnectTracker(this);
  v309 = v6;
  v285 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v7, v8);
  if (*(v285 + 4) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v303, &__p, 276, 2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v303, "task ", 5);
    v10 = *(this + 151);
    v11 = v10 >= 0 ? (this + 128) : *(this + 16);
    v12 = v10 >= 0 ? *(this + 151) : *(this + 17);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " connected to the tracker", 25);
    xgboost::ConsoleLogger::~ConsoleLogger(v303);
    if (SHIBYTE(v302) < 0)
    {
      operator delete(__p);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v303, a2);
  rabit::utils::TCPSocket::SendStr(&v309, v303);
  if (v304 < 0)
  {
    operator delete(v303[0]);
  }

  v14 = 0;
  v301 = 0;
  v302 = 0;
  v299 = 0;
  __p = &v301;
  v298 = 0;
  v15 = &v298 + 4;
  while (1)
  {
    v16 = recv(v6, v15, 4 - v14, 64);
    if (v16 == -1)
    {
      break;
    }

    if (v16)
    {
      v15 += v16;
      v14 += v16;
      if (v14 < 4)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (*__error() != 35)
  {
    v18 = __error();
    v19 = strerror(*v18);
    rabit::utils::Error("Socket %s Error:%s", v20, "RecvAll", v19);
  }

LABEL_25:
  rabit::utils::Assert(v14 == 4, "ReConnectLink failure 4", v17);
  v21 = 0;
  v22 = this + 24;
  v284 = (this + 24);
  while (1)
  {
    v23 = recv(v6, v22, 4 - v21, 64);
    if (v23 == -1)
    {
      break;
    }

    if (v23)
    {
      v22 += v23;
      v21 += v23;
      if (v21 < 4)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (*__error() != 35)
  {
    v25 = __error();
    v26 = strerror(*v25);
    rabit::utils::Error("Socket %s Error:%s", v27, "RecvAll", v26);
  }

LABEL_32:
  rabit::utils::Assert(v21 == 4, "ReConnectLink failure 4", v24);
  v28 = 0;
  v29 = this + 276;
  while (1)
  {
    v30 = recv(v6, v29, 4 - v28, 64);
    if (v30 == -1)
    {
      break;
    }

    if (v30)
    {
      v29 += v30;
      v28 += v30;
      if (v28 < 4)
      {
        continue;
      }
    }

    goto LABEL_39;
  }

  if (*__error() != 35)
  {
    v32 = __error();
    v33 = strerror(*v32);
    rabit::utils::Error("Socket %s Error:%s", v34, "RecvAll", v33);
  }

LABEL_39:
  rabit::utils::Assert(v28 == 4, "ReConnectLink failure 4", v31);
  v36 = *(this + 68);
  v38 = v36 == -1 || HIDWORD(v298) == v36;
  rabit::utils::Assert(v38, "must keep rank to same if the node already have one", v35);
  v39 = HIDWORD(v298);
  v287 = this + 272;
  *(this + 68) = HIDWORD(v298);
  if (v39 == -1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v303);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc", 297);
    v41 = dmlc::LogMessageFatal::GetEntry(v303);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "tracker got overwhelmed and not able to assign correct rank", 59);
    dmlc::LogMessageFatal::~LogMessageFatal(v303);
  }

  xgboost::BaseLogger::BaseLogger(v303);
  v308 = 4;
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v303, "task ", 5);
  v43 = *(this + 151);
  if (v43 >= 0)
  {
    v44 = this + 128;
  }

  else
  {
    v44 = *(this + 16);
  }

  if (v43 >= 0)
  {
    v45 = *(this + 151);
  }

  else
  {
    v45 = *(this + 17);
  }

  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " got new rank ", 14);
  MEMORY[0x277C68E20](v47, *v287);
  xgboost::ConsoleLogger::~ConsoleLogger(v303);
  v48 = 0;
  v49 = &v298;
  while (1)
  {
    v50 = recv(v6, v49, 4 - v48, 64);
    if (v50 == -1)
    {
      break;
    }

    if (v50)
    {
      v49 = (v49 + v50);
      v48 += v50;
      if (v48 < 4)
      {
        continue;
      }
    }

    goto LABEL_60;
  }

  if (*__error() != 35)
  {
    v52 = __error();
    v53 = strerror(*v52);
    rabit::utils::Error("Socket %s Error:%s", v54, "RecvAll", v53);
  }

LABEL_60:
  rabit::utils::Assert(v48 == 4, "ReConnectLink failure 4", v51);
  v289 = this;
  if (v298 > 0)
  {
    v55 = 0;
    do
    {
      v56 = 0;
      LODWORD(v303[0]) = 0;
      v57 = v303;
      while (1)
      {
        v58 = recv(v6, v57, 4 - v56, 64);
        if (v58 == -1)
        {
          break;
        }

        if (v58)
        {
          v57 = (v57 + v58);
          v56 += v58;
          if (v56 < 4)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      if (*__error() != 35)
      {
        v60 = __error();
        v61 = strerror(*v60);
        rabit::utils::Error("Socket %s Error:%s", v62, "RecvAll", v61);
      }

LABEL_69:
      rabit::utils::Assert(v56 == 4, "ReConnectLink failure 4", v59);
      v63 = v301;
      if (!v301)
      {
LABEL_75:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v64 = v63;
          v65 = *(v63 + 7);
          if (v65 <= SLODWORD(v303[0]))
          {
            break;
          }

          v63 = *v64;
          if (!*v64)
          {
            goto LABEL_75;
          }
        }

        if (v65 >= SLODWORD(v303[0]))
        {
          break;
        }

        v63 = v64[1];
        if (!v63)
        {
          goto LABEL_75;
        }
      }

      *(v64 + 8) = 1;
      ++v55;
    }

    while (v55 < v298);
  }

  v66 = 0;
  v67 = &v299 + 4;
  v68 = v289;
  while (1)
  {
    v69 = recv(v6, v67, 4 - v66, 64);
    if (v69 == -1)
    {
      break;
    }

    if (v69)
    {
      v67 += v69;
      v66 += v69;
      if (v66 < 4)
      {
        continue;
      }
    }

    goto LABEL_84;
  }

  if (*__error() != 35)
  {
    v71 = __error();
    v72 = strerror(*v71);
    rabit::utils::Error("Socket %s Error:%s", v73, "RecvAll", v72);
  }

LABEL_84:
  rabit::utils::Assert(v66 == 4, "ReConnectLink failure 4", v70);
  v74 = 0;
  v75 = &v299;
  while (1)
  {
    v76 = recv(v6, v75, 4 - v74, 64);
    if (v76 == -1)
    {
      break;
    }

    if (v76)
    {
      v75 = (v75 + v76);
      v74 += v76;
      if (v74 < 4)
      {
        continue;
      }
    }

    goto LABEL_91;
  }

  if (*__error() != 35)
  {
    v78 = __error();
    v79 = strerror(*v78);
    rabit::utils::Error("Socket %s Error:%s", v80, "RecvAll", v79);
  }

LABEL_91:
  rabit::utils::Assert(v74 == 4, "ReConnectLink failure 4", v77);
  v82 = socket(2, 1, 0);
  if (v82 == -1)
  {
    v83 = __error();
    v84 = strerror(*v83);
    rabit::utils::Error("Socket %s Error:%s", v85, "Create", v84);
  }

  v286 = v82;
  v86 = *(v289 + 58);
  if (v86 < 1)
  {
LABEL_99:
    v87 = -1;
  }

  else
  {
    v87 = *(v289 + 57);
    while (1)
    {
      rabit::utils::SockAddr::SockAddr(&v311, "0.0.0.0", v87);
      if (!bind(v286, &v311, 0x10u))
      {
        break;
      }

      if (*__error() != 48)
      {
        v88 = __error();
        v89 = strerror(*v88);
        rabit::utils::Error("Socket %s Error:%s", v90, "TryBindHost", v89);
      }

      ++v87;
      if (!--v86)
      {
        goto LABEL_99;
      }
    }
  }

  v297 = v87;
  rabit::utils::Check(v87 != -1, "ReConnectLink fail to bind the ports specified", v81);
  listen(v286, 16);
  v295 = 0;
  v296 = 0;
  v294 = 1;
  do
  {
    *&v311.sa_len = 0;
    *&v311.sa_data[6] = 0;
    v312 = 0;
    v91 = *(v68 + 4);
    v92 = *(v68 + 5);
    if (v91 == v92)
    {
      LODWORD(v109) = 0;
    }

    else
    {
      do
      {
        v93 = *v91;
        if (*v91 != -1)
        {
          LODWORD(v290.__r_.__value_.__l.__data_) = 0;
          *&v310.sa_len = 4;
          if (getsockopt(v93, 0xFFFF, 4103, &v290, &v310.sa_len))
          {
            v94 = __error();
            v95 = strerror(*v94);
            rabit::utils::Error("Socket %s Error:%s", v96, "GetSockError", v95);
          }

          if (LODWORD(v290.__r_.__value_.__l.__data_) == 4 || LODWORD(v290.__r_.__value_.__l.__data_) == 9)
          {
            if (*v91 != -1)
            {
              close(*v91);
              *v91 = -1;
            }
          }

          else
          {
            v98 = v91[1];
            v99 = *&v311.sa_data[6];
            if (*&v311.sa_data[6] >= v312)
            {
              v101 = *&v311.sa_len;
              v102 = *&v311.sa_data[6] - *&v311.sa_len;
              v103 = (*&v311.sa_data[6] - *&v311.sa_len) >> 2;
              v104 = v103 + 1;
              if ((v103 + 1) >> 62)
              {
                std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
              }

              v105 = v312 - *&v311.sa_len;
              if ((v312 - *&v311.sa_len) >> 1 > v104)
              {
                v104 = v105 >> 1;
              }

              v106 = v105 >= 0x7FFFFFFFFFFFFFFCLL;
              v107 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v106)
              {
                v107 = v104;
              }

              if (v107)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v311, v107);
              }

              *(4 * v103) = v98;
              v100 = 4 * v103 + 4;
              memcpy(0, v101, v102);
              v108 = *&v311.sa_len;
              *&v311.sa_len = 0;
              *&v311.sa_data[6] = v100;
              v312 = 0;
              if (v108)
              {
                operator delete(v108);
              }
            }

            else
            {
              **&v311.sa_data[6] = v98;
              v100 = v99 + 4;
            }

            *&v311.sa_data[6] = v100;
          }
        }

        v91 += 16;
      }

      while (v91 != v92);
      v109 = (*&v311.sa_data[6] - *&v311.sa_len) >> 2;
    }

    v110 = 0;
    v293 = v109;
    v111 = &v293;
    while (1)
    {
      v113 = send(v6, v111, 4 - v110, 0);
      if (v113 == -1)
      {
        break;
      }

      v111 = (v111 + v113);
      v110 += v113;
      if (v110 >= 4)
      {
        goto LABEL_132;
      }
    }

    if (*__error() != 35)
    {
      v114 = __error();
      v115 = strerror(*v114);
      rabit::utils::Error("Socket %s Error:%s", v116, "SendAll", v115);
    }

LABEL_132:
    rabit::utils::Assert(v110 == 4, "ReConnectLink failure 5", v112);
    v117 = *&v311.sa_len;
    v118 = *&v311.sa_data[6];
    while (v117 != v118)
    {
      v119 = 0;
      v120 = v117;
      while (1)
      {
        v122 = send(v6, v120, 4 - v119, 0);
        if (v122 == -1)
        {
          break;
        }

        v120 += v122;
        v119 += v122;
        if (v119 >= 4)
        {
          goto LABEL_139;
        }
      }

      if (*__error() != 35)
      {
        v123 = __error();
        v124 = strerror(*v123);
        rabit::utils::Error("Socket %s Error:%s", v125, "SendAll", v124);
      }

LABEL_139:
      rabit::utils::Assert(v119 == 4, "ReConnectLink failure 6", v121);
      v117 += 4;
    }

    v126 = 0;
    v127 = &v296;
    while (1)
    {
      v128 = recv(v6, v127, 4 - v126, 64);
      if (v128 == -1)
      {
        break;
      }

      if (v128)
      {
        v127 = (v127 + v128);
        v126 += v128;
        if (v126 < 4)
        {
          continue;
        }
      }

      goto LABEL_147;
    }

    if (*__error() != 35)
    {
      v130 = __error();
      v131 = strerror(*v130);
      rabit::utils::Error("Socket %s Error:%s", v132, "RecvAll", v131);
    }

LABEL_147:
    rabit::utils::Assert(v126 == 4, "ReConnectLink failure 7", v129);
    v133 = 0;
    v134 = &v295;
    while (1)
    {
      v135 = recv(v6, v134, 4 - v133, 64);
      if (v135 == -1)
      {
        break;
      }

      if (v135)
      {
        v134 = (v134 + v135);
        v133 += v135;
        if (v133 < 4)
        {
          continue;
        }
      }

      goto LABEL_154;
    }

    if (*__error() != 35)
    {
      v137 = __error();
      v138 = strerror(*v137);
      rabit::utils::Error("Socket %s Error:%s", v139, "RecvAll", v138);
    }

LABEL_154:
    rabit::utils::Assert(v133 == 4, "ReConnectLink failure 8", v136);
    v294 = 0;
    v6 = v309;
    if (v296 >= 1)
    {
      for (i = 0; i < v296; ++i)
      {
        v141 = 0;
        LODWORD(v303[0]) = -1;
        v305 = 0u;
        v306 = 0u;
        v307 = 0;
        v291 = 0;
        v292 = 0;
        memset(&v290, 0, sizeof(v290));
        v142 = &v310;
        *&v310.sa_len = 0;
        while (1)
        {
          v143 = recv(v6, v142, 4 - v141, 64);
          if (v143 == -1)
          {
            break;
          }

          if (v143)
          {
            v142 = (v142 + v143);
            v141 += v143;
            if (v141 < 4)
            {
              continue;
            }
          }

          goto LABEL_163;
        }

        if (*__error() != 35)
        {
          v145 = __error();
          v146 = strerror(*v145);
          rabit::utils::Error("Socket %s Error:%s", v147, "RecvAll", v146);
        }

LABEL_163:
        rabit::utils::Assert(v141 == 4, "error during send RecvStr", v144);
        std::string::resize(&v290, *&v310.sa_len, 0);
        v148 = *&v310.sa_len;
        if (*&v310.sa_len)
        {
          v149 = 0;
          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v150 = &v290;
          }

          else
          {
            v150 = v290.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v151 = recv(v6, v150, v148 - v149, 64);
            if (v151 == -1)
            {
              break;
            }

            if (v151)
            {
              v150 = (v150 + v151);
              v149 += v151;
              if (v149 < v148)
              {
                continue;
              }
            }

            goto LABEL_173;
          }

          if (*__error() != 35)
          {
            v153 = __error();
            v154 = strerror(*v153);
            rabit::utils::Error("Socket %s Error:%s", v155, "RecvAll", v154);
          }

LABEL_173:
          size = HIBYTE(v290.__r_.__value_.__r.__words[2]);
          if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v290.__r_.__value_.__l.__size_;
          }

          rabit::utils::Assert(v149 == size, "error during send SendStr", v152);
        }

        v157 = 0;
        v158 = &v292;
        while (1)
        {
          v159 = recv(v6, v158, 4 - v157, 64);
          if (v159 == -1)
          {
            break;
          }

          if (v159)
          {
            v158 = (v158 + v159);
            v157 += v159;
            if (v157 < 4)
            {
              continue;
            }
          }

          goto LABEL_183;
        }

        if (*__error() != 35)
        {
          v161 = __error();
          v162 = strerror(*v161);
          rabit::utils::Error("Socket %s Error:%s", v163, "RecvAll", v162);
        }

LABEL_183:
        rabit::utils::Assert(v157 == 4, "ReConnectLink failure 9", v160);
        v164 = 0;
        v165 = &v291;
        while (1)
        {
          v166 = recv(v6, v165, 4 - v164, 64);
          if (v166 == -1)
          {
            break;
          }

          if (v166)
          {
            v165 = (v165 + v166);
            v164 += v166;
            if (v164 < 4)
            {
              continue;
            }
          }

          goto LABEL_190;
        }

        if (*__error() != 35)
        {
          v168 = __error();
          v169 = strerror(*v168);
          rabit::utils::Error("Socket %s Error:%s", v170, "RecvAll", v169);
        }

LABEL_190:
        rabit::utils::Assert(v164 == 4, "ReConnectLink failure 10", v167);
        LODWORD(v303[0]) = socket(2, 1, 0);
        if (LODWORD(v303[0]) == -1)
        {
          v171 = __error();
          v172 = strerror(*v171);
          rabit::utils::Error("Socket %s Error:%s", v173, "Create", v172);
        }

        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v174 = &v290;
        }

        else
        {
          v174 = v290.__r_.__value_.__r.__words[0];
        }

        rabit::utils::SockAddr::SockAddr(&v310, v174, v292);
        if (connect(v303[0], &v310, 0x10u))
        {
          ++v294;
          if (LODWORD(v303[0]) == -1)
          {
            v193 = __error();
            v194 = strerror(*v193);
            rabit::utils::Error("Socket %s Error:%s", v195, "Socket::Close double close the socket or close without create", v194);
          }

          close(v303[0]);
          LODWORD(v303[0]) = -1;
        }

        else
        {
          v175 = 0;
          v176 = v287;
          while (1)
          {
            v178 = send(v303[0], v176, 4 - v175, 0);
            if (v178 == -1)
            {
              break;
            }

            v176 += v178;
            v175 += v178;
            if (v175 >= 4)
            {
              goto LABEL_203;
            }
          }

          if (*__error() != 35)
          {
            v179 = __error();
            v180 = strerror(*v179);
            rabit::utils::Error("Socket %s Error:%s", v181, "SendAll", v180);
          }

LABEL_203:
          rabit::utils::Assert(v175 == 4, "ReConnectLink failure 12", v177);
          v182 = 0;
          v183 = v303 + 4;
          while (1)
          {
            v184 = recv(v303[0], v183, 4 - v182, 64);
            if (v184 == -1)
            {
              break;
            }

            if (v184)
            {
              v183 += v184;
              v182 += v184;
              if (v182 < 4)
              {
                continue;
              }
            }

            goto LABEL_210;
          }

          if (*__error() != 35)
          {
            v186 = __error();
            v187 = strerror(*v186);
            rabit::utils::Error("Socket %s Error:%s", v188, "RecvAll", v187);
          }

LABEL_210:
          rabit::utils::Assert(v182 == 4, "ReConnectLink failure 13", v185);
          rabit::utils::Check(v291 == HIDWORD(v303[0]), "ReConnectLink failure, link rank inconsistent", v189);
          v192 = *(v289 + 4);
          v191 = *(v289 + 5);
          if (v192 == v191)
          {
LABEL_213:
            std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](v289 + 4, v303);
          }

          else
          {
            while (v192[1] != v291)
            {
              v192 += 16;
              if (v192 == v191)
              {
                goto LABEL_213;
              }
            }

            rabit::utils::Assert(*v192 == -1, "Override a link that is active", v190);
            *v192 = v303[0];
          }
        }

        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v290.__r_.__value_.__l.__data_);
        }

        if (v306)
        {
          *(&v306 + 1) = v306;
          operator delete(v306);
        }
      }
    }

    v196 = 0;
    v197 = &v294;
    v68 = v289;
    while (1)
    {
      v199 = send(v6, v197, 4 - v196, 0);
      if (v199 == -1)
      {
        break;
      }

      v197 = (v197 + v199);
      v196 += v199;
      if (v196 >= 4)
      {
        goto LABEL_226;
      }
    }

    if (*__error() != 35)
    {
      v200 = __error();
      v201 = strerror(*v200);
      rabit::utils::Error("Socket %s Error:%s", v202, "SendAll", v201);
    }

LABEL_226:
    rabit::utils::Assert(v196 == 4, "ReConnectLink failure 14", v198);
    if (*&v311.sa_len)
    {
      *&v311.sa_data[6] = *&v311.sa_len;
      operator delete(*&v311.sa_len);
    }
  }

  while (v294);
  v203 = 0;
  v204 = &v297;
  while (1)
  {
    v206 = send(v6, v204, 4 - v203, 0);
    if (v206 == -1)
    {
      break;
    }

    v204 = (v204 + v206);
    v203 += v206;
    if (v203 >= 4)
    {
      goto LABEL_234;
    }
  }

  if (*__error() != 35)
  {
    v207 = __error();
    v208 = strerror(*v207);
    rabit::utils::Error("Socket %s Error:%s", v209, "SendAll", v208);
  }

LABEL_234:
  rabit::utils::Assert(v203 == 4, "ReConnectLink failure 14", v205);
  if (v6 == -1)
  {
    v210 = __error();
    v211 = strerror(*v210);
    rabit::utils::Error("Socket %s Error:%s", v212, "Socket::Close double close the socket or close without create", v211);
  }

  close(v6);
  v309 = -1;
  if (v295 >= 1)
  {
    for (j = 0; j < v295; ++j)
    {
      LODWORD(v303[0]) = -1;
      v305 = 0u;
      v306 = 0u;
      v307 = 0;
      v214 = accept(v286, 0, 0);
      if (v214 == -1)
      {
        v215 = __error();
        v216 = strerror(*v215);
        rabit::utils::Error("Socket %s Error:%s", v217, "Accept", v216);
      }

      v218 = 0;
      LODWORD(v303[0]) = v214;
      v219 = v287;
      while (1)
      {
        v221 = send(v303[0], v219, 4 - v218, 0);
        if (v221 == -1)
        {
          break;
        }

        v219 += v221;
        v218 += v221;
        if (v218 >= 4)
        {
          goto LABEL_246;
        }
      }

      if (*__error() != 35)
      {
        v222 = __error();
        v223 = strerror(*v222);
        rabit::utils::Error("Socket %s Error:%s", v224, "SendAll", v223);
      }

LABEL_246:
      rabit::utils::Assert(v218 == 4, "ReConnectLink failure 15", v220);
      v225 = 0;
      v226 = v303 + 4;
      while (1)
      {
        v227 = recv(v303[0], v226, 4 - v225, 64);
        if (v227 == -1)
        {
          break;
        }

        if (v227)
        {
          v226 += v227;
          v225 += v227;
          if (v225 < 4)
          {
            continue;
          }
        }

        goto LABEL_253;
      }

      if (*__error() != 35)
      {
        v229 = __error();
        v230 = strerror(*v229);
        rabit::utils::Error("Socket %s Error:%s", v231, "RecvAll", v230);
      }

LABEL_253:
      rabit::utils::Assert(v225 == 4, "ReConnectLink failure 15", v228);
      v68 = v289;
      v234 = *(v289 + 4);
      v233 = *(v289 + 5);
      if (v234 == v233)
      {
LABEL_256:
        std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](v289 + 4, v303);
      }

      else
      {
        while (v234[1] != HIDWORD(v303[0]))
        {
          v234 += 16;
          if (v234 == v233)
          {
            goto LABEL_256;
          }
        }

        rabit::utils::Assert(*v234 == -1, "Override a link that is active", v232);
        *v234 = v303[0];
      }

      if (v306)
      {
        *(&v306 + 1) = v306;
        operator delete(v306);
      }
    }
  }

  close(v286);
  *(v68 + 5) = -1;
  *(v68 + 9) = *(v68 + 8);
  v236 = *(v68 + 4);
  v237 = *(v68 + 5);
  if (v236 != v237)
  {
    v238 = "ReConnectLink: bad socket";
    v239 = "Socket %s Error:%s";
    v240 = "SetNonBlock-2";
    v288 = *(v68 + 5);
    do
    {
      v241 = *v236;
      if (*v236 == -1)
      {
        v246 = 0;
      }

      else
      {
        *&v311.sa_len = 0;
        LODWORD(v290.__r_.__value_.__l.__data_) = 4;
        if (getsockopt(v241, 0xFFFF, 4103, &v311, &v290))
        {
          v242 = __error();
          v243 = strerror(*v242);
          rabit::utils::Error(v239, v244, "GetSockError", v243);
        }

        v246 = *&v311.sa_len != 9 && *&v311.sa_len != 4;
      }

      rabit::utils::Assert(v246, v238, v235);
      v247 = fcntl(*v236, 3, 0);
      if (v247 == -1)
      {
        v248 = __error();
        v249 = strerror(*v248);
        rabit::utils::Error(v239, v250, "SetNonBlock-1", v249);
      }

      if (fcntl(*v236, 4, v247 | 4u) == -1)
      {
        v251 = __error();
        v252 = strerror(*v251);
        rabit::utils::Error(v239, v253, v240, v252);
      }

      v254 = *v236;
      *&v311.sa_len = 1;
      if (setsockopt(v254, 0xFFFF, 8, &v311, 4u) < 0)
      {
        v255 = __error();
        v256 = strerror(*v255);
        rabit::utils::Error(v239, v257, "SetKeepAlive", v256);
      }

      if (*(v289 + 297) == 1 && *(v285 + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v311, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
        xgboost::ConsoleLogger::ConsoleLogger(v303, &v311, 426, 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v303, "tcp no delay is not implemented on non unix platforms", 53);
        xgboost::ConsoleLogger::~ConsoleLogger(v303);
        if (SHIBYTE(v312) < 0)
        {
          operator delete(*&v311.sa_len);
        }
      }

      v258 = v301;
      for (k = v236[1]; v258; v258 = *v258)
      {
        v260 = *(v258 + 7);
        if (k >= v260)
        {
          if (v260 >= k)
          {
            v261 = *(v289 + 9);
            if (k == *(v289 + 6))
            {
              *(v289 + 5) = &v261[-*(v289 + 8)] >> 3;
            }

            v262 = *(v289 + 10);
            if (v261 >= v262)
            {
              v264 = v239;
              v265 = v238;
              v266 = v240;
              v267 = *(v289 + 8);
              v268 = v261 - v267;
              v269 = (v261 - v267) >> 3;
              v270 = v269 + 1;
              if ((v269 + 1) >> 61)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v271 = v262 - v267;
              if (v271 >> 2 > v270)
              {
                v270 = v271 >> 2;
              }

              if (v271 >= 0x7FFFFFFFFFFFFFF8)
              {
                v272 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v272 = v270;
              }

              if (v272)
              {
                if (!(v272 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v273 = (v261 - v267) >> 3;
              v274 = (8 * v269);
              v275 = (8 * v269 - 8 * v273);
              *v274 = v236;
              v263 = v274 + 1;
              memcpy(v275, v267, v268);
              *(v289 + 8) = v275;
              *(v289 + 9) = v263;
              *(v289 + 10) = 0;
              if (v267)
              {
                operator delete(v267);
              }

              v240 = v266;
              v238 = v265;
              v239 = v264;
              v237 = v288;
            }

            else
            {
              *v261 = v236;
              v263 = v261 + 8;
            }

            *(v289 + 9) = v263;
            k = v236[1];
            break;
          }

          ++v258;
        }
      }

      if (k == HIDWORD(v299))
      {
        *(v289 + 11) = v236;
      }

      if (k == v299)
      {
        *(v289 + 12) = v236;
      }

      v236 += 16;
    }

    while (v236 != v237);
  }

  if (*v284 == -1)
  {
    v277 = 1;
    v276 = v289;
  }

  else
  {
    v276 = v289;
    v277 = *(v289 + 5) != -1;
  }

  rabit::utils::Assert(v277, "cannot find parent in the link", v235);
  v279 = HIDWORD(v299) == -1 || *(v276 + 11) != 0;
  rabit::utils::Assert(v279, "cannot find prev ring in the link", v278);
  v281 = v299 == -1 || *(v276 + 12) != 0;
  rabit::utils::Assert(v281, "cannot find next ring in the link", v280);
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(v301);
LABEL_322:
  result = 1;
  v283 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274E15A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v46 = __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v47, v48) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&a35, &__p, 446, 1);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a35, "failed in ReconnectLink ", 24);
      v50 = (*(*v46 + 16))(v46);
      v51 = strlen(v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
      xgboost::ConsoleLogger::~ConsoleLogger(&a35);
      if (a34 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x274E15A28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::engine::AllreduceBase::Shutdown(rabit::engine::AllreduceBase *this)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  for (i = (this + 32); v3 != v4; v3 += 16)
  {
    if (*v3 != -1)
    {
      close(*v3);
      *v3 = -1;
    }
  }

  std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](i);
  *(this + 9) = *(this + 8);
  v5 = (this + 176);
  v6 = *(this + 199);
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 != 4)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*v5 == 1280070990)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (*(this + 23) == 4)
  {
    v5 = *v5;
    goto LABEL_10;
  }

LABEL_11:
  v7 = rabit::engine::AllreduceBase::ConnectTracker(this);
  v12[0] = v7;
  std::string::basic_string[abi:ne200100]<0>(__p, "shutdown");
  rabit::utils::TCPSocket::SendStr(v12, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    rabit::utils::Error("Socket %s Error:%s", v10, "Socket::Close double close the socket or close without create", v9);
  }

  close(v7);
  return 1;
}

void sub_274E15EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v26, v27) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&a12, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&__p, &a12, 139, 1);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to shutdown due to", 25);
      v29 = (*(*v25 + 16))(v25);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      xgboost::ConsoleLogger::~ConsoleLogger(&__p);
      if (a17 < 0)
      {
        operator delete(a12);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x274E15E88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::engine::AllreduceBase::ConnectTracker(rabit::engine::AllreduceBase *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v61 = 65433;
  v2 = socket(2, 1, 0);
  v62 = v2;
  if (v2 == -1)
  {
    v5 = __error();
    v6 = strerror(*v5);
    rabit::utils::Error("Socket %s Error:%s", v7, "Create", v6);
  }

  v8 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v3, v4);
  v9 = 1;
  for (i = 2; ; i += 2)
  {
    v11 = this + 176;
    if (*(this + 199) < 0)
    {
      v11 = *(this + 22);
    }

    rabit::utils::SockAddr::SockAddr(&v63, v11, *(this + 56));
    if (!connect(v2, &v63, 0x10u))
    {
      break;
    }

    v12 = *(v8 + 4);
    if (v9 >= *(this + 70))
    {
      if (v12 >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
        xgboost::ConsoleLogger::ConsoleLogger(&v63, __p, 237, 1);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "Connect to (failed): [", 22);
        v21 = *(this + 199);
        v22 = v21 >= 0 ? (this + 176) : *(this + 22);
        v23 = v21 >= 0 ? *(this + 199) : *(this + 23);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "]\n", 2);
        xgboost::ConsoleLogger::~ConsoleLogger(&v63);
        if (v60 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v25 = __error();
      v26 = strerror(*v25);
      rabit::utils::Error("Socket %s Error:%s", v27, "Connect", v26);
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v63, __p, 240, 1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "Retry connect to ip(retry time ", 31);
      v14 = MEMORY[0x277C68E20](v13, v9);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "): [", 4);
      v16 = *(this + 199);
      if (v16 >= 0)
      {
        v17 = this + 176;
      }

      else
      {
        v17 = *(this + 22);
      }

      if (v16 >= 0)
      {
        v18 = *(this + 199);
      }

      else
      {
        v18 = *(this + 23);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]\n", 2);
      xgboost::ConsoleLogger::~ConsoleLogger(&v63);
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sleep(i);
    v9 = (v9 + 1);
  }

  v28 = 0;
  v29 = &v61;
  while (1)
  {
    v31 = send(v2, v29, 4 - v28, 0);
    if (v31 == -1)
    {
      break;
    }

    v29 = (v29 + v31);
    v28 += v31;
    if (v28 >= 4)
    {
      goto LABEL_33;
    }
  }

  if (*__error() != 35)
  {
    v32 = __error();
    v33 = strerror(*v32);
    rabit::utils::Error("Socket %s Error:%s", v34, "SendAll", v33);
  }

LABEL_33:
  rabit::utils::Assert(v28 == 4, "ReConnectLink failure 1", v30);
  v35 = 0;
  v36 = &v61;
  while (1)
  {
    v37 = recv(v2, v36, 4 - v35, 64);
    if (v37 == -1)
    {
      break;
    }

    if (v37)
    {
      v36 = (v36 + v37);
      v35 += v37;
      if (v35 < 4)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  if (*__error() != 35)
  {
    v39 = __error();
    v40 = strerror(*v39);
    rabit::utils::Error("Socket %s Error:%s", v41, "RecvAll", v40);
  }

LABEL_40:
  rabit::utils::Assert(v35 == 4, "ReConnectLink failure 2", v38);
  rabit::utils::Check(v61 == 65433, "sync::Invalid tracker message, init failure", v42);
  v43 = 0;
  v44 = this + 272;
  while (1)
  {
    v46 = send(v2, v44, 4 - v43, 0);
    if (v46 == -1)
    {
      break;
    }

    v44 += v46;
    v43 += v46;
    if (v43 >= 4)
    {
      goto LABEL_45;
    }
  }

  if (*__error() != 35)
  {
    v47 = __error();
    v48 = strerror(*v47);
    rabit::utils::Error("Socket %s Error:%s", v49, "SendAll", v48);
  }

LABEL_45:
  rabit::utils::Assert(v43 == 4, "ReConnectLink failure 3", v45);
  v50 = 0;
  v51 = this + 276;
  while (1)
  {
    v53 = send(v2, v51, 4 - v50, 0);
    if (v53 == -1)
    {
      break;
    }

    v51 += v53;
    v50 += v53;
    if (v50 >= 4)
    {
      goto LABEL_50;
    }
  }

  if (*__error() != 35)
  {
    v54 = __error();
    v55 = strerror(*v54);
    rabit::utils::Error("Socket %s Error:%s", v56, "SendAll", v55);
  }

LABEL_50:
  rabit::utils::Assert(v50 == 4, "ReConnectLink failure 3", v52);
  rabit::utils::TCPSocket::SendStr(&v62, this + 128);
  v57 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_274E164A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::utils::TCPSocket::SendStr(int *a1, char *a2)
{
  v4 = 0;
  LODWORD(v5) = a2[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  v25 = v5;
  v6 = &v25;
  while (1)
  {
    v8 = send(*a1, v6, 4 - v4, 0);
    if (v8 == -1)
    {
      break;
    }

    v6 = (v6 + v8);
    v4 += v8;
    if (v4 >= 4)
    {
      goto LABEL_8;
    }
  }

  if (*__error() != 35)
  {
    v9 = __error();
    v10 = strerror(*v9);
    rabit::utils::Error("Socket %s Error:%s", v11, "SendAll", v10);
  }

LABEL_8:
  result = rabit::utils::Assert(v4 == 4, "error during send SendStr", v7);
  if (v25)
  {
    v14 = a2[23];
    v15 = v14;
    v16 = *(a2 + 1);
    v17 = 0;
    if ((v14 & 0x80u) == 0)
    {
      v18 = a2[23];
    }

    else
    {
      v18 = *(a2 + 1);
    }

    if (v18)
    {
      v19 = *a2;
      if (v15 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      while (1)
      {
        v21 = send(*a1, v20, v18 - v17, 0);
        if (v21 == -1)
        {
          break;
        }

        v20 += v21;
        v17 += v21;
        if (v17 >= v18)
        {
          goto LABEL_20;
        }
      }

      if (*__error() != 35)
      {
        v22 = __error();
        v23 = strerror(*v22);
        rabit::utils::Error("Socket %s Error:%s", v24, "SendAll", v23);
      }

LABEL_20:
      v14 = a2[23];
      v16 = *(a2 + 1);
      LOBYTE(v15) = a2[23];
    }

    if ((v15 & 0x80u) != 0)
    {
      v14 = v16;
    }

    return rabit::utils::Assert(v17 == v14, "error during send SendStr", v13);
  }

  return result;
}

uint64_t rabit::engine::AllreduceBase::TrackerPrint(uint64_t a1, char *a2)
{
  v3 = (a1 + 176);
  v4 = *(a1 + 199);
  if (v4 < 0)
  {
    if (*(a1 + 184) != 4)
    {
      goto LABEL_7;
    }

    v3 = *v3;
  }

  else if (v4 != 4)
  {
    goto LABEL_7;
  }

  if (*v3 == 1280070990)
  {
    if (a2[23] >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    rabit::utils::Printf(a1, a2, v10);
  }

LABEL_7:
  v5 = rabit::engine::AllreduceBase::ConnectTracker(a1);
  v13 = v5;
  std::string::basic_string[abi:ne200100]<0>(__p, "print");
  rabit::utils::TCPSocket::SendStr(&v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  rabit::utils::TCPSocket::SendStr(&v13, a2);
  if (v5 == -1)
  {
    v7 = __error();
    v8 = strerror(*v7);
    rabit::utils::Error("Socket %s Error:%s", v9, "Socket::Close double close the socket or close without create", v8);
  }

  return close(v5);
}

void sub_274E1677C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274E16838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  xgboost::ConsoleLogger::~ConsoleLogger(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::SetParam(rabit::engine::AllreduceBase *this, const char *__s1, const char *a3)
{
  if (!strcmp(__s1, "rabit_tracker_uri"))
  {
    MEMORY[0x277C68BE0](this + 176, a3);
  }

  if (!strcmp(__s1, "rabit_tracker_port"))
  {
    *(this + 56) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_task_id"))
  {
    MEMORY[0x277C68BE0](this + 128, a3);
  }

  if (!strcmp(__s1, "DMLC_TRACKER_URI"))
  {
    MEMORY[0x277C68BE0](this + 176, a3);
  }

  if (!strcmp(__s1, "DMLC_TRACKER_PORT"))
  {
    *(this + 56) = atoi(a3);
  }

  if (!strcmp(__s1, "DMLC_TASK_ID"))
  {
    MEMORY[0x277C68BE0](this + 128, a3);
  }

  if (!strcmp(__s1, "DMLC_ROLE"))
  {
    MEMORY[0x277C68BE0](this + 200, a3);
  }

  if (!strcmp(__s1, "rabit_world_size"))
  {
    *(this + 69) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_hadoop_mode"))
  {
    v6 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 16) = v6;
  }

  if (!strcmp(__s1, "rabit_tree_reduce_minsize"))
  {
    *(this + 33) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_reduce_ring_mincount"))
  {
    v7 = atoi(a3);
    *(this + 32) = v7;
    rabit::utils::Assert(v7 != 0, "rabit_reduce_ring_mincount should be greater than 0", v8);
  }

  if (!strcmp(__s1, "rabit_reduce_buffer"))
  {
    v19 = 0;
    v18 = 0;
    v9 = sscanf(a3, "%lu%c", &v18, &v19);
    v11 = v18;
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        rabit::utils::Error("invalid format for %s,shhould be {integer}{unit}, unit can be {B, KB, MB, GB}", v10, __s1);
      }

      if (v19 > 0x4Au)
      {
        if (v19 == 77)
        {
          v11 = v18 << 20;
          goto LABEL_34;
        }

        if (v19 == 75)
        {
          v11 = v18 << 10;
          goto LABEL_34;
        }

        goto LABEL_60;
      }

      if (v19 != 66)
      {
        if (v19 == 71)
        {
          v11 = v18 << 30;
          goto LABEL_34;
        }

LABEL_60:
        rabit::utils::Error("invalid format for %s", v10, __s1);
      }
    }

LABEL_34:
    *(this + 30) = (v11 + 7) >> 3;
  }

  if (!strcmp(__s1, "DMLC_WORKER_CONNECT_RETRY"))
  {
    *(this + 70) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_bootstrap_cache"))
  {
    v12 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 284) = v12;
  }

  if (!strcmp(__s1, "rabit_debug"))
  {
    v13 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 285) = v13;
  }

  if (!strcmp(__s1, "rabit_timeout"))
  {
    v14 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 296) = v14;
  }

  if (!strcmp(__s1, "rabit_timeout_sec"))
  {
    v15 = atoi(a3);
    *(this + 36) = v15;
    rabit::utils::Assert(v15 >= 0, "rabit_timeout_sec should be non negative second", v16);
  }

  result = strcmp(__s1, "rabit_enable_tcp_no_delay");
  if (!result)
  {
    result = strcmp(a3, "true");
    *(this + 297) = result == 0;
  }

  return result;
}

rabit::utils::SockAddr *rabit::utils::SockAddr::SockAddr(rabit::utils::SockAddr *this, const char *a2, unsigned int a3)
{
  memset(&v13, 0, sizeof(v13));
  v13.ai_family = 2;
  v13.ai_protocol = 1;
  v12 = 0;
  if (getaddrinfo(a2, 0, &v13, &v12))
  {
    v7 = 1;
  }

  else
  {
    v7 = v12 == 0;
  }

  v8 = !v7;
  rabit::utils::Check(v8, "cannot obtain address of %s", v6, a2);
  rabit::utils::Check(v12->ai_family == 2, "Does not support IPv6", v9);
  v10 = v12;
  memcpy(this, v12->ai_addr, v12->ai_addrlen);
  *(this + 1) = bswap32(a3) >> 16;
  freeaddrinfo(v10);
  return this;
}

uint64_t std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v10 = (v5 - *a1) >> 6;
    if ((v10 + 1) >> 58)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - *a1;
    v12 = v11 >> 5;
    if (v11 >> 5 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v32 = a1;
    if (v13)
    {
      if (!(v13 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = v10 << 6;
    v28 = 0;
    v29 = v14;
    v30 = v10 << 6;
    v31 = 0;
    v15 = a2[1];
    *v14 = *a2;
    *(v14 + 16) = v15;
    v16 = *(a2 + 5);
    *(v14 + 32) = *(a2 + 4);
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    v17 = *(a2 + 6);
    *(v14 + 40) = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((v10 << 6) + 40, v16, v17, (v17 - v16) >> 3);
    v18 = v30;
    v19 = *a1;
    v20 = a1[1];
    v21 = v29 + *a1 - v20;
    if (v20 != *a1)
    {
      v22 = *a1;
      v23 = v29 + *a1 - v20;
      do
      {
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        *v23 = *v22;
        *(v23 + 16) = v24;
        *(v23 + 32) = v25;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        *(v23 + 56) = 0;
        *(v23 + 40) = *(v22 + 40);
        *(v23 + 56) = *(v22 + 56);
        *(v22 + 40) = 0;
        *(v22 + 48) = 0;
        *(v22 + 56) = 0;
        v22 += 64;
        v23 += 64;
      }

      while (v22 != v20);
      do
      {
        v26 = *(v19 + 40);
        if (v26)
        {
          *(v19 + 48) = v26;
          operator delete(v26);
        }

        v19 += 64;
      }

      while (v19 != v20);
      v19 = *a1;
    }

    v9 = v18 + 64;
    *a1 = v21;
    a1[1] = v9;
    v27 = a1[2];
    a1[2] = v31;
    v30 = v19;
    v31 = v27;
    v28 = v19;
    v29 = v19;
    result = std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(&v28);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v6;
    *(v5 + 16) = v7;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0;
    result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v5 + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
    v9 = v5 + 64;
    a1[1] = v9;
  }

  a1[1] = v9;
  return result;
}

void sub_274E16EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryAllreduce(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  if (*(a1 + 256) >= a4)
  {
    return rabit::engine::AllreduceBase::TryAllreduceTree(a1, a2, a3, a4, a5);
  }

  else
  {
    return rabit::engine::AllreduceBase::TryAllreduceRing(a1, a2, a3, a4, a5);
  }
}

uint64_t rabit::engine::AllreduceBase::TryAllreduceRing(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  result = rabit::engine::AllreduceBase::TryReduceScatterRing(a1, a2, a3, a4, a5);
  if (!result)
  {
    v10 = (a4 + *(a1 + 276) - 1) / *(a1 + 276);
    v11 = v10 * *(a1 + 272);
    if (v11 >= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = v10 * *(a1 + 272);
    }

    v13 = v10 + v11;
    if (v13 >= a4)
    {
      v13 = a4;
    }

    v14 = (v13 * a3);
    v15 = v10 * *(*(a1 + 88) + 4);
    v16 = v10 + v15;
    if (v16 >= a4)
    {
      v16 = a4;
    }

    if (v15 >= a4)
    {
      v15 = a4;
    }

    return rabit::engine::AllreduceBase::TryAllgatherRing(a1, a2, (a4 * a3), (v12 * a3), v14, (v16 - v15) * a3);
  }

  return result;
}

uint64_t rabit::engine::AllreduceBase::TryAllreduceTree(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, const char *, unint64_t, int **))
{
  v5 = 0;
  if (!a4)
  {
    return v5;
  }

  v7 = *(a1 + 72) - *(a1 + 64);
  if (!v7)
  {
    return v5;
  }

  v8 = v7 >> 3;
  if ((v7 >> 3) <= 0)
  {
    v79 = 0u;
    v80 = 0u;
    v81 = 1065353216;
    goto LABEL_106;
  }

  v10 = 0;
  v11 = (a4 * a3);
  v72 = *(a1 + 264) / a3 * a3;
  v12 = (v7 >> 3) & 0x7FFFFFFF;
  do
  {
    v13 = *(a1 + 64);
    if (v10 != *(a1 + 20))
    {
      rabit::engine::AllreduceBase::LinkRecord::InitBuffer(*(v13 + 8 * v10), a3, a4, *(a1 + 240));
      v13 = *(a1 + 64);
    }

    v14 = *(v13 + 8 * v10);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    ++v10;
  }

  while (v12 != v10);
  v15 = 0;
  v75 = 0;
  if (v8 == (*(a1 + 20) != -1))
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v79 = 0uLL;
  v80 = 0uLL;
  v81 = 1065353216;
LABEL_12:
  v17 = 0;
  v73 = v15;
  v19 = v15 != v11 && v15 < v16;
  v20 = 1;
  v21 = v72;
  do
  {
    while (1)
    {
      if (v17 == *(a1 + 20))
      {
        if (v11 != v75)
        {
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v22 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
          *(v22 + 5) = v82;
          *(v22 + 12) |= 1u;
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v23 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
          v20 = 0;
          *(v23 + 5) = v82;
          *(v23 + 12) |= 2u;
        }

        if (v19)
        {
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v24 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
          *(v24 + 5) = v82;
          *(v24 + 12) |= 4u;
        }

        break;
      }

      v25 = *(*(a1 + 64) + 8 * v17);
      if (*(v25 + 8) != v11)
      {
        v82 = *v25;
        v83 = &v82;
        v26 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
        *(v26 + 5) = v82;
        *(v26 + 12) |= 1u;
        v25 = *(*(a1 + 64) + 8 * v17);
      }

      v27 = *(v25 + 16);
      if (v27 == v11)
      {
        break;
      }

      if (v27 < v75)
      {
        v82 = *v25;
        v83 = &v82;
        v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
        *(v28 + 5) = v82;
        *(v28 + 12) |= 4u;
        v25 = *(*(a1 + 64) + 8 * v17);
      }

      v82 = *v25;
      v83 = &v82;
      v29 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82);
      v20 = 0;
      *(v29 + 5) = v82;
      *(v29 + 12) |= 2u;
      if (++v17 == v12)
      {
        goto LABEL_34;
      }
    }

    ++v17;
  }

  while (v17 != v12);
  if (v20)
  {
LABEL_106:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
    return 0;
  }

LABEL_34:
  rabit::utils::PollHelper::Poll(&v79, *(a1 + 288));
  v31 = 0;
  do
  {
    if (v31 != *(a1 + 20))
    {
      v32 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v79, *(&v79 + 1), **(*(a1 + 64) + 8 * v31));
      if (v32)
      {
        if (v32[3])
        {
          while (1)
          {
            v33 = *(*(a1 + 64) + 8 * v31);
            v34 = *(v33 + 1);
            if (v34 >= v11 || v34 - v16 >= v72)
            {
              break;
            }

            v5 = rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(v33, v73, v11);
            if (v5)
            {
              goto LABEL_117;
            }
          }
        }
      }
    }

    ++v31;
  }

  while (v31 != v12);
  v36 = *(a1 + 20);
  if (v8 > (v36 != -1))
  {
    v37 = 0;
    v38 = 0;
    v39 = v11;
    do
    {
      if (v37 != *(a1 + 20))
      {
        v40 = *(*(a1 + 64) + 8 * v37);
        if (*(v40 + 8) < v39)
        {
          v39 = *(v40 + 8);
        }

        if (v38)
        {
          v41 = v38 == *(v40 + 32);
        }

        else
        {
          v41 = 1;
        }

        rabit::utils::Assert(v41, "buffer size inconsistent", v30);
        v38 = *(*(*(a1 + 64) + 8 * v37) + 32);
      }

      ++v37;
    }

    while (v12 != v37);
    rabit::utils::Assert(v38 != 0, "must assign buffer_size", v30);
    v43 = v39 / a3 * a3;
    if (v43 < v11)
    {
      v43 = v43 / v72 * v72;
    }

    v70 = v8;
    if (v16 < v43)
    {
      do
      {
        v44 = v43;
        v45 = v43 - v16;
        if (v45 >= v38 - v16 % v38)
        {
          v46 = v38 - v16 % v38;
        }

        else
        {
          v46 = v45;
        }

        rabit::utils::Assert(v46 % a3 == 0, "Allreduce: size check", v42);
        v47 = 0;
        do
        {
          if (v47 != *(a1 + 20))
          {
            v48 = *(*(*(a1 + 64) + 8 * v47) + 24);
            v83 = a3;
            a5(v48 + v16 % v38, &v16[a2], v46 / a3, &v83);
          }

          ++v47;
        }

        while (v12 != v47);
        v16 += v46;
        v43 = v44;
      }

      while (v16 < v44);
    }

    v36 = *(a1 + 20);
    v8 = v70;
    v21 = v72;
  }

  v49 = v16;
  v15 = v16;
  if (v36 == -1)
  {
    goto LABEL_96;
  }

  v15 = v73;
  if (v16 > v73)
  {
    v50 = send(**(*(a1 + 64) + 8 * v36), (a2 + v73), &v16[-v73], 0);
    if (v50 == -1)
    {
      v51 = *__error();
      if (v51 && v51 != 35)
      {
        if (v51 == 54)
        {
          v5 = 1;
        }

        else
        {
          v5 = 3;
        }

        goto LABEL_115;
      }
    }

    else
    {
      v15 = (v50 + v73);
    }
  }

  v52 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v79, *(&v79 + 1), **(*(a1 + 64) + 8 * *(a1 + 20)));
  if (!v52 || (v52[3] & 1) == 0)
  {
    v49 = v75;
LABEL_96:
    v31 = 0;
    while (1)
    {
      if (v31 != *(a1 + 20))
      {
        v61 = *(*(a1 + 64) + 8 * v31);
        v62 = *(v61 + 16);
        if (v49 > v62)
        {
          v63 = send(*v61, (a2 + v62), &v49[-v62], 0);
          if (v63 == -1)
          {
            v64 = *__error();
            if (v64 && v64 != 35)
            {
              if (v64 == 54)
              {
                v5 = 1;
              }

              else
              {
                v5 = 3;
              }

              goto LABEL_117;
            }
          }

          else
          {
            *(v61 + 16) += v63;
          }
        }
      }

      if (v12 == ++v31)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
        v79 = 0u;
        v80 = 0u;
        v75 = v49;
        v81 = 1065353216;
        goto LABEL_12;
      }
    }
  }

  v71 = v8;
  v53 = (v11 - v75);
  if (v11 <= v75)
  {
    v49 = v75;
    goto LABEL_95;
  }

  v74 = v15;
  if (v21 >= v53)
  {
    v54 = (v11 - v75);
  }

  else
  {
    v54 = v21;
  }

  if (!v54)
  {
LABEL_92:
    v15 = v74;
    v49 = v75;
LABEL_95:
    v8 = v71;
    goto LABEL_96;
  }

  v55 = 0;
  while (1)
  {
    v56 = recv(**(*(a1 + 64) + 8 * *(a1 + 20)), &v75[a2], v11 - v75, 0);
    v58 = v56;
    if (v56 != -1)
    {
      break;
    }

    v60 = *__error();
    if (v60 && v60 != 35)
    {
      if (v60 == 54)
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }

LABEL_115:
      v31 = *(a1 + 20);
      goto LABEL_117;
    }

LABEL_91:
    if (v55 >= v54)
    {
      goto LABEL_92;
    }
  }

  if (v56)
  {
    v75 += v56;
    rabit::utils::Assert(v75 <= v74, "Allreduce: boundary error", v57);
    v55 += v58;
    while (v55 > v54)
    {
      v59 = v53 - v54;
      if (v21 < v53 - v54)
      {
        v59 = v21;
      }

      v54 += v59;
    }

    goto LABEL_91;
  }

  v65 = *(*(a1 + 64) + 8 * *(a1 + 20));
  if (*v65 == -1)
  {
    v66 = __error();
    v67 = strerror(*v66);
    rabit::utils::Error("Socket %s Error:%s", v68, "Socket::Close double close the socket or close without create", v67);
  }

  close(*v65);
  *v65 = -1;
  v31 = *(a1 + 20);
  v5 = 2;
LABEL_117:
  *(a1 + 56) = *(*(a1 + 64) + 8 * v31);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
  return v5;
}

void sub_274E17744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::LinkRecord::InitBuffer(rabit::engine::AllreduceBase::LinkRecord *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a3 * a2 + 7;
  if (a4 >= v6 >> 3)
  {
    v7 = v6 >> 3;
  }

  else
  {
    v7 = a4;
  }

  std::vector<unsigned long>::resize(this + 5, v7);
  v8 = ((*(this + 6) - *(this + 5)) & 0xFFFFFFFFFFFFFFF8) / a2 * a2;
  *(this + 4) = v8;
  result = rabit::utils::Assert(v8 >= a2, "too large type_nbytes=%lu, buffer_size=%lu", v9, a2, v8);
  if (*(this + 6) == *(this + 5))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 5);
  }

  *(this + 3) = v11;
  return result;
}

void rabit::utils::PollHelper::Poll(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (!(v3 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(v3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (*(a1 + 16))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(1uLL);
  }

  v4 = poll(0, 0, 1000 * a2);
  if (v4)
  {
    if (v4 < 0)
    {
      v7 = __error();
      v8 = strerror(*v7);
      rabit::utils::Error("Socket %s Error:%s", v9, "Poll", v8);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/rabit/internal/socket.h", 630);
    v6 = dmlc::LogMessageFatal::GetEntry(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Poll timeout", 12);
    dmlc::LogMessageFatal::~LogMessageFatal(&v10);
  }
}

void sub_274E17BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(rabit::engine::AllreduceBase::LinkRecord *this, uint64_t a2, const char *a3)
{
  rabit::utils::Assert(*(this + 3) != 0, "ReadToRingBuffer: buffer not allocated", a3);
  rabit::utils::Assert(*(this + 1) <= a3, "ReadToRingBuffer: max_size_read check", v6);
  v7 = *(this + 1) - a2;
  rabit::utils::Assert(v7 <= *(this + 4), "Allreduce: boundary check", v8);
  v9 = *(this + 1);
  v10 = *(this + 4);
  v11 = v9 % v10;
  v12 = &a3[-v9];
  if (v12 >= v10 - v7)
  {
    v12 = (v10 - v7);
  }

  v13 = v10 - v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = recv(*this, (*(this + 3) + v11), v14, 0);
  if (v15 == -1)
  {
    v17 = __error();
    result = 0;
    v18 = *v17;
    if (v18 && v18 != 35)
    {
      if (v18 == 54)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v16 = v15;
    if (v15)
    {
      result = 0;
      *(this + 1) += v16;
    }

    else
    {
      if (*this == -1)
      {
        v19 = __error();
        v20 = strerror(*v19);
        rabit::utils::Error("Socket %s Error:%s", v21, "Socket::Close double close the socket or close without create", v20);
      }

      close(*this);
      *this = -1;
      return 2;
    }
  }

  return result;
}

uint64_t rabit::engine::AllreduceBase::TryBroadcast(rabit::engine::AllreduceBase *this, char *a2, const char *a3, unsigned int a4)
{
  v4 = 0;
  if (!a3 || *(this + 9) == *(this + 8))
  {
    return v4;
  }

  v7 = a4;
  rabit::utils::Check(*(this + 69) > a4, "Broadcast: root should be smaller than world size", a3);
  v8 = *(this + 9) - *(this + 8);
  if ((v8 >> 3) <= 0)
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 1065353216;
    goto LABEL_60;
  }

  v9 = 0;
  v10 = (v8 >> 3) & 0x7FFFFFFF;
  do
  {
    v11 = *(*(this + 8) + 8 * v9);
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    ++v9;
  }

  while (v10 != v9);
  v12 = *(this + 68);
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  if (v12 == v7)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (v12 == v7)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 4294967294;
  }

  while (2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == 4294967294)
      {
        v54 = **(*(this + 8) + 8 * v15);
        v55 = &v54;
        v17 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54);
        *(v17 + 5) = v54;
        *(v17 + 12) |= 1u;
        if (v15 == 4294967294)
        {
          v16 = 0;
          v18 = *(this + 8);
LABEL_17:
          v19 = *(v18 + 8 * v14);
          if (*(v19 + 8) == a3)
          {
            goto LABEL_24;
          }

          v54 = *v19;
          v55 = &v54;
          v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54);
          v16 = 0;
          *(v20 + 5) = v54;
          v21 = *(v20 + 12) | 1;
LABEL_22:
          *(v20 + 12) = v21;
          goto LABEL_24;
        }
      }

      else
      {
        v18 = *(this + 8);
        if (v14 == v15)
        {
          goto LABEL_17;
        }

        v22 = *(v18 + 8 * v15);
        v23 = *(v22 + 16);
        if (v23 == a3)
        {
          goto LABEL_24;
        }

        if (v23 < v13)
        {
          v54 = *v22;
          v55 = &v54;
          v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54);
          v16 = 0;
          *(v20 + 5) = v54;
          v21 = *(v20 + 12) | 4;
          goto LABEL_22;
        }
      }

      v16 = 0;
LABEL_24:
      v54 = **(*(this + 8) + 8 * v15);
      v55 = &v54;
      v24 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54);
      *(v24 + 5) = v54;
      *(v24 + 12) |= 2u;
      ++v15;
    }

    while (v10 != v15);
    if (v16)
    {
LABEL_60:
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
      return 0;
    }

    rabit::utils::PollHelper::Poll(&v51, *(this + 36));
    if (v14 == 4294967294)
    {
      v14 = 0;
      v25 = *(this + 8);
      while (1)
      {
        v26 = *(v25 + 8 * v14);
        v27 = *v26;
        v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v51, *(&v51 + 1), *v26);
        if (v28 && (v28[3] & 1) != 0)
        {
          v29 = *(v26 + 8);
          if (a3 != v29)
          {
            v30 = recv(v27, &v29[a2], a3 - v29, 0);
            if (v30 == -1)
            {
              v31 = *__error();
              if (v31 && v31 != 35)
              {
                if (v31 == 54)
                {
                  v4 = 1;
                }

                else
                {
                  v4 = 3;
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (!v30)
              {
                v42 = *v26;
                if (*v26 == -1)
                {
                  v43 = __error();
                  v44 = strerror(*v43);
                  rabit::utils::Error("Socket %s Error:%s", v45, "Socket::Close double close the socket or close without create", v44);
                }

LABEL_66:
                close(v42);
                *v26 = -1;
                v4 = 2;
                goto LABEL_71;
              }

              *(v26 + 8) += v30;
            }
          }

          v25 = *(this + 8);
          v13 = *(*(v25 + 8 * v14) + 8);
          if (v13)
          {
            v14 = v14;
            goto LABEL_50;
          }
        }

        if (v10 == ++v14)
        {
          v14 = 4294967294;
          goto LABEL_50;
        }
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      v26 = *(*(this + 8) + 8 * v14);
      v32 = *v26;
      v33 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v51, *(&v51 + 1), *v26);
      if (v33)
      {
        if (v33[3])
        {
          v34 = *(v26 + 8);
          if (a3 != v34)
          {
            v35 = recv(v32, &v34[a2], a3 - v34, 0);
            if (v35 == -1)
            {
              v36 = *__error();
              if (v36 && v36 != 35)
              {
                if (v36 == 54)
                {
                  v4 = 1;
                }

                else
                {
                  v4 = 3;
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (!v35)
              {
                v42 = *v26;
                if (*v26 == -1)
                {
                  v47 = __error();
                  v48 = strerror(*v47);
                  rabit::utils::Error("Socket %s Error:%s", v49, "Socket::Close double close the socket or close without create", v48);
                }

                goto LABEL_66;
              }

              *(v26 + 8) += v35;
            }
          }

          v13 = *(*(*(this + 8) + 8 * v14) + 8);
        }
      }
    }

LABEL_50:
    v37 = 0;
LABEL_51:
    if (v14 == v37)
    {
      goto LABEL_57;
    }

    v38 = *(*(this + 8) + 8 * v37);
    v39 = *(v38 + 16);
    if (v13 <= v39)
    {
      goto LABEL_57;
    }

    v40 = send(*v38, &a2[v39], &v13[-v39], 0);
    if (v40 != -1)
    {
      *(v38 + 16) += v40;
      goto LABEL_57;
    }

    v41 = *__error();
    if (!v41 || v41 == 35)
    {
LABEL_57:
      if (v10 == ++v37)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
        v51 = 0u;
        v52 = 0u;
        v53 = 1065353216;
        continue;
      }

      goto LABEL_51;
    }

    break;
  }

  if (v41 == 54)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v14 = v37;
LABEL_71:
  *(this + 7) = *(*(this + 8) + 8 * v14);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
  return v4;
}

void sub_274E18244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryAllgatherRing(rabit::engine::AllreduceBase *this, void *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v11 = *(this + 12);
  v12 = *(this + 68);
  v13 = *(this + 69);
  v33 = *(this + 11);
  v14 = v11[1] == (v12 + 1) % v13 && v12 == (*(*(this + 11) + 4) + 1) % v13;
  rabit::utils::Assert(v14, "need to assume rank structure", a3, a2);
  v15 = &a3[a4];
  v16 = &a3[a4 - a6];
  while (1)
  {
    v17 = a5;
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    if (v15 == a5)
    {
      if (a4 == v16)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
        return 0;
      }
    }

    else
    {
      v36 = *v11;
      v37 = &v36;
      v18 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v34, v36);
      *(v18 + 5) = v36;
      *(v18 + 12) |= 1u;
      if (a4 == v16)
      {
        v19 = 1;
        goto LABEL_13;
      }
    }

    if (a4 >= a5)
    {
      v19 = 0;
    }

    else
    {
      v36 = *v33;
      v37 = &v36;
      v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v34, v36);
      v19 = 0;
      *(v20 + 5) = v36;
      *(v20 + 12) |= 4u;
    }

LABEL_13:
    rabit::utils::PollHelper::Poll(v34, *(this + 36));
    a5 = v15;
    if (v15 != v17)
    {
      v21 = *v11;
      v22 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(*&v34[0], *(&v34[0] + 1), *v11);
      if (v22 && (v22[3] & 1) != 0)
      {
        if (&v15[-(v17 / a3 * a3)] <= a3)
        {
          v23 = v15 - v17;
        }

        else
        {
          v23 = &a3[-(v17 % a3)];
        }

        v24 = recv(v21, (v32 + v17 % a3), v23, 0);
        if (v24 != -1)
        {
          a5 = &v17[v24];
          goto LABEL_24;
        }

        v25 = *__error();
        if (v25)
        {
          a5 = v17;
          if (v25 != 35)
          {
            goto LABEL_40;
          }

          goto LABEL_24;
        }
      }

      a5 = v17;
    }

LABEL_24:
    v26 = a4 >= a5 ? 1 : v19;
    if ((v26 & 1) == 0)
    {
      if (v16 >= a5)
      {
        v27 = a5;
      }

      else
      {
        v27 = v16;
      }

      if (&v27[-(a4 / a3 * a3)] <= a3)
      {
        v28 = v27 - a4;
      }

      else
      {
        v28 = &a3[-(a4 % a3)];
      }

      v29 = send(*v33, (v32 + a4 % a3), v28, 0);
      if (v29 != -1)
      {
        a4 += v29;
        goto LABEL_38;
      }

      v25 = *__error();
      if (v25)
      {
        if (v25 != 35)
        {
          break;
        }
      }
    }

LABEL_38:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
  }

  v11 = v33;
LABEL_40:
  v30 = 3;
  if (v25 == 54)
  {
    v30 = 1;
  }

  *(this + 7) = v11;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
  return v30;
}

void sub_274E18514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryReduceScatterRing(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  v7 = a1;
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = *(a1 + 272);
  v11 = *(a1 + 276);
  v12 = *(v8 + 4) == (v10 + 1) % v11 && v10 == (v9[1] + 1) % v11;
  rabit::utils::Assert(v12, "need to assume rank structure", a3);
  v14 = a4 * a3;
  v15 = (a4 + *(v7 + 276) - 1) / *(v7 + 276);
  v16 = v15 * *(v8 + 4);
  if (v16 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v15 * *(v8 + 4);
  }

  v18 = v17 * a3;
  v19 = v15 + v16;
  if (v19 >= a4)
  {
    v19 = a4;
  }

  v20 = v19 * a3;
  v21 = v15 * *(v7 + 272);
  if (v21 >= a4)
  {
    v21 = a4;
  }

  v22 = v21 * a3;
  v44 = (v18 + v14);
  v45 = v21 * a3 + v14;
  if (v45 > v18 + v14)
  {
    rabit::utils::Assert(v18 <= v22, "write ptr boundary check", v13);
    v45 = v22;
  }

  rabit::engine::AllreduceBase::LinkRecord::InitBuffer(v8, a3, v15, *(v7 + 240));
  *(v8 + 8) = v20;
  v23 = v20;
  v24 = (v18 + v14);
  v42 = v9;
  v43 = v7;
  while (1)
  {
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    if (v23 == v24)
    {
      if (v18 == v45)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
        return 0;
      }

LABEL_19:
      if (v18 >= v20)
      {
        v26 = 0;
      }

      else
      {
        v50 = *v9;
        v51 = &v50;
        v27 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v48, v50);
        v26 = 0;
        *(v27 + 5) = v50;
        *(v27 + 12) |= 4u;
      }

      goto LABEL_22;
    }

    v50 = *v8;
    v51 = &v50;
    v25 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v48, v50);
    *(v25 + 5) = v50;
    *(v25 + 12) |= 1u;
    if (v18 != v45)
    {
      goto LABEL_19;
    }

    v26 = 1;
LABEL_22:
    rabit::utils::PollHelper::Poll(v48, *(v7 + 288));
    if (v23 == v24)
    {
      v23 = v24;
    }

    else
    {
      v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(*&v48[0], *(&v48[0] + 1), *v8);
      if (v28 && (v28[3] & 1) != 0)
      {
        v40 = rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(v8, v20, v24);
        if (v40)
        {
          v9 = v8;
          goto LABEL_55;
        }

        v23 = *(v8 + 8);
        rabit::utils::Assert(v23 <= v24, "[%d] read_ptr boundary check", v29, *(v7 + 272));
        v30 = v23 / a3 * a3;
        if (v20 < v30)
        {
          v31 = *(v8 + 32);
          do
          {
            v32 = v31 - v20 % v31;
            if (v30 - v20 < v32)
            {
              v32 = v30 - v20;
            }

            if (v14 - v20 % v14 >= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v14 - v20 % v14;
            }

            v34 = *(v8 + 24);
            v51 = a3;
            a5(v34 + v20 % v31, a2 + v20 % v14, v33 / a3, &v51);
            v20 += v33;
          }

          while (v20 < v30);
          v9 = v42;
          v7 = v43;
        }

        v24 = v44;
      }
    }

    v35 = v18 >= v20 ? 1 : v26;
    if ((v35 & 1) == 0)
    {
      v36 = v45;
      if (v45 >= v20)
      {
        v36 = v20;
      }

      if (v36 - v18 / v14 * v14 <= v14)
      {
        v37 = v36 - v18;
      }

      else
      {
        v37 = v14 - v18 % v14;
      }

      v38 = send(*v9, (a2 + v18 % v14), v37, 0);
      if (v38 != -1)
      {
        v18 += v38;
        goto LABEL_50;
      }

      v39 = *__error();
      if (v39)
      {
        if (v39 != 35)
        {
          break;
        }
      }
    }

LABEL_50:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
  }

  if (v39 == 54)
  {
    v40 = 1;
  }

  else
  {
    v40 = 3;
  }

LABEL_55:
  *(v7 + 56) = v9;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
  return v40;
}

void sub_274E188C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

rabit::engine::AllreduceBase *rabit::engine::AllreduceBase::Allgather(rabit::engine::AllreduceBase *this, void *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v7 = *(this + 69);
  if (v7 != -1 && v7 != 1)
  {
    v9 = rabit::engine::AllreduceBase::TryAllgatherRing(this, a2, a3, a4, a5, a6) == 0;

    return rabit::utils::Assert(v9, "AllgatherRing failed", v10);
  }

  return this;
}

uint64_t rabit::engine::AllreduceBase::Allreduce(uint64_t result, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v11 = result;
  if (a6)
  {
    result = a6(a7);
  }

  v12 = *(v11 + 276);
  if (v12 != -1 && v12 != 1)
  {
    v14 = rabit::engine::AllreduceBase::TryAllreduce(v11, a2, a3, a4, a5) == 0;

    return rabit::utils::Assert(v14, "Allreduce failed", v15);
  }

  return result;
}

rabit::engine::AllreduceBase *rabit::engine::AllreduceBase::Broadcast(rabit::engine::AllreduceBase *this, char *a2, const char *a3, unsigned int a4)
{
  v5 = *(this + 69);
  if (v5 != -1 && v5 != 1)
  {
    v7 = rabit::engine::AllreduceBase::TryBroadcast(this, a2, a3, a4) == 0;

    return rabit::utils::Assert(v7, "Broadcast failed", v8);
  }

  return this;
}

uint64_t rabit::engine::AllreduceBase::GetWorldSize(rabit::engine::AllreduceBase *this)
{
  v1 = *(this + 69);
  if (v1 == -1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

BOOL rabit::engine::AllreduceBase::IsDistributed(rabit::engine::AllreduceBase *this)
{
  v1 = (this + 176);
  v2 = *(this + 199);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 != 4)
    {
      return 1;
    }

    return *v1 != 1280070990;
  }

  if (*(this + 23) == 4)
  {
    v1 = *v1;
    return *v1 != 1280070990;
  }

  return 1;
}

void rabit::engine::AllreduceBase::GetHost(rabit::engine::AllreduceBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 175) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 19), *(this + 20));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 152);
    a2->__r_.__value_.__r.__words[2] = *(this + 21);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(*a1);
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *dmlc::io::FileSystem::GetInstance(dmlc::io::FileSystem *this, const dmlc::io::URI *a2)
{
  v3 = *(this + 23);
  if (*(this + 23) < 0)
  {
    v5 = *(this + 1);
    if (v5)
    {
      if (v5 != 7)
      {
        if (v5 != 9)
        {
LABEL_44:
          if (v5 == 5)
          {
            if (**this == 792343411 && *(*this + 4) == 47)
            {
              goto LABEL_69;
            }

            v5 = *(this + 1);
          }

          if (v5 == 8)
          {
            v9 = *this;
            goto LABEL_68;
          }

          if (v5 != 7)
          {
            goto LABEL_73;
          }

LABEL_52:
          if (**this != 1886680168 || *(*this + 3) != 791624304)
          {
            goto LABEL_73;
          }

          goto LABEL_69;
        }

        v4 = *this;
LABEL_10:
        v6 = *v4;
        v7 = *(v4 + 8);
        if (v6 != 0x2F3A736677656976 || v7 != 47)
        {
          if ((v3 & 0x80) == 0)
          {
LABEL_15:
            if (v3 != 5)
            {
              if (v3 != 7)
              {
                v9 = this;
                if (v3 != 8)
                {
LABEL_71:
                  v26 = this;
                  if (v3 == 8)
                  {
LABEL_75:
                    if (*v26 == 0x2F2F3A6572757A61)
                    {
                      Entry = dmlc::LogMessageFatal::GetEntry(__p);
                      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 65);
                      v28 = dmlc::LogMessageFatal::GetEntry(__p);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Please compile with DMLC_USE_AZURE=1 to use Azure", 49);
                      dmlc::LogMessageFatal::~LogMessageFatal(__p);
                    }

                    goto LABEL_77;
                  }

                  goto LABEL_77;
                }

LABEL_68:
                if (*v9 != 0x2F2F3A7370747468)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              goto LABEL_27;
            }

            if (*this != 792343411 || *(this + 4) != 47)
            {
              goto LABEL_77;
            }

LABEL_69:
            v24 = dmlc::LogMessageFatal::GetEntry(__p);
            dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 57);
            v25 = dmlc::LogMessageFatal::GetEntry(__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Please compile with DMLC_USE_S3=1 to use S3", 43);
            dmlc::LogMessageFatal::~LogMessageFatal(__p);
            v3 = *(this + 23);
LABEL_70:
            if ((v3 & 0x80) == 0)
            {
              goto LABEL_71;
            }

LABEL_73:
            if (*(this + 1) == 8)
            {
              v26 = *this;
              goto LABEL_75;
            }

LABEL_77:
            v29 = dmlc::LogMessageFatal::GetEntry(&v36);
            dmlc::LogMessageFatal::Entry::Init(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 69);
            v30 = dmlc::LogMessageFatal::GetEntry(&v36);
            std::operator+<char>();
            if ((v35 & 0x80u) == 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            if ((v35 & 0x80u) == 0)
            {
              v32 = v35;
            }

            else
            {
              v32 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }

            dmlc::LogMessageFatal::~LogMessageFatal(&v36);
            return 0;
          }

          goto LABEL_43;
        }

LABEL_42:
        v18 = dmlc::LogMessageFatal::GetEntry(__p);
        dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 50);
        v19 = dmlc::LogMessageFatal::GetEntry(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Please compile with DMLC_USE_HDFS=1 to use hdfs", 47);
        dmlc::LogMessageFatal::~LogMessageFatal(__p);
        v3 = *(this + 23);
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_15;
        }

LABEL_43:
        v5 = *(this + 1);
        goto LABEL_44;
      }

      v13 = *this;
      if (**this != 1701603686 || *(*this + 3) != 791624293)
      {
        v15 = *v13;
        v16 = *(v13 + 3);
        if (v15 != 1936090216 || v16 != 791624307)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }
    }
  }

  else if (*(this + 23))
  {
    if (v3 != 7)
    {
      v4 = this;
      if (v3 != 9)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (*this != 1701603686 || *(this + 3) != 791624293)
    {
      if (*this != 1936090216 || *(this + 3) != 791624307)
      {
LABEL_27:
        if (*this != 1886680168 || *(this + 3) != 791624304)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }

      goto LABEL_42;
    }
  }

  v22 = &_MergedGlobals_22;
  if ((atomic_load_explicit(algn_280AF71C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(algn_280AF71C8))
  {
    _MergedGlobals_22 = &unk_2883E12E0;
    __cxa_atexit(dmlc::io::LocalFileSystem::~LocalFileSystem, &_MergedGlobals_22, &dword_274CA4000);
    __cxa_guard_release(algn_280AF71C8);
  }

  return v22;
}

void dmlc::InputSplit::Create(dmlc::InputSplit *this, char *a2, const char *a3, uint64_t a4, const char *a5, const char *a6, BOOL a7, int a8, BOOL a9, BOOL a10)
{
  v35 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, this);
  dmlc::io::URISpec::URISpec(&v30, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v15 = v30.__r_.__value_.__r.__words[0];
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v30;
  }

  else
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if (strcmp(v16, "stdin"))
  {
    if (a3 >= a4)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 97);
      v18 = dmlc::LogMessageFatal::GetEntry(&__p);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Check failed: part < nsplit", 27);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "invalid input parameter for InputSplit::Create", 46);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      v14 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      v15 = v30.__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      v21 = &v30;
    }

    else
    {
      v21 = v15;
    }

    dmlc::io::URI::URI(&__p, v21);
    if (strcmp(a5, "text"))
    {
      if (!strcmp(a5, "indexed_recordio"))
      {
        if (a2)
        {
          std::string::basic_string[abi:ne200100]<0>(&v34, a2);
          dmlc::io::URISpec::URISpec(&v33, &v34, a3, a4);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          operator new();
        }

        v26 = dmlc::LogMessageFatal::GetEntry(&v33);
        dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 110);
        v27 = dmlc::LogMessageFatal::GetEntry(&v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "need to pass index file to use IndexedRecordIO", 46);
        dmlc::LogMessageFatal::~LogMessageFatal(&v33);
      }

      else
      {
        if (!strcmp(a5, "recordio"))
        {
          operator new();
        }

        v22 = dmlc::LogMessageFatal::GetEntry(&v33);
        dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 117);
        v23 = dmlc::LogMessageFatal::GetEntry(&v33);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "unknown input split type ", 25);
        v25 = strlen(a5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, a5, v25);
        dmlc::LogMessageFatal::~LogMessageFatal(&v33);
      }

      v28 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v28 = v31;
      }

      if (v28)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_274E1A080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  v32 = *(v28 + 27);
  if (v32)
  {
    *(v28 + 28) = v32;
    operator delete(v32);
  }

  v33 = *v29;
  if (*v29)
  {
    *(v28 + 25) = v33;
    operator delete(v33);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(v28);
  MEMORY[0x277C69180](v28, 0x10B3C408F76FF71);
  dmlc::io::URISpec::~URISpec(&a28);
  dmlc::io::FileInfo::~FileInfo(&a10);
  dmlc::io::URISpec::~URISpec(&a19);
  _Unwind_Resume(a1);
}

void sub_274E1A2A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274E1A29CLL);
}

void sub_274E1A2C4(uint64_t a1, ...)
{
  va_start(va, a1);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E1A294);
}

uint64_t dmlc::Stream::Create(dmlc::Stream *this, const char *a2, const char *a3)
{
  dmlc::io::URI::URI(v9, this);
  Instance = dmlc::io::FileSystem::GetInstance(v9, v5);
  v7 = (*(*Instance + 40))(Instance, v9, a2, a3);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v7;
}

void sub_274E1A38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::io::FileInfo::~FileInfo(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::SeekStream::CreateForRead(dmlc::SeekStream *this, const char *a2)
{
  dmlc::io::URI::URI(v7, this);
  Instance = dmlc::io::FileSystem::GetInstance(v7, v3);
  v5 = (*(*Instance + 48))(Instance, v7, a2);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v5;
}

void sub_274E1A440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::io::FileInfo::~FileInfo(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::SingleFileSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = *(this + 72);
  if (v2 <= a2)
  {
    v2 = a2;
  }

  *(this + 72) = v2;
  return this;
}

off_t dmlc::io::SingleFileSplit::GetTotalSize(FILE **this)
{
  v1 = fileno(this[1]);
  fstat(v1, &v3);
  return v3.st_size;
}

BOOL dmlc::io::SingleFileSplit::NextRecord(std::string *this, std::string::size_type *a2)
{
  size = this[3].__r_.__value_.__l.__size_;
  v5 = this[3].__r_.__value_.__r.__words[2];
  if (size == v5)
  {
    result = dmlc::io::SingleFileSplit::LoadChunk(this);
    if (!result)
    {
      return result;
    }

    size = this[3].__r_.__value_.__l.__size_;
    v5 = this[3].__r_.__value_.__r.__words[2];
  }

  v7 = size;
  if (size == v5)
  {
    goto LABEL_18;
  }

  v7 = size;
  while (1)
  {
    v8 = *v7;
    if (v8 == 10 || v8 == 13)
    {
      break;
    }

    if (++v7 == v5)
    {
      v7 = v5;
      break;
    }
  }

LABEL_18:
  while (v7 != v5)
  {
    v10 = *v7;
    if (v10 != 13 && v10 != 10)
    {
      goto LABEL_20;
    }

    ++v7;
  }

  v7 = v5;
LABEL_20:
  *a2 = size;
  a2[1] = &v7[-size];
  this[3].__r_.__value_.__l.__size_ = v7;
  return 1;
}

BOOL dmlc::io::SingleFileSplit::NextChunk(std::string *this, std::string::size_type *a2)
{
  size = this[3].__r_.__value_.__l.__size_;
  v4 = this[3].__r_.__value_.__r.__words[2];
  if (size == v4)
  {
    result = dmlc::io::SingleFileSplit::LoadChunk(this);
    if (!result)
    {
      return result;
    }

    size = this[3].__r_.__value_.__l.__size_;
    v4 = this[3].__r_.__value_.__r.__words[2];
  }

  *a2 = size;
  a2[1] = v4 - size;
  this[3].__r_.__value_.__l.__size_ = v4;
  return 1;
}

void dmlc::io::SingleFileSplit::~SingleFileSplit(dmlc::io::SingleFileSplit *this)
{
  dmlc::io::SingleFileSplit::~SingleFileSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7C08;
  if ((*(this + 16) & 1) == 0)
  {
    fclose(*(this + 1));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t dmlc::io::SingleFileSplit::ResetPartition(dmlc::io::SingleFileSplit *this, int a2, int a3)
{
  if (a2 || a3 != 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/single_file_split.h", 70);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: part_index == 0 && num_parts == 1", 47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return (*(*this + 16))(this);
}

void dmlc::io::SingleFileSplit::Write(dmlc::io::SingleFileSplit *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/single_file_split.h", 74);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "InputSplit do not support write", 31);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

BOOL dmlc::io::SingleFileSplit::LoadChunk(std::string *this)
{
  v2 = this + 2;
  size = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this[2].__r_.__value_.__l.__size_;
  }

  v4 = this[3].__r_.__value_.__r.__words[0];
  if (size < v4)
  {
    std::string::resize(this + 2, v4, 0);
  }

  v5 = this + 1;
  while (1)
  {
    v6 = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = this[2].__r_.__value_.__l.__size_;
      v7 = v8 ? this[2].__r_.__value_.__r.__words[0] : 0;
    }

    else
    {
      v7 = *(&this[2].__r_.__value_.__s + 23) ? v2 : 0;
      v8 = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
    }

    v9 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = this[1].__r_.__value_.__l.__size_;
      if (v8 <= v9)
      {
        goto LABEL_44;
      }

      if (!v9)
      {
LABEL_23:
        v11 = 0;
        goto LABEL_25;
      }

      v10 = v5->__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v8 <= v9)
      {
        goto LABEL_44;
      }

      v10 = this + 1;
      if (!*(&this[1].__r_.__value_.__s + 23))
      {
        goto LABEL_23;
      }
    }

    memcpy(v7, v10, v9);
    v11 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0 ? this[1].__r_.__value_.__l.__size_ : HIBYTE(this[1].__r_.__value_.__r.__words[2]);
LABEL_25:
    std::string::resize(this + 1, 0, 0);
    v12 = (*(this->__r_.__value_.__r.__words[0] + 72))(this, v7 + v11, v8 - v11);
    v13 = v12 + v11;
    if (!(v12 + v11))
    {
      return v13 != 0;
    }

    if (v13 != v8)
    {
      break;
    }

    v14 = v8;
    while (1)
    {
      v15 = v14 - 1;
      if (v14 == 1)
      {
        break;
      }

      v16 = v7->__r_.__value_.__s.__data_[v14 - 1];
      v17 = v16 == 13 || v16 == 10;
      v14 = v15;
      if (v17)
      {
        v18 = (&v7->__r_.__value_.__l.__data_ + v15 + 1);
        goto LABEL_36;
      }
    }

    v18 = v7;
LABEL_36:
    v19 = v18 - v7;
    std::string::resize(this + 1, v8 - v19, 0);
    v20 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = this[1].__r_.__value_.__l.__size_;
      if (v20)
      {
        v21 = v5->__r_.__value_.__r.__words[0];
        goto LABEL_41;
      }
    }

    else if (*(&this[1].__r_.__value_.__s + 23))
    {
      v21 = this + 1;
LABEL_41:
      memcpy(v21, v18, v20);
    }

    if (v19)
    {
      goto LABEL_49;
    }

    LOBYTE(v6) = *(&this[2].__r_.__value_.__s + 23);
LABEL_44:
    if ((v6 & 0x80) != 0)
    {
      v6 = this[2].__r_.__value_.__l.__size_;
    }

    else
    {
      v6 = v6;
    }

    std::string::resize(v2, 2 * v6, 0);
  }

  v19 = v12 + v11;
LABEL_49:
  if (SHIBYTE(this[2].__r_.__value_.__r.__words[2]) < 0)
  {
    if (this[2].__r_.__value_.__l.__size_)
    {
      data = this[2].__r_.__value_.__l.__data_;
    }

    else
    {
      data = 0;
    }
  }

  else if (*(&this[2].__r_.__value_.__s + 23))
  {
    data = v2;
  }

  else
  {
    data = 0;
  }

  this[3].__r_.__value_.__l.__size_ = data;
  this[3].__r_.__value_.__r.__words[2] = data + v19;
  return v13 != 0;
}

dmlc::io::InputSplitBase *dmlc::io::InputSplitBase::InputSplitBase(dmlc::io::InputSplitBase *this)
{
  *this = &unk_2883E6680;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 4) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 5) = 0u;
  std::vector<unsigned int>::vector[abi:ne200100](this + 16, 0x200001uLL);
  *(this + 152) = xmmword_274E27DF0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  return this;
}

void sub_274E1AA18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
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
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274E1AC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::ThreadedInputSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 8))
  {
    v2 = *(this + 8);
  }

  *(this + 8) = v2;
  return this;
}

void dmlc::io::ThreadedInputSplit::BeforeFirst(dmlc::io::ThreadedInputSplit *this)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(this + 32);
  if (*(this + 54))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 32);
    std::mutex::lock((this + 88));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(this + 47, this + 54);
    *(this + 54) = 0;
    if (*(this + 55))
    {
      explicit = atomic_load_explicit(this + 72, memory_order_acquire);
      std::mutex::unlock((this + 88));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((this + 224));
      }
    }

    else
    {
      std::mutex::unlock((this + 88));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 32);
  }
}

uint64_t dmlc::io::ThreadedInputSplit::NextRecord(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 432))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
    if (!v4)
    {
      return 0;
    }
  }

  do
  {
    v5 = (*(**(a1 + 24) + 80))(*(a1 + 24), a2, *(a1 + 432));
    if (v5)
    {
      break;
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
    std::mutex::lock((a1 + 88));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 376), (a1 + 432));
    *(a1 + 432) = 0;
    if (*(a1 + 220))
    {
      explicit = atomic_load_explicit((a1 + 72), memory_order_acquire);
      std::mutex::unlock((a1 + 88));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 224));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 88));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
  }

  while ((v7 & 1) != 0);
  return v5;
}

void dmlc::io::ThreadedInputSplit::NextChunk(uint64_t a1, void *a2)
{
  if (*(a1 + 432) || (dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432)), v4))
  {
    while (1)
    {
      v5 = *(a1 + 432);
      v7 = *v5;
      v6 = v5[1];
      if (*v5 != v6)
      {
        break;
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
      std::mutex::lock((a1 + 88));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 376), (a1 + 432));
      *(a1 + 432) = 0;
      if (*(a1 + 220))
      {
        explicit = atomic_load_explicit((a1 + 72), memory_order_acquire);
        std::mutex::unlock((a1 + 88));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((a1 + 224));
        }
      }

      else
      {
        std::mutex::unlock((a1 + 88));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    *a2 = v7;
    a2[1] = v6 - v7;
    *v5 = v6;
  }
}

void dmlc::io::ThreadedInputSplit::~ThreadedInputSplit(dmlc::io::ThreadedInputSplit *this)
{
  dmlc::io::ThreadedInputSplit::~ThreadedInputSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7C88;
  v2 = this + 32;
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(this + 32);
  v3 = *(this + 54);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      *(v3 + 24) = v4;
      operator delete(v4);
    }

    MEMORY[0x277C69180](v3, 0x10C40512A2CE0);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(v2);
}

uint64_t dmlc::io::ThreadedInputSplit::ResetPartition(dmlc::io::ThreadedInputSplit *this)
{
  (*(**(this + 3) + 64))(*(this + 3));
  v2 = *(*this + 16);

  return v2(this);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274E1B2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 344), (a1 + 288));
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

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1, (a1 + 288));
}

uint64_t dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Value(uint64_t a1)
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

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(uint64_t a1)
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

void sub_274E1B50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
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
    JUMPOUT(0x274E1B4DCLL);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void *std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(void *result, void *a2)
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

void sub_274E1BA30(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(uint64_t a1, void *a2)
{
  v2 = (a1 + 24);
  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
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
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
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

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274E1BCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(uint64_t *a1)
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
          std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
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
        std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(v17, &v21);
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
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274E1C110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t *a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
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
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
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
    JUMPOUT(0x274E1C0C0);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7D58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (!**a2)
  {
    operator new();
  }

  v3 = *(v2 + 16);
  v4 = *(**(v2 + 24) + 104);
  v5 = **a2;

  return v4();
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7DE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883E7CF8;
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(a1);
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

void sub_274E1C70C(_Unwind_Exception *a1)
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

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(uint64_t a1)
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
        v6 = *(v5 + 16);
        if (v6)
        {
          *(v5 + 24) = v6;
          operator delete(v6);
        }

        MEMORY[0x277C69180](v5, 0x10C40512A2CE0);
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
        v10 = *(v9 + 16);
        if (v10)
        {
          *(v9 + 24) = v10;
          operator delete(v10);
        }

        MEMORY[0x277C69180](v9, 0x10C40512A2CE0);
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
    v13 = *(v12 + 16);
    if (v13)
    {
      *(v12 + 24) = v13;
      operator delete(v13);
    }

    MEMORY[0x277C69180](v12, 0x10C40512A2CE0);
    *(a1 + 288) = 0;
  }
}

uint64_t dmlc::io::CachedInputSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 8))
  {
    v2 = *(this + 8);
  }

  *(this + 8) = v2;
  return this;
}

void dmlc::io::CachedInputSplit::BeforeFirst(dmlc::io::CachedInputSplit *this)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  if (v2)
  {
    v3 = (this + 64);
    if (*(this + 8))
    {
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(*(this + 9));
      std::mutex::lock((v2 + 56));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v2 + 344), this + 8);
      *v3 = 0;
      if (*(v2 + 188))
      {
        explicit = atomic_load_explicit((v2 + 40), memory_order_acquire);
        std::mutex::unlock((v2 + 56));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((v2 + 192));
        }
      }

      else
      {
        std::mutex::unlock((v2 + 56));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v2);
      v2 = *(this + 9);
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v2, this + 8);
    v5 = *(this + 9);
    if (v6)
    {
      do
      {
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
        std::mutex::lock((v5 + 56));
        std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), this + 8);
        *v3 = 0;
        if (*(v5 + 188))
        {
          v7 = atomic_load_explicit((v5 + 40), memory_order_acquire);
          std::mutex::unlock((v5 + 56));
          if ((v7 & 1) == 0)
          {
            std::condition_variable::notify_one((v5 + 192));
          }
        }

        else
        {
          std::mutex::unlock((v5 + 56));
        }

        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(*(this + 9), this + 8);
        v5 = *(this + 9);
      }

      while ((v8 & 1) != 0);
    }

    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v9 = *(this + 5);
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    *(this + 9) = 0;
    *(this + 5) = 0;
    v10 = (this + 16);
    if (*(this + 39) < 0)
    {
      v10 = *v10;
    }

    v11 = dmlc::SeekStream::CreateForRead(v10, 1);
    *(this + 6) = v11;
    if (v11)
    {
      v19[0] = &unk_2883E7ED8;
      v19[1] = this;
      v19[3] = v19;
      v18[0] = &unk_2883E7F58;
      v18[1] = this;
      v18[3] = v18;
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(this + 80, v19, v18);
    }

    Entry = dmlc::LogMessageFatal::GetEntry(v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 78);
    v13 = dmlc::LogMessageFatal::GetEntry(v19);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: this->InitCachedIter()", 36);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Failed to initialize CachedIter", 31);
    dmlc::LogMessageFatal::~LogMessageFatal(v19);
  }

  else
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(this + 80);
  }

  if (*(this + 8))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 80);
    std::mutex::lock((this + 136));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(this + 53, this + 8);
    *(this + 8) = 0;
    if (*(this + 67))
    {
      v16 = atomic_load_explicit(this + 120, memory_order_acquire);
      std::mutex::unlock((this + 136));
      if ((v16 & 1) == 0)
      {
        std::condition_variable::notify_one((this + 272));
      }
    }

    else
    {
      std::mutex::unlock((this + 136));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 80);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_274E1CD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::CachedInputSplit::NextRecord(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 64);
  if (*(a1 + 72))
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = a1 + 80;
  }

  if (!*(a1 + 64))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v5, v4);
    if (!v6)
    {
      return 0;
    }
  }

  do
  {
    v7 = (*(**(a1 + 56) + 80))(*(a1 + 56), a2, *(a1 + 64));
    if (v7)
    {
      break;
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
    std::mutex::lock((v5 + 56));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), v4);
    *v4 = 0;
    if (*(v5 + 188))
    {
      explicit = atomic_load_explicit((v5 + 40), memory_order_acquire);
      std::mutex::unlock((v5 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((v5 + 192));
      }
    }

    else
    {
      std::mutex::unlock((v5 + 56));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v5, v4);
  }

  while ((v9 & 1) != 0);
  return v7;
}

void dmlc::io::CachedInputSplit::NextChunk(uint64_t a1, void *a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = a1 + 80;
  }

  if (*(a1 + 64) || (dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v4, v3), v5))
  {
    while (1)
    {
      v6 = *v3;
      v8 = **v3;
      v7 = (*v3)[1];
      if (v8 != v7)
      {
        break;
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v4);
      std::mutex::lock((v4 + 56));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v4 + 344), v3);
      *v3 = 0;
      if (*(v4 + 188))
      {
        explicit = atomic_load_explicit((v4 + 40), memory_order_acquire);
        std::mutex::unlock((v4 + 56));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((v4 + 192));
        }
      }

      else
      {
        std::mutex::unlock((v4 + 56));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v4);
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v4, v3);
      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    *a2 = v8;
    a2[1] = v7 - v8;
    *v6 = v7;
  }
}

void dmlc::io::CachedInputSplit::~CachedInputSplit(dmlc::io::CachedInputSplit *this)
{
  dmlc::io::CachedInputSplit::~CachedInputSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7E68;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(this + 80);
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 24) = v5;
      operator delete(v5);
    }

    MEMORY[0x277C69180](v4, 0x10C40512A2CE0);
  }

  v6 = *(this + 7);
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(this + 80);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void dmlc::io::CachedInputSplit::ResetPartition(dmlc::io::CachedInputSplit *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 88);
  v2 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "ResetPartition is not supported in CachedInputSplit", 51);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7ED8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  if (!v3)
  {
    operator new();
  }

  v30 = 0;
  v4 = (***(v2 + 48))(*(v2 + 48), &v30, 8);
  v5 = v4;
  if (v4)
  {
    if (v4 != 8)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v29);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 178);
      v7 = dmlc::LogMessageFatal::GetEntry(&v29);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: nread == sizeof(size)", 35);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      v10 = *(v2 + 39);
      if (v10 >= 0)
      {
        v11 = v2 + 16;
      }

      else
      {
        v11 = *(v2 + 16);
      }

      if (v10 >= 0)
      {
        v12 = *(v2 + 39);
      }

      else
      {
        v12 = *(v2 + 24);
      }

      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " has invalid cache file format", 30);
      dmlc::LogMessageFatal::~LogMessageFatal(&v29);
    }

    std::vector<float>::resize((v3 + 16), (v30 >> 3) + 1);
    if (*(v3 + 24) == *(v3 + 16))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v3 + 16);
    }

    v15 = v14 + v30;
    *v3 = v14;
    *(v3 + 8) = v15;
    if ((***(v2 + 48))() != v30)
    {
      v16 = dmlc::LogMessageFatal::GetEntry(&v28);
      dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 183);
      v17 = dmlc::LogMessageFatal::GetEntry(&v28);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi_->Read(p->begin, size) == size", 47);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
      v22 = *(v2 + 16);
      v21 = v2 + 16;
      v20 = v22;
      v23 = *(v21 + 23);
      if (v23 >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = v20;
      }

      if (v23 >= 0)
      {
        v25 = *(v21 + 23);
      }

      else
      {
        v25 = *(v21 + 8);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v24, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " has invalid cache file format", 30);
      dmlc::LogMessageFatal::~LogMessageFatal(&v28);
    }
  }

  return v5 != 0;
}

void sub_274E1D394(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x277C69180](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7F58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::NotImplemented()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 237);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BeforeFirst is not supported", 28);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7FD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  if (!v3)
  {
    operator new();
  }

  v4 = (*(**(v2 + 56) + 96))(*(v2 + 56), v3);
  if (v4)
  {
    v6 = v3[1] - *v3;
    (*(**(v2 + 40) + 8))(*(v2 + 40), &v6, 8);
    (*(**(v2 + 40) + 8))(*(v2 + 40), *v3, v6);
  }

  return v4;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E8058;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_274E1D9EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Registry<xgboost::ObjFunctionReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t xgboost::ObjFunction::Create(uint64_t *a1, uint64_t a2)
{
  dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  v4 = qword_280AF7210;
  if (!qword_280AF7210)
  {
    goto LABEL_43;
  }

  v5 = *(a1 + 23);
  v6 = v5 >= 0 ? *(a1 + 23) : a1[1];
  v7 = v5 >= 0 ? a1 : *a1;
  v8 = &qword_280AF7210;
  do
  {
    v9 = *(v4 + 55);
    if (v9 >= 0)
    {
      v10 = *(v4 + 55);
    }

    else
    {
      v10 = *(v4 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v4 + 32);
    }

    else
    {
      v11 = *(v4 + 32);
    }

    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = memcmp(v11, v7, v12);
    v14 = v10 < v6;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v8 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v8 == &qword_280AF7210)
  {
    goto LABEL_43;
  }

  v17 = *(v8 + 55);
  if (v17 >= 0)
  {
    v18 = *(v8 + 55);
  }

  else
  {
    v18 = v8[5];
  }

  if (v17 >= 0)
  {
    v19 = v8 + 4;
  }

  else
  {
    v19 = v8[4];
  }

  if (v18 >= v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v18;
  }

  v21 = memcmp(v7, v19, v20);
  v22 = v6 < v18;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (v22 || (v23 = v8[7]) == 0)
  {
LABEL_43:
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v47);
    dmlc::Registry<xgboost::ObjFunctionReg>::Get();
    v26 = qword_280AF71F0;
    v27 = unk_280AF71F8;
    if (qword_280AF71F0 != unk_280AF71F8)
    {
      goto LABEL_61;
    }

    while (1)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v46);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/objective.cc", 26);
      v29 = dmlc::LogMessageFatal::GetEntry(&v46);
      v31 = *(a1 + 23);
      if (v31 >= 0)
      {
        v32 = a1;
      }

      else
      {
        v32 = *a1;
      }

      if (v31 >= 0)
      {
        v33 = *(a1 + 23);
      }

      else
      {
        v33 = a1[1];
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
      a1 = &v49;
      std::stringbuf::str();
      if ((v45 & 0x80u) == 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      if ((v45 & 0x80u) == 0)
      {
        v37 = v45;
      }

      else
      {
        v37 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      dmlc::LogMessageFatal::~LogMessageFatal(&v46);
      v47[0] = *MEMORY[0x277D82818];
      v38 = *(MEMORY[0x277D82818] + 72);
      *(v47 + *(v47[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v48 = v38;
      v49 = MEMORY[0x277D82878] + 16;
      if (v51 < 0)
      {
        operator delete(v50[7].__locale_);
      }

      v49 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v50);
      std::iostream::~basic_iostream();
      MEMORY[0x277C690D0](&v52);
      __break(1u);
      do
      {
LABEL_61:
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Objective candidate: ", 21);
        v40 = *(*v26 + 23);
        if (v40 >= 0)
        {
          v41 = *v26;
        }

        else
        {
          v41 = **v26;
        }

        if (v40 >= 0)
        {
          v42 = *(*v26 + 23);
        }

        else
        {
          v42 = (*v26)[1];
        }

        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\n", 1);
        ++v26;
      }

      while (v26 != v27);
    }
  }

  v24 = *(v23 + 96);
  if (!v24)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v24 + 48))(v24);
  *(result + 8) = a2;
  return result;
}

void sub_274E1DED8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](va);
  _Unwind_Resume(a1);
}

void xgboost::SparsePage::Push<xgboost::data::CSCAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::CSRAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::FileAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::DenseAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::DataTableAdapterBatch>()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::Resize()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<double>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::Extend()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned char>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<int>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long long>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSCAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSRAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::FileAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::ArrayAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::DenseAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSRArrayAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::IteratorAdapter<void *,int ()(void *,int (*)(void *,XGBoostBatchCSR),void *),XGBoostBatchCSR>>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::DataTableAdapter>()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::ExpandTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitSampling()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::BuildHistogram()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitData()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::ExpandTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitSampling()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::BuildHistogram()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitData()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::LoadBalance()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::PushRowPage()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::CalcColumnSize()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::GatherSketchInfo()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::AllReduce()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::SketchContainerImpl()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::LoadBalance()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::CalcColumnSize()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::GatherSketchInfo()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::AllReduce()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SketchContainerImpl()
{
    ;
  }
}

void xgboost::RegTree::LoadCategoricalSplit<false>()
{
    ;
  }
}

void xgboost::RegTree::LoadCategoricalSplit<true>()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache()
{
    ;
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<false>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<true>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<float>::BuildHist<false>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<float>::BuildHist<true>()
{
    ;
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

{
  return MEMORY[0x2821F7870]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}