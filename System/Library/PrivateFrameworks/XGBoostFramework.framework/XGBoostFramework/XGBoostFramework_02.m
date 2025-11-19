void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::LoadBalance(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v9 = (*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3;
  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](&v7, a3);
  v4 = v7;
  for (i = v8; v4 != i; v4 += 3)
  {
    __p = 0;
    std::vector<unsigned long>::resize(v4, a2, &__p);
  }

  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::CalcColumnSize();
}

void sub_274CD1980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SearchGroupIndFromRow(void *a1, unint64_t a2)
{
  v14 = a2;
  v3 = a1[1];
  v5 = *(v3 - 4);
  v4 = (v3 - 4);
  if (v5 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v14, v4);
  }

  v6 = *a1;
  v7 = a1[1] - 4 - *a1;
  if (v7)
  {
    v8 = v7 >> 2;
    v6 = *a1;
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (v14 < v12)
      {
        v8 = v9;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v8);
  }

  return ((v6 - *a1) >> 2) - 1;
}

void sub_274CD1B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::GatherSketchInfo(uint64_t *a1, uint64_t *a2, const void **a3, uint64_t *a4, uint64_t *a5)
{
  *&v63 = 0;
  std::vector<unsigned long>::resize(a3, 1uLL, &v63);
  Engine = rabit::engine::GetEngine(v9);
  v11 = (*(*Engine + 72))(Engine);
  v12 = v11;
  v13 = rabit::engine::GetEngine(v11);
  v57 = (*(*v13 + 64))(v13);
  v15 = *a1;
  v14 = a1[1];
  __p = 0;
  v61 = 0;
  v62 = 0;
  v16 = *a2;
  if (a2[1] != *a2)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      v19 = a1[6];
      v20 = a1[7] - v19;
      if (!v20)
      {
        goto LABEL_7;
      }

      if (v20 <= v17)
      {
LABEL_33:
        std::terminate();
      }

      if (*(v19 + v17) == 1)
      {
        *&v63 = 0;
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v63);
      }

      else
      {
LABEL_7:
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, (v16 + v18));
      }

      ++v17;
      v16 = *a2;
      v18 += 40;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  }

  v21 = 0xF0F0F0F0F0F0F0F1 * ((v14 - v15) >> 3);
  v22 = v21 + 1;
  *&v63 = 0;
  std::vector<unsigned long>::resize(a4, (v21 + 1) * v12, &v63);
  v24 = v61;
  v25 = *a4;
  if (__p != v61)
  {
    v26 = v25 + 8 * v57 * v22;
    v27 = (__p + 8);
    v28 = *__p;
    *(v26 + 8) = *__p;
    v29 = v26 + 8;
    if (v27 != v24)
    {
      v30 = (v29 + 8);
      do
      {
        v31 = *v27++;
        v28 += v31;
        *v30++ = v28;
      }

      while (v27 != v24);
    }
  }

  v32 = a4[1];
  v33 = rabit::engine::GetEngine(v23);
  (*(*v33 + 8))(v33, v25, 8, (v32 - v25) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
  if (v12 >= 1)
  {
    v34 = v12;
    v35 = 8 * v21;
    v36 = 8 * v21 + 8;
    v37 = -1;
    do
    {
      v37 += v22;
      if (v37 >= (a4[1] - *a4) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      *&v63 = *(*a4 + v35);
      std::vector<unsigned long>::push_back[abi:ne200100](a3, &v63);
      v35 += v36;
      --v34;
    }

    while (v34);
  }

  v39 = *a3;
  v38 = a3[1];
  if (*a3 == v38)
  {
    v58[0] = v38 - v39;
    v59 = 1;
    dmlc::LogCheckFormat<unsigned long,int>(v58, &v59);
  }

  v40 = v39 + 1;
  if (v39 + 1 != v38)
  {
    v41 = *v39;
    do
    {
      v41 += *v40;
      *v40++ = v41;
    }

    while (v40 != v38);
  }

  v42 = *(a3[1] - 1);
  v63 = 0uLL;
  std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a5, v42, &v63);
  v43 = *a5;
  *&v63 = (a5[1] - *a5) >> 4;
  *(&v63 + 1) = v43;
  v44 = xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>::subspan(v58, &v63, *(*a3 + v57), *(*a3 + v57 + 1) - *(*a3 + v57));
  v46 = *a2;
  v45 = a2[1];
  if (v45 != *a2)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = v58;
    do
    {
      v51 = a1[6];
      v52 = a1[7] - v51;
      if (!v52)
      {
        goto LABEL_28;
      }

      if (v52 <= v49)
      {
        goto LABEL_33;
      }

      if (*(v51 + v49) != 1)
      {
LABEL_28:
        v44 = std::__copy_impl::operator()[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>,false>>(&v63, *(v46 + v47), (*(v46 + v47) + 16 * *(v46 + v47 + 8)), v50, v48);
        v50 = *(&v63 + 1);
        v48 = v64;
        v46 = *a2;
        v45 = a2[1];
      }

      ++v49;
      v47 += 40;
    }

    while (v49 < 0xCCCCCCCCCCCCCCCDLL * ((v45 - v46) >> 3));
  }

  v54 = *a5;
  v53 = a5[1];
  v55 = rabit::engine::GetEngine(v44);
  (*(*v55 + 8))(v55, v54, 4, ((v53 - v54) >> 2) & 0x3FFFFFFFFFFFFFFCLL, rabit::op::Reducer<rabit::op::Sum,float>, 0, 0);
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }
}

void sub_274CD2028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::AllReduce(uint64_t *a1, uint64_t *a2, std::vector<int> *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v50, "AllReduce");
  v5 = xgboost::common::Monitor::Start();
  if (v51.__m_.__opaque[7] < 0)
  {
    operator delete(v50.__ptr_);
  }

  v46 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  Engine = rabit::engine::GetEngine(v5);
  (*(*Engine + 8))(Engine, &v46, 8, 1, rabit::op::Reducer<rabit::op::Max,unsigned long>, 0, 0);
  v47[0].__ptr_ = (0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3));
  if (v46 != v47[0].__ptr_)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v46, v47);
  }

  v7 = a1[6];
  v45[0] = a1[7] - v7;
  v45[1] = v7;
  begin = a3->__begin_;
  end = a3->__end_;
  LODWORD(v42) = 0;
  v10 = end - begin;
  v47[0].__ptr_ = (v10 >> 2);
  if (v10)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v47, &v42);
  }

  std::vector<int>::resize(a3, 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3));
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::resize(a2, 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3));
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v11 = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v42, a1[9], a1[10], (a1[10] - a1[9]) >> 3);
  v13 = v42;
  v12 = v43;
  v14 = rabit::engine::GetEngine(v11);
  (*(*v14 + 8))(v14, v13, 8, (v12 - v13) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
  v16 = *a1;
  v15 = a1[1];
  LODWORD(v47[0].__ptr_) = *(a1 + 26);
  LODWORD(v41) = 1;
  if (SLODWORD(v47[0].__ptr_) < 1)
  {
    dmlc::LogCheckFormat<int,int>(v47, &v41);
  }

  v50.__ptr_ = 0;
  v51.__m_.__sig = 850045863;
  memset(v51.__m_.__opaque, 0, sizeof(v51.__m_.__opaque));
  if (v15 != v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0xF0F0F0F0F0F0F0F1 * ((v15 - v16) >> 3);
    v21 = 16;
    do
    {
      v22 = vcvts_n_u32_f32(*(a1 + 24), 3uLL);
      v23 = *(v42 + v19);
      if (v23 >= v22)
      {
        LODWORD(v24) = v22;
      }

      else
      {
        v24 = *(v42 + v19);
      }

      if (v23)
      {
        v25 = a1[6];
        v26 = a1[7] - v25;
        if (!v26)
        {
          goto LABEL_18;
        }

        if (v26 <= v19)
        {
          std::terminate();
        }

        if (*(v25 + v19) == 1)
        {
          v24 = *(a1[3] + v21);
        }

        else
        {
LABEL_18:
          v49 = 0;
          *&v47[0].__ptr_ = 0u;
          *__p = 0u;
          xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::GetSummary(*a1 + v17, v47);
          v29 = *a2;
          v30 = (*a2 + v18);
          if (v24 > ((v30[3] - v30[2]) >> 4))
          {
            std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((v30 + 2), v24);
            if (v30[3] == v30[2])
            {
              v31 = 0;
            }

            else
            {
              v31 = v30[2];
            }

            *v30 = v31;
            v29 = *a2;
          }

          if (!*(v29 + v18))
          {
            Entry = dmlc::LogMessageFatal::GetEntry(&v41);
            dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.cc", 413);
            v33 = dmlc::LogMessageFatal::GetEntry(&v41);
            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Check failed: reduced[i].data", 29);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v41);
            v29 = *a2;
          }

          xgboost::common::WXQSummary<float,float>::SetPrune((v29 + v18), v47, v24, v27, v28);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        a3->__begin_[v19] = v24;
      }

      ++v19;
      v21 += 24;
      v18 += 40;
      v17 += 136;
    }

    while (v20 != v19);
  }

  dmlc::OMPException::Rethrow(&v50);
  std::mutex::~mutex(&v51);
  std::exception_ptr::~exception_ptr(&v50);
  v36 = rabit::engine::GetEngine(v35);
  v37 = (*(*v36 + 72))(v36);
  if (v37 != 1)
  {
    v50.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&v41, 1uLL);
    v50.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&v40, v37 * v46 + v37);
    xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::GatherSketchInfo();
  }

  std::string::basic_string[abi:ne200100]<0>(&v50, "AllReduce");
  xgboost::common::Monitor::Stop();
  if (v51.__m_.__opaque[7] < 0)
  {
    operator delete(v50.__ptr_);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_274CD2C1C()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274CD2DD8);
}

void sub_274CD2C28()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274CD2DD8);
}

void sub_274CD2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a11;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  JUMPOUT(0x274CD2DD8);
}

void sub_274CD2C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  std::mutex::~mutex((v29 - 160));
  std::exception_ptr::~exception_ptr((v29 - 168));
  a29 = &a11;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_274CD2C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 145) < 0)
  {
    v24 = *(v23 - 168);
    JUMPOUT(0x274CD2D10);
  }

  if (a23)
  {
    operator delete(a23);
  }

  JUMPOUT(0x274CD2DF0);
}

void sub_274CD2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v24 = *(v23 - 168);
  *(v23 - 168) = 0;
  if (v24)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v23 - 168, v24);
  }

  if (a23)
  {
    operator delete(a23);
  }

  JUMPOUT(0x274CD2DF0);
}

void sub_274CD2D48(_Unwind_Exception *a1)
{
  if (*(v1 - 145) < 0)
  {
    v2 = *(v1 - 168);
    JUMPOUT(0x274CD2DE4);
  }

  _Unwind_Resume(a1);
}

void sub_274CD2D84(_Unwind_Exception *a1)
{
  v2 = *(v1 - 168);
  *(v1 - 168) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1 - 168, v2);
  }

  _Unwind_Resume(a1);
}

void sub_274CD2DC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 24);
      if (v8)
      {
        *(v3 - 16) = v8;
        operator delete(v8);
      }

      v3 -= 40;
    }

    a1[1] = v7;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::PushRowPage(uint64_t a1, uint64_t **a2, const xgboost::MetaInfo *a3, unint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "PushRowPage");
  xgboost::common::Monitor::Start();
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v7 = *a3;
  v22 = *(a3 + 1);
  v13 = *(a3 + 2);
  LODWORD(v19) = *(a1 + 104);
  LODWORD(v17) = 1;
  if (v19 >= 1)
  {
    v19 = (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3));
    if (v19 != v22)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v19, &v22);
    }

    if (*a4)
    {
      v8 = a4[1];
      v18[0] = *a4;
      v18[1] = v8;
    }

    else if (*(a1 + 100) == 1)
    {
    }

    else
    {
      v9 = *(a3 + 9);
      v20 = 0;
      v21 = 0;
      v19 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v19, *v9, v9[1], (v9[1] - *v9) >> 2);
    }

    if (v19 != v20)
    {
      v17 = ((v20 - v19) >> 2);
      if (v17 != *a3)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v17, a3);
      }
    }

    v10 = (*a2)[1];
    v14 = *a2[1];
    v15 = **a2;
    v11 = *(a3 + 2);
    v12 = *(a1 + 104);
    xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::LoadBalance();
  }

  dmlc::LogCheckFormat<int,int>(&v19, &v17);
}

void sub_274CD3480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, std::exception_ptr a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::MakeCuts()
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "MakeCuts");
  xgboost::common::Monitor::Start();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v0 = 0;
  v1 = 0;
  v2 = 0;
  xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::AllReduce();
}

{
    ;
  }
}

void sub_274CD3DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::mutex::~mutex((v27 + 8));
  std::exception_ptr::~exception_ptr(&v33);
  v32 = &v29;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  v30[0] = &v31;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void sub_274CD3E6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274CD3F3CLL);
}

void sub_274CD3E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a20);
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a22, v23);
  }

  v27 = &v24;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  v25[0] = &v26;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void sub_274CD3EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a20);
  v22 = a22;
  a22 = 0;
  if (v22)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a22);
  }

  JUMPOUT(0x274CD3F0CLL);
}

void sub_274CD3EF8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CD3F3CLL);
}

void xgboost::common::InvalidCategory(xgboost::common *this)
{
  std::to_string(&v8, 0x1000000);
  Entry = dmlc::LogMessageFatal::GetEntry(&v7);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/categorical.h", 76);
  v2 = dmlc::LogMessageFatal::GetEntry(&v7);
  std::operator+<char>();
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_274CD3FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&a19);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void xgboost::common::HostSketchContainer::HostSketchContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __p[14] = *MEMORY[0x277D85DE8];
  memset(__p, 0, 24);
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a4, a4[1], (a4[1] - *a4) >> 3);
  v5 = **(a3 + 168);
  v6 = *(*(a3 + 168) + 8) - v5;
  v7 = v5;
  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::SketchContainerImpl();
}

void sub_274CD445C()
{
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr(&v3);
  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::~SketchContainerImpl(v0);
  _Unwind_Resume(v2);
}

void sub_274CD44A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::~SketchContainerImpl(v15);
  _Unwind_Resume(v16);
}

void sub_274CD44B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274CD4518);
}

void sub_274CD44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CD44E4);
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::~SketchContainerImpl(uint64_t a1)
{
  xgboost::common::Monitor::~Monitor((a1 + 112));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 24);
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = a1;
  std::vector<xgboost::common::WQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

void xgboost::common::SortedSketchContainer::PushColPage(uint64_t a1, uint64_t **a2, const xgboost::MetaInfo *a3, unint64_t *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "PushColPage");
  xgboost::common::Monitor::Start();
  if (v48.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  if (*a4)
  {
    v8 = a4[1];
    v41[0] = *a4;
    v41[1] = v8;
  }

  else if (*(a1 + 100) == 1)
  {
  }

  else
  {
    v10 = *(a3 + 9);
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v42, *v10, v10[1], (v10[1] - *v10) >> 2);
  }

  v46 = (v43 - v42) >> 2;
  if (v46 != *a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v46, a3);
  }

  v11 = a2[1];
  v40 = **a2;
  v12 = ((*a2)[1] - v40) >> 3;
  v13 = *v11;
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  v39 = v14;
  LODWORD(v46) = *(a1 + 104);
  LODWORD(v45.__ptr_) = 1;
  if (v46 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v46, &v45);
  }

  __p = 0;
  v48.__m_.__sig = 850045863;
  v15 = 0.0;
  memset(v48.__m_.__opaque, 0, sizeof(v48.__m_.__opaque));
  if (v12 >= 2)
  {
    v17 = 0;
    v38 = v13 + 4;
    while (1)
    {
      v18 = (v40 + 8 * v17);
      v19 = *v18;
      v20 = v18[1];
      if (!v13 && v20 != v19)
      {
LABEL_50:
        std::terminate();
      }

      v21 = (*(a1 + 176) + 48 * v17);
      v22 = *(a1 + 96);
      *(v21 + 4) = 0xBFF0000000000000;
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      v23 = *(v21 + 5);
      v24 = (v22 + 1);
      if (v24 > (v23[15] - v23[14]) >> 4)
      {
        std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((v23 + 14), v24);
        if (v23[15] == v23[14])
        {
          v25 = 0;
        }

        else
        {
          v25 = v23[14];
        }

        v23[12] = v25;
        v23 = *(v21 + 5);
      }

      v26 = v20 - v19;
      v27 = v13;
      v28 = (v13 + 8 * v19);
      v23[13] = 0;
      *v21 = 0;
      if (v20 != v19)
      {
        v15 = 0.0;
        v29 = v28;
        v30 = v20 - v19;
        do
        {
          v31 = *v29++;
          v9.n128_f64[0] = *(v42 + v31);
          v15 = v15 + v9.n128_f64[0];
          --v30;
        }

        while (v30);
        *v21 = v15;
      }

      v32 = *(a1 + 48);
      v33 = *(a1 + 56) - v32;
      if (!v33)
      {
        goto LABEL_53;
      }

      if (v33 <= v17)
      {
        goto LABEL_50;
      }

      if (*(v32 + v17) == 1)
      {
        if (v20 != v19)
        {
          do
          {
            v34 = *v28++;
            v46 = v34;
            std::__tree<float>::__emplace_unique_key_args<float,float &>(*(a1 + 24) + 24 * v17, *(&v34 + 1));
            --v26;
          }

          while (v26);
        }
      }

      else
      {
LABEL_53:
        if (v20 != v19)
        {
          v35 = (v38 + 8 * v19);
          do
          {
            v9.n128_u32[0] = *(v42 + *(v35 - 1));
            xgboost::common::SortedQuantile::Push(v21, *v35, v9, *(a1 + 96));
            v35 += 2;
            --v26;
          }

          while (v26);
        }
      }

      v36 = *(a1 + 48);
      v37 = *(a1 + 56) - v36;
      if (v37)
      {
        break;
      }

      v13 = v27;
      if (v20 != v19)
      {
        goto LABEL_46;
      }

LABEL_47:
      if (++v17 == v39)
      {
        goto LABEL_14;
      }
    }

    if (v37 <= v17)
    {
      goto LABEL_50;
    }

    v13 = v27;
    if (v20 == v19 || *(v36 + v17) == 1)
    {
      goto LABEL_47;
    }

LABEL_46:
    xgboost::common::SortedQuantile::Finalize(v21, *(a1 + 96), v15, v9);
    goto LABEL_47;
  }

LABEL_14:
  dmlc::OMPException::Rethrow(&__p);
  std::mutex::~mutex(&v48);
  std::exception_ptr::~exception_ptr(&__p);
  std::string::basic_string[abi:ne200100]<0>(&__p, "PushColPage");
  xgboost::common::Monitor::Stop();
  if (v48.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_274CD4B10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::mutex::~mutex(&v27);
  std::exception_ptr::~exception_ptr(&v26);
  if (v25)
  {
    operator delete(v25);
  }

  JUMPOUT(0x274CD4BF0);
}

void sub_274CD4B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((a25 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x274CD4BD4);
}

void sub_274CD4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a19);
  v20 = a20;
  a20 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a20, v20);
  }

  if (v21)
  {
    operator delete(v21);
  }

  JUMPOUT(0x274CD4BF0);
}

void sub_274CD4BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CD4BB4);
}

void sub_274CD4BDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274CD4C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void dmlc::LogCheckFormat<unsigned int,unsigned long>(unsigned int *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E30](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E50](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CD4E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_274CD4FA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::common::Span<float,18446744073709551615ul>::subspan@<X0>(void *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (a3 == -1)
  {
    a3 = *result - a2;
    if (*result < a2)
    {
      goto LABEL_8;
    }
  }

  else if (a3 + a2 > *result)
  {
    goto LABEL_8;
  }

  v4 = result[1];
  *a4 = a3;
  a4[1] = v4 + 4 * a2;
  if (a3 && !v4)
  {
LABEL_8:
    std::terminate();
  }

  return result;
}

unint64_t *xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(unint64_t *result, void *a2, unint64_t a3, unint64_t a4)
{
  if (a4 == -1)
  {
    a4 = *a2 - a3;
    if (*a2 < a3)
    {
      goto LABEL_8;
    }
  }

  else if (a4 + a3 > *a2)
  {
    goto LABEL_8;
  }

  v4 = a2[1];
  *result = a4;
  result[1] = v4 + 8 * a3;
  if (a4 && !v4)
  {
LABEL_8:
    std::terminate();
  }

  return result;
}

uint64_t std::__tree<float>::__emplace_unique_key_args<float,float &>(uint64_t result, float a2)
{
  v2 = *(result + 8);
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
      v4 = *(v2 + 7);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CD5188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::common::WXQuantileSketch<float,float>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::common::WXQuantileSketch<float,float>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WXQuantileSketch<float,float>,0>(a1, i))
  {
    i -= 136;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WXQuantileSketch<float,float>,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    *(a2 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 72);
  if (v4)
  {
    *(a2 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    *(a2 + 56) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;

    operator delete(v6);
  }
}

void std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 24;
        std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void dmlc::LogCheckFormat<unsigned long,int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E50](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CD5540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned long>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_274E1F3B0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_274E1F3B0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274CD59F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::WQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::allocator_traits<std::allocator<xgboost::common::WQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WQuantileSketch<float,float>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<xgboost::common::WQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WQuantileSketch<float,float>,0>(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;

    operator delete(v5);
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CD5B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *rabit::op::Reducer<rabit::op::Sum,unsigned long>(uint64_t *result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ += v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

float rabit::op::Reducer<rabit::op::Sum,float>(float *a1, float *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = v4 + *a2;
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *std::vector<xgboost::FeatureType>::vector[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,true>,0>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a4 != a2)
  {
    std::terminate();
  }

  if (a5 != a3)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](result, a5 - a3);
  }

  return result;
}

void sub_274CD5C6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__init_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Queue::QEntry*,xgboost::common::WQSummary<float,float>::Queue::QEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CD5D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__init_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry*,xgboost::common::WQSummary<float,float>::Entry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CD5E38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer::SummaryContainer(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = 0;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  if (a1 == a2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__assign_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry*,xgboost::common::WQSummary<float,float>::Entry*>(a1 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
    v4 = a1[2];
    v5 = a1[3];
  }

  if (v5 == v4)
  {
    v4 = 0;
  }

  *a1 = v4;
  return a1;
}

void sub_274CD5F54(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__assign_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry*,xgboost::common::WQSummary<float,float>::Entry*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

uint64_t std::__split_buffer<xgboost::common::WQuantileSketch<float,float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<xgboost::common::WQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WQuantileSketch<float,float>,0>(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274CD61FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__copy_impl::operator()[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>,false>>(void *result, _OWORD *a2, _OWORD *a3, unint64_t *a4, unint64_t a5)
{
  if (a2 != a3)
  {
    v5 = *a4;
    v6 = 16 * a5;
    do
    {
      if (a5 >= v5 || (*(a4[1] + v6) = *a2, v5 = *a4, a5 == *a4))
      {
        std::terminate();
      }

      ++a2;
      ++a5;
      v6 += 16;
    }

    while (a2 != a3);
  }

  *result = a2;
  result[1] = a4;
  result[2] = a5;
  return result;
}

unint64_t *rabit::op::Reducer<rabit::op::Max,unsigned long>(unint64_t *result, unint64_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v5 = *result++;
      v4 = v5;
      if (*a2 < v5)
      {
        *a2 = v4;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; i -= 40)
    {
      v5 = *(i - 24);
      if (v5)
      {
        *(i - 16) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 xgboost::common::WQSummary<float,float>::SetPrune(void *result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 <= a3)
  {
    xgboost::common::WQSummary<float,float>::CopyFrom(result, a2);
  }

  else
  {
    v4.n128_u32[0] = *(*a2 + 4);
    v5 = *(*a2 + 16 * v3 - 16);
    v6 = a3 - 1;
    **result = **a2;
    result[1] = 1;
    if (a3 - 1 >= 2)
    {
      v7 = 0;
      v8 = v5 - v4.n128_f32[0];
      v9 = 1;
      v10 = 1;
      while (1)
      {
        v11 = (v4.n128_f32[0] + ((v8 * v10) / v6)) + (v4.n128_f32[0] + ((v8 * v10) / v6));
        v12 = *a2;
        v13 = *(a2 + 8) - 1;
        if (v9 <= v13)
        {
          v14 = *(a2 + 8) - 1;
        }

        else
        {
          v14 = v9;
        }

        v15 = &v12[v9-- + 1] + 1;
        while (v9 - v14 != -1)
        {
          v16 = *v15 + *(v15 - 1);
          v15 += 4;
          ++v9;
          if (v11 < v16)
          {
            goto LABEL_12;
          }
        }

        v9 = v14;
LABEL_12:
        if (v9 == v13)
        {
          goto LABEL_23;
        }

        v17 = &v12[v9];
        v18 = v9 + 1;
        v19 = &v12[v9 + 1];
        if (v11 < ((*v17 + v17[2]) + (v19[1] - v19[2])))
        {
          break;
        }

        if (v18 != v7)
        {
          v17 = v19;
LABEL_18:
          v20 = *result;
          v21 = result[1];
          result[1] = v21 + 1;
          *(v20 + 16 * v21) = *v17;
          v7 = v18;
        }

LABEL_19:
        if (++v10 == v6)
        {
          goto LABEL_23;
        }
      }

      v18 = v9;
      if (v9 == v7)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = 0;
LABEL_23:
    v22 = *(a2 + 8) - 1;
    if (v7 != v22)
    {
      v23 = *a2;
      v24 = *result;
      v25 = result[1];
      result[1] = v25 + 1;
      v4 = v23[v22];
      *(v24 + 16 * v25) = v4;
    }
  }

  return v4;
}

void *xgboost::common::WQSummary<float,float>::CopyFrom(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (v4)
  {
    result = *result;
    if (*v3)
    {
      v5 = *(a2 + 8);
      v3[1] = v5;

      return memcpy(result, v4, 16 * v5);
    }

    else
    {
      v9 = v3[1];
      v8 = v3 + 1;
      v12 = 0;
      if (v9)
      {
        dmlc::LogCheckFormat<unsigned long,int>(v8, &v12);
      }

      v11 = *(a2 + 8);
      v10 = (a2 + 8);
      v12 = 0;
      if (v11)
      {
        dmlc::LogCheckFormat<unsigned long,int>(v10, &v12);
      }
    }
  }

  else
  {
    v7 = *(a2 + 8);
    v6 = (a2 + 8);
    v12 = 0;
    if (v7)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v6, &v12);
    }

    result[1] = 0;
  }

  return result;
}

void sub_274CD68D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::WQSummary<float,float>::SetCombine(uint64_t *a1, float32x2_t **a2, uint64_t a3, double a4, __n128 a5)
{
  v7 = a2[1];
  if (v7)
  {
    v8 = a2;
    v9 = *(a3 + 8);
    if (v9)
    {
      v10 = *a2;
      v11 = &(*a2)[2 * v7];
      v12 = *a3;
      v13 = *a3 + 16 * v9;
      v14 = *a1;
      a5.n128_u64[0] = 0;
      v15 = *a1;
      v16.i32[0] = 0;
      while (1)
      {
        v17 = v10[1].f32[1];
        v18 = v12[1].f32[1];
        if (v17 == v18)
        {
          v19 = v10[1].f32[0] + v12[1].f32[0];
          a5.n128_u64[0] = vadd_f32(*v10, *v12);
          *v15 = a5.n128_u64[0];
          *(v15 + 8) = v19;
          *(v15 + 12) = v17;
          v16.f32[0] = v10->f32[0] + v10[1].f32[0];
          a5.n128_f32[0] = v12->f32[0] + v12[1].f32[0];
          v10 += 2;
        }

        else
        {
          if (v17 < v18)
          {
            v20 = v10[1].i32[0];
            v21.i32[0] = a5.n128_u32[0];
            v21.f32[1] = v12->f32[1] - v12[1].f32[0];
            *v15 = vadd_f32(v21, *v10);
            *(v15 + 8) = v20;
            *(v15 + 12) = v17;
            v16.f32[0] = v10->f32[0] + v10[1].f32[0];
            v10 += 2;
            goto LABEL_10;
          }

          v22 = v12[1].i32[0];
          v23.i32[0] = v16.i32[0];
          v23.f32[1] = v10->f32[1] - v10[1].f32[0];
          a5.n128_u64[0] = vadd_f32(v23, *v12);
          *v15 = a5.n128_u64[0];
          *(v15 + 8) = v22;
          *(v15 + 12) = v18;
          a5.n128_f32[0] = v12->f32[0] + v12[1].f32[0];
        }

        v12 += 2;
LABEL_10:
        v15 += 16;
        if (v10 == v11 || v12 == v13)
        {
          if (v10 != v11)
          {
            a5.n128_u32[1] = *(v13 - 12);
            do
            {
              v24 = *v10;
              v25 = v10[1];
              v10 += 2;
              *v15 = vadd_f32(a5.n128_u64[0], v24);
              *(v15 + 8) = v25;
              v15 += 16;
            }

            while (v10 != v11);
          }

          if (v12 != v13)
          {
            v16.i32[1] = *(v11 - 12);
            do
            {
              v26 = *v12;
              v27 = v12[1];
              v12 += 2;
              a5.n128_u64[0] = vadd_f32(v16, v26);
              *v15 = a5.n128_u64[0];
              *(v15 + 8) = v27;
              v15 += 16;
            }

            while (v12 != v13);
          }

          v28 = (v15 - v14) >> 4;
          a1[1] = v28;
          if (v15 == v14)
          {
            v30 = 0.0;
            v32 = 0.0;
            v33 = 0.0;
          }

          else
          {
            v29 = v14 + 4;
            v30 = 0.0;
            v31 = v28;
            v32 = 0.0;
            v33 = 0.0;
            v34 = 0.0;
            a5.n128_u64[0] = 0;
            do
            {
              if (*(v29 - 4) >= v34)
              {
                v34 = *(v29 - 4);
              }

              else
              {
                *(v29 - 4) = v34;
                if (v30 < (v34 - v34))
                {
                  v30 = v34 - v34;
                }
              }

              if (*v29 >= a5.n128_f32[0])
              {
                a5.n128_u32[0] = *v29;
              }

              else
              {
                *v29 = a5.n128_u32[0];
                if (v32 < (a5.n128_f32[0] - a5.n128_f32[0]))
                {
                  v32 = a5.n128_f32[0] - a5.n128_f32[0];
                }
              }

              v35 = v34 + *(v29 + 4);
              if (a5.n128_f32[0] < v35)
              {
                *v29 = v35;
                if (v33 < (v35 - v35))
                {
                  v33 = v35 - v35;
                }

                a5.n128_f32[0] = v35;
              }

              v29 += 16;
              --v31;
            }

            while (v31);
          }

          v36 = *(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(fmaxf(fmaxf(v30, v32), v33), a5) + 4);
          if (v38 > 10.0 && v36 >= 2)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h");
            xgboost::ConsoleLogger::ConsoleLogger(v48, __p, 308, 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "mingap=", 7);
            v40 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", maxgap=", 9);
            v41 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", wgap=", 7);
            std::ostream::operator<<();
            xgboost::ConsoleLogger::~ConsoleLogger(v48);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            v37 = a1[1];
          }

          if (v37 > v8[1] + *(a3 + 8))
          {
            Entry = dmlc::LogMessageFatal::GetEntry(v48);
            dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h", 312);
            v43 = dmlc::LogMessageFatal::GetEntry(v48);
            v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Check failed: size <= sa.size + sb.size", 39);
            v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ": ", 2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "bug in combine", 14);
            dmlc::LogMessageFatal::~LogMessageFatal(v48);
          }

          return;
        }
      }
    }
  }

  else
  {
    a2 = a3;
  }

  xgboost::common::WQSummary<float,float>::CopyFrom(a1, a2);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(a2 - 2) >= *v9)
        {
          return result;
        }

        v49 = *v9;
LABEL_81:
        *v9 = *(a2 - 1);
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v50 = *(v9 + 8);
      v51 = *v9;
      v52 = *(v9 + 16);
      if (v50 >= *v9)
      {
        if (v52 < v50)
        {
          v57 = *(v9 + 8);
          v56 = *(v9 + 16);
          *(v9 + 8) = v56;
          *(v9 + 16) = v57;
          v52 = *&v57;
          if (v51 > *&v56)
          {
            v58 = *v9;
            *v9 = v56;
            *(v9 + 8) = v58;
          }
        }
      }

      else
      {
        v53 = *v9;
        LODWORD(v54) = *v9;
        if (v52 < v50)
        {
          *v9 = *(v9 + 16);
          goto LABEL_110;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v53;
        if (v52 < v54)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_110:
          *(v9 + 16) = v53;
          v52 = v54;
        }
      }

      if (*(a2 - 2) < v52)
      {
        v66 = *(v9 + 16);
        *(v9 + 16) = *(a2 - 1);
        *(a2 - 1) = v66;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v68 = *(v9 + 8);
          v67 = *(v9 + 16);
          *(v9 + 8) = v67;
          *(v9 + 16) = v68;
          if (*v9 > *&v67)
          {
            v69 = *v9;
            *v9 = v67;
            *(v9 + 8) = v69;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(v9, a2);
      }

      else if (v9 != a2)
      {
        v59 = (v9 + 8);
        while (v59 != a2)
        {
          v60 = v59;
          v61 = v8[2];
          if (v61 < *v8)
          {
            v62 = *(v8 + 3);
            v63 = v60;
            do
            {
              v64 = v63;
              v65 = *(v63 - 1);
              v63 -= 2;
              *v64 = v65;
            }

            while (*(v64 - 4) > v61);
            *v63 = v61;
            *(v63 + 1) = v62;
          }

          v59 = v60 + 2;
          v8 = v60;
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = (v9 + 8 * (v12 >> 1));
    v14 = v13;
    v15 = *(a2 - 2);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          v20 = *v13;
          *v13 = *(a2 - 1);
          *(a2 - 1) = v20;
          if (*v13 < *v9)
          {
            v21 = *v9;
            *v9 = *v13;
            *v13 = v21;
          }
        }
      }

      else
      {
        v17 = *v9;
        if (v15 < v16)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v17;
        if (*(a2 - 2) < *&v17)
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v24 = v13 - 2;
      v25 = *(v13 - 2);
      v26 = *(a2 - 4);
      if (v25 >= *(v9 + 8))
      {
        if (v26 < v25)
        {
          v28 = *v24;
          *v24 = *(a2 - 2);
          *(a2 - 2) = v28;
          if (*v24 < *(v9 + 8))
          {
            v29 = *(v9 + 8);
            *(v9 + 8) = *v24;
            *v24 = v29;
          }
        }
      }

      else
      {
        v27 = *(v9 + 8);
        if (v26 < v25)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 8) = *v24;
        *v24 = v27;
        if (*(a2 - 4) < *&v27)
        {
          *v24 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v27;
        }
      }

      v31 = v13[2];
      v30 = (v13 + 2);
      v32 = v31;
      v33 = *(a2 - 6);
      if (v31 >= *(v9 + 16))
      {
        if (v33 < v32)
        {
          v35 = *v30;
          *v30 = *(a2 - 3);
          *(a2 - 3) = v35;
          if (*v30 < *(v9 + 16))
          {
            v36 = *(v9 + 16);
            *(v9 + 16) = *v30;
            *v30 = v36;
          }
        }
      }

      else
      {
        v34 = *(v9 + 16);
        if (v33 < v32)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 16) = *v30;
        *v30 = v34;
        if (*(a2 - 6) < *&v34)
        {
          *v30 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v34;
        }
      }

      v37 = *v14;
      v38 = *v24;
      v39 = *v30;
      if (*v14 >= *v24)
      {
        v40 = *v14;
        if (v39 < v37)
        {
          v41 = *v30;
          *v14 = *v30;
          *v30 = v40;
          if (v38 <= *&v41)
          {
            v40 = v41;
          }

          else
          {
            v40 = *v24;
            *v24 = v41;
            *v14 = v40;
          }
        }
      }

      else
      {
        v40 = *v24;
        if (v39 >= v37)
        {
          *v24 = *v14;
          *v14 = v40;
          if (v39 < *&v40)
          {
            v42 = *v30;
            *v14 = *v30;
            *v30 = v40;
            v40 = v42;
          }
        }

        else
        {
          *v24 = *v30;
          *v30 = v40;
          v40 = *v14;
        }
      }

      v43 = *v9;
      *v9 = v40;
      *v14 = v43;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v18 = *v9;
    if (*v9 < *v13)
    {
      v19 = *v13;
      if (v15 < v18)
      {
        *v14 = *(a2 - 1);
        goto LABEL_38;
      }

      *v14 = *v9;
      *v9 = v19;
      if (*(a2 - 2) < *&v19)
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    v22 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v22;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    v23 = *v14;
    *v14 = *v9;
    *v9 = v23;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v9 - 8) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::common::WQSummary<float,float>::Queue::QEntry *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v44 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::common::WQSummary<float,float>::Queue::QEntry *,std::__less<void,void> &>(v9, a2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_67;
    }

    v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(v9, v44);
    v9 = (v44 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>((v44 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v44;
      if (v46)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v46)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(v8, v44, a3, -v11, a5 & 1);
      v9 = (v44 + 2);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v47 = *(v9 + 8);
  v48 = *(a2 - 2);
  if (v47 < *v9)
  {
    v49 = *v9;
    if (v48 < v47)
    {
      goto LABEL_81;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v49;
    if (*(a2 - 2) >= *&v49)
    {
      return result;
    }

    *(v9 + 8) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v49;
    return result;
  }

  if (v48 < v47)
  {
    v55 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 1);
    *(a2 - 1) = v55;
    if (*(v9 + 8) < *v9)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 8);
        if (v6 < *v4)
        {
          v7 = *(v4 + 12);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 8;
            if (v9 <= v6)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 8;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::common::WQSummary<float,float>::Queue::QEntry *,std::__less<void,void> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*(a2 - 2) <= COERCE_FLOAT(*a1))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (*v3 <= *&v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v4 <= *&v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v6 > *&v2);
  }

  while (v3 < a2)
  {
    v7 = *v3;
    *v3 = *a2;
    *a2 = v7;
    do
    {
      v8 = v3[2];
      v3 += 2;
    }

    while (v8 <= *&v2);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 > *&v2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::common::WQSummary<float,float>::Queue::QEntry *,std::__less<void,void> &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 2];
    v2 += 2;
  }

  while (v4 < *&v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= *&v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= *&v3);
  }

  if (v5 < a2)
  {
    v9 = &a1[v2];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        v12 = v9[2];
        v9 += 2;
      }

      while (v12 < *&v3);
      do
      {
        v13 = *(v10 - 2);
        v10 -= 2;
      }

      while (v13 >= *&v3);
    }

    while (v9 < v10);
    v6 = v9 - 2;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(a1, a4, v8, v11);
        v11 -= 2;
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
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(a1, a4, v8, a1);
        }

        v12 += 2;
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
          v17 = v16;
          v18 = &v16[2 * v14];
          v16 = v18 + 2;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[4];
            v21 = v18 + 4;
            if (*(v21 - 2) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v16 == v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(a1, (v16 + 2), a4, ((v16 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
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
      if (v9 < a3 && *v8 < v8[2])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      if (*v8 >= *a4)
      {
        v11 = *(a4 + 1);
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *v8 < v8[2])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (*v8 >= v10);
        *a4 = v10;
        *(a4 + 1) = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6 < v8)
    {
      v9 = *(a2 - 4);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v9;
    }
  }

  return result;
}

void std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__append(a1, a2 - v2);
  }
}

void std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void *std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>(a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t *xgboost::common::anonymous namespace::QuantileAllreduce<xgboost::common::WQSummary<float,float>::Entry>::Values(unint64_t *a1, void *a2, int a3, unsigned int a4)
{
  v4 = a3;
  v5 = a3 + 1;
  v6 = a2[2];
  if (v6 <= v5 || v6 <= a3 || (xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>::subspan(v14, a2, *(a2[3] + 8 * a3), *(a2[3] + 8 * v5) - *(a2[3] + 8 * a3)), xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v12, a2 + 4, (a2[6] + 1) * v4, a2[6] + 1), v12 <= a4) || (v10 = a4 + 1, v12 <= v10))
  {
    std::terminate();
  }

  return xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>::subspan(a1, v14, *(v13 + 8 * a4), *(v13 + 8 * v10) - *(v13 + 8 * a4));
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::Push(uint64_t a1, float a2, float a3)
{
  if (a3 == 0.0)
  {
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v9 = *(a1 + 8) - v7;
  if (v6 != v9 >> 3 || v7[2 * v6 - 2] == a2)
  {
    goto LABEL_56;
  }

  if (v9 == 8)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::resize(a1, 2 * *(a1 + 40));
    goto LABEL_56;
  }

  v10 = 2 * *(a1 + 40);
  if (v10 > (*(a1 + 120) - *(a1 + 112)) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a1 + 112, v10);
    if (*(a1 + 120) == *(a1 + 112))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 112);
    }

    *(a1 + 96) = v11;
    v7 = *a1;
    v6 = *(a1 + 24);
  }

  v12 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(v7, &v7[2 * v6], &v52, v13, 1);
  *(a1 + 104) = 0;
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *a1;
    v18 = *(a1 + 96);
    v19 = *a1 + 12;
    v20 = 0.0;
    do
    {
      v21 = &v17[2 * v16];
      v22 = v16 + 1;
      v24 = *v21;
      v23 = v21[1];
      if (v16 + 1 < v14)
      {
        v25 = (v19 + 8 * v16);
        while (*(v25 - 1) == v24)
        {
          v26 = *v25;
          v25 += 2;
          v23 = v23 + v26;
          if (v14 == ++v22)
          {
            v22 = v14;
            break;
          }
        }
      }

      v27 = (v18 + 16 * v15);
      *v27 = v20;
      v20 = v20 + v23;
      ++v15;
      v27[1] = v20;
      v27[2] = v23;
      v27[3] = v24;
      v16 = v22;
    }

    while (v22 < v14);
    *(a1 + 104) = v15;
  }

  v28 = (a1 + 96);
  *(a1 + 24) = 0;
  v29 = 2 * *(a1 + 40);
  if (v29 > (*(a1 + 120) - *(a1 + 112)) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a1 + 112, v29);
    if (*(a1 + 120) == *(a1 + 112))
    {
      v30 = 0;
    }

    else
    {
      v30 = *(a1 + 112);
    }

    *(a1 + 96) = v30;
  }

  v31 = 0;
  v32 = *(a1 + 48);
  for (i = 1; ; ++i)
  {
    v34 = i + 1;
    if (i + 1 <= ((*(a1 + 56) - v32) >> 4))
    {
      goto LABEL_51;
    }

    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a1 + 72, *(a1 + 40) * v34);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v37 = &v36[-v35] >> 4;
    if (v34 <= v37)
    {
      if (v34 >= v37)
      {
        goto LABEL_43;
      }

      v36 = (v35 + 16 * v34);
    }

    else
    {
      v38 = v34 - v37;
      v39 = *(a1 + 64);
      if (v38 > (v39 - v36) >> 4)
      {
        if (!(v34 >> 60))
        {
          v40 = v39 - v35;
          v41 = v40 >> 3;
          if (v40 >> 3 <= v34)
          {
            v41 = i + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>>>(v42);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(*(a1 + 56), ((16 * v31 + 16 - &v36[-v35]) & 0xFFFFFFFFFFFFFFF0) + 16);
      v36 += 16 * v38;
    }

    *(a1 + 56) = v36;
LABEL_43:
    v32 = *(a1 + 48);
    if (v36 != v32)
    {
      v43 = (v36 - v32) >> 4;
      if (*(a1 + 80) == *(a1 + 72))
      {
        v44 = 0;
      }

      else
      {
        v44 = *(a1 + 72);
      }

      if (v43 <= 1)
      {
        v43 = 1;
      }

      v45 = 16 * *(a1 + 40);
      v46 = *(a1 + 48);
      do
      {
        *v46 = v44;
        v46 += 2;
        v44 += v45;
        --v43;
      }

      while (v43);
    }

LABEL_51:
    v47 = *(a1 + 40);
    if (!*&v32[16 * i + 8])
    {
      xgboost::common::WQSummary<float,float>::SetPrune(&v32[16 * i], v28, v47);
      goto LABEL_56;
    }

    *&v48 = xgboost::common::WQSummary<float,float>::SetPrune(v32, v28, v47).n128_u64[0];
    xgboost::common::WQSummary<float,float>::SetCombine(v28, *(a1 + 48), *(a1 + 48) + 16 * i, v48, v49);
    v32 = *(a1 + 48);
    if (*(a1 + 104) <= *(a1 + 40))
    {
      break;
    }

    *&v32[16 * i + 8] = 0;
    ++v31;
  }

  xgboost::common::WQSummary<float,float>::CopyFrom(&v32[16 * i], v28);
LABEL_56:
  v50 = *(a1 + 24);
  v51 = (*a1 + 8 * v50);
  if (v50 && *(v51 - 2) == a2)
  {
    *(v51 - 1) = *(v51 - 1) + a3;
  }

  else
  {
    *(a1 + 24) = v50 + 1;
    *v51 = a2;
    v51[1] = a3;
  }
}

void std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__append(a1, a2 - v2);
  }
}

void std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_274E1F3B0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_274E1FC60)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_274E1F3B0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_274E1FC60)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void dmlc::LogCheckFormat<unsigned int,unsigned int>(unsigned int *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E30](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E30](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CD8958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::WXQuantileSketch<float,float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xF0F0F0F0F0F0F0F1 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 136 * ((136 * a2 - 136) / 0x88) + 136;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xF0F0F0F0F0F0F0)
    {
      v9 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>(a1, v9);
    }

    v16 = 0;
    v17 = 136 * v6;
    v11 = 136 * ((136 * a2 - 136) / 0x88) + 136;
    bzero((136 * v6), v11);
    v18 = 136 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 136 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<xgboost::common::WXQuantileSketch<float,float>>::~__split_buffer(&v16);
  }
}

void sub_274CD8B04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<xgboost::common::WXQuantileSketch<float,float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::QuantileSketchTemplate(a4, v7);
      v7 += 136;
      a4 = v12 + 136;
      v12 += 136;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WXQuantileSketch<float,float>,0>(a1, v5);
      v5 += 136;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::QuantileSketchTemplate(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::__init_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Queue::QEntry*,xgboost::common::WQSummary<float,float>::Queue::QEntry*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 32) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<xgboost::common::WXQSummary<float,float>>::__init_with_size[abi:ne200100]<xgboost::common::WXQSummary<float,float>*,xgboost::common::WXQSummary<float,float>*>(a1 + 48, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__init_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry*,xgboost::common::WQSummary<float,float>::Entry*>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 4);
  xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::SummaryContainer((a1 + 96), a2 + 96);
  return a1;
}

void sub_274CD8CE0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::common::WXQSummary<float,float>>::__init_with_size[abi:ne200100]<xgboost::common::WXQSummary<float,float>*,xgboost::common::WXQSummary<float,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::common::WXQSummary<float,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CD8D8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::WXQSummary<float,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WXQSummary<float,float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WXQSummary<float,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::SummaryContainer(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = 0;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  if (a1 == a2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::__assign_with_size[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry*,xgboost::common::WQSummary<float,float>::Entry*>(a1 + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
    v4 = a1[2];
    v5 = a1[3];
  }

  if (v5 == v4)
  {
    v4 = 0;
  }

  *a1 = v4;
  return a1;
}

void sub_274CD8EA8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::WXQuantileSketch<float,float>>,xgboost::common::WXQuantileSketch<float,float>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      std::allocator_traits<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WXQuantileSketch<float,float>,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<xgboost::common::WXQuantileSketch<float,float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::common::WXQuantileSketch<float,float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::common::WXQuantileSketch<float,float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    std::allocator_traits<std::allocator<xgboost::common::WXQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WXQuantileSketch<float,float>,0>(v5, v4 - 136);
  }
}

void std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>(a1, v9);
    }

    v16 = 0;
    v17 = 40 * v6;
    v11 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero((40 * v6), v11);
    v18 = 40 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (40 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer> &>::~__split_buffer(&v16);
  }
}

void sub_274CD9148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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
      xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::SummaryContainer(a4, v6);
      v6 += 40;
      a4 = v12 + 5;
      v12 += 5;
    }

    while (v6 != a3);
    v10 = 1;
    do
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer*>::operator()[abi:ne200100](uint64_t a1)
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

    v1 -= 40;
  }
}

uint64_t std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer> &>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer> &>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer> &>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 40;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

void *xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::GetSummary(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 56) == *(a1 + 48))
  {
    v4 = (*(a1 + 8) - *a1) >> 3;
  }

  else
  {
    v4 = 2 * *(a1 + 40);
  }

  if (v4 > (a2[3] - a2[2]) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((a2 + 2), v4);
    if (a2[3] == a2[2])
    {
      v5 = 0;
    }

    else
    {
      v5 = a2[2];
    }

    *a2 = v5;
  }

  v6 = *(a1 + 24);
  v7 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(*a1, (*a1 + 8 * v6), &v33, v8, 1);
  a2[1] = 0;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *a1;
    v15 = *a2;
    v16 = *a1 + 12;
    v9 = 0.0;
    do
    {
      v17 = &v14[2 * v13];
      v18 = v13 + 1;
      v19 = *v17;
      v10.n128_f32[0] = v17[1];
      if (v13 + 1 < v11)
      {
        v20 = (v16 + 8 * v13);
        while (*(v20 - 1) == v19)
        {
          v21 = *v20;
          v20 += 2;
          v10.n128_f32[0] = v10.n128_f32[0] + v21;
          if (v11 == ++v18)
          {
            v18 = v11;
            break;
          }
        }
      }

      v22 = v15 + 16 * v12;
      *v22 = LODWORD(v9);
      *&v9 = *&v9 + v10.n128_f32[0];
      ++v12;
      *(v22 + 4) = LODWORD(v9);
      *(v22 + 8) = v10.n128_u32[0];
      *(v22 + 12) = v19;
      v13 = v18;
    }

    while (v18 < v11);
    a2[1] = v12;
  }

  else
  {
    v12 = 0;
  }

  result = *(a1 + 48);
  v24 = *(a1 + 40);
  if (*(a1 + 56) == result)
  {
    if (v12 <= v24)
    {
      return result;
    }

    v27 = a1 + 96;
    if (v24 > (*(a1 + 120) - *(a1 + 112)) >> 4)
    {
      std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a1 + 112, *(a1 + 40));
      if (*(a1 + 120) == *(a1 + 112))
      {
        v32 = 0;
      }

      else
      {
        v32 = *(a1 + 112);
      }

      *(a1 + 96) = v32;
      v24 = *(a1 + 40);
    }

    xgboost::common::WXQSummary<float,float>::SetPrune((a1 + 96), a2, v24, v9, v10);
  }

  else
  {
    xgboost::common::WXQSummary<float,float>::SetPrune(result, a2, v24, v9, v10);
    v27 = *(a1 + 48);
    if ((*(a1 + 56) - v27) >= 0x11)
    {
      v28 = 1;
      v29 = 24;
      do
      {
        if (*(v27 + v29))
        {
          if (*(v27 + 8))
          {
            xgboost::common::WQSummary<float,float>::SetCombine(a2, v27, v27 + v29 - 8, v25, v26);
            xgboost::common::WXQSummary<float,float>::SetPrune(*(a1 + 48), a2, *(a1 + 40), v30, v31);
          }

          else
          {
            xgboost::common::WQSummary<float,float>::CopyFrom(v27, v27 + v29 - 8);
          }
        }

        ++v28;
        v27 = *(a1 + 48);
        v29 += 16;
      }

      while (v28 < (*(a1 + 56) - v27) >> 4);
    }
  }

  return xgboost::common::WQSummary<float,float>::CopyFrom(a2, v27);
}

void xgboost::common::WXQSummary<float,float>::SetPrune(void *a1, uint64_t *a2, unint64_t a3, double a4, __n128 a5)
{
  v7 = a2[1];
  if (v7 <= a3)
  {

    xgboost::common::WQSummary<float,float>::CopyFrom(a1, a2);
  }

  else
  {
    v9 = *a2;
    if (a3 < 3 || (v10 = *(v9 + 4), v11 = *(v9 + 16 * v7 - 16) - v10, v11 == 0.0))
    {
      **a1 = *v9;
      *(*a1 + 16) = *(*a2 + 16 * a2[1] - 16);
      a1[1] = 2;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = a3 - 2;
      if (v11 >= 0.001)
      {
        v16 = *(v9 + 16 * v7 - 16) - v10;
      }

      else
      {
        v16 = 0.001;
      }

      v17 = (v16 + v16) / v15;
      v18 = v7 - 1;
      v19 = v7 - 2;
      v20 = (v9 + 24);
      v21 = 0.0;
      do
      {
        v22 = v12 + 1;
        a5.n128_f32[0] = *(v20 - 2) + *v20;
        v23 = *(v20 - 1) - *v20;
        if (a5.n128_f32[0] > (v17 + v23))
        {
          if (v12 != v13)
          {
            a5.n128_f32[0] = *(v9 + 16 * v13) + *(v9 + 16 * v13 + 8);
            v23 = v23 - a5.n128_f32[0];
            v21 = v21 + v23;
          }

          ++v14;
          v13 = v12 + 1;
        }

        v20 += 4;
        ++v12;
      }

      while (v19 != v22);
      if (v13 != v19)
      {
        a5.n128_f32[0] = *(v9 + 16 * v13) + *(v9 + 16 * v13 + 8);
        v23 = (*(v9 + 16 * v18 + 4) - *(v9 + 16 * v18 + 8)) - a5.n128_f32[0];
        v21 = v21 + v23;
      }

      v24 = v15 - v14;
      if (v15 <= v14)
      {
        v25 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v23, a5);
        if (*(v25 + 4) >= 2)
        {
          v26 = v25;
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h");
          xgboost::ConsoleLogger::ConsoleLogger(v59, __p, 425, 2);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " check quantile stats, nbig=", 28);
          v28 = MEMORY[0x277C68E50](v27, v14);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", n=", 4);
          MEMORY[0x277C68E50](v29, a3 - 2);
          xgboost::ConsoleLogger::~ConsoleLogger(v59);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(v26 + 4) >= 2)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h");
            xgboost::ConsoleLogger::ConsoleLogger(v59, __p, 426, 2);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " srcsize=", 9);
            v31 = MEMORY[0x277C68E50](v30, a2[1]);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", maxsize=", 10);
            v33 = MEMORY[0x277C68E50](v32, a3);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", range=", 8);
            v34 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", chunk=", 8);
            std::ostream::operator<<();
            xgboost::ConsoleLogger::~ConsoleLogger(v59);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        xgboost::common::WQSummary<float,float>::Print(a2);
        Entry = dmlc::LogMessageFatal::GetEntry(v59);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h", 429);
        v36 = dmlc::LogMessageFatal::GetEntry(v59);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Check failed: nbig < n", 22);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "quantile: too many large chunk", 30);
        dmlc::LogMessageFatal::~LogMessageFatal(v59);
        v9 = *a2;
      }

      **a1 = *v9;
      a1[1] = 1;
      v39 = a2[1];
      if (v39 >= 2)
      {
        v40 = 0;
        v41 = 0;
        v42 = *a2;
        v43 = 1;
        v44 = 1;
        do
        {
          if (v43 == v39 - 1 || (*(v42 + 16 * v43) + *(v42 + 16 * v43 + 8)) > (v17 + (*(v42 + 16 * v43 + 4) - *(v42 + 16 * v43 + 8))))
          {
            if (v41 != v43 - 1 && v44 < v24)
            {
              v45 = (*(v42 + 16 * v43 + 4) - *(v42 + 16 * v43 + 8)) + (*(v42 + 16 * v43 + 4) - *(v42 + 16 * v43 + 8));
              while (1)
              {
                v46 = (v10 + ((v21 * v44) / v24)) + (v10 + ((v21 * v44) / v24));
                v42 = *a2;
                if (v46 >= v45)
                {
                  goto LABEL_48;
                }

                v47 = v41 <= v43 ? v43 : v41;
                v48 = (v42 + 16 * v41-- + 20);
                while (v41 - v47 != -1)
                {
                  v49 = *v48 + *(v48 - 1);
                  v48 += 4;
                  ++v41;
                  if (v46 < v49)
                  {
                    goto LABEL_39;
                  }
                }

                v41 = v47;
LABEL_39:
                if (v41 == v43)
                {
                  goto LABEL_48;
                }

                v50 = (v42 + 16 * v41);
                v51 = v41 + 1;
                v52 = (v42 + 16 * (v41 + 1));
                if (v46 < ((*v50 + v50[2]) + (v52[1] - v52[2])))
                {
                  break;
                }

                if (v51 != v40)
                {
                  v50 = v52;
LABEL_45:
                  v53 = *a1;
                  v54 = a1[1];
                  a1[1] = v54 + 1;
                  *(v53 + 16 * v54) = *v50;
                  v40 = v51;
                }

LABEL_46:
                if (++v44 >= v24)
                {
                  v42 = *a2;
                  v44 = v15 - v14;
                  goto LABEL_48;
                }
              }

              v51 = v41;
              if (v41 == v40)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

LABEL_48:
            if (v40 != v43)
            {
              v55 = *a1;
              v56 = a1[1];
              a1[1] = v56 + 1;
              *(v55 + 16 * v56) = *(v42 + 16 * v43);
              v42 = *a2;
            }

            v10 = v10 + ((*(v42 + 16 * v43) + *(v42 + 16 * v43 + 8)) - (*(v42 + 16 * v43 + 4) - *(v42 + 16 * v43 + 8)));
            v39 = a2[1];
            v41 = v43;
            v40 = v43;
          }

          ++v43;
        }

        while (v43 < v39);
      }
    }
  }
}

void sub_274CD9ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::WQSummary<float,float>::Print(void *a1)
{
  if (a1[1])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      xgboost::BaseLogger::BaseLogger(v13);
      v14 = 4;
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "[", 1);
      v5 = MEMORY[0x277C68E50](v4, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "] rmin=", 7);
      v6 = *(*a1 + v2);
      v7 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", rmax=", 7);
      v8 = *(*a1 + v2 + 4);
      v9 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", wmin=", 7);
      v10 = *(*a1 + v2 + 8);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", v=", 4);
      v12 = *(*a1 + v2 + 12);
      std::ostream::operator<<();
      xgboost::ConsoleLogger::~ConsoleLogger(v13);
      ++v3;
      v2 += 16;
    }

    while (v3 < a1[1]);
  }
}

void *std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
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

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::SummaryContainer::Reduce(uint64_t a1, uint64_t a2, uint64_t a3, double a4, __n128 a5)
{
  v7 = (a3 - 8) >> 4;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v8 = a1 + 16;
  if (v7 > (v10 - v9) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(v8, v7);
    if (*(a1 + 24) == *(a1 + 16))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 16);
    }

    *a1 = v11;
  }

  v19 = 0;
  v12 = 0.0;
  v17 = 0u;
  *__p = 0u;
  v13 = *(a2 + 8) + *(a1 + 8);
  if (v13)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(__p, v13);
    if (__p[1] == __p[0])
    {
      v14 = 0;
    }

    else
    {
      v14 = __p[0];
    }

    *&v17 = v14;
  }

  xgboost::common::WQSummary<float,float>::SetCombine(&v17, a1, a2, v12, a5);
  xgboost::common::WXQSummary<float,float>::SetPrune(a1, &v17, (*(a1 + 24) - *(a1 + 16)) >> 4, v15, v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274CD9E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::Push(float **a1, float a2, float a3)
{
  if (a3 != 0.0)
  {
    v35 = v6;
    v36 = v5;
    v37 = v3;
    v38 = v4;
    v10 = a1[3];
    v11 = *a1;
    v13 = a1[1] - v11;
    if (v10 == v13 >> 3 && v11[2 * v10 - 2] != a2)
    {
      if (v13 == 8)
      {
        std::vector<xgboost::common::WQSummary<float,float>::Queue::QEntry,std::allocator<xgboost::common::WQSummary<float,float>::Queue::QEntry>>::resize(a1, 2 * a1[5]);
      }

      else
      {
        v14 = 2 * a1[5];
        if (v14 > (a1[15] - a1[14]) >> 4)
        {
          std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((a1 + 14), v14);
          if (a1[15] == a1[14])
          {
            v15 = 0;
          }

          else
          {
            v15 = a1[14];
          }

          a1[12] = v15;
          v11 = *a1;
          v10 = a1[3];
        }

        v16 = 126 - 2 * __clz(v10);
        if (v10)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(v11, &v11[2 * v10], &v34, v17, 1);
        a1[13] = 0;
        v20 = a1[3];
        if (v20)
        {
          v21 = 0;
          v22 = 0;
          v23 = *a1;
          v24 = a1[12];
          v25 = (*a1 + 3);
          v18 = 0.0;
          do
          {
            v26 = &v23[2 * v22];
            v27 = v22 + 1;
            v28 = *v26;
            v19.n128_f32[0] = v26[1];
            if (v22 + 1 < v20)
            {
              v29 = (v25 + 8 * v22);
              while (*(v29 - 1) == v28)
              {
                v30 = *v29;
                v29 += 2;
                v19.n128_f32[0] = v19.n128_f32[0] + v30;
                if (v20 == ++v27)
                {
                  v27 = v20;
                  break;
                }
              }
            }

            v31 = &v24[4 * v21];
            *v31 = *&v18;
            *&v18 = *&v18 + v19.n128_f32[0];
            v21 = (v21 + 1);
            v31[1] = *&v18;
            v31[2] = v19.n128_f32[0];
            v31[3] = v28;
            v22 = v27;
          }

          while (v27 < v20);
          a1[13] = v21;
        }

        a1[3] = 0;
        xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::PushTemp(a1, v18, v19);
      }
    }

    v32 = a1[3];
    v33 = &(*a1)[2 * v32];
    if (v32 && *(v33 - 2) == a2)
    {
      *(v33 - 1) = *(v33 - 1) + a3;
    }

    else
    {
      a1[3] = (v32 + 1);
      *v33 = a2;
      v33[1] = a3;
    }
  }
}

void xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::PushTemp(void *a1, double a2, __n128 a3)
{
  v5 = a1[14];
  v4 = (a1 + 14);
  v6 = (v4 - 16);
  v7 = 2 * *(v4 - 72);
  if (v7 > (*(v4 + 8) - v5) >> 4)
  {
    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(v4, v7);
    if (a1[15] == a1[14])
    {
      v8 = 0;
    }

    else
    {
      v8 = a1[14];
    }

    a1[12] = v8;
  }

  v9 = a1[6];
  for (i = 1; ; ++i)
  {
    if (i + 1 > ((a1[7] - v9) >> 4))
    {
      std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((a1 + 9), a1[5] * (i + 1));
      v19 = 0uLL;
      std::vector<xgboost::common::WXQSummary<float,float>>::resize(a1 + 6, i + 1, &v19);
      v9 = a1[6];
      v11 = a1[7] - v9;
      if (v11)
      {
        v12 = v11 >> 4;
        if (a1[10] == a1[9])
        {
          v13 = 0;
        }

        else
        {
          v13 = a1[9];
        }

        if (v12 <= 1)
        {
          v12 = 1;
        }

        v14 = 16 * a1[5];
        v15 = a1[6];
        do
        {
          *v15 = v13;
          v15 += 2;
          v13 += v14;
          --v12;
        }

        while (v12);
      }
    }

    v16 = a1[5];
    if (!v9[2 * i + 1])
    {
      xgboost::common::WXQSummary<float,float>::SetPrune(&v9[2 * i], v6, v16, a2, a3);
      return;
    }

    xgboost::common::WXQSummary<float,float>::SetPrune(v9, v6, v16, a2, a3);
    xgboost::common::WQSummary<float,float>::SetCombine(v6, a1[6], a1[6] + 16 * i, v17, v18);
    v9 = a1[6];
    if (a1[13] <= a1[5])
    {
      break;
    }

    v9[2 * i + 1] = 0;
  }

  xgboost::common::WQSummary<float,float>::CopyFrom(&v9[2 * i], v6);
}

void std::vector<xgboost::common::WXQSummary<float,float>>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<xgboost::common::WXQSummary<float,float>>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<xgboost::common::WXQSummary<float,float>>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WXQSummary<float,float>>>(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void xgboost::common::SortedQuantile::Push(xgboost::common::SortedQuantile *this, float a2, __n128 a3, unsigned int a4)
{
  v4 = a3.n128_f32[0];
  v34 = a4;
  v7 = *(this + 4);
  if (v7 == -1.0)
  {
    *(this + 4) = 0;
    *(this + 6) = a2;
    v8 = a3.n128_f32[0];
LABEL_3:
    *(this + 2) = v8;
    return;
  }

  v9 = *(this + 6);
  if (v9 == a2)
  {
    v8 = *(this + 2) + a3.n128_f32[0];
    goto LABEL_3;
  }

  v10 = *(this + 1);
  a3.n128_u64[0] = *(this + 2);
  v11 = v10 + a3.n128_f64[0];
  if (v10 + a3.n128_f64[0] >= v7)
  {
    v12 = *(this + 5);
    v15 = *(v12 + 104);
    v13 = (v12 + 104);
    v14 = v15;
    if (v15 == a4)
    {
      if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v9, a3) + 4) >= 3)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.h");
        xgboost::ConsoleLogger::ConsoleLogger(v33, __p, 835, 3);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "INFO: rmax=", 11);
        v17 = MEMORY[0x277C68E00](v16, v11);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", sum_total=", 12);
        v19 = MEMORY[0x277C68E00](v18, *this);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", naxt_goal=", 12);
        v21 = MEMORY[0x277C68E00](v20, *(this + 4));
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", size=", 7);
        MEMORY[0x277C68E50](v22, *(*(this + 5) + 104));
        xgboost::ConsoleLogger::~ConsoleLogger(v33);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v23 = a4;
      v24 = (*(*(this + 5) + 96) + 16 * v14);
      if (!v14 || v9 > *(v24 - 1))
      {
        v25 = v10;
        v26 = v11;
        v27 = a3.n128_f64[0];
        *v24 = v25;
        v24[1] = v26;
        v24[2] = v27;
        v24[3] = v9;
        if (v14 >= a4)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned int>(v13, &v34);
        }

        v28 = *(this + 5);
        v14 = *(v28 + 104) + 1;
        *(v28 + 104) = v14;
        v23 = v34;
        a4 = v34;
      }

      if (v14 == v23)
      {
        v29 = *this * 2.0 + 0.00000999999975;
      }

      else
      {
        v30 = *this * v14 / a4;
        v29 = v30;
      }

      *(this + 4) = v29;
    }
  }

  *(this + 1) = v11;
  *(this + 2) = v4;
  *(this + 6) = a2;
}

void sub_274CDA5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SortedQuantile::Finalize(xgboost::common::SortedQuantile *this, unsigned int a2, double a3, __n128 a4)
{
  v13 = a2;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(this + 5);
  v8 = v7[13];
  if (!v8 || (LODWORD(a3) = *(this + 6), a4.n128_u32[0] = *(v7[12] + 16 * v8 - 4), *&a3 > a4.n128_f32[0]))
  {
    if (v8 > a2)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v7 + 13, &v13);
    }

    a3 = v5 + v6;
    a4.n128_u64[0] = *(this + 1);
    a4.n128_f32[0] = a4.n128_f64[0];
    *&a3 = v5 + v6;
    v9 = *(this + 2);
    v10 = *(this + 6);
    v7 = *(this + 5);
    v11 = v7[13];
    v12 = v7[12] + 16 * v11;
    *v12 = a4.n128_u32[0];
    *(v12 + 4) = LODWORD(a3);
    *(v12 + 8) = v9;
    *(v12 + 12) = v10;
    v7[13] = v11 + 1;
  }

  xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WXQSummary<float,float>>::PushTemp(v7, a3, a4);
}

void sub_274CDA7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::gbm::LinearCheckLayer(uint64_t this)
{
  v2 = this;
  v1 = 0;
  if (this)
  {
    dmlc::LogCheckFormat<unsigned int,int>(&v2, &v1);
  }

  return this;
}

void sub_274CDA8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::LogCheckFormat<unsigned int,int>(unsigned int *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E30](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CDAAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::parameter::FieldEntry<std::string>::~FieldEntry(void **this)
{
  *this = &unk_2883DE780;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);
}

{
  *this = &unk_2883DE780;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);

  JUMPOUT(0x277C69180);
}

std::string *dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::SetDefault(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v20);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Required parameter ", 19);
    v6 = *(a1 + 47);
    if (v6 >= 0)
    {
      v7 = a1 + 24;
    }

    else
    {
      v7 = *(a1 + 24);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 47);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
    v13 = *(a1 + 48);
    v12 = a1 + 48;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v15, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v19);
    exception->__vftable = &unk_2883DE2B0;
  }

  v3 = (a2 + *(a1 + 96));

  return std::string::operator=(v3, (a1 + 104));
}

void sub_274CDAD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  v4 = a2 + a1[12];
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 8));
  }

  else
  {
    __p = *v4;
  }

  (*(*a1 + 64))(a1, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v11);
}

void sub_274CDAF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274CDB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

void *dmlc::parameter::FieldEntry<std::string>::PrintDefaultValueString(uint64_t a1, void *a2)
{
  v12 = 39;
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, &v12, 1);
  v6 = *(a1 + 104);
  v5 = a1 + 104;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v8, v9);
  v13 = 39;
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v13, 1);
}

void *dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::PrintValue(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v5, v6);
}

void dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::~FieldEntryBase(void **this)
{
  *this = &unk_2883DE780;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);
}

{
  *this = &unk_2883DE780;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(this);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v34, a2 + *(a1 + 96));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}

void sub_274CDB6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      std::istringstream::~istringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v48);
  goto LABEL_6;
}

void dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<std::string>,std::string>::PrintDefaultValueString(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    __p = *(a1 + 104);
  }

  (*(*a1 + 64))(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_274CDB798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_274CDB910(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x277C690D0](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x277C68D10](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_274CDBB7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x274CDBB3CLL);
  }

  __cxa_rethrow();
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x277C690D0](a1 + 120);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C69050](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_274CDBDF8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void dmlc::parameter::FieldEntry<unsigned long>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::SetDefault(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Required parameter ", 19);
    v4 = *(v2 + 47);
    if (v4 >= 0)
    {
      v5 = v2 + 24;
    }

    else
    {
      v5 = *(v2 + 24);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 47);
    }

    else
    {
      v6 = *(v2 + 32);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " of ", 4);
    v11 = *(v2 + 48);
    v10 = v2 + 48;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2883DE2B0;
  }

  *(a2 + *(result + 96)) = *(result + 104);
  return result;
}

void sub_274CDBF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v34, a3, 8);
  MEMORY[0x277C68D70](v34, a2 + *(a1 + 96));
  v6 = v34[0];
  v7 = *(&v36[1].__locale_ + *(v34[0] - 24));
  if ((v7 & 5) == 0 && (v7 & 2) == 0)
  {
    while (1)
    {
      v8 = std::istream::get();
      if (v8 == -1)
      {
        v10 = 0;
        v11 = (v34 + *(v34[0] - 24));
        goto LABEL_11;
      }

      if (v8 > 0x20u || ((1 << v8) & 0x100003600) == 0)
      {
        break;
      }

      v6 = v34[0];
      if ((*(&v36[1].__locale_ + *(v34[0] - 24)) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v11 = (v34 + *(v34[0] - 24));
    v10 = v11->__rdstate_ | 4;
LABEL_11:
    std::ios_base::clear(v11, v10);
    v6 = v34[0];
  }

LABEL_12:
  if ((*(&v36[1].__locale_ + *(v6 - 24)) & 5) != 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Invalid Parameter format for ", 29);
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = a1 + 24;
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " expect ", 8);
    v21 = *(a1 + 48);
    v20 = a1 + 48;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v23, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " but value='", 12);
    v27 = *(a3 + 23);
    if (v27 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= 0)
    {
      v29 = *(a3 + 23);
    }

    else
    {
      v29 = *(a3 + 8);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v32.__r_.__value_.__s.__data_[0] = 39;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v32, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v32);
    exception->__vftable = &unk_2883DE2B0;
  }

  v34[0] = *MEMORY[0x277D82820];
  *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v35 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v36);
  std::istream::~istream();
  return MEMORY[0x277C690D0](&v38);
}

void sub_274CDC364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      std::istringstream::~istringstream(&a48);
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v48);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::Check(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + *(result + 96));
  v3 = *(result + 113);
  if (*(result + 112))
  {
    v4 = *(result + 120);
    if (*(result + 113))
    {
      if (v2 < v4 || v2 > *(result + 128))
      {
        v5 = result;
        std::ostringstream::basic_ostringstream[abi:ne200100](v81);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
        v7 = MEMORY[0x277C68E50](v6, v2);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for Parameter ", 15);
        v9 = *(v5 + 24);
        v10 = *(v5 + 47);
        if (v10 >= 0)
        {
          v11 = v5 + 24;
        }

        else
        {
          v11 = *(v5 + 24);
        }

        if (v10 >= 0)
        {
          v12 = *(v5 + 47);
        }

        else
        {
          v12 = *(v5 + 32);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " exceed bound [", 15);
        v15 = MEMORY[0x277C68E50](v14, *(v5 + 120));
        v80.__r_.__value_.__s.__data_[0] = 44;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v80, 1);
        v17 = MEMORY[0x277C68E50](v16, *(v5 + 128));
        v80.__r_.__value_.__s.__data_[0] = 93;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v80, 1);
        v80.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v80, 1);
        v19 = *(v5 + 47);
        v20 = *(v5 + 32);
        if (v19 >= 0)
        {
          v21 = v5 + 24;
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v19 >= 0)
        {
          v22 = *(v5 + 47);
        }

        else
        {
          v22 = *(v5 + 32);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
        v27 = *(v5 + 72);
        v26 = v5 + 72;
        v25 = v27;
        v28 = *(v26 + 23);
        if (v28 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v25;
        }

        if (v28 >= 0)
        {
          v30 = *(v26 + 23);
        }

        else
        {
          v30 = *(v26 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v80);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    else if (v2 < v4)
    {
      v56 = result;
      std::ostringstream::basic_ostringstream[abi:ne200100](v81);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
      v58 = MEMORY[0x277C68E50](v57, v2);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " for Parameter ", 15);
      v60 = *(v56 + 24);
      v61 = *(v56 + 47);
      if (v61 >= 0)
      {
        v62 = v56 + 24;
      }

      else
      {
        v62 = *(v56 + 24);
      }

      if (v61 >= 0)
      {
        v63 = *(v56 + 47);
      }

      else
      {
        v63 = *(v56 + 32);
      }

      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v62, v63);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " should be greater equal to ", 28);
      v66 = MEMORY[0x277C68E50](v65, *(v56 + 120));
      v80.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v80, 1);
      v67 = *(v56 + 47);
      v68 = *(v56 + 32);
      if (v67 >= 0)
      {
        v69 = v56 + 24;
      }

      else
      {
        v69 = *(v56 + 24);
      }

      if (v67 >= 0)
      {
        v70 = *(v56 + 47);
      }

      else
      {
        v70 = *(v56 + 32);
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      v75 = *(v56 + 72);
      v74 = v56 + 72;
      v73 = v75;
      v76 = *(v74 + 23);
      if (v76 >= 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = v73;
      }

      if (v76 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v77, v78);
      v79 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(v79, &v80);
      v79->__vftable = &unk_2883DE2B0;
    }
  }

  else if ((*(result + 113) & 1) != 0 && v2 > *(result + 128))
  {
    v32 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](v81);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
    v34 = MEMORY[0x277C68E50](v33, v2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " for Parameter ", 15);
    v36 = *(v32 + 24);
    v37 = *(v32 + 47);
    if (v37 >= 0)
    {
      v38 = v32 + 24;
    }

    else
    {
      v38 = *(v32 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(v32 + 47);
    }

    else
    {
      v39 = *(v32 + 32);
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " should be smaller equal to ", 28);
    v42 = MEMORY[0x277C68E50](v41, *(v32 + 128));
    v80.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v80, 1);
    v43 = *(v32 + 47);
    v44 = *(v32 + 32);
    if (v43 >= 0)
    {
      v45 = v32 + 24;
    }

    else
    {
      v45 = *(v32 + 24);
    }

    if (v43 >= 0)
    {
      v46 = *(v32 + 47);
    }

    else
    {
      v46 = *(v32 + 32);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v45, v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    v51 = *(v32 + 72);
    v50 = v32 + 72;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = v49;
    }

    if (v52 >= 0)
    {
      v54 = *(v50 + 23);
    }

    else
    {
      v54 = *(v50 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v53, v54);
    v55 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v55, &v80);
    v55->__vftable = &unk_2883DE2B0;
  }

  return result;
}

void sub_274CDC840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  (*(*a1 + 64))(a1, &v5, *(a2 + a1[12]));
  std::stringbuf::str();
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v9);
}

void sub_274CDCA24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274CDCC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<unsigned long>,unsigned long>::set_range(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 112) = 257;
  return result;
}

void std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  operator new();
}

{
  v3 = *a2;
  v4 = *a3;
  operator new();
}

void sub_274CDCE9C(_Unwind_Exception *a1)
{
  v9 = *(v2 + 448);
  *(v2 + 448) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(v2 + 431) < 0)
  {
    operator delete(*(v2 + 408));
  }

  *v7 = v4;
  v10 = *(v2 + 376);
  if (v10)
  {
    *(v2 + 384) = v10;
    operator delete(v10);
  }

  *v5 = v3;
  v11 = *v6;
  if (*v6)
  {
    *(v2 + 200) = v11;
    operator delete(v11);
  }

  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::gbm::$_0,std::allocator<xgboost::gbm::$_0>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::target_type()
{
}

{
}

void xgboost::gbm::GBLinear::~GBLinear(xgboost::gbm::GBLinear *this)
{
  *this = &unk_2883DE520;
  *(this + 1) = &unk_2883DE5E0;
  xgboost::common::Monitor::~Monitor(this + 59);
  v2 = *(this + 56);
  *(this + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  *(this + 27) = &unk_2883E1668;
  v3 = *(this + 47);
  if (v3)
  {
    *(this + 48) = v3;
    operator delete(v3);
  }

  *(this + 4) = &unk_2883E1668;
  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2883DE520;
  *(this + 1) = &unk_2883DE5E0;
  xgboost::common::Monitor::~Monitor(this + 59);
  v2 = *(this + 56);
  *(this + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  *(this + 27) = &unk_2883E1668;
  v3 = *(this + 47);
  if (v3)
  {
    *(this + 48) = v3;
    operator delete(v3);
  }

  *(this + 4) = &unk_2883E1668;
  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::gbm::GBLinear::LoadModel(xgboost::gbm::GBLinear *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = v5 + 2;
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 8)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = v5 + 2;
    if (v7 != 8)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [9]>(&v21, v6);
    }
  }

  if (*v8 != 0x7261656E696C6267)
  {
    goto LABEL_7;
  }

  v21 = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gblinear.cc", 114);
    v10 = dmlc::LogMessageFatal::GetEntry(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: ", 14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "get<String>(in[name]) == gblinear", 37);
    v13 = *(v21 + 23);
    v14 = v13 >= 0 ? v21 : *v21;
    v15 = v13 >= 0 ? *(v21 + 23) : *(v21 + 8);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
    v17 = v21;
    v21 = 0;
    if (v17)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](&v21, v17);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model");
  v18 = (*(**a2 + 24))(*a2, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::gbm::GBLinearModel::LoadModel((this + 32), v18);
}

void sub_274CDD360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinear::SaveModel(xgboost::gbm::GBLinear *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "gblinear");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274CDD5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinear::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::gbm::GBLinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v7, (a1 + 400), a2);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  xgboost::gbm::GBLinearTrainParam::CheckGPUSupport((a1 + 400));
  v4 = xgboost::LinearUpdater::Create(a1 + 408, *(a1 + 16));
  v5 = *(a1 + 448);
  *(a1 + 448) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v4 = *(a1 + 448);
  }

  (*(*v4 + 32))(v4, a2);
  std::string::basic_string[abi:ne200100]<0>(&__str, "GBLinear");
  std::string::operator=((a1 + 472), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_274CDD724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinear::Load(std::vector<unsigned int> *a1, uint64_t (***a2)(void, std::__compressed_pair<unsigned int *> *, uint64_t))
{
  v4 = (**a2)(a2, &a1[1].__end_cap_, 136);
  v6 = 136;
  v7 = v4;
  if (v4 != 136)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v7, &v6);
  }

  __sz = 0;
  if ((**a2)(a2, &__sz, 8) == 8)
  {
    v5 = __sz;
    std::vector<float>::resize(a1 + 8, __sz);
    if (__sz)
    {
      (**a2)(a2, a1[8].__begin_, 4 * v5);
    }
  }
}

void sub_274CDD8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::gbm::GBLinear::Save(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, a1 + 40, 136);
  v5 = (*(a1 + 200) - *(a1 + 192)) >> 2;
  result = (*(*a2 + 8))(a2, &v5, 8);
  if (v5)
  {
    return (*(*a2 + 8))(a2, *(a1 + 192), *(a1 + 200) - *(a1 + 192));
  }

  return result;
}

void xgboost::GradientBooster::Slice(xgboost::GradientBooster *this, int a2, int a3, int a4, xgboost::GradientBooster *a5, BOOL *a6)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v8);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/gbm.h", 73);
  v7 = dmlc::LogMessageFatal::GetEntry(&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Slice is not supported by current booster.", 42);
  dmlc::LogMessageFatal::~LogMessageFatal(&v8);
}

void xgboost::gbm::GBLinear::DoBoost(uint64_t a1, uint64_t (***a2)(void), uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DoBoost");
  xgboost::common::Monitor::Start();
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 192) == *(a1 + 200))
  {
    std::vector<float>::resize((a1 + 192), (*(*(a1 + 184) + 8) + *(*(a1 + 184) + 8) * *(*(a1 + 184) + 4)));
    v6 = *(a1 + 192);
    v7 = *(a1 + 200) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }
  }

  if ((*(a1 + 464) & 1) == 0)
  {
    v8 = (**a2)(a2);
    v9 = *v8;
    if (*v8)
    {
      v10 = *(a1 + 456);
      v11 = **(v8 + 72);
      do
      {
        if (*(*(v8 + 72) + 8) == **(v8 + 72))
        {
          v12 = 1.0;
        }

        else
        {
          v12 = *v11;
        }

        v10 = v10 + v12;
        ++v11;
        --v9;
      }

      while (v9);
      *(a1 + 456) = v10;
    }

    *(a1 + 464) = 1;
  }

  if (*(a1 + 432) == 0.0)
  {
    goto LABEL_16;
  }

  if ((*(a1 + 536) & 1) == 0)
  {
    v13 = *(a1 + 376);
    v14 = *(a1 + 192);
    v15 = *(a1 + 200);
    v16 = (v15 - v14) >> 2;
    if (*(a1 + 384) - v13 == v15 - v14)
    {
      if (v15 == v14)
      {
        v18 = 0.0;
      }

      else
      {
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = (v15 - v14) >> 2;
        }

        v18 = 0.0;
        v19 = *(a1 + 192);
        do
        {
          v20 = *v19++;
          v21 = v20;
          v22 = *v13++;
          v23 = vabds_f32(v21, v22);
          if (v18 < v23)
          {
            v18 = v23;
          }

          --v17;
        }

        while (v17);
      }

      v28 = *(a1 + 152);
      *(a1 + 320) = *(a1 + 136);
      *(a1 + 336) = v28;
      *(a1 + 352) = *(a1 + 168);
      *(a1 + 368) = *(a1 + 184);
      v29 = *(a1 + 88);
      *(a1 + 256) = *(a1 + 72);
      *(a1 + 272) = v29;
      v30 = *(a1 + 120);
      *(a1 + 288) = *(a1 + 104);
      *(a1 + 304) = v30;
      v31 = *(a1 + 56);
      *(a1 + 224) = *(a1 + 40);
      *(a1 + 240) = v31;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 376), v14, v15, v16);
      v32 = *(a1 + 432);
      *(a1 + 536) = v18 <= v32;
      if (v18 <= v32)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = *(a1 + 152);
      *(a1 + 320) = *(a1 + 136);
      *(a1 + 336) = v24;
      *(a1 + 352) = *(a1 + 168);
      *(a1 + 368) = *(a1 + 184);
      v25 = *(a1 + 88);
      *(a1 + 256) = *(a1 + 72);
      *(a1 + 272) = v25;
      v26 = *(a1 + 120);
      *(a1 + 288) = *(a1 + 104);
      *(a1 + 304) = v26;
      v27 = *(a1 + 56);
      *(a1 + 224) = *(a1 + 40);
      *(a1 + 240) = v27;
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 376), v14, v15, v16);
    }

LABEL_16:
    (*(**(a1 + 448) + 40))(*(a1 + 448), a3, a2, a1 + 32, *(a1 + 456));
  }

LABEL_17:
  ++*(a1 + 176);
  std::string::basic_string[abi:ne200100]<0>(__p, "DoBoost");
  xgboost::common::Monitor::Stop();
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CDDD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinear::PredictBatch(std::vector<unsigned int> *this, xgboost::DMatrix *a2, std::vector<unsigned int> **a3, BOOL a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "PredictBatch");
  xgboost::common::Monitor::Start();
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xgboost::gbm::LinearCheckLayer(a5);
  v9 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "PredictBatchInternal");
  xgboost::common::Monitor::Start();
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (this[8].__begin_ == this[8].__end_)
  {
    std::vector<float>::resize(this + 8, this[7].__end_cap_.__value_[2] + this[7].__end_cap_.__value_[2] * this[7].__end_cap_.__value_[1]);
    begin = this[8].__begin_;
    v11 = this[8].__end_ - begin;
    if (v11 >= 1)
    {
      bzero(begin, v11);
    }
  }

  v12 = (**a2)(a2);
  v13 = v12[11];
  v16 = v12[12];
  *(v12[10] + 8);
  *v12[10];
  v14 = this[7].__end_cap_.__value_[2];
  v15 = (**a2)(a2);
  std::vector<float>::resize(v9, *v15 * v14);
  (*(*a2 + 72))(&v18, a2);
  v17[2] = v18;
  v17[3] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v17, 0);
}

void sub_274CDE24C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274CDE32CLL);
}

void sub_274CDE2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a20, v21);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_274CDE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CDE2D0);
}

void xgboost::GradientBooster::InplacePredict()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/gbm.h", 125);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "Inplace predict is not supported by current booster.", 52);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

uint64_t xgboost::gbm::GBLinear::PredictInstance(void *a1, uint64_t *a2, uint64_t *a3, xgboost::gbm *this)
{
  result = xgboost::gbm::LinearCheckLayer(this);
  v8 = a1[23];
  v9 = *(v8 + 8);
  if (v9 >= 1)
  {
    v10 = 0;
    if (a3[1] == *a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *a3;
    }

    v12 = a1[3];
    v13 = a1[24];
    v14 = *a2;
    v15 = *(v8 + 4);
    do
    {
      v16 = *v12 + *(v13 + 4 * v15 * v9 + 4 * v10);
      if (v14)
      {
        v17 = (a2[1] + 4);
        result = v14;
        do
        {
          v18 = *(v17 - 1);
          if (v18 < v15)
          {
            v16 = v16 + (*v17 * *(v13 + 4 * v10 + 4 * v18 * v9));
          }

          v17 += 2;
          --result;
        }

        while (result);
      }

      *(v11 + 4 * v10++) = v16;
    }

    while (v10 != v9);
  }

  return result;
}

void xgboost::gbm::GBLinear::PredictLeaf()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gblinear.cc", 173);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "gblinear does not support prediction of leaf index", 50);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

void xgboost::gbm::GBLinear::PredictContribution(std::vector<unsigned int> *a1, uint64_t a2, std::vector<unsigned int> **a3, xgboost::gbm *this)
{
  v27 = *MEMORY[0x277D85DE8];
  begin = a1[8].__begin_;
  end = a1[8].__end_;
  v8 = a1 + 8;
  if (begin == end)
  {
    std::vector<float>::resize(v8, a1[7].__end_cap_.__value_[2] + a1[7].__end_cap_.__value_[2] * a1[7].__end_cap_.__value_[1]);
    v11 = a1[8].__begin_;
    v12 = a1[8].__end_ - v11;
    if (v12 >= 1)
    {
      bzero(v11, v12);
    }
  }

  xgboost::gbm::LinearCheckLayer(this);
  v13 = (**a2)(a2);
  v14 = v13[10];
  v15 = v13[11];
  v17 = *v14;
  v16 = v14[1];
  v23 = v13[12];
  v18 = *(a1[7].__end_cap_.__value_ + 2);
  v19 = a1[7].__end_cap_.__value_[1] + 1;
  v20 = *a3;
  v21 = (**a2)(a2);
  std::vector<float>::resize(v20, v19 * v18 * *v21);
  v22 = v20->__end_ - v20->__begin_;
  if (v22 >= 1)
  {
    bzero(v20->__begin_, v22);
  }

  (*(*a2 + 72))(&v25, a2);
  v24[2] = v25;
  v24[3] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(v24, 0);
}

void sub_274CDE910(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CDE97CLL);
}

void sub_274CDE930()
{
  std::mutex::~mutex(&v1);
  std::exception_ptr::~exception_ptr(&v0);
  JUMPOUT(0x274CDE958);
}

void xgboost::gbm::GBLinear::PredictInteractionContributions(uint64_t a1, uint64_t (***a2)(void), std::vector<unsigned int> **a3, xgboost::gbm *this)
{
  xgboost::gbm::LinearCheckLayer(this);
  v7 = *a3;
  v8 = (*(*(a1 + 184) + 4) * *(*(a1 + 184) + 4));
  v9 = (**a2)(a2);
  std::vector<float>::resize(v7, *v9 * v8 * *(*(a1 + 184) + 8));
  begin = v7->__begin_;
  v11 = v7->__end_ - v7->__begin_;
  if (v11 >= 1)
  {

    bzero(begin, v11);
  }
}

void xgboost::gbm::GBLinear::DumpModel(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, *a2, *(a2 + 8));
  }

  else
  {
    v50 = *a2;
  }

  v47 = a3;
  v48 = *(*(a1 + 184) + 4);
  v49 = *(*(a1 + 184) + 8);
  std::string::basic_string[abi:ne200100]<0>(&v56, &unk_274E44C6E);
  v55 = 0;
  v5 = MEMORY[0x277D82890] + 104;
  v54 = MEMORY[0x277D82890] + 104;
  v6 = MEMORY[0x277D82890] + 64;
  v52 = MEMORY[0x277D82890] + 64;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v51[0] = *(MEMORY[0x277D82818] + 16);
  *(v51 + *(v51[0] - 24)) = v8;
  v51[1] = 0;
  v9 = (v51 + *(v51[0] - 24));
  std::ios_base::init(v9, v53);
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v7[5];
  v52 = v7[4];
  *(&v53[-1] + *(v52 - 24)) = v11;
  v51[0] = v7[1];
  *(v51 + *(v51[0] - 24)) = v7[6];
  v54 = v5;
  v51[0] = v10;
  v52 = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100](v53, &v56, 24);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v50.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_12;
    }

    v12 = v50.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_12;
    }

    v12 = &v50;
  }

  if (LODWORD(v12->__r_.__value_.__l.__data_) == 1852797802)
  {
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "  { bias: [", 13);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    if (v49 >= 1)
    {
      v27 = 0;
      v28 = MEMORY[0x277D82680];
      do
      {
        if (v27)
        {
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, ",", 1);
          std::ios_base::getloc((v29 + *(*v29 - 24)));
          v30 = std::locale::use_facet(&v56, v28);
          (v30->__vftable[2].~facet_0)(v30, 10);
          std::locale::~locale(&v56);
          std::ostream::put();
          std::ostream::flush();
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "      ", 6);
        v31 = *(*(a1 + 192) + 4 * (*(*(a1 + 184) + 8) * *(*(a1 + 184) + 4)) + v27);
        std::ostream::operator<<();
        v27 += 4;
      }

      while (4 * v49 != v27);
    }

    std::ios_base::getloc((&v53[-1] + *(v52 - 24)));
    v32 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "    ],", 6);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "    weight: [", 15);
    std::ios_base::getloc((v35 + *(*v35 - 24)));
    v36 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    if (v48)
    {
      v37 = 0;
      v38 = 0;
      v39 = MEMORY[0x277D82680];
      do
      {
        if (v49 >= 1)
        {
          for (i = 0; i != v49; ++i)
          {
            if (i | v38)
            {
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, ",", 1);
              std::ios_base::getloc((v41 + *(*v41 - 24)));
              v42 = std::locale::use_facet(&v56, v39);
              (v42->__vftable[2].~facet_0)(v42, 10);
              std::locale::~locale(&v56);
              std::ostream::put();
              std::ostream::flush();
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "      ", 6);
            v43 = *(*(a1 + 192) + v37 * *(*(a1 + 184) + 8) + 4 * i);
            std::ostream::operator<<();
          }
        }

        ++v38;
        v37 += 4;
      }

      while (v38 != v48);
    }

    std::ios_base::getloc((&v53[-1] + *(v52 - 24)));
    v44 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "    ]", 5);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(&v56, MEMORY[0x277D82680]);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(&v56);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "  }", 3);
LABEL_36:
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    std::stringbuf::str();
    v57 = v47;
    operator new();
  }

LABEL_12:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "bias:\n", 6);
  if (v49 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D82680];
    do
    {
      v15 = *(*(a1 + 192) + 4 * (*(*(a1 + 184) + 8) * *(*(a1 + 184) + 4)) + v13);
      v16 = std::ostream::operator<<();
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v17 = std::locale::use_facet(&v56, v14);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(&v56);
      std::ostream::put();
      std::ostream::flush();
      v13 += 4;
    }

    while (4 * v49 != v13);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "weight:\n", 8);
  if (v48)
  {
    v18 = 0;
    v19 = 0;
    v20 = MEMORY[0x277D82680];
    do
    {
      if (v49 >= 1)
      {
        v21 = 0;
        do
        {
          v22 = *(*(a1 + 192) + v18 * *(*(a1 + 184) + 8) + v21);
          v23 = std::ostream::operator<<();
          std::ios_base::getloc((v23 + *(*v23 - 24)));
          v24 = std::locale::use_facet(&v56, v20);
          (v24->__vftable[2].~facet_0)(v24, 10);
          std::locale::~locale(&v56);
          std::ostream::put();
          std::ostream::flush();
          v21 += 4;
        }

        while (4 * v49 != v21);
      }

      ++v19;
      v18 += 4;
    }

    while (v19 != v48);
  }

  goto LABEL_36;
}

void sub_274CDF650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::locale::~locale((v28 - 128));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a28, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBLinear::FeatureScore(void *a1, uint64_t a2, void *a3, std::vector<unsigned int> *this, uint64_t *a5)
{
  if (a1[24] == a1[25])
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__x);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gblinear.cc", 238);
    v38 = dmlc::LogMessageFatal::GetEntry(__x);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Check failed: !model_.weight.empty()", 36);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Model is not initialized", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(__x);
  }

  if (*a3)
  {
    v41 = dmlc::LogMessageFatal::GetEntry(__x);
    dmlc::LogMessageFatal::Entry::Init(v41, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gblinear.cc", 239);
    v42 = dmlc::LogMessageFatal::GetEntry(__x);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Check failed: trees.empty()", 27);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "gblinear doesn't support number of trees for feature importance.", 64);
    dmlc::LogMessageFatal::~LogMessageFatal(__x);
  }

  v10 = *(a2 + 23);
  if (v10 < 0)
  {
    if (*(a2 + 8) != 6)
    {
      goto LABEL_14;
    }

    v11 = *a2;
  }

  else
  {
    v11 = a2;
    if (v10 != 6)
    {
      goto LABEL_14;
    }
  }

  v12 = *v11;
  v13 = *(v11 + 4);
  if (v12 != 1734960503 || v13 != 29800)
  {
LABEL_14:
    dmlc::LogCheckFormat<std::string,char [7]>(a2, "weight");
  }

  v15 = *(a1[3] + 4);
  __x[0] = 0;
  std::vector<unsigned int>::resize(this, v15, __x);
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    v19 = 0;
    v20 = (end - begin - 4) >> 2;
    v16 = vdupq_n_s64(v20);
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = begin + 2;
    do
    {
      v23 = vdupq_n_s64(v19);
      v24 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v23, xmmword_274E1F3B0)));
      if (vuzp1_s16(v24, *v16.i8).u8[0])
      {
        *(v22 - 2) = v19;
      }

      if (vuzp1_s16(v24, *&v16).i8[2])
      {
        *(v22 - 1) = v19 + 1;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v23, xmmword_274E1FC60)))).i32[1])
      {
        *v22 = v19 + 2;
        v22[1] = v19 + 3;
      }

      v19 += 4;
      v22 += 4;
    }

    while (v21 != v19);
  }

  v25 = ((a1[25] - a1[24]) >> 2) - *(a1[3] + 8);
  __x[0] = 0;
  std::vector<float>::resize(a5, v25, __x, *v16.i8);
  v26 = a1[3];
  v27 = *(v26 + 4);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = *(v26 + 8);
    v32 = *a5;
    v33 = (a5[1] - *a5) >> 2;
    v34 = 4 * v31;
    do
    {
      if (v31)
      {
        v35 = 0;
        v36 = v28;
        do
        {
          if (v36 >= v33)
          {
            __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
          }

          *(v32 + v35) = *(a1[24] + v29 * *(a1[23] + 8) + v35);
          v35 += 4;
          ++v36;
        }

        while (v34 != v35);
      }

      ++v30;
      v29 += 4;
      v32 += v34;
      v28 += v31;
    }

    while (v30 != v27);
  }
}

void sub_274CDFAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

BOOL xgboost::gbm::GBLinear::UseGPU(xgboost::gbm::GBLinear *this)
{
  v1 = this + 408;
  v2 = *(this + 431);
  if (v2 < 0)
  {
    if (*(this + 52) != 17)
    {
      return 0;
    }

    v1 = *v1;
  }

  else if (v2 != 17)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  return v3 == 0x726F6F635F757067 && v4 == 0x6E65637365645F64 && v5 == 116;
}

void xgboost::gbm::GBLinear::LoadConfig(xgboost::gbm::GBLinear *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = v5 + 2;
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 8)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = v5 + 2;
    if (v7 != 8)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [9]>(v21, v6);
    }
  }

  if (*v8 != 0x7261656E696C6267)
  {
    goto LABEL_7;
  }

  v21[0] = 0;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "gblinear_train_param");
  v9 = (*(**a2 + 24))(*a2, v21);
  v10 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v9);
  v27 = 0;
  v28 = 0;
  __p = &v27;
  v11 = *(v10 + 2);
  v12 = (v10 + 24);
  if (v11 != (v10 + 24))
  {
    do
    {
      v13 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v11[7]);
      v29 = v11 + 4;
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v11 + 4);
      v10 = std::string::operator=((v14 + 56), (v13 + 16));
      v15 = v11[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v11[2];
          v17 = *v16 == v11;
          v11 = v16;
        }

        while (!v17);
      }

      v11 = v16;
    }

    while (v16 != v12);
  }

  if (*(this + 400) == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    xgboost::gbm::GBLinearTrainParam::__MANAGER__(v10);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5CD8, this + 400, __p, &v27, 0, &v23, 0);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    xgboost::gbm::GBLinearTrainParam::__MANAGER__(v10);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5CD8, this + 400, __p, &v27, &v23, 0);
    *(this + 400) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v27);
  __p = &v23;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  xgboost::gbm::GBLinearTrainParam::CheckGPUSupport((this + 400));
  v18 = xgboost::LinearUpdater::Create(this + 408, *(this + 2));
  v19 = *(this + 56);
  *(this + 56) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v18 = *(this + 56);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "updater");
  v20 = (*(**a2 + 24))(*a2, &__p);
  (*(*v18 + 16))(v18, v20);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }
}

void sub_274CDFF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 - 72) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v24 - 72));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBLinear::SaveConfig(xgboost::gbm::GBLinear *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v3, "gblinear");
  v5 = &unk_2883E6F38;
  v6 = 0;
  *v7 = *v3;
  v8 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void non-virtual thunk toxgboost::gbm::GBLinear::~GBLinear(xgboost::gbm::GBLinear *this)
{
  *(this - 1) = &unk_2883DE520;
  *this = &unk_2883DE5E0;
  xgboost::common::Monitor::~Monitor(this + 58);
  v2 = *(this + 55);
  *(this + 55) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  *(this + 26) = &unk_2883E1668;
  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  *(this + 3) = &unk_2883E1668;
  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;

    operator delete(v4);
  }
}

{
  *(this - 1) = &unk_2883DE520;
  *this = &unk_2883DE5E0;
  xgboost::common::Monitor::~Monitor(this + 58);
  v2 = *(this + 55);
  *(this + 55) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  *(this + 26) = &unk_2883E1668;
  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  *(this + 3) = &unk_2883E1668;
  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x277C69180);
}

void dmlc::LogCheckFormat<std::string,char [9]>(uint64_t a1, uint64_t a2)
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
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "gblinear", 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
  operator new();
}

void sub_274CE0954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::gbm::GBLinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::gbm::GBLinearTrainParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::gbm::GBLinearTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5CD8, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::gbm::GBLinearTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5CD8, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274CE0A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::gbm::GBLinearTrainParam::CheckGPUSupport(xgboost::gbm::GBLinearTrainParam *this)
{
  v22[28] = *MEMORY[0x277D85DE8];
  v2 = this + 8;
  v3 = *(this + 31);
  if (v3 < 0)
  {
    if (*(this + 2) != 17)
    {
      goto LABEL_13;
    }

    v2 = *v2;
  }

  else if (v3 != 17)
  {
    goto LABEL_13;
  }

  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = v2[16];
  if (v4 == 0x726F6F635F757067 && v5 == 0x6E65637365645F64 && v6 == 116)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
    v11 = dmlc::LogMessageFatal::GetEntry(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(v18);
    std::string::basic_string[abi:ne200100]<0>(v18, "updater");
    std::string::basic_string[abi:ne200100]<0>(&__p, "coord_descent");
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(v14, v18, v22, 1uLL);
    xgboost::XGBoostParameter<xgboost::gbm::GBLinearTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v16, this, v14);
    v17 = v16;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v17);
    v17 = v14;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v17);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v12, v13) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gblinear.cc");
      xgboost::ConsoleLogger::ConsoleLogger(v18, v14, 46, 1);
      xgboost::ConsoleLogger::~ConsoleLogger(v18);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_274CE0C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274CE0D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<float>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

uint64_t xgboost::BatchIterator<xgboost::SparsePage>::operator!=(uint64_t *a1)
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

uint64_t xgboost::BatchIterator<xgboost::SparsePage>::operator*(uint64_t *a1)
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

uint64_t *xgboost::BatchIterator<xgboost::SparsePage>::operator++(uint64_t *a1)
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

void xgboost::BatchIterator<xgboost::SparsePage>::BatchIterator(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SparsePage>>::reset[abi:ne200100]<xgboost::BatchIteratorImpl<xgboost::SparsePage>,0>(a1, a2);
}

void sub_274CE13CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274CE1494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SparsePage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SparsePage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SparsePage>,xgboost::BatchIteratorImpl<xgboost::SparsePage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SparsePage>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SparsePage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SparsePage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SparsePage>,xgboost::BatchIteratorImpl<xgboost::SparsePage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SparsePage>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::BatchIteratorImpl<xgboost::SparsePage> *,std::shared_ptr<xgboost::BatchIteratorImpl<xgboost::SparsePage>>::__shared_ptr_default_delete<xgboost::BatchIteratorImpl<xgboost::SparsePage>,xgboost::BatchIteratorImpl<xgboost::SparsePage>>,std::allocator<xgboost::BatchIteratorImpl<xgboost::SparsePage>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz, std::vector<unsigned int>::const_reference __x)
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
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void dmlc::LogCheckFormat<std::string,char [7]>(uint64_t a1, const char *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " (", 2);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " vs. ", 5);
  v10 = strlen(a2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
  operator new();
}

void sub_274CE1A78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

void dmlc::parameter::FieldEntry<int>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::SetDefault(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Required parameter ", 19);
    v4 = *(v2 + 47);
    if (v4 >= 0)
    {
      v5 = v2 + 24;
    }

    else
    {
      v5 = *(v2 + 24);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 47);
    }

    else
    {
      v6 = *(v2 + 32);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " of ", 4);
    v11 = *(v2 + 48);
    v10 = v2 + 48;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2883DE2B0;
  }

  *(a2 + *(result + 96)) = *(result + 104);
  return result;
}

void sub_274CE1F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntry<int>::Set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 120) == 1)
  {
    v6 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 128, a3);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
    if (a1 + 136 == v6)
    {
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Invalid Input: '", 16);
      v9 = *(a3 + 23);
      if (v9 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      if (v9 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "', valid values are: ", 21);
      dmlc::parameter::FieldEntry<int>::PrintEnums(a1, &v14);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(exception, &__p);
      exception->__vftable = &unk_2883DE2B0;
    }

    MEMORY[0x277C68E20](&v14, *(v6 + 56));
    std::stringbuf::str();
    dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::Set(a1, a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = *MEMORY[0x277D82828];
    *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
    v15 = MEMORY[0x277D82878] + 16;
    if (v17 < 0)
    {
      operator delete(v16[7].__locale_);
    }

    v15 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v16);
    std::ostream::~ostream();
    return MEMORY[0x277C690D0](&v18);
  }

  else
  {

    return dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<int>,int>::Set(a1, a2, a3);
  }
}

void sub_274CE21F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryNumeric<dmlc::parameter::FieldEntry<int>,int>::Check(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + *(result + 96));
  v3 = *(result + 109);
  if (*(result + 108))
  {
    v4 = *(result + 112);
    if (*(result + 109))
    {
      if (v2 < v4 || v2 > *(result + 116))
      {
        v5 = result;
        std::ostringstream::basic_ostringstream[abi:ne200100](v81);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
        v7 = MEMORY[0x277C68E20](v6, v2);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for Parameter ", 15);
        v9 = *(v5 + 24);
        v10 = *(v5 + 47);
        if (v10 >= 0)
        {
          v11 = v5 + 24;
        }

        else
        {
          v11 = *(v5 + 24);
        }

        if (v10 >= 0)
        {
          v12 = *(v5 + 47);
        }

        else
        {
          v12 = *(v5 + 32);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " exceed bound [", 15);
        v15 = MEMORY[0x277C68E20](v14, *(v5 + 112));
        v80.__r_.__value_.__s.__data_[0] = 44;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v80, 1);
        v17 = MEMORY[0x277C68E20](v16, *(v5 + 116));
        v80.__r_.__value_.__s.__data_[0] = 93;
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v80, 1);
        v80.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v80, 1);
        v19 = *(v5 + 47);
        v20 = *(v5 + 32);
        if (v19 >= 0)
        {
          v21 = v5 + 24;
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v19 >= 0)
        {
          v22 = *(v5 + 47);
        }

        else
        {
          v22 = *(v5 + 32);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2);
        v27 = *(v5 + 72);
        v26 = v5 + 72;
        v25 = v27;
        v28 = *(v26 + 23);
        if (v28 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v25;
        }

        if (v28 >= 0)
        {
          v30 = *(v26 + 23);
        }

        else
        {
          v30 = *(v26 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v80);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    else if (v2 < v4)
    {
      v56 = result;
      std::ostringstream::basic_ostringstream[abi:ne200100](v81);
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
      v58 = MEMORY[0x277C68E20](v57, v2);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " for Parameter ", 15);
      v60 = *(v56 + 24);
      v61 = *(v56 + 47);
      if (v61 >= 0)
      {
        v62 = v56 + 24;
      }

      else
      {
        v62 = *(v56 + 24);
      }

      if (v61 >= 0)
      {
        v63 = *(v56 + 47);
      }

      else
      {
        v63 = *(v56 + 32);
      }

      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v62, v63);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " should be greater equal to ", 28);
      v66 = MEMORY[0x277C68E20](v65, *(v56 + 112));
      v80.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v80, 1);
      v67 = *(v56 + 47);
      v68 = *(v56 + 32);
      if (v67 >= 0)
      {
        v69 = v56 + 24;
      }

      else
      {
        v69 = *(v56 + 24);
      }

      if (v67 >= 0)
      {
        v70 = *(v56 + 47);
      }

      else
      {
        v70 = *(v56 + 32);
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ": ", 2);
      v75 = *(v56 + 72);
      v74 = v56 + 72;
      v73 = v75;
      v76 = *(v74 + 23);
      if (v76 >= 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = v73;
      }

      if (v76 >= 0)
      {
        v78 = *(v74 + 23);
      }

      else
      {
        v78 = *(v74 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v77, v78);
      v79 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(v79, &v80);
      v79->__vftable = &unk_2883DE2B0;
    }
  }

  else if ((*(result + 109) & 1) != 0 && v2 > *(result + 116))
  {
    v32 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](v81);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "value ", 6);
    v34 = MEMORY[0x277C68E20](v33, v2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " for Parameter ", 15);
    v36 = *(v32 + 24);
    v37 = *(v32 + 47);
    if (v37 >= 0)
    {
      v38 = v32 + 24;
    }

    else
    {
      v38 = *(v32 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(v32 + 47);
    }

    else
    {
      v39 = *(v32 + 32);
    }

    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v38, v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " should be smaller equal to ", 28);
    v42 = MEMORY[0x277C68E20](v41, *(v32 + 116));
    v80.__r_.__value_.__s.__data_[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v80, 1);
    v43 = *(v32 + 47);
    v44 = *(v32 + 32);
    if (v43 >= 0)
    {
      v45 = v32 + 24;
    }

    else
    {
      v45 = *(v32 + 24);
    }

    if (v43 >= 0)
    {
      v46 = *(v32 + 47);
    }

    else
    {
      v46 = *(v32 + 32);
    }

    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v45, v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
    v51 = *(v32 + 72);
    v50 = v32 + 72;
    v49 = v51;
    v52 = *(v50 + 23);
    if (v52 >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = v49;
    }

    if (v52 >= 0)
    {
      v54 = *(v50 + 23);
    }

    else
    {
      v54 = *(v50 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v53, v54);
    v55 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v55, &v80);
    v55->__vftable = &unk_2883DE2B0;
  }

  return result;
}