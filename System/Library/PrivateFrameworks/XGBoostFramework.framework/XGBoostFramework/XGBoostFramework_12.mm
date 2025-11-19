void std::vector<std::unique_ptr<xgboost::RegTree>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<xgboost::RegTree>>::__append(a1, v5);
  }
}

unint64_t xgboost::gbm::GBTree::PredictBatch(xgboost::gbm::GBTree *this, xgboost::DMatrix *a2, xgboost::PredictionCacheEntry *a3, BOOL a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  if (*(this + 330))
  {
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = (*(*this + 72))(this);
    if (!a5)
    {
      goto LABEL_7;
    }

LABEL_8:
    *(a3 + 2) = 0;
    v14 = a5;
    goto LABEL_9;
  }

  Entry = dmlc::LogMessageFatal::GetEntry(&v24);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 492);
  v12 = dmlc::LogMessageFatal::GetEntry(&v24);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: configured_", 25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
  dmlc::LogMessageFatal::~LogMessageFatal(&v24);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_7:
  v14 = *(a3 + 2);
  if (v6 < v14)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(*a3 + 8) == **a3)
  {
    if (*(**a2)(a2))
    {
      LODWORD(v22) = 0;
      if (*(a3 + 2))
      {
        dmlc::LogCheckFormat<unsigned int,int>(a3 + 2, &v22);
      }
    }
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(this, a3, a2);
  v16 = Predictor;
  if (!*(a3 + 2))
  {
    v17 = *Predictor;
    v18 = (**a2)(a2);
    xgboost::Predictor::InitOutPredictions(v19, v17, v18, a3, this + 24);
  }

  result = xgboost::gbm::detail::LayerToTree((this + 24), v14, v6);
  v23 = HIDWORD(result);
  v22 = (*(this + 26) - *(this + 25)) >> 3;
  if (v22 < HIDWORD(result))
  {
    dmlc::LogCheckFormat<unsigned int,unsigned long>(&v23, &v22);
  }

  if (v23 > result)
  {
    result = (*(**v16 + 24))(*v16, a2, a3, this + 24, result);
  }

  if (a5)
  {
    v21 = 0;
  }

  else
  {
    v21 = v6;
  }

  *(a3 + 2) = v21;
  return result;
}

void sub_274D8DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTree::GetPredictor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v33);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 536);
    v26 = dmlc::LogMessageFatal::GetEntry(&v33);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v33);
  }

  v6 = *(a1 + 316);
  if (!v6)
  {
    if (!a3)
    {
      goto LABEL_23;
    }

    if ((*(*a3 + 112))(a3))
    {
      v15 = (*(*a3 + 120))(a3) ^ 1;
    }

    else
    {
      v15 = 0;
    }

    if ((*(*a3 + 120))(a3))
    {
      (*(*a3 + 72))(&v31, a3);
      v33 = v31;
      v34 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      xgboost::BatchIterator<xgboost::SparsePage>::operator*(&v33);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if ((v15 & 1) == 0)
      {
LABEL_23:
        v16 = 0;
        if (a2)
        {
LABEL_24:
          if (*(*a2 + 8) == **a2)
          {
            if (!*(a1 + 40))
            {
              v16 = 1;
            }

            if ((v16 & 1) == 0)
            {
              v11 = a1 + 384;
              if (*(a1 + 384))
              {
                return v11;
              }

              v17 = dmlc::LogMessageFatal::GetEntry(&v33);
              dmlc::LogMessageFatal::Entry::Init(v17, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 591);
              v18 = dmlc::LogMessageFatal::GetEntry(&v33);
              v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Check failed: cpu_predictor_", 28);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
              goto LABEL_10;
            }
          }
        }

LABEL_34:
        if (*(a1 + 320) != 5)
        {
          v11 = a1 + 384;
          if (*(a1 + 384))
          {
            return v11;
          }

          v28 = dmlc::LogMessageFatal::GetEntry(&v33);
          dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 606);
          v29 = dmlc::LogMessageFatal::GetEntry(&v33);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: cpu_predictor_", 28);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
          goto LABEL_10;
        }

        v22 = dmlc::LogMessageFatal::GetEntry(&v33);
        dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
        v23 = dmlc::LogMessageFatal::GetEntry(&v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "XGBoost version not compiled with GPU support.", 46);
LABEL_36:
        dmlc::LogMessageFatal::~LogMessageFatal(&v33);
        return a1 + 384;
      }
    }

    else if (!v15)
    {
      goto LABEL_23;
    }

    if ((*(*(a1 + 16) + 24) & 0x80000000) == 0)
    {
      v20 = dmlc::LogMessageFatal::GetEntry(&v33);
      dmlc::LogMessageFatal::Entry::Init(v20, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 575);
      v21 = dmlc::LogMessageFatal::GetEntry(&v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Data is on CUDA device, but XGBoost is not compiled with CUDA support.", 70);
      goto LABEL_36;
    }

    v16 = 1;
    if (a2)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (v6 == 2)
  {
    v7 = dmlc::LogMessageFatal::GetEntry(&v33);
    dmlc::LogMessageFatal::Entry::Init(v7, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
    v8 = dmlc::LogMessageFatal::GetEntry(&v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v33);
    v6 = *(a1 + 316);
  }

  if (v6 == 3)
  {
    v9 = dmlc::LogMessageFatal::GetEntry(&v33);
    dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 245);
    v10 = dmlc::LogMessageFatal::GetEntry(&v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "XGBoost version not compiled with OneAPI support.", 49);
    dmlc::LogMessageFatal::~LogMessageFatal(&v33);
  }

  v11 = a1 + 384;
  if (!*(a1 + 384))
  {
    v12 = dmlc::LogMessageFatal::GetEntry(&v33);
    dmlc::LogMessageFatal::Entry::Init(v12, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 555);
    v13 = dmlc::LogMessageFatal::GetEntry(&v33);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: cpu_predictor_", 28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
LABEL_10:
    dmlc::LogMessageFatal::~LogMessageFatal(&v33);
  }

  return v11;
}

void sub_274D8E2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

unint64_t xgboost::gbm::detail::LayerToTree(xgboost::gbm::detail *this, const xgboost::gbm::GBTreeModel *a2, int a3)
{
  v3 = *(this + 5) * *(*(this + 1) + 8);
  v4 = v3 * a2;
  v10 = v3 * a2;
  v5 = (v3 * a3);
  v9 = v5;
  v7 = *(this + 22);
  v6 = *(this + 23);
  if (!v5)
  {
    v5 = (v6 - v7) >> 3;
    v9 = v5;
  }

  if (v6 != v7)
  {
    if (v4 > v5)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(&v10, &v9);
    }

    v4 = v10;
    v5 = v9;
  }

  return v4 | (v5 << 32);
}

void sub_274D8E494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GPUDartPredictInc()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

void xgboost::gbm::GPUDartInplacePredictInc()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/../common/common.h", 239);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "XGBoost version not compiled with GPU support.", 46);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

void xgboost::gbm::GBTree::~GBTree(xgboost::gbm::GBTree *this)
{
  xgboost::gbm::GBTree::~GBTree(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E4258;
  *(this + 1) = &unk_2883E4320;
  xgboost::common::Monitor::~Monitor(this + 49);
  v2 = *(this + 48);
  *(this + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (this + 360);
  std::vector<std::unique_ptr<xgboost::TreeUpdater>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 336);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  *(this + 3) = &unk_2883E73A0;
  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = (this + 224);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void xgboost::gbm::GBTree::Load(xgboost::gbm::GBTree *this, dmlc::Stream *a2)
{
  xgboost::gbm::GBTreeModel::Load(this + 24, a2);
  v4 = *(this + 42);
  for (i = *(this + 43); i != v4; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this + 336, i))
  {
    i -= 48;
  }

  *(this + 43) = v4;
}

unint64_t xgboost::gbm::GBTree::BoostedRounds(xgboost::gbm::GBTree *this)
{
  v2 = *(this + 11);
  v7 = 0;
  v8 = v2;
  if (!v2)
  {
    dmlc::LogCheckFormat<int,int>(&v8, &v7);
  }

  v3 = *(this + 4);
  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  v8 = 0;
  if (!v5)
  {
    dmlc::LogCheckFormat<unsigned int,int>(v4, &v8);
  }

  return ((*(this + 26) - *(this + 25)) >> 3) / (*(this + 11) * *(*(this + 4) + 8));
}

void sub_274D8E818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTree::InplacePredict(uint64_t a1, int a2, int a3, int a4, xgboost::gbm::GBTreeModel *a5, int a6)
{
  v7 = a5;
  v15[1] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.h", 261);
    v11 = dmlc::LogMessageFatal::GetEntry(__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  v14 = 0;
  v9 = xgboost::gbm::detail::LayerToTree((a1 + 24), v7, a6);
  v14 = HIDWORD(v9);
  v15[0] = (*(a1 + 208) - *(a1 + 200)) >> 3;
  if (v15[0] < HIDWORD(v9))
  {
    dmlc::LogCheckFormat<unsigned int,unsigned long>(&v14, v15);
  }

  v15[0] = *(a1 + 384);
  memset(__p, 0, sizeof(__p));
  std::vector<xgboost::Predictor const*>::__init_with_size[abi:ne200100]<xgboost::Predictor const* const*,xgboost::Predictor const* const*>();
}

void sub_274D8EC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::gbm::GBTree::PredictInstance(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5)
{
  v6 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v15);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.h", 360);
    v13 = dmlc::LogMessageFatal::GetEntry(&v15);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v15);
  }

  v10 = xgboost::gbm::detail::LayerToTree((a1 + 24), v6, a5);
  return (*(**(a1 + 384) + 40))(*(a1 + 384), a2, a3, a1 + 24, HIDWORD(v10));
}

uint64_t xgboost::gbm::GBTree::PredictLeaf(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5)
{
  v8 = xgboost::gbm::detail::LayerToTree((a1 + 24), a4, a5);
  v12 = v8;
  v11 = 0;
  if (v8)
  {
    dmlc::LogCheckFormat<unsigned int,int>(&v12, &v11);
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(a1, 0, 0);
  return (*(**Predictor + 48))(*Predictor, a2, a3, a1 + 24, HIDWORD(v8));
}

void sub_274D8EF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::gbm::GBTree::PredictContribution(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.h", 380);
    v16 = dmlc::LogMessageFatal::GetEntry(&v19);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v19);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  v20 = v12;
  v18 = 0;
  if (v12)
  {
    dmlc::LogCheckFormat<unsigned int,int>(&v20, &v18);
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(a1, 0, 0);
  return (*(**Predictor + 56))(*Predictor, a2, a3, a1 + 24, HIDWORD(v12), 0, a6, 0, 0);
}

void sub_274D8F198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTree::PredictInteractionContributions(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.h", 393);
    v16 = dmlc::LogMessageFatal::GetEntry(&v19);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v19);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  v20 = v12;
  v18 = 0;
  if (v12)
  {
    dmlc::LogCheckFormat<unsigned int,int>(&v20, &v18);
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(a1, 0, 0);
  return (*(**Predictor + 64))(*Predictor, a2, a3, a1 + 24, HIDWORD(v12), 0, a6);
}

void sub_274D8F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::DumpModel(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v6 = *(a1 + 200);
  v5 = *(a1 + 208);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v10.__ptr_ = a3;
  LOBYTE(v11.__m_.__sig) = 0;
  v7 = v5 - v6;
  if (v7)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](a3, v7 >> 3);
  }

  v10.__ptr_ = 0;
  v11.__m_.__sig = 850045863;
  memset(v11.__m_.__opaque, 0, sizeof(v11.__m_.__opaque));
  dmlc::OMPException::Rethrow(&v10);
  std::mutex::~mutex(&v11);
  std::exception_ptr::~exception_ptr(&v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_274D8F690(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr(v5);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v5);
  if (v4 < 0)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::GBTree::FeatureScore(void *a1, int **a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v10 = *(a1[4] + 4);
  *&v110 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v105, v10);
  v11 = *(a1[4] + 4);
  LODWORD(v110) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, v11);
  memset(&v102, 0, sizeof(v102));
  v100 = *a3;
  if (!*a3)
  {
    std::vector<int>::resize(&v102, (a1[26] - a1[25]) >> 3);
    begin = v102.__begin_;
    end = v102.__end_;
    if (v102.__begin_ != v102.__end_)
    {
      v14 = 0;
      v15 = (v102.__end_ - v102.__begin_ - 4) >> 2;
      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v18 = v102.__begin_ + 2;
      do
      {
        v19 = vdupq_n_s64(v14);
        v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_274E1F3B0)));
        if (vuzp1_s16(v20, *v16.i8).u8[0])
        {
          *(v18 - 2) = v14;
        }

        if (vuzp1_s16(v20, *&v16).i8[2])
        {
          *(v18 - 1) = v14 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_274E1FC60)))).i32[1])
        {
          *v18 = v14 + 2;
          v18[1] = v14 + 3;
        }

        v14 += 4;
        v18 += 4;
      }

      while (v17 != v14);
    }

    v100 = end - begin;
    *a3 = v100;
    a3[1] = begin;
  }

  v101 = (a1[26] - a1[25]) >> 3;
  v21 = *(a2 + 23);
  v99 = a2;
  if ((v21 & 0x80) == 0)
  {
    if (*(a2 + 23) > 5u)
    {
      if (v21 != 6)
      {
        if (v21 != 10)
        {
          v22 = a2;
          if (v21 != 11)
          {
            goto LABEL_98;
          }

          goto LABEL_23;
        }

        if (*a2 != 0x61675F6C61746F74 || *(a2 + 4) != 28265)
        {
          goto LABEL_98;
        }

        goto LABEL_151;
      }

      if (*a2 != 1734960503 || *(a2 + 2) != 29800)
      {
        goto LABEL_98;
      }

LABEL_78:
      if (!v100)
      {
        goto LABEL_105;
      }

      v44 = 0;
      v45 = v100;
      while (v44 < v45)
      {
        v107 = *(a3[1] + 4 * v44);
        if (v101 < v107)
        {
          dmlc::LogCheckFormat<int,unsigned long>(&v107, &v101);
        }

        v46 = v107;
        v47 = a1[25];
        v48 = *(v47 + 8 * v107);
        v111 = 0u;
        v112 = 0u;
        v110 = 0u;
        std::deque<int>::push_back(&v110, &xgboost::RegTree::kRoot);
        while (*(&v112 + 1))
        {
          v49 = *(*(*(&v110 + 1) + (((v112 + *(&v112 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v112 + *(&v112 + 1) - 1) & 0x3FF));
          --*(&v112 + 1);
          std::deque<int>::__maybe_remove_back_spare[abi:ne200100](&v110, 1);
          v50 = *(*(v47 + 8 * v46) + 160) + 20 * v49;
          if (*(v50 + 4) != -1)
          {
            v51 = *(v50 + 12) & 0x7FFFFFFF;
            v52 = *(v105 + v51) + 1;
            *(v105 + v51) = v52;
            *(__p + v51) = v52;
          }

          v53 = *(v48 + 160) + 20 * v49;
          v109 = *(v53 + 4);
          v54 = *(v53 + 8);
          v108 = v54;
          if (v109 != -1)
          {
            std::deque<int>::push_back(&v110, &v109);
            v54 = v108;
          }

          if (v54 != -1)
          {
            std::deque<int>::push_back(&v110, &v108);
          }
        }

        std::deque<int>::~deque[abi:ne200100](&v110);
        v45 = *a3;
        if (v44 == *a3)
        {
          break;
        }

        if (++v44 == v100)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_167;
    }

    if (v21 != 4)
    {
      if (v21 != 5)
      {
        goto LABEL_98;
      }

      if (*a2 != 1702260579 || *(a2 + 4) != 114)
      {
        goto LABEL_98;
      }

      goto LABEL_44;
    }

    v42 = *a2;
    goto LABEL_150;
  }

  v23 = a2[1];
  if (v23 <= 5)
  {
    if (v23 != 4)
    {
      if (v23 != 5)
      {
        goto LABEL_98;
      }

      if (**a2 != 1702260579 || *(*a2 + 4) != 114)
      {
        goto LABEL_98;
      }

LABEL_44:
      if (!v100)
      {
        goto LABEL_105;
      }

      v29 = 0;
      v30 = v100;
      while (v29 < v30)
      {
        v107 = *(a3[1] + 4 * v29);
        if (v101 < v107)
        {
          dmlc::LogCheckFormat<int,unsigned long>(&v107, &v101);
        }

        v31 = v107;
        v32 = a1[25];
        v33 = *(v32 + 8 * v107);
        v111 = 0u;
        v112 = 0u;
        v110 = 0u;
        std::deque<int>::push_back(&v110, &xgboost::RegTree::kRoot);
        while (*(&v112 + 1))
        {
          v34 = *(*(*(&v110 + 1) + (((v112 + *(&v112 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v112 + *(&v112 + 1) - 1) & 0x3FF));
          --*(&v112 + 1);
          std::deque<int>::__maybe_remove_back_spare[abi:ne200100](&v110, 1);
          v35 = *(v32 + 8 * v31);
          v36 = *(v35 + 160) + 20 * v34;
          if (*(v36 + 4) != -1)
          {
            v37 = *(v36 + 12) & 0x7FFFFFFF;
            ++*(v105 + v37);
            *(__p + v37) = *(*(v35 + 208) + 16 * v34 + 4) + *(__p + v37);
          }

          v38 = *(v33 + 160) + 20 * v34;
          v109 = *(v38 + 4);
          v39 = *(v38 + 8);
          v108 = v39;
          if (v109 != -1)
          {
            std::deque<int>::push_back(&v110, &v109);
            v39 = v108;
          }

          if (v39 != -1)
          {
            std::deque<int>::push_back(&v110, &v108);
          }
        }

        std::deque<int>::~deque[abi:ne200100](&v110);
        v30 = *a3;
        if (v29 == *a3)
        {
          break;
        }

        if (++v29 == v100)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_167;
    }

    v42 = **a2;
LABEL_150:
    if (v42 == 1852399975)
    {
LABEL_151:
      if (!v100)
      {
        goto LABEL_105;
      }

      v88 = 0;
      v89 = v100;
      while (v88 < v89)
      {
        v107 = *(a3[1] + 4 * v88);
        if (v101 < v107)
        {
          dmlc::LogCheckFormat<int,unsigned long>(&v107, &v101);
        }

        v90 = v107;
        v91 = a1[25];
        v92 = *(v91 + 8 * v107);
        v111 = 0u;
        v112 = 0u;
        v110 = 0u;
        std::deque<int>::push_back(&v110, &xgboost::RegTree::kRoot);
        while (*(&v112 + 1))
        {
          v93 = *(*(*(&v110 + 1) + (((v112 + *(&v112 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v112 + *(&v112 + 1) - 1) & 0x3FF));
          --*(&v112 + 1);
          std::deque<int>::__maybe_remove_back_spare[abi:ne200100](&v110, 1);
          v94 = *(v91 + 8 * v90);
          v95 = *(v94 + 160) + 20 * v93;
          if (*(v95 + 4) != -1)
          {
            v96 = *(v95 + 12) & 0x7FFFFFFF;
            ++*(v105 + v96);
            *(__p + v96) = *(*(v94 + 208) + 16 * v93) + *(__p + v96);
          }

          v97 = *(v92 + 160) + 20 * v93;
          v109 = *(v97 + 4);
          v98 = *(v97 + 8);
          v108 = v98;
          if (v109 != -1)
          {
            std::deque<int>::push_back(&v110, &v109);
            v98 = v108;
          }

          if (v98 != -1)
          {
            std::deque<int>::push_back(&v110, &v108);
          }
        }

        std::deque<int>::~deque[abi:ne200100](&v110);
        v89 = *a3;
        if (v88 == *a3)
        {
          break;
        }

        if (++v88 == v100)
        {
          goto LABEL_105;
        }
      }

LABEL_167:
      std::terminate();
    }

    goto LABEL_98;
  }

  switch(v23)
  {
    case 6:
      if (**a2 != 1734960503 || *(*a2 + 2) != 29800)
      {
        break;
      }

      goto LABEL_78;
    case 10:
      if (**a2 != 0x61675F6C61746F74 || *(*a2 + 4) != 28265)
      {
        break;
      }

      goto LABEL_151;
    case 11:
      v22 = *a2;
LABEL_23:
      v24 = *v22;
      v25 = *(v22 + 3);
      if (v24 != 0x6F635F6C61746F74 || v25 != 0x7265766F635F6C61)
      {
        break;
      }

      goto LABEL_44;
  }

LABEL_98:
  Entry = dmlc::LogMessageFatal::GetEntry(&v110);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.h", 336);
  v57 = dmlc::LogMessageFatal::GetEntry(&v110);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Unknown feature importance type, expected one of: ", 50);
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "{weight, total_gain, total_cover, gain, cover}, got: ", 63);
  v60 = *(a2 + 23);
  if (v60 >= 0)
  {
    v61 = a2;
  }

  else
  {
    v61 = *a2;
  }

  if (v60 >= 0)
  {
    v62 = *(a2 + 23);
  }

  else
  {
    v62 = a2[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v61, v62);
  dmlc::LogMessageFatal::~LogMessageFatal(&v110);
LABEL_105:
  v63 = v99;
  if (*(v99 + 23) < 0)
  {
    v65 = v99[1];
    if (v65 != 4)
    {
      if (v65 != 5)
      {
        goto LABEL_125;
      }

      v63 = *v99;
      goto LABEL_112;
    }

    v69 = **v99;
  }

  else
  {
    v64 = *(v99 + 23);
    if (v64 != 4)
    {
      if (v64 != 5)
      {
        goto LABEL_125;
      }

LABEL_112:
      v66 = *v63;
      v67 = *(v63 + 4);
      if (v66 != 1702260579 || v67 != 114)
      {
        goto LABEL_125;
      }

      goto LABEL_121;
    }

    v69 = *v99;
  }

  if (v69 != 1852399975)
  {
    goto LABEL_125;
  }

LABEL_121:
  v70 = __p;
  if (v104 != __p)
  {
    v71 = (v104 - __p) >> 2;
    v72 = v105;
    if (v71 <= 1)
    {
      v71 = 1;
    }

    do
    {
      v73 = *v72++;
      *v70 = *v70 / fmaxf(v73, 1.0);
      ++v70;
      --v71;
    }

    while (v71);
  }

LABEL_125:
  a4[1] = *a4;
  *(a5 + 8) = *a5;
  v75 = v105;
  v74 = v106;
  if (v106 != v105)
  {
    v76 = 0;
    v77 = 0;
    do
    {
      if (v75[v77])
      {
        v79 = a4[1];
        v78 = a4[2];
        if (v79 >= v78)
        {
          v81 = *a4;
          v82 = v79 - *a4;
          v83 = v82 >> 2;
          v84 = (v82 >> 2) + 1;
          if (v84 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v85 = v78 - v81;
          if (v85 >> 1 > v84)
          {
            v84 = v85 >> 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v86 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = v84;
          }

          if (v86)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v86);
          }

          *(4 * v83) = v77;
          v80 = 4 * v83 + 4;
          memcpy(0, v81, v82);
          v87 = *a4;
          *a4 = 0;
          a4[1] = v80;
          a4[2] = 0;
          if (v87)
          {
            operator delete(v87);
          }
        }

        else
        {
          *v79 = v77;
          v80 = (v79 + 1);
        }

        a4[1] = v80;
        std::vector<float>::push_back[abi:ne200100](a5, __p + v76);
        v75 = v105;
        v74 = v106;
      }

      ++v77;
      v76 += 4;
    }

    while (v77 < (v74 - v75) >> 3);
  }

  if (v102.__begin_)
  {
    v102.__end_ = v102.__begin_;
    operator delete(v102.__begin_);
  }

  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_274D902A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::gbm::GBTree::~GBTree(xgboost::gbm::GBTree *this)
{
  xgboost::gbm::GBTree::~GBTree((this - 8));
}

{
  xgboost::gbm::GBTree::~GBTree((this - 8));

  JUMPOUT(0x277C69180);
}

xgboost::RegTree *xgboost::RegTree::RegTree(xgboost::RegTree *this)
{
  *this = &unk_2883E5FE0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0;
  *(this + 10) = 0u;
  v2 = (this + 160);
  *(this + 13) = 0u;
  v3 = (this + 208);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 1) = 0x100000001;
  *(this + 4) = 0;
  std::vector<xgboost::RegTree::Node>::resize(this + 20, 1uLL);
  std::vector<std::pair<double,double>>::resize(v3, *(this + 3));
  v4 = *(this + 3);
  v14 = 0;
  v5 = *(this + 29);
  v6 = *(this + 30) - v5;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<xgboost::FeatureType>::__append(this + 29, v8, &v14);
    v4 = *(this + 3);
  }

  else if (!v7)
  {
    *(this + 30) = v5 + v4;
  }

  std::vector<std::pair<double,double>>::resize(this + 35, v4);
  if (*(this + 3) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v2;
    do
    {
      v12 = v11 + v9;
      *(v12 + 16) = 0;
      *(v12 + 4) = -1;
      v11 = *(this + 20);
      *(v11 + v9) = -1;
      ++v10;
      v9 += 20;
    }

    while (v10 < *(this + 3));
  }

  return this;
}

void sub_274D9055C(_Unwind_Exception *exception_object)
{
  v5 = v1[35];
  if (v5)
  {
    v1[36] = v5;
    operator delete(v5);
  }

  v6 = v1[32];
  if (v6)
  {
    v1[33] = v6;
    operator delete(v6);
  }

  v7 = v1[29];
  if (v7)
  {
    v1[30] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[27] = v8;
    operator delete(v8);
  }

  v9 = v1[23];
  if (v9)
  {
    v1[24] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[21] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::Node>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::RegTree::Node>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

void std::vector<xgboost::RegTree::Node>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = (v4 + 20 * a2);
      v11 = 20 * a2;
      do
      {
        *v4 = xmmword_274E25720;
        v4 = (v4 + 20);
        v11 -= 20;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(a1, v9);
    }

    v12 = 20 * v6;
    v13 = 20 * v6 + 20 * a2;
    v14 = 20 * a2;
    v15 = v12;
    do
    {
      *v15 = xmmword_274E25720;
      v15 = (v15 + 20);
      v14 -= 20;
    }

    while (v14);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<xgboost::FeatureType>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<std::unique_ptr<xgboost::TreeUpdater>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void xgboost::gbm::GBTreeModel::~GBTreeModel(xgboost::gbm::GBTreeModel *this)
{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x277C69180](this, 0x10F1C406709006FLL);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_274D90C28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<int>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<int>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<int *>::emplace_back<int *&>(a1, &v10);
}

void sub_274D90E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<int *>::emplace_back<int *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v11);
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

const void **std::__split_buffer<int *>::emplace_front<int *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<int *>::emplace_back<int *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v11);
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

const void **std::__split_buffer<int *>::emplace_front<int *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<int *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::pair<std::string,std::string>>::__vdeallocate(std::vector<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  if (this->__begin_)
  {
    end = this->__end_;
    v4 = this->__begin_;
    if (end != begin)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != begin);
      v4 = this->__begin_;
    }

    this->__end_ = begin;
    operator delete(v4);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

std::string *std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<xgboost::RegTree>>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::~__split_buffer(v14);
  }
}

void dmlc::LogCheckFormat<int,unsigned int>(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E20](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E30](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D91A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::RegTree::Node>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91B18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::FeatureType>::__init_with_size[abi:ne200100]<xgboost::FeatureType*,xgboost::FeatureType*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::RegTree::Segment>::__init_with_size[abi:ne200100]<xgboost::RegTree::Segment*,xgboost::RegTree::Segment*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::FieldEntry<xgboost::TreeProcessType>::~FieldEntry(uint64_t a1)
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

void dmlc::parameter::FieldEntry<xgboost::PredictorType>::~FieldEntry(uint64_t a1)
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

void dmlc::parameter::FieldEntry<xgboost::TreeMethod>::~FieldEntry(uint64_t a1)
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

void dmlc::parameter::FieldEntry<BOOL>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::SetDefault(uint64_t result, uint64_t a2)
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

void sub_274D92054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void dmlc::parameter::FieldEntry<BOOL>::Set(uint64_t a1, uint64_t a2, char *a3)
{
  memset(&v40, 0, sizeof(v40));
  if (a3[23] >= 0)
  {
    v6 = a3[23];
  }

  else
  {
    v6 = *(a3 + 1);
  }

  std::string::resize(&v40, v6, 0);
  v7 = a3[23];
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = a3[23];
  }

  else
  {
    v9 = *(a3 + 1);
  }

  v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if (v9)
  {
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v40;
    }

    else
    {
      v11 = v40.__r_.__value_.__r.__words[0];
    }

    do
    {
      v11->__r_.__value_.__s.__data_[0] = __tolower(*v8);
      v11 = (v11 + 1);
      ++v8;
      --v9;
    }

    while (v9);
    v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  v12 = *(a1 + 96);
  if (v10 < 0)
  {
    if (v40.__r_.__value_.__l.__size_ == 1)
    {
      v15 = v40.__r_.__value_.__r.__words[0];
      v18 = *v40.__r_.__value_.__l.__data_;
      if (v18 == 48)
      {
LABEL_64:
        v17 = 0;
        goto LABEL_65;
      }

      if (v18 != 49)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v40.__r_.__value_.__l.__size_ != 4)
      {
        if (v40.__r_.__value_.__l.__size_ != 5 || ((v15 = v40.__r_.__value_.__r.__words[0], *v40.__r_.__value_.__l.__data_ == 1936482662) ? (v16 = *(v40.__r_.__value_.__r.__words[0] + 4) == 101) : (v16 = 0), !v16))
        {
LABEL_45:
          std::ostringstream::basic_ostringstream[abi:ne200100](v39);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Invalid Parameter format for ", 29);
          v20 = *(a1 + 47);
          if (v20 >= 0)
          {
            v21 = a1 + 24;
          }

          else
          {
            v21 = *(a1 + 24);
          }

          if (v20 >= 0)
          {
            v22 = *(a1 + 47);
          }

          else
          {
            v22 = *(a1 + 32);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " expect ", 8);
          v27 = *(a1 + 48);
          v26 = a1 + 48;
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

          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " but value='", 12);
          v33 = a3[23];
          if (v33 >= 0)
          {
            v34 = a3;
          }

          else
          {
            v34 = *a3;
          }

          if (v33 >= 0)
          {
            v35 = a3[23];
          }

          else
          {
            v35 = *(a3 + 1);
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
          v38.__r_.__value_.__s.__data_[0] = 39;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v38, 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::runtime_error::runtime_error(exception, &v38);
          exception->__vftable = &unk_2883DE2B0;
        }

        goto LABEL_64;
      }

      v15 = v40.__r_.__value_.__r.__words[0];
      if (*v40.__r_.__value_.__l.__data_ != 1702195828)
      {
        goto LABEL_45;
      }
    }

    v17 = 1;
LABEL_65:
    *(a2 + v12) = v17;
    operator delete(v15);
    return;
  }

  if (v10 != 1)
  {
    if (v10 != 4)
    {
      if (v10 != 5)
      {
        goto LABEL_45;
      }

      if (LODWORD(v40.__r_.__value_.__l.__data_) != 1936482662 || v40.__r_.__value_.__s.__data_[4] != 101)
      {
        goto LABEL_45;
      }

      v14 = 0;
      goto LABEL_40;
    }

    if (LODWORD(v40.__r_.__value_.__l.__data_) != 1702195828)
    {
      goto LABEL_45;
    }

LABEL_39:
    v14 = 1;
LABEL_40:
    *(a2 + v12) = v14;
    return;
  }

  if (v40.__r_.__value_.__s.__data_[0] == 49)
  {
    goto LABEL_39;
  }

  if (v40.__r_.__value_.__s.__data_[0] != 48)
  {
    goto LABEL_45;
  }

  *(a2 + v12) = 0;
}

void sub_274D9238C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      if (*(v18 - 65) < 0)
      {
        operator delete(*(v18 - 88));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::GetStringValue(void *a1, uint64_t a2)
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

void sub_274D92578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_274D927C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v4);
  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTree::GBTree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2883E4258;
  *(a1 + 8) = &unk_2883E4320;
  *(a1 + 16) = a3;
  *(a1 + 24) = &unk_2883E73A0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 44) = 1;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a3;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 330) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  xgboost::common::Monitor::Monitor((a1 + 392));
  return a1;
}

void sub_274D92A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v2 + 384);
  *(v2 + 384) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::vector<std::unique_ptr<xgboost::TreeUpdater>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 311) < 0)
  {
    operator delete(*(v2 + 288));
  }

  xgboost::gbm::GBTreeModel::~GBTreeModel(v3);
  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::gbm::$_1,std::allocator<xgboost::gbm::$_1>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  operator new();
}

uint64_t std::__function::__func<xgboost::gbm::$_1,std::allocator<xgboost::gbm::$_1>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::gbm::Dart::~Dart(xgboost::gbm::Dart *this)
{
  *this = &unk_2883E45C0;
  *(this + 1) = &unk_2883E4688;
  v4 = (this + 536);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 64);
  if (v2)
  {
    *(this + 65) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  xgboost::gbm::GBTree::~GBTree(this);
}

{
  *this = &unk_2883E45C0;
  *(this + 1) = &unk_2883E4688;
  v4 = (this + 536);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 64);
  if (v2)
  {
    *(this + 65) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  if (v3)
  {
    *(this + 62) = v3;
    operator delete(v3);
  }

  xgboost::gbm::GBTree::~GBTree(this);
  MEMORY[0x277C69180]();
}

float xgboost::gbm::Dart::LoadModel(xgboost::gbm::Dart *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = v5 + 2;
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 4)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = v5 + 2;
    if (v7 != 4)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [5]>(v6, "dart");
    }
  }

  if (*v8 != 1953653092)
  {
    goto LABEL_7;
  }

  v26 = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 680);
    v10 = dmlc::LogMessageFatal::GetEntry(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: ", 14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "get<String>(in[name]) == dart", 33);
    v13 = *(v26 + 23);
    v14 = v13 >= 0 ? v26 : *v26;
    v15 = v13 >= 0 ? *(v26 + 23) : *(v26 + 8);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
    v17 = v26;
    v26 = 0;
    if (v17)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](&v26, v17);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree");
  v18 = (*(**a2 + 24))(*a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::gbm::GBTree::LoadModel(this, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "weight_drop");
  v19 = (*(**a2 + 24))(*a2, __p);
  v20 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v19);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<float>::resize((this + 488), (v20[3] - v20[2]) >> 3);
  if (*(this + 62) != *(this + 61))
  {
    v22 = 0;
    do
    {
      result = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v20[2] + 8 * v22)) + 4);
      v23 = *(this + 61);
      *(v23 + 4 * v22++) = result;
    }

    while (v22 < (*(this + 62) - v23) >> 2);
  }

  return result;
}

void sub_274D92FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::Dart::SaveModel(xgboost::gbm::Dart *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "dart");
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

void sub_274D93424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void **a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a12);
  a24 = &a18;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::Configure(uint64_t a1, uint64_t a2)
{
  xgboost::gbm::GBTree::Configure(a1, a2);
  if (*(a1 + 456) == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v4);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B08, a1 + 456, *a2, *(a2 + 8), 0, &v5, 0);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v4);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B08, a1 + 456, *a2, *(a2 + 8), &v5, 0);
    *(a1 + 456) = 1;
  }

  v8 = &v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_274D935A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::Load(xgboost::gbm::Dart *this, dmlc::Stream *a2)
{
  xgboost::gbm::GBTree::Load(this, a2);
  std::vector<float>::resize((this + 488), *(this + 10));
  if (*(this + 10))
  {
    __sz = 0;
    if ((**a2)(a2, &__sz, 8) == 8)
    {
      v4 = __sz;
      std::vector<float>::resize((this + 488), __sz);
      if (__sz)
      {
        (**a2)(a2, *(this + 61), 4 * v4);
      }
    }
  }
}

uint64_t xgboost::gbm::Dart::Save(xgboost::gbm::Dart *this, dmlc::Stream *a2)
{
  result = xgboost::gbm::GBTreeModel::Save(this + 24, a2);
  v5 = *(this + 62) - *(this + 61);
  if (v5)
  {
    v6 = v5 >> 2;
    result = (*(*a2 + 8))(a2, &v6, 8);
    if (v6)
    {
      return (*(*a2 + 8))(a2, *(this + 61), *(this + 62) - *(this + 61));
    }
  }

  return result;
}

void xgboost::gbm::Dart::Slice(xgboost::gbm::Dart *this, int a2, int a3, int a4, char **a5, BOOL *a6)
{
  LODWORD(v9) = a3;
  xgboost::gbm::GBTree::Slice(this, a2, a3, a4, a5, a6);
  if (!*a6)
  {
    {
      v14 = v13;
      if (v13[61] != v13[62])
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v35);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 659);
        v27 = dmlc::LogMessageFatal::GetEntry(&v35);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: p_dart->weight_drop_.empty()", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v35);
      }

      v15 = *(*(this + 4) + 8);
      v16 = *(this + 11);
      v17 = xgboost::gbm::detail::LayerToTree((this + 24), a2, v9);
      v18 = HIDWORD(v17);
      v37 = HIDWORD(v17);
      v19 = (*(this + 26) - *(this + 25)) >> 3;
      if (v19 >= HIDWORD(v17))
      {
        v20 = (v16 * v15);
        if (!v9)
        {
          v9 = v19 / v20;
        }

        v36 = v17;
        v34 = (v9 - a2) / a4;
        if (v34)
        {
          v21 = 0;
          v33 = v20 * (a4 - 1);
          v32 = v16 * v15;
          do
          {
            if (v20)
            {
              v22 = v17;
              v23 = 4 * v17;
              v24 = v20;
              do
              {
                if (v22 >= v18)
                {
                  dmlc::LogCheckFormat<int,unsigned int>(&v35, &v36, &v37);
                }

                v25 = *(this + 61);
                if (v22 >= (*(this + 62) - v25) >> 2)
                {
                  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
                }

                std::vector<float>::push_back[abi:ne200100](v14 + 61, (v25 + v23));
                LODWORD(v17) = v22 + 1;
                v36 = v22 + 1;
                v23 += 4;
                ++v22;
                --v24;
              }

              while (v24);
              LODWORD(v20) = v32;
            }

            LODWORD(v17) = v17 + v33;
            v36 = v17;
            ++v21;
          }

          while (v21 != v34);
        }
      }
    }

    else
    {
      v29 = dmlc::LogMessageFatal::GetEntry(&v35);
      dmlc::LogMessageFatal::Entry::Init(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 658);
      v30 = dmlc::LogMessageFatal::GetEntry(&v35);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Check failed: p_dart", 20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v35);
      __break(1u);
    }
  }
}

void sub_274D93A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::PredictBatch(xgboost::gbm::Dart *this, xgboost::DMatrix *a2, uint64_t **a3, int a4, unsigned int a5, int a6)
{
  v52 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *(this + 65) = *(this + 64);
    v10 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v11 = v10;
    if (*(this + 119) <= 0.0 || (v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v10), (v12 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11) * 4294967300.0) * 5.42101086e-20 >= *(this + 119)))
    {
      if (*(this + 115) == 1)
      {
        v13 = *(this + 61);
        v14 = *(this + 62);
        if (v13 == v14)
        {
          v20 = 0;
          v19 = *(this + 61);
        }

        else
        {
          v15 = 0.0;
          do
          {
            v16 = *v13++;
            v15 = v15 + v16;
          }

          while (v13 != v14);
          v51.__ptr_ = 0;
          do
          {
            v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            v18 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            v19 = *(this + 61);
            v13 = *(this + 62);
            v20 = v13 - v19;
            ptr = v51.__ptr_;
            if ((v17 + v18 * 4294967300.0) * 5.42101086e-20 < ((v19[v51.__ptr_] * (*(this + 117) * v20)) / v15))
            {
              std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v51);
              ptr = v51.__ptr_;
              v19 = *(this + 61);
              v13 = *(this + 62);
              v20 = v13 - v19;
            }

            v51.__ptr_ = ptr + 1;
          }

          while ((ptr + 1) < v20);
        }

        if ((*(this + 472) & 1) != 0 && v19 != v13 && *(this + 64) == *(this + 65))
        {
          __p = 0;
          v50 = 0uLL;
          if (v20 >= 2)
          {
            if (!((v20 - 1) >> 61))
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v20 - 1);
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v29 = a3;
          v30 = __p;
          v31 = v50;
          v32 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
          v33 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
          if (v50 != __p)
          {
            v34 = (v50 - __p) >> 3;
            do
            {
              v35 = v34 >> 1;
              v36 = &v30[8 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 1;
              v34 += ~(v34 >> 1);
              if ((v32 + v33 * 4294967300.0) * 5.42101086e-20 < v38)
              {
                v34 = v35;
              }

              else
              {
                v30 = v37;
              }
            }

            while (v34);
            v31 = v30;
          }

          v48 = (v31 - __p) >> 3;
          std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v48);
          a3 = v29;
        }
      }

      else
      {
        v51.__ptr_ = 0;
        v22 = *(this + 62);
        if (v22 == *(this + 61))
        {
          v25 = 0;
          v24 = *(this + 62);
        }

        else
        {
          do
          {
            v23 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            if ((v23 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11) * 4294967300.0) * 5.42101086e-20 < *(this + 117))
            {
              std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v51);
            }

            ++v51.__ptr_;
            v24 = *(this + 61);
            v22 = *(this + 62);
          }

          while (v51.__ptr_ < (v22 - v24) >> 2);
          v25 = (v22 - v24) >> 2;
        }

        if ((*(this + 472) & 1) != 0 && v24 != v22 && *(this + 64) == *(this + 65))
        {
          if (v25 == 1)
          {
            v26 = 0;
          }

          else if (v25)
          {
            v27 = __clz(v25);
            v28 = 63;
            if (((v25 << v27) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v28 = 64;
            }

            std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(&v51, v11, v28 - v27);
            do
            {
              v26 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(&v51);
            }

            while (v26 >= v25);
          }

          else
          {
            std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(&v51, v11, 0x40uLL);
            v26 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(&v51);
          }

          v51.__ptr_ = v26;
          std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v51);
        }
      }
    }
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(this, a3, a2);
  v39 = *Predictor;
  if (!*Predictor)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v51);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 725);
    v44 = dmlc::LogMessageFatal::GetEntry(&v51);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Check failed: predictor", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v51);
    v39 = *Predictor;
  }

  v40 = (**a2)(a2);
  xgboost::Predictor::InitOutPredictions(v41, v39, v40, a3, this + 24);
  *(a3 + 2) = 0;
  xgboost::gbm::detail::LayerToTree((this + 24), a5, a6);
  v42 = *(*(this + 4) + 8);
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void sub_274D94640(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D94638);
}

void xgboost::gbm::Dart::InplacePredict(uint64_t a1, int a2, int a3, int a4, xgboost::gbm::GBTreeModel *a5, int a6)
{
  v8 = *MEMORY[0x277D85DE8];
  xgboost::gbm::detail::LayerToTree((a1 + 24), a5, a6);
  v7 = *(a1 + 384);
  std::vector<xgboost::Predictor const*>::__init_with_size[abi:ne200100]<xgboost::Predictor const* const*,xgboost::Predictor const* const*>();
}

uint64_t xgboost::gbm::Dart::PredictInstance(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  Predictor = xgboost::gbm::GBTree::GetPredictor(a1, 0, 0);
  xgboost::gbm::detail::LayerToTree((a1 + 24), a4, a5);
  v9 = *(**Predictor + 40);

  return v9();
}

uint64_t xgboost::gbm::Dart::PredictContribution(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 881);
    v15 = dmlc::LogMessageFatal::GetEntry(&v17);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  return (*(**(a1 + 384) + 56))(*(a1 + 384), a2, a3, a1 + 24, HIDWORD(v12), a1 + 488, a6, 0, 0);
}

uint64_t xgboost::gbm::Dart::PredictInteractionContributions(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 891);
    v15 = dmlc::LogMessageFatal::GetEntry(&v17);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  return (*(**(a1 + 384) + 64))(*(a1 + 384), a2, a3, a1 + 24, HIDWORD(v12), a1 + 488, a6);
}

void xgboost::gbm::Dart::LoadConfig(xgboost::gbm::Dart *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = v5 + 2;
  v7 = *(v5 + 39);
  if (v7 < 0)
  {
    if (v5[3] != 4)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = v5 + 2;
    if (v7 != 4)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [5]>(v6, "dart");
    }
  }

  if (*v8 != 1953653092)
  {
    goto LABEL_7;
  }

  v19[0] = 0;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "gbtree");
  v9 = (*(**a2 + 24))(*a2, &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  xgboost::gbm::GBTree::LoadConfig(this, v9);
  std::string::basic_string[abi:ne200100]<0>(v19, "dart_train_param");
  v10 = (*(**a2 + 24))(*a2, v19);
  v11 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v10);
  v25 = 0;
  v26 = 0;
  __p = &v25;
  v12 = *(v11 + 2);
  v13 = (v11 + 24);
  if (v12 != (v11 + 24))
  {
    do
    {
      v14 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v12[7]);
      v27 = v12 + 4;
      v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v12 + 4);
      v11 = std::string::operator=((v15 + 56), (v14 + 16));
      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (!v18);
      }

      v12 = v17;
    }

    while (v17 != v13);
  }

  if (*(this + 456) == 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v11);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B08, this + 456, __p, &v25, 0, &v21, 0);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v11);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B08, this + 456, __p, &v25, &v21, 0);
    *(this + 456) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v25);
  __p = &v21;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_274D952E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 - 56) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v24 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::SaveConfig(xgboost::gbm::Dart *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v3, "dart");
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

void xgboost::gbm::Dart::CommitModel(uint64_t a1, void *a2, float a3, __n128 a4)
{
  if (*(*(a1 + 32) + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a2 + v6;
      v8 += (*(v9 + 8) - *v9) >> 3;
      xgboost::gbm::GBTreeModel::CommitModel(a1 + 24, v9, v7++);
      v6 += 24;
    }

    while (v7 < *(*(a1 + 32) + 8));
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 520);
  v12 = *(a1 + 512);
  v13 = v11 - v12;
  if (v11 == v12)
  {
    for (; v10; --v10)
    {
      LODWORD(v26[0].__locale_) = 1065353216;
      std::vector<float>::push_back[abi:ne200100]((a1 + 488), v26);
    }
  }

  else
  {
    v14 = *(a1 + 480) / v10;
    if (*(a1 + 464) == 1)
    {
      a4.n128_u64[0] = 1.0;
      a3 = 1.0 / (v14 + 1.0);
      *&v26[0].__locale_ = a3;
      v15 = *(a1 + 488);
      do
      {
        v16 = *v12++;
        a4.n128_f32[0] = *(v15 + 4 * v16) * a3;
        *(v15 + 4 * v16) = a4.n128_u32[0];
      }

      while (v12 != v11);
      for (; v10; --v10)
      {
        std::vector<float>::push_back[abi:ne200100]((a1 + 488), v26);
      }
    }

    else
    {
      a3 = v14 + v13;
      a4.n128_f64[0] = v13 / a3;
      a4.n128_f32[0] = a4.n128_f64[0];
      v17 = *(a1 + 488);
      do
      {
        v18 = *v12++;
        *(v17 + 4 * v18) = *(v17 + 4 * v18) * a4.n128_f32[0];
      }

      while (v12 != v11);
      if (v10)
      {
        v19 = 1.0 / a3;
        do
        {
          *&v26[0].__locale_ = v19;
          std::vector<float>::push_back[abi:ne200100]((a1 + 488), v26);
          --v10;
        }

        while (v10);
      }
    }
  }

  *(a1 + 520) = *(a1 + 512);
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a3, a4) + 4) > 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v26, __p, 909, 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "drop ", 5);
    v21 = MEMORY[0x277C68E50](v20, v13);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " trees, ", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "weight = ", 9);
    v23 = *(*(a1 + 496) - 4);
    std::ostream::operator<<();
    xgboost::ConsoleLogger::~ConsoleLogger(v26);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274D95A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::gbm::Dart::~Dart(xgboost::gbm::Dart *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_2883E45C0;
  *this = &unk_2883E4688;
  v5 = (this + 528);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 63);
  if (v3)
  {
    *(this + 64) = v3;
    operator delete(v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  xgboost::gbm::GBTree::~GBTree(v2);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_2883E45C0;
  *this = &unk_2883E4688;
  v5 = (this + 528);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 63);
  if (v3)
  {
    *(this + 64) = v3;
    operator delete(v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  xgboost::gbm::GBTree::~GBTree(v2);
  MEMORY[0x277C69180]();
}

void dmlc::LogCheckFormat<std::string,char [5]>(uint64_t a1, const char *a2)
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

void sub_274D95DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::PredictionCacheEntry::~PredictionCacheEntry(xgboost::PredictionCacheEntry *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void sub_274D95FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v15 + 256);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](v19, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](v18, 0);
  xgboost::common::Monitor::~Monitor((v15 + 152));
  xgboost::tree::TrainParam::~TrainParam(v17);
  MEMORY[0x277C69180](v15, v16);
  _Unwind_Resume(a1);
}

void xgboost::tree::GlobalApproxUpdater::~GlobalApproxUpdater(xgboost::tree::GlobalApproxUpdater *this)
{
  *this = &unk_2883E47D8;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 28, 0);
  xgboost::common::Monitor::~Monitor(this + 19);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_2883E47D8;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 28, 0);
  xgboost::common::Monitor::~Monitor(this + 19);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::GlobalApproxUpdater::LoadConfig(xgboost::tree::GlobalApproxUpdater *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 16), v9);
  v10 = v9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "hist_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(v5, (this + 216), v6);
  v10 = v6;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D9627C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::GlobalApproxUpdater::SaveConfig(xgboost::tree::GlobalApproxUpdater *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 16), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::tree::GlobalApproxUpdater::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v5);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 216), a2, v4);
  v6 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void xgboost::tree::GlobalApproxUpdater::Update(uint64_t a1, uint64_t a2, void (***a3)(void), void *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  *(a1 + 20) = *(a1 + 20) / ((a4[1] - *a4) >> 3);
  v4 = *(a1 + 217);
  (**a3)(a3);
  if (v4 == 1)
  {
    operator new();
  }

  operator new();
}

void sub_274D98B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a67);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::GlobalApproxUpdater::UpdatePredictionCache(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  if (*(a1 + 240) == a2 && ((v85 = *(a1 + 224)) != 0 || *(a1 + 232)))
  {
    if (*(a1 + 217) == 1)
    {
      v5 = *a3;
      v6 = a3[2];
      v8 = a3[4];
      v7 = a3[5];
      v9 = *(a3 + 12);
      v10 = *(v85 + 936);
      std::string::basic_string[abi:ne200100]<0>(&v94, "UpdatePredictionCache");
      xgboost::common::Monitor::Start();
      if (v95.__m_.__opaque[7] < 0)
      {
        operator delete(v94.__ptr_);
      }

      v92[0] = v7;
      v11 = (*(*a2 + 24))(a2);
      if (v7 != *v11)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long long>(v92, v11);
      }

      v86 = *(v85 + 928);
      v92[0] = v7;
      LODWORD(v88[0]) = 0;
      if (!v7)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned int>(v92, v88);
      }

      if (!v86)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v94);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 387);
        v78 = dmlc::LogMessageFatal::GetEntry(&v94);
        v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Check failed: p_last_tree", 25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v94);
      }

      xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v85 + 304), v92);
      LODWORD(v88[0]) = v9;
      v93.i32[0] = -1;
      if (v9 != -1)
      {
        dmlc::LogCheckFormat<int,int>(v88, &v93);
      }

      v91 = 0xCCCCCCCCCCCCCCCDLL * ((*(v86 + 168) - *(v86 + 160)) >> 2);
      v12 = *(v85 + 904);
      for (i = *(v85 + 912); v12 != i; v12 += 136)
      {
        v88[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v12 + 112) - *(v12 + 104)) >> 3));
        if (v88[0] != v91)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(v88, &v91);
        }

        v13 = *(v12 + 104);
        v14 = *(v12 + 112);
        *v88 = 0u;
        *__p = 0u;
        v90 = 0u;
        v15 = v14 - v13;
        if (v15)
        {
          v16 = 0;
          v17 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
          do
          {
            v18 = *(*(v12 + 104) + 24 * v16 + 8) - *(*(v12 + 104) + 24 * v16);
            v19 = v18 >> 3;
            if ((v18 & 0x1FF8) != 0)
            {
              v20 = ((v18 >> 3) >> 10) + 1;
            }

            else
            {
              v20 = (v18 >> 3) >> 10;
            }

            if (v20)
            {
              v21 = 0;
              do
              {
                v22 = v21 + 1024;
                if (v19 >= v21 + 1024)
                {
                  v23 = v21 + 1024;
                }

                else
                {
                  v23 = v19;
                }

                xgboost::common::BlockedSpace2d::AddBlock(v88, v16, v21, v23);
                v21 = v22;
                --v20;
              }

              while (v20);
            }

            ++v16;
          }

          while (v16 != v17);
          v94.__ptr_ = 0;
          v95.__m_.__sig = 850045863;
          memset(v95.__m_.__opaque, 0, sizeof(v95.__m_.__opaque));
          if (v88[1] != v88[0])
          {
            v24 = 0;
            if (((v88[1] - v88[0]) >> 4) <= 1)
            {
              v25 = 1;
            }

            else
            {
              v25 = (v88[1] - v88[0]) >> 4;
            }

            do
            {
              FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v88, v24);
              Range = xgboost::common::BlockedSpace2d::GetRange(v88, v24);
              v30 = *(v86 + 160) + 20 * FirstDimension;
              if (*(v30 + 12) != -1 && *(v30 + 4) == -1)
              {
                v31 = Range;
                v32 = v28;
                v33 = *(v12 + 104);
                v93 = *(*(v85 + 448) + 24 * FirstDimension);
                v34 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v92, FirstDimension, v85, v93.i64, v93, v29);
                if (v31 < v32)
                {
                  v35 = *(v33 + 24 * FirstDimension);
                  v36 = v34 * *(v85 + 4);
                  v37 = v35 + 8 * v32;
                  v38 = (v35 + 8 * v31);
                  do
                  {
                    v39 = *v38 * v5;
                    if (v39 >= v6)
                    {
                      __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                    }

                    *(v8 + 4 * v39) = v36 + *(v8 + 4 * v39);
                    ++v38;
                  }

                  while (v38 < v37);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }
        }

        else
        {
          v94.__ptr_ = 0;
          v95.__m_.__sig = 850045863;
          memset(v95.__m_.__opaque, 0, sizeof(v95.__m_.__opaque));
        }

        dmlc::OMPException::Rethrow(&v94);
        std::mutex::~mutex(&v95);
        std::exception_ptr::~exception_ptr(&v94);
        if (__p[1])
        {
          *&v90 = __p[1];
          operator delete(__p[1]);
        }

        if (v88[0])
        {
          v88[1] = v88[0];
          operator delete(v88[0]);
        }
      }
    }

    else
    {
      v40 = *a3;
      v41 = a3[2];
      v43 = a3[4];
      v42 = a3[5];
      v44 = *(a3 + 12);
      v85 = *(a1 + 232);
      v45 = *(v85 + 936);
      std::string::basic_string[abi:ne200100]<0>(&v94, "UpdatePredictionCache");
      xgboost::common::Monitor::Start();
      if (v95.__m_.__opaque[7] < 0)
      {
        operator delete(v94.__ptr_);
      }

      v92[0] = v42;
      v46 = (*(*a2 + 24))(a2);
      if (v42 != *v46)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long long>(v92, v46);
      }

      v87 = *(v85 + 928);
      v92[0] = v42;
      LODWORD(v88[0]) = 0;
      if (!v42)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned int>(v92, v88);
      }

      if (!v87)
      {
        v80 = dmlc::LogMessageFatal::GetEntry(&v94);
        dmlc::LogMessageFatal::Entry::Init(v80, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 387);
        v81 = dmlc::LogMessageFatal::GetEntry(&v94);
        v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Check failed: p_last_tree", 25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v94);
      }

      xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v85 + 304), v92);
      LODWORD(v88[0]) = v44;
      v93.i32[0] = -1;
      if (v44 != -1)
      {
        dmlc::LogCheckFormat<int,int>(v88, &v93);
      }

      v91 = 0xCCCCCCCCCCCCCCCDLL * ((*(v87 + 168) - *(v87 + 160)) >> 2);
      v47 = *(v85 + 904);
      for (j = *(v85 + 912); v47 != j; v47 += 136)
      {
        v88[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v47 + 112) - *(v47 + 104)) >> 3));
        if (v88[0] != v91)
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(v88, &v91);
        }

        v48 = *(v47 + 104);
        v49 = *(v47 + 112);
        *v88 = 0u;
        *__p = 0u;
        v90 = 0u;
        v50 = v49 - v48;
        if (v50)
        {
          v51 = 0;
          v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 3);
          do
          {
            v53 = *(*(v47 + 104) + 24 * v51 + 8) - *(*(v47 + 104) + 24 * v51);
            v54 = v53 >> 3;
            if ((v53 & 0x1FF8) != 0)
            {
              v55 = ((v53 >> 3) >> 10) + 1;
            }

            else
            {
              v55 = (v53 >> 3) >> 10;
            }

            if (v55)
            {
              v56 = 0;
              do
              {
                v57 = v56 + 1024;
                if (v54 >= v56 + 1024)
                {
                  v58 = v56 + 1024;
                }

                else
                {
                  v58 = v54;
                }

                xgboost::common::BlockedSpace2d::AddBlock(v88, v51, v56, v58);
                v56 = v57;
                --v55;
              }

              while (v55);
            }

            ++v51;
          }

          while (v51 != v52);
          v94.__ptr_ = 0;
          v95.__m_.__sig = 850045863;
          memset(v95.__m_.__opaque, 0, sizeof(v95.__m_.__opaque));
          if (v88[1] != v88[0])
          {
            v59 = 0;
            if (((v88[1] - v88[0]) >> 4) <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = (v88[1] - v88[0]) >> 4;
            }

            do
            {
              v61 = xgboost::common::BlockedSpace2d::GetFirstDimension(v88, v59);
              v62 = xgboost::common::BlockedSpace2d::GetRange(v88, v59);
              v65 = *(v87 + 160) + 20 * v61;
              if (*(v65 + 12) != -1 && *(v65 + 4) == -1)
              {
                v66 = v62;
                v67 = v63;
                v68 = *(v47 + 104);
                v93 = *(*(v85 + 448) + 24 * v61);
                v69 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v92, v61, v85, v93.i64, v93, v64);
                if (v66 < v67)
                {
                  v70 = *(v68 + 24 * v61);
                  v71 = v69 * *(v85 + 4);
                  v72 = v70 + 8 * v67;
                  v73 = (v70 + 8 * v66);
                  do
                  {
                    v74 = *v73 * v40;
                    if (v74 >= v41)
                    {
                      __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                    }

                    *(v43 + 4 * v74) = v71 + *(v43 + 4 * v74);
                    ++v73;
                  }

                  while (v73 < v72);
                }
              }

              ++v59;
            }

            while (v59 != v60);
          }
        }

        else
        {
          v94.__ptr_ = 0;
          v95.__m_.__sig = 850045863;
          memset(v95.__m_.__opaque, 0, sizeof(v95.__m_.__opaque));
        }

        dmlc::OMPException::Rethrow(&v94);
        std::mutex::~mutex(&v95);
        std::exception_ptr::~exception_ptr(&v94);
        if (__p[1])
        {
          *&v90 = __p[1];
          operator delete(__p[1]);
        }

        if (v88[0])
        {
          v88[1] = v88[0];
          operator delete(v88[0]);
        }
      }
    }

    v75 = *(v85 + 936);
    std::string::basic_string[abi:ne200100]<0>(&v94, "UpdatePredictionCache");
    xgboost::common::Monitor::Stop();
    if (v95.__m_.__opaque[7] < 0)
    {
      operator delete(v94.__ptr_);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v76 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274D99FC0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FCC()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FDC()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FE8()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D9A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  v5 = *(v4 - 168);
  *(v4 - 168) = 0;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4 - 168);
  }

  JUMPOUT(0x274D9A154);
}

void sub_274D9A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D9A104);
}

void sub_274D9A11C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274D9A12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    JUMPOUT(0x274D9A150);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceIN7xgboost6common13ColumnSamplerENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2883E4848;
  xgboost::common::ColumnSampler::ColumnSampler((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<xgboost::common::ColumnSampler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E4848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void std::__shared_ptr_emplace<xgboost::common::ColumnSampler>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(a1 + 40, *(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    xgboost::tree::GloablApproxBuilder<double>::~GloablApproxBuilder();
  }

  return result;
}

void std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 48);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }
}

uint64_t xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(uint64_t a1)
{
  v5 = (a1 + 48);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::~HistogramBuilder(uint64_t a1)
{
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 296, *(a1 + 304));
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    *(a1 + 208) = v5;
    operator delete(v5);
  }

  v9 = (a1 + 176);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = *(a1 + 104);
  if (v6)
  {
    *(a1 + 112) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 80);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(a1 + 40);
  if (v7)
  {
    *(a1 + 48) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 16);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return a1;
}

uint64_t xgboost::common::HistCollection<double>::~HistCollection(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 16);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t xgboost::common::ParallelGHistBuilder<double>::~ParallelGHistBuilder(uint64_t a1)
{
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 160, *(a1 + 168));
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 40);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::~HistEvaluator(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v3 = (a1 + 240);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 216);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 192);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(char ***a1@<X0>, xgboost::tree::CPUHistMakerTrainParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = v5 + 3;
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      std::string::operator=((v9 + 56), (v8 + 16));
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

  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::CPUHistMakerTrainParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274D9AA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274D9AA7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::tree::CPUHistMakerTrainParam>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  v3 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v3, v5);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v6, v5[0], v5[1]);
  v8 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = v6;
  if (v6 != &v7)
  {
    xgboost::JsonString::JsonString(v5, (v6 + 56));
    v8 = (v4 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v4 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7);
}

void sub_274D9AC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::tree::CPUHistMakerTrainParam *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274D9AD24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274D9AD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::HistEvaluator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  v9 = *(a2 + 20);
  v10 = *(a2 + 36);
  v11 = *(a2 + 52);
  v12 = *(a2 + 62);
  v13 = *(a2 + 4);
  *(a1 + 80) = 0;
  v14 = (a1 + 80);
  *(a1 + 4) = v13;
  *(a1 + 62) = v12;
  *(a1 + 52) = v11;
  *(a1 + 36) = v10;
  *(a1 + 20) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v15 = *(a2 + 104);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 120);
    *&v14[1].__r_.__value_.__l.__data_ = v15;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  v16 = *(a3 + 8);
  xgboost::tree::TreeEvaluator::TreeEvaluator((a1 + 152), a2);
}

void sub_274D9AF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 88) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t rabit::ReducerAlignImpl<xgboost::detail::GradientPairInternal<float>,&xgboost::detail::GradientPairInternal<float>::Reduce>(float32x2_t *a1, float32x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = vadd_f32(v4, *a2);
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::HistEvaluator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  v9 = *(a2 + 20);
  v10 = *(a2 + 36);
  v11 = *(a2 + 52);
  v12 = *(a2 + 62);
  v13 = *(a2 + 4);
  *(a1 + 80) = 0;
  v14 = (a1 + 80);
  *(a1 + 4) = v13;
  *(a1 + 62) = v12;
  *(a1 + 52) = v11;
  *(a1 + 36) = v10;
  *(a1 + 20) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v15 = *(a2 + 104);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 120);
    *&v14[1].__r_.__value_.__l.__data_ = v15;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  v16 = *(a3 + 8);
  xgboost::tree::TreeEvaluator::TreeEvaluator((a1 + 152), a2);
}

void sub_274D9B148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 88) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t rabit::ReducerSafeImpl<xgboost::detail::GradientPairInternal<double>,&xgboost::detail::GradientPairInternal<double>::Reduce>(float64x2_t *a1, float64x2_t *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = vaddq_f64(*a2, v4);
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::resize(void *a1, unint64_t a2)
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
    std::vector<xgboost::detail::GradientPairInternal<float>>::__append(a1, a2 - v2);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Push(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100]((a1 + 8), a2);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v7, a1 + 32);
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v3, v4, v7, 0x2E8BA2E8BA2E8BA3 * ((v4 - v3) >> 3));
  result = std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274D9B408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Pop(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 16))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    if (*a1 == 1)
    {
      v5 = *(v3 + 4);
      v6 = v3[1];
      v31 = *v3;
      v32 = v6;
      v33 = v5;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v34, v3[3], v3[4], (v3[4] - v3[3]) >> 2);
      v7 = *(v3 + 3);
      v8 = *(v3 + 4);
      v39 = v3[10];
      v38 = v8;
      v37 = v7;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v40, a1 + 32);
      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v9, v10, v40, 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3));
      std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v40);
      v11 = *(a1 + 16);
      v12 = *(v11 - 64);
      if (v12)
      {
        *(v11 - 56) = v12;
        operator delete(v12);
      }

      *(a1 + 16) = v11 - 88;
      v40[0] = v31;
      v40[1] = v32;
      v41 = v33;
      v43 = 0;
      v44 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, (v35 - v34) >> 2);
      v45 = v37;
      v46 = v38;
      v47 = v39;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(a2, v40, &v48, 1uLL);
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v13 = *(v3 + 4);
      v14 = v3[1];
      v31 = *v3;
      v32 = v14;
      v33 = v13;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v34, v3[3], v3[4], (v3[4] - v3[3]) >> 2);
      v15 = *(v3 + 3);
      v16 = *(v3 + 4);
      v39 = v3[10];
      v38 = v16;
      v37 = v15;
      v17 = HIDWORD(v31);
      do
      {
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        v20 = *(a1 + 8);
        if (v20 == v19)
        {
          break;
        }

        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v40, a1 + 32);
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v20, v19, v40, 0x2E8BA2E8BA2E8BA3 * ((v19 - v20) >> 3));
        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v40);
        v21 = *(a1 + 16);
        v22 = *(v21 - 64);
        if (v22)
        {
          *(v21 - 56) = v22;
          operator delete(v22);
        }

        *(a1 + 16) = v21 - 88;
        v23 = a2[1];
        if (v23 >= a2[2])
        {
          v24 = std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry&>(a2, &v31);
        }

        else
        {
          std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry&>(a2, &v31);
          v24 = v23 + 88;
        }

        a2[1] = v24;
        v25 = *(a1 + 8);
        if (v25 != *(a1 + 16))
        {
          v26 = v25[1];
          v31 = *v25;
          v27 = *(v25 + 4);
          v32 = v26;
          v33 = v27;
          if (&v31 != v25)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v34, v25[3], v25[4], (v25[4] - v25[3]) >> 2);
          }

          v28 = *(v25 + 3);
          v29 = *(v25 + 4);
          v39 = v25[10];
          v37 = v28;
          v38 = v29;
        }
      }

      while (HIDWORD(v31) == v17);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_274D9B730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL xgboost::tree::CPUExpandEntry::IsValid(xgboost::tree::CPUExpandEntry *this, const xgboost::tree::TrainParam *a2, int a3)
{
  v3 = *(this + 2);
  if (v3 <= 0.000001 || *(this + 8) == 0.0)
  {
    return 0;
  }

  if (*(this + 10) == 0.0 || v3 < *(a2 + 2))
  {
    return 0;
  }

  v5 = *(a2 + 3);
  if (v5 >= 1 && *(this + 1) == v5)
  {
    return 0;
  }

  v7 = *(a2 + 4);
  return v7 < 1 || v7 != a3;
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::ApplyTreeSplit(uint64_t a1, int *a2, xgboost::RegTree *a3)
{
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v52);
  v6 = a2 + 14;
  v7 = *a2;
  v8 = a2 + 18;
  v9 = *(a2 + 18);
  v48 = vaddq_f64(*(a2 + 14), v9);
  *&v51.__begin_ = v48;
  v10 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v7, a1, &v51, v48, v9);
  v11 = *a2;
  *&v51.__begin_ = *(a2 + 14);
  v13 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v11, a1, &v51, *&v51.__begin_, v12);
  v14 = *a2;
  *&v51.__begin_ = *(a2 + 18);
  v17 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v14, a1, &v51, *&v51.__begin_, v15);
  if (*(a2 + 48) == 1)
  {
    memset(&v51, 0, sizeof(v51));
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    if (v18 == v19)
    {
      v25 = *(a2 + 4);
      if (v25 < 0.0 || v25 >= 16777000.0)
      {
        xgboost::common::InvalidCategory(v16);
        v25 = *(a2 + 4);
      }

      v26 = v25;
      __x = 0;
      std::vector<unsigned int>::resize(&v51, vcvtpd_u64_f64(vcvtd_n_f64_u32((v26 & ~(v26 >> 31)) + 1, 5uLL)), &__x);
      begin = v51.__begin_;
      end = v51.__end_;
      v27 = v26 >> 5;
      if (v27 >= v51.__end_ - v51.__begin_)
      {
        std::terminate();
      }

      v51.__begin_[v27] |= 1 << ~v26;
    }

    else if (&v51 == (a2 + 6))
    {
      begin = 0;
      end = 0;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v51, v18, v19, (v19 - v18) >> 2);
      begin = v51.__begin_;
      end = v51.__end_;
    }

    v28 = *a2;
    v29 = a2[3];
    v49[0] = end - begin;
    v49[1] = begin;
    v30 = *&v48.i64[1];
    v31 = *(a2 + 8);
    v32 = *(a2 + 10);
    xgboost::RegTree::ExpandCategorical(a3, v28, v29 & 0x7FFFFFFF, v49, v29 >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v30, v31, v32);
    if (v51.__begin_)
    {
      v51.__end_ = v51.__begin_;
      operator delete(v51.__begin_);
    }
  }

  else
  {
    v22 = *&v48.i64[1];
    v23 = *(a2 + 8);
    v24 = *(a2 + 10);
    xgboost::RegTree::ExpandNode(a3, *a2, a2[3] & 0x7FFFFFFF, *(a2 + 4), a2[3] >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v22, v23, v24, -1);
  }

  v33 = (*(a3 + 20) + 20 * *a2);
  v34 = v33[1];
  v35 = v33[2];
  xgboost::tree::TreeEvaluator::AddSplit<false>(a1 + 152, *a2, v34, v35, v33[3] & 0x7FFFFFFF, v13, v17);
  std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize((a1 + 296), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 21) - *(a3 + 20)) >> 2));
  v37 = *(a1 + 296);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v37) >> 3) <= v34)
  {
    goto LABEL_22;
  }

  *(v37 + 24 * v34) = *v6;
  v38 = *a2;
  *&v51.__begin_ = *v6;
  v39 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v38, a1, &v51, *&v51.__begin_, v36);
  v40 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v39);
  v42 = *(a1 + 296);
  v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v42) >> 3);
  if (v43 <= v34 || (*(v42 + 24 * v34 + 16) = v40, v43 <= v35) || (*(v42 + 24 * v35) = *v8, v44 = *a2, *&v51.__begin_ = *v8, v45 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v44, a1, &v51, *&v51.__begin_, v41), v46 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v45), v47 = *(a1 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v47) >> 3) <= v35))
  {
LABEL_22:
    std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v47 + 24 * v35 + 16) = v46;
  if (*(a1 + 292) == 1)
  {
    xgboost::FeatureInteractionConstraintHost::SplitImpl((a1 + 192), *a2, *(*(a3 + 20) + 20 * *a2 + 12) & 0x7FFFFFFF, v34, v35);
  }
}

void sub_274D9BC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry const&>(a1, a2);
  }

  else
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry const&>(a1, a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator!=(uint64_t *a1)
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

uint64_t xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator*(uint64_t *a1)
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

void xgboost::tree::ApproxRowPartitioner::UpdatePosition(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v6 = a3[1];
  v102 = *(a2 + 120);
  v99 = *(a2 + 128);
  *v109 = 0u;
  v110 = 0u;
  *v108 = 0u;
  v8 = v6 - v7;
  v9 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = *a3 + 88 * v10;
      v124.__ptr_ = *v11;
      v12 = *(v11 + 8);
      LODWORD(v126) = *(v11 + 16);
      v125 = v12;
      v127 = 0uLL;
      *(&v126 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v126 + 8, *(v11 + 24), *(v11 + 32), (*(v11 + 32) - *(v11 + 24)) >> 2);
      v13 = *(v11 + 48);
      v14 = *(v11 + 64);
      v130 = *(v11 + 80);
      v128 = v13;
      v129 = v14;
      v15 = (a1[13] + 24 * LODWORD(v124.__ptr_));
      v17 = *v15;
      v16 = v15[1];
      if (*(&v126 + 1))
      {
        *&v127 = *(&v126 + 1);
        operator delete(*(&v126 + 1));
      }

      v18 = v16 - v17;
      v19 = (v16 - v17) >> 3;
      if ((v18 & 0x3FF8) != 0)
      {
        v20 = (v19 >> 11) + 1;
      }

      else
      {
        v20 = v19 >> 11;
      }

      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = v21 + 2048;
          if (v19 >= v21 + 2048)
          {
            v23 = v21 + 2048;
          }

          else
          {
            v23 = v19;
          }

          xgboost::common::BlockedSpace2d::AddBlock(v108, v10, v21, v23);
          v21 = v22;
          --v20;
        }

        while (v20);
      }

      ++v10;
    }

    while (v10 != v9);
    v24 = (v108[1] - v108[0]) >> 4;
  }

  else
  {
    v24 = 0;
  }

  std::vector<std::pair<double,double>>::resize(a1, v9);
  std::vector<unsigned long>::resize(a1 + 3, v9 + 1);
  v103 = v24;
  *a1[3] = 0;
  v98 = a1;
  if (v9 + 1 >= 2)
  {
    v25 = 0;
    v26 = 0;
    v27 = 8;
    do
    {
      v28 = *a3 + v25;
      v124.__ptr_ = *v28;
      v29 = *(v28 + 8);
      LODWORD(v126) = *(v28 + 16);
      v125 = v29;
      v127 = 0uLL;
      *(&v126 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v126 + 8, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 2);
      v30 = *(v28 + 48);
      v31 = *(v28 + 64);
      v130 = *(v28 + 80);
      v128 = v30;
      v129 = v31;
      v32 = (v98[13] + 24 * LODWORD(v124.__ptr_));
      v33 = *v32;
      v34 = v32[1];
      if (*(&v126 + 1))
      {
        *&v127 = *(&v126 + 1);
        operator delete(*(&v126 + 1));
      }

      v35 = (v34 - v33) >> 3;
      if (((v34 - v33) & 0x3FF8) != 0)
      {
        v26 += (v35 >> 11) + 1;
      }

      else
      {
        v26 += v35 >> 11;
      }

      a1 = v98;
      *(v98[3] + v27) = v26;
      v27 += 8;
      v25 += 88;
      --v9;
    }

    while (v9);
  }

  if (a1[9] < v103)
  {
    std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize((a1 + 6), v103);
    a1[9] = v103;
  }

  v36 = a4[32];
  v37 = a4[36];
  v104 = a4[35];
  v107[0] = (a4[33] - v36) >> 2;
  v107[1] = v36;
  v124.__ptr_ = 0;
  v125 = 850045863;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  *&v129 = 0;
  v38 = v108[1] - v108[0];
  if (v108[1] != v108[0])
  {
    v39 = 0;
    v101 = (v37 - v104) >> 4;
    v40 = v38 >> 4;
    if ((v38 >> 4) <= 1)
    {
      v40 = 1;
    }

    v95 = v40;
    while (1)
    {
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v108, v39);
      Range = xgboost::common::BlockedSpace2d::GetRange(v108, v39);
      v44 = v43;
      v45 = *a3 + 88 * FirstDimension;
      v111 = *v45;
      v46 = *(v45 + 8);
      v113 = *(v45 + 16);
      v112 = v46;
      v115 = 0;
      v116 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(v45 + 24), *(v45 + 32), (*(v45 + 32) - *(v45 + 24)) >> 2);
      v47 = *(v45 + 48);
      v48 = *(v45 + 64);
      v119 = *(v45 + 80);
      v117 = v47;
      v118 = v48;
      v49 = v47;
      v50 = v111;
      v51 = HIDWORD(v112);
      xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(a1, *(a1[3] + 8 * FirstDimension) + (Range >> 11));
      v52 = Range >> 11;
      v53 = a1[3];
      v54 = *(v53 + 8 * FirstDimension) + (Range >> 11);
      v55 = a1[6];
      v56 = (a1[7] - v55) >> 4;
      if (v56 <= v54)
      {
LABEL_82:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

      v57 = FirstDimension;
      if (v44 != Range)
      {
        break;
      }

      v58 = 0;
      v59 = 0;
LABEL_59:
      if (v56 <= v54)
      {
        goto LABEL_82;
      }

      **(v55 + 16 * v54) = v59;
      v76 = *(v53 + 8 * v57) + v52;
      if (v56 <= v76)
      {
        goto LABEL_82;
      }

      *(*(v55 + 16 * v76) + 8) = v58;
      if (__p)
      {
        v115 = __p;
        operator delete(__p);
      }

      ++v39;
      a1 = v98;
      if (v39 == v95)
      {
        goto LABEL_64;
      }
    }

    v92 = FirstDimension;
    v93 = Range >> 11;
    v94 = v39;
    v59 = 0;
    v58 = 0;
    v60 = v51 & 0x7FFFFFFF;
    v61 = (*(v98[13] + 24 * v50) + 8 * Range);
    v62 = v44 - Range;
    v63 = *(v55 + 16 * v54);
    v64 = v63 + 32;
    v65 = v63 + 16416;
    v100 = (v51 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v67 = *v61++;
      v66 = v67;
      if (*(a2 + 192) == 1)
      {
        v68 = xgboost::common::Index::operator[]((a2 + 24), *(*a2 + 8 * (v66 - *(a2 + 152))) + v60);
      }

      else
      {
        v69 = (*a2 + 8 * (v66 - *(a2 + 152)));
        v68 = xgboost::common::BinarySearchBin<xgboost::common::Index>(*v69, v69[1], (a2 + 24), *(*v99 + 4 * v60), *(*v99 + 4 * v100));
      }

      if (v68 != -1)
      {
        v70 = *(*v102 + 4 * v68);
        if (v101 <= v111)
        {
          goto LABEL_81;
        }

        xgboost::common::Span<float,18446744073709551615ul>::subspan(v107, *(v104 + 16 * v111), *(v104 + 16 * v111 + 8), v120);
        if (!v49)
        {
          v74 = v70 <= v113;
          goto LABEL_55;
        }

        if (v70 >= 0.0 && v70 < 16777000.0 && v70 < (32 * v120[0]))
        {
          if (v120[0] <= v70 >> 5)
          {
            v74 = 1;
          }

          else
          {
            v73 = v70 >> 5;
            if (v73 >= v120[0])
            {
LABEL_81:
              std::terminate();
            }

            v74 = ((*(v120[1] + 4 * v73) >> ~v70) & 1) == 0;
          }

          goto LABEL_55;
        }
      }

      v74 = HIDWORD(v112) >> 31;
LABEL_55:
      v75 = (v65 + 8 * v58);
      if (v74)
      {
        v75 = (v64 + 8 * v59);
      }

      *v75 = v66;
      v59 += v74;
      v58 += v74 ^ 1;
      if (!--v62)
      {
        v53 = v98[3];
        v55 = v98[6];
        v56 = (v98[7] - v55) >> 4;
        v57 = v92;
        v52 = v93;
        v54 = *(v53 + 8 * v92) + v93;
        v39 = v94;
        goto LABEL_59;
      }
    }
  }

LABEL_64:
  dmlc::OMPException::Rethrow(&v124);
  std::mutex::~mutex(&v125);
  std::exception_ptr::~exception_ptr(&v124);
  xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
  v122.__ptr_ = 0;
  v123.__m_.__sig = 850045863;
  memset(v123.__m_.__opaque, 0, sizeof(v123.__m_.__opaque));
  if (v108[1] != v108[0])
  {
    v77 = 0;
    if (((v108[1] - v108[0]) >> 4) <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = (v108[1] - v108[0]) >> 4;
    }

    do
    {
      v79 = xgboost::common::BlockedSpace2d::GetFirstDimension(v108, v77);
      v80 = xgboost::common::BlockedSpace2d::GetRange(v108, v77);
      v81 = *a3 + 88 * v79;
      v124.__ptr_ = *v81;
      v82 = *(v81 + 8);
      LODWORD(v126) = *(v81 + 16);
      v125 = v82;
      v127 = 0uLL;
      *(&v126 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v126 + 8, *(v81 + 24), *(v81 + 32), (*(v81 + 32) - *(v81 + 24)) >> 2);
      v83 = *(v81 + 48);
      v84 = *(v81 + 64);
      v130 = *(v81 + 80);
      v128 = v83;
      v129 = v84;
      xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v79, v80, *(a1[13] + 24 * LODWORD(v124.__ptr_)));
      if (*(&v126 + 1))
      {
        *&v127 = *(&v126 + 1);
        operator delete(*(&v126 + 1));
      }

      ++v77;
    }

    while (v78 != v77);
  }

  dmlc::OMPException::Rethrow(&v122);
  std::mutex::~mutex(&v123);
  std::exception_ptr::~exception_ptr(&v122);
  v85 = *a3;
  if (a3[1] != *a3)
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    do
    {
      v89 = *(v85 + v86);
      v105 = *(*v98 + (v87 >> 28));
      v121 = vaddvq_s64(v105);
      v106 = (*(v98[13] + 24 * v89 + 8) - *(v98[13] + 24 * v89)) >> 3;
      if (v121 != v106)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v121, &v106);
      }

      v90 = a4[20] + 20 * v89;
      xgboost::common::RowSetCollection::AddSplit((v98 + 10), v89, *(v90 + 4), *(v90 + 8), v105.i64[0], v105.i64[1]);
      ++v88;
      v85 = *a3;
      v87 += 0x100000000;
      v86 += 88;
    }

    while (v88 < 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3));
  }

  if (v109[1])
  {
    *&v110 = v109[1];
    operator delete(v109[1]);
  }

  if (v108[0])
  {
    v108[1] = v108[0];
    operator delete(v108[0]);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_274D9C8D4()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 200));
  std::exception_ptr::~exception_ptr((v0 - 208));
  JUMPOUT(0x274D9C74CLL);
}

void sub_274D9C8E0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 200));
  std::exception_ptr::~exception_ptr((v0 - 208));
  JUMPOUT(0x274D9C74CLL);
}

uint64_t *xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator++(uint64_t *a1)
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

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::vector[abi:ne200100](v67, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3));
  v9 = a6[1];
  if (v9 == *a6)
  {
    v18 = a6[1];
  }

  else
  {
    v10 = 0;
    v9 = *a6;
    do
    {
      v11 = *(v9 + 88 * v10);
      v12 = *(a5 + 160);
      v13 = *(v12 + 20 * v11);
      if (v13 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          ++v14;
          v13 = *(v12 + 20 * (v13 & 0x7FFFFFFF));
        }

        while (v13 != -1);
      }

      xgboost::common::ColumnSampler::GetFeatureSet(*(a1 + 136), v14, &v55);
      v15 = v67[0] + 16 * v10;
      v16 = v55;
      v55 = 0uLL;
      v17 = *(v15 + 8);
      *v15 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (*(&v55 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
      }

      ++v10;
      v9 = *a6;
      v18 = a6[1];
    }

    while (v10 < 0x2E8BA2E8BA2E8BA3 * ((v18 - *a6) >> 3));
  }

  v19 = v67[0];
  if (v67[0] == v67[1])
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 214);
    v50 = dmlc::LogMessageFatal::GetEntry(&v55);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: !features.empty()", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v19 = v67[0];
    v9 = *a6;
    v18 = a6[1];
  }

  v20 = ((*(**v19 + 8) - ***v19) >> 2) / *(a1 + 184);
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(v64, 0x2E8BA2E8BA2E8BA3 * ((v18 - v9) >> 3), v67, v21);
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v63, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3) * *(a1 + 184));
  v23 = *a6;
  v22 = a6[1];
  if (v22 != *a6)
  {
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = *(a1 + 184);
    do
    {
      if (v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *a6 + 88 * v25;
          v30 = v63[0] + v24 * v26 + v27;
          *v30 = *v29;
          v31 = *(v29 + 8);
          *(v30 + 16) = *(v29 + 16);
          *(v30 + 8) = v31;
          if (v30 != v29)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v30 + 24), *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 2);
          }

          v32 = *(v29 + 48);
          v33 = *(v29 + 64);
          *(v30 + 80) = *(v29 + 80);
          *(v30 + 48) = v32;
          *(v30 + 64) = v33;
          ++v28;
          v26 = *(a1 + 184);
          v27 += 88;
        }

        while (v28 < v26);
        v23 = *a6;
        v22 = a6[1];
      }

      ++v25;
      v24 += 88;
    }

    while (v25 < 0x2E8BA2E8BA2E8BA3 * ((v22 - v23) >> 3));
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v62);
  v34 = *(a3 + 16);
  v35 = *(a1 + 184);
  *&v55 = v63;
  *(&v55 + 1) = a1;
  v56 = a2;
  v57 = v67;
  v58 = a4;
  v59 = v34;
  v60 = a3;
  v61 = v62;
  xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v64, v35, &v55);
  v37 = *a6;
  v36 = a6[1];
  if (v36 == *a6)
  {
    goto LABEL_44;
  }

  v38 = 0;
  v39 = 0;
  v40 = *(a1 + 184);
  do
  {
    if (v40 < 1)
    {
      goto LABEL_43;
    }

    for (i = 0; i < v40; ++i)
    {
      v42 = v63[0] + 88 * (i + v39 * v40);
      v44 = *(v42 + 8);
      v43 = v42 + 8;
      v45 = v44;
      if (fabsf(v44) == INFINITY)
      {
        continue;
      }

      v46 = *a6 + 88 * v38 + 8;
      v47 = *(v43 + 4);
      v48 = *v46;
      if ((*(*a6 + 88 * v38 + 12) & 0x7FFFFFFFu) <= (v47 & 0x7FFFFFFFu))
      {
        if (v48 >= v45)
        {
          continue;
        }
      }

      else if (v48 > v45)
      {
        continue;
      }

      *v46 = v45;
      *(v46 + 4) = v47;
      *(v46 + 8) = *(v43 + 8);
      *(v46 + 40) = *(v43 + 40);
      if (v46 != v43)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v46 + 16), *(v43 + 16), *(v43 + 24), (*(v43 + 24) - *(v43 + 16)) >> 2);
      }

      *(v46 + 48) = *(v43 + 48);
      *(v46 + 64) = *(v43 + 64);
      v40 = *(a1 + 184);
    }

    v37 = *a6;
    v36 = a6[1];
LABEL_43:
    v38 = ++v39;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((v36 - v37) >> 3) > v39);
LABEL_44:
  *&v55 = v63;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  *&v55 = v67;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v55);
}

void sub_274D9CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 112);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Push<std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if (*(v4 + 8) > 0.000001)
      {
        std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100]((v5 + 8), v4);
        v6 = *(v5 + 8);
        v7 = *(v5 + 16);
        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v9, v5 + 32);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v6, v7, v9, 0x2E8BA2E8BA2E8BA3 * ((v7 - v6) >> 3));
        result = std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v9);
      }

      v4 += 88;
    }

    while (v4 != a3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274D9CF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(uint64_t a1)
{
  v2 = (a1 + 8);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](a1 + 32);
  v4 = v2;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::Reset(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v9 = 1;
  v10 = a4;
  if (a4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v10, &v9);
  }

  *(a1 + 392) = a4;
  *(a1 + 400) = a5;
  *(a1 + 352) = *a3;
  *(a1 + 360) = *(a3 + 8);
  *(a1 + 368) = *(a3 + 16);
  *(a1 + 376) = *(a3 + 24);
  if (*a1 != a2)
  {
    *a1 = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 16));
  }

  *(a1 + 48) = *(a1 + 40);
  *(a1 + 4) = 0;
  if (*(a1 + 64) != a2)
  {
    *(a1 + 64) = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 80));
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 68) = 0;
  xgboost::common::ParallelGHistBuilder<float>::Init(a1 + 136, a2);
  *(a1 + 128) = a2;
  *(a1 + 408) = a6;
}

void sub_274D9D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::tree::ApproxRowPartitioner>::__emplace_back_slow_path<unsigned long,unsigned long const&>(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v4;
  }

  v21 = a1;
  if (v6)
  {
    if (v6 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = 0;
  v18 = 136 * v3;
  v19 = 136 * v3;
  v20 = 0;
  xgboost::tree::ApproxRowPartitioner::ApproxRowPartitioner((136 * v3), *a2, *a3);
  v7 = 136 * v3 + 136;
  v19 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = 136 * v3 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = (v18 + *a1 - v9);
    v12 = *a1;
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *v12;
      v11[2] = *(v12 + 16);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v11 + 3) = *(v12 + 24);
      v11[5] = *(v12 + 40);
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      v11[6] = 0;
      v11[7] = 0;
      v11[8] = 0;
      *(v11 + 3) = *(v12 + 48);
      v13 = *(v12 + 72);
      v11[8] = *(v12 + 64);
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 48) = 0;
      v11[11] = 0;
      v11[12] = 0;
      v11[9] = v13;
      v11[10] = 0;
      *(v11 + 5) = *(v12 + 80);
      v11[12] = *(v12 + 96);
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 96) = 0;
      v11[13] = 0;
      v11[14] = 0;
      v11[15] = 0;
      *(v11 + 13) = *(v12 + 104);
      v14 = *(v12 + 128);
      v11[15] = *(v12 + 120);
      *(v12 + 104) = 0;
      *(v12 + 112) = 0;
      *(v12 + 120) = 0;
      v11[16] = v14;
      v12 += 136;
      v11 += 17;
    }

    while (v12 != v9);
    do
    {
      std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v8);
      v8 += 136;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v19;
  }

  *a1 = v10;
  a1[1] = v7;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v8;
  v20 = v15;
  v17 = v8;
  v18 = v8;
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(&v17);
  return v7;
}

void sub_274D9D38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

xgboost::tree::ApproxRowPartitioner *xgboost::tree::ApproxRowPartitioner::ApproxRowPartitioner(xgboost::tree::ApproxRowPartitioner *this, unint64_t a2, uint64_t a3)
{
  *(this + 5) = 0u;
  v4 = (this + 80);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 16) = a3;
  std::vector<unsigned long>::resize(this + 10, a2);
  v6 = *(this + 10);
  v5 = *(this + 11);
  if (v6 != v5)
  {
    v7 = 0;
    v8 = *(this + 16);
    v9 = (v5 - v6 - 8) >> 3;
    v10 = vdupq_n_s64(v9);
    v11 = (v6 + 8);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_274E1F3B0)));
      if (v12.i8[0])
      {
        *(v11 - 1) = v8 + v7;
      }

      if (v12.i8[4])
      {
        *v11 = v8 + v7 + 1;
      }

      v7 += 2;
      v11 += 2;
    }

    while (((v9 + 2) & 0x3FFFFFFFFFFFFFFELL) != v7);
  }

  xgboost::common::RowSetCollection::Init(v4);
  return this;
}

void sub_274D9D478(_Unwind_Exception *a1)
{
  xgboost::common::Index::~Index(v2);
  xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(v1);
  _Unwind_Resume(a1);
}

void xgboost::common::RowSetCollection::Init(xgboost::common::RowSetCollection *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = (this + 24);
  v30 = 0;
  v5 = v3 - v2;
  v31 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  if (v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v31, &v30);
  }

  v7 = *this;
  v6 = *(this + 1);
  if (*this == v6)
  {
    v11 = *(this + 4);
    v12 = *(this + 5);
    if (v11 < v12)
    {
      v10 = v11 + 24;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      goto LABEL_26;
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v4) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *v4) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(v4, v20);
      }

      v26 = 24 * v17;
      v10 = 24 * v17 + 24;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      v27 = *(this + 3);
      v28 = *(this + 4) - v27;
      v29 = v26 - v28;
      memcpy((v26 - v28), v27, v28);
      v25 = *(this + 3);
      *(this + 3) = v29;
      *(this + 4) = v10;
      *(this + 5) = 0;
      if (v25)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_29:
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v9 < v8)
  {
    *v9 = v7;
    *(v9 + 8) = v6;
    v10 = v9 + 24;
    *(v9 + 16) = 0;
    goto LABEL_26;
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v4) >> 3);
  v14 = v13 + 1;
  if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_29;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v4) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x555555555555555)
  {
    v16 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(v4, v16);
  }

  v21 = 24 * v13;
  *v21 = v7;
  *(v21 + 8) = v6;
  *(v21 + 16) = 0;
  v10 = 24 * v13 + 24;
  v22 = *(this + 3);
  v23 = *(this + 4) - v22;
  v24 = (24 * v13 - v23);
  memcpy(v24, v22, v23);
  v25 = *(this + 3);
  *(this + 3) = v24;
  *(this + 4) = v10;
  *(this + 5) = 0;
  if (v25)
  {
LABEL_25:
    operator delete(v25);
  }

LABEL_26:
  *(this + 4) = v10;
}

void sub_274D9D734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void xgboost::common::ParallelGHistBuilder<float>::Init(uint64_t a1, uint64_t a2)
{
  if (*a1 != a2)
  {
    if (*(a1 + 24) != a2)
    {
      *(a1 + 24) = a2;
      std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 40));
    }

    *(a1 + 72) = *(a1 + 64);
    *(a1 + 28) = 0;
    *a1 = a2;
  }
}

_DWORD *xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(_DWORD *a1, int a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = a1 + 2;
  v4 = xgboost::tree::LossGuide<xgboost::tree::CPUExpandEntry>;
  if (!a2)
  {
    v4 = xgboost::tree::DepthWise<xgboost::tree::CPUExpandEntry>;
  }

  v7[0] = &unk_2883E4898;
  v7[1] = v4;
  v7[3] = v7;
  std::priority_queue<xgboost::tree::CPUExpandEntry,std::vector<xgboost::tree::CPUExpandEntry>,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>>::priority_queue[abi:ne200100](v3, v7);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_274D9D920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL xgboost::tree::LossGuide<xgboost::tree::CPUExpandEntry>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return *a1 > *a2;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t std::__function::__func<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&),std::allocator<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&)>,BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E4898;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&),std::allocator<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&)>,BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::priority_queue<xgboost::tree::CPUExpandEntry,std::vector<xgboost::tree::CPUExpandEntry>,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>>::priority_queue[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100]((a1 + 3), a2);
  return a1;
}

void sub_274D9DAA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 88 * (v4 >> 1);
    v8 = *(v7 + 16);
    v9 = *(v7 + 8);
    v70[0] = *v7;
    v70[1] = v9;
    v71 = v8;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v72, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
    v10 = *(v7 + 48);
    v11 = *(v7 + 64);
    v77 = *(v7 + 80);
    v75 = v10;
    v76 = v11;
    v12 = (a2 - 88);
    v62[0] = *(a2 - 88);
    v13 = *(a2 - 80);
    v63 = *(a2 - 72);
    v62[1] = v13;
    v65 = 0;
    v66 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a2 - 64), *(a2 - 56), (*(a2 - 56) - *(a2 - 64)) >> 2);
    v14 = *(a2 - 40);
    v15 = *(a2 - 24);
    v69 = *(a2 - 8);
    v67 = v14;
    v68 = v15;
    v16 = *(a3 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v17 = (*(*v16 + 48))(v16, v70, v62);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v17)
    {
      v18 = *(a2 - 88);
      v78 = *(a2 - 80);
      v79 = *(a2 - 72);
      v19 = *(a2 - 64);
      v20 = *(a2 - 56);
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v21 = *(a2 - 40);
      v22 = *(a2 - 24);
      v61 = *(a2 - 8);
      v39 = v20;
      v23 = v20;
      v40 = v19;
      v24 = (v20 - v19) >> 2;
      v59 = v21;
      v60 = v22;
      do
      {
        v25 = v12;
        v12 = v7;
        *v25 = *v7;
        v27 = v7 + 8;
        v26 = *(v7 + 8);
        *(v25 + 4) = *(v7 + 16);
        v25[1] = v26;
        std::vector<float>::__move_assign((v25 + 3), (v7 + 24));
        v28 = *(v7 + 48);
        v29 = *(v7 + 64);
        v25[10] = *(v7 + 80);
        *(v25 + 3) = v28;
        *(v25 + 4) = v29;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 88 * v6;
        v30 = *(v7 + 8);
        v51[0] = *v7;
        v31 = *(v7 + 16);
        v51[1] = v30;
        v52 = v31;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v53, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
        v32 = *(v7 + 48);
        v33 = *(v7 + 64);
        v58 = *(v7 + 80);
        v56 = v32;
        v57 = v33;
        v43[0] = v18;
        v43[1] = v78;
        v44 = v79;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v45, v40, v23, v24);
        v48 = v59;
        v49 = v60;
        v50 = v61;
        v34 = *(a3 + 24);
        if (!v34)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v35 = (*(*v34 + 48))(v34, v51, v43);
        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }
      }

      while ((v35 & 1) != 0);
      *v12 = v18;
      *v27 = v78;
      *(v27 + 8) = v79;
      v36 = v12[3];
      if (v36)
      {
        v12[4] = v36;
        operator delete(v36);
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = 0;
      }

      v12[3] = v40;
      *(v12 + 2) = v39;
      v37 = v60;
      *(v27 + 40) = v59;
      *(v27 + 56) = v37;
      *(v27 + 72) = v61;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_274D9DF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  v48 = *(v46 - 184);
  if (v48)
  {
    *(v46 - 176) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::ApproxRowPartitioner>>(xgboost::common::BlockedSpace2d *a1, uint64_t *a2, uint64_t **a3)
{
  std::vector<unsigned long>::vector[abi:ne200100](v34, 0x2E8BA2E8BA2E8BA3 * (a3[1] - *a3));
  v7 = *a2;
  for (i = a2[1]; v7 != i; v7 += 136)
  {
    v8 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      v10 = 0;
      do
      {
        v25 = *v8;
        v26 = v8[1];
        v27 = *(v8 + 4);
        v29 = 0;
        v30 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v8[3], v8[4], (v8[4] - v8[3]) >> 2);
        v11 = *(v8 + 3);
        v12 = *(v8 + 4);
        v33 = v8[10];
        v31 = v11;
        v32 = v12;
        v13 = *(*(v7 + 104) + 24 * v25 + 8) - *(*(v7 + 104) + 24 * v25);
        if (*(v34[0] + v10) <= (v13 >> 3))
        {
          v14 = v13 >> 3;
        }

        else
        {
          v14 = *(v34[0] + v10);
        }

        *(v34[0] + v10) = v14;
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        v8 += 11;
        v10 += 8;
      }

      while (v8 != v9);
    }
  }

  v16 = *a3;
  v15 = a3[1];
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v17 = v15 - v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0x2E8BA2E8BA2E8BA3 * (v17 >> 3);
    do
    {
      v20 = *(v34[0] + v18);
      if (v20)
      {
        v21 = (v20 >> 8) + 1;
      }

      else
      {
        v21 = v20 >> 8;
      }

      if (v21)
      {
        v22 = 0;
        do
        {
          v23 = v22 + 256;
          if (v20 >= v22 + 256)
          {
            v24 = v22 + 256;
          }

          else
          {
            v24 = v20;
          }

          xgboost::common::BlockedSpace2d::AddBlock(a1, v18, v22, v24);
          v22 = v23;
          --v21;
        }

        while (v21);
      }

      ++v18;
    }

    while (v18 != v19);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }
}

void sub_274D9E190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 + 24);
  if (v23)
  {
    *(v21 + 32) = v23;
    operator delete(v23);
  }

  v24 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildHist(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int **a7, int **a8, uint64_t a9)
{
  v28 = 0;
  v29 = 0x7FFFFFFF;
  if (!a2)
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRows(a1, &v29, &v28, a7, a8, a5);
  }

  if (*(a4 + 192) == 1)
  {
    memset(v24, 0, sizeof(v24));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v24, *a3, a3[1], (a3[1] - *a3) >> 4);
    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, a3[3], a3[4], (a3[4] - a3[3]) >> 3);
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(a1, a2, v24, a4, a7, a6, a9);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    v17 = v24[0];
    if (v24[0])
    {
      v18 = v24;
LABEL_12:
      v18[1] = v17;
      operator delete(v17);
    }
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v20, *a3, a3[1], (a3[1] - *a3) >> 4);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v21, a3[3], a3[4], (a3[4] - a3[3]) >> 3);
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(a1, a2, v20, a4, a7, a6, a9);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    v17 = v20[0];
    if (v20[0])
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  v19 = 1;
  if (!*(a1 + 400))
  {
    dmlc::LogCheckFormat<unsigned long,int>((a1 + 400), &v19);
  }

  if (*(a1 + 400) - 1 == a2)
  {
    if (*(a1 + 408) == 1)
    {
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(a1, a5, a7, a8, v29, v28);
    }

    else
    {
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(a1, a5, a7, a8);
    }
  }
}

float xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::InitRoot(uint64_t a1, int8x16_t *a2)
{
  std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize((a1 + 296), 1uLL);
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v12);
  v4 = *(a1 + 296);
  *v4 = *a2;
  v11 = *v4;
  v6 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v12, 0, a1, v11.i64, v11, v5);
  v7 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v12, a1, v11.i64, v6);
  v8 = *(a1 + 296);
  *(v8 + 16) = v7;
  return xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v12, 0, a1, v11.i64, *v8, v9);
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D9E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      *(v4 + 24) = 0;
      *(v4 + 16) = v8;
      *(v4 + 8) = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4 + 24, *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
      v9 = *(v6 + 48);
      v10 = *(v6 + 64);
      *(v4 + 80) = *(v6 + 80);
      *(v4 + 48) = v9;
      *(v4 + 64) = v10;
      v6 += 88;
      v4 = v15 + 88;
      v15 += 88;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 64);
    if (v3)
    {
      *(v1 - 56) = v3;
      operator delete(v3);
    }

    v1 -= 88;
  }
}

void std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::tree::CPUExpandEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
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

void xgboost::common::BlockedSpace2d::AddBlock(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v9 >= v8)
  {
    v11 = *(this + 3);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
    v17 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 24, v17);
    }

    v18 = (v9 - v11) >> 3;
    v19 = (8 * v13);
    v20 = (8 * v13 - 8 * v18);
    *v19 = a2;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = *(this + 3);
    *(this + 3) = v20;
    *(this + 4) = v10;
    *(this + 5) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    v10 = v9 + 8;
  }

  *(this + 4) = v10;
  v23 = *(this + 1);
  v22 = *(this + 2);
  if (v23 >= v22)
  {
    v25 = (v23 - *this) >> 4;
    if ((v25 + 1) >> 60)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v26 = v22 - *this;
    v27 = v26 >> 3;
    if (v26 >> 3 <= (v25 + 1))
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF0)
    {
      v28 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(this, v28);
    }

    v29 = xgboost::common::Range1d::Range1d((16 * v25), a3, a4);
    v24 = v29 + 2;
    v30 = *(this + 1) - *this;
    v31 = v29 - v30;
    memcpy(v29 - v30, *this, v30);
    v32 = *this;
    *this = v31;
    *(this + 1) = v24;
    *(this + 2) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    xgboost::common::Range1d::Range1d(*(this + 1), a3, a4);
    v24 = (v23 + 16);
    *(this + 1) = v23 + 16;
  }

  *(this + 1) = v24;
}

void sub_274D9EA68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *xgboost::common::Range1d::Range1d(unint64_t *this, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  *this = a2;
  this[1] = a3;
  if (a2 >= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return this;
}

void sub_274D9EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRows(unsigned int *a1, unsigned int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  if (*(a1 + 408) == 1)
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(a1, a2, a3, a4, a5);
  }
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<float>::operator[](a1, *(*a5 + v17), &v23);
      v20 = __p[0] + v18;
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<float>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274D9ED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<float>::operator[](a1, *(*a5 + v17), &v23);
      v20 = __p[0] + v18;
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<float>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274D9EFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(unsigned int *a1, uint64_t a2, void *a3, void *a4, unsigned int a5, int a6)
{
  v23 = a2;
  v22 = a1[32];
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v19, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v22, 0x400uLL);
  v11 = a1[98];
  v14 = a3;
  v15 = a1;
  v16 = &v23;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v11, &v14);
  xgboost::common::HistCollection<float>::operator[](a1, a5, &v14);
  rabit::engine::ReduceHandle::Allreduce((a1 + 80), v15, 8, a1[32] * a6, 0, 0);
  v24[0] = v23;
  v12 = a1[98];
  v14 = a3;
  v15 = v24;
  v16 = a1;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v12, &v14);
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(&v14, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3), &v22, 0x400uLL);
  v24[3] = a3;
  v25 = v23;
  v13 = a1[98];
  v24[0] = a4;
  v24[1] = &v25;
  v24[2] = a1;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(&v14, v13, v24);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_274D9F19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  xgboost::common::Index::~Index(va);
  xgboost::common::Index::~Index(va1);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = *(a1 + 128);
  v13 = a2;
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v9, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v12, 0x400uLL);
  v7 = *(a1 + 392);
  v8[0] = a3;
  v8[1] = a1;
  v8[2] = &v13;
  v8[3] = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v9, v7, v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_274D9F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  xgboost::common::Index::~Index(va);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(unsigned int *a1, unsigned int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a4) >> 3);
  v14 = *a5;
  v31 = a5[1];
  v15 = 0x2E8BA2E8BA2E8BA3 * ((v31 - *a5) >> 3);
  std::vector<int>::vector[abi:ne200100](&__p, v15 + v13);
  v16 = __p;
  if (v11 != v12)
  {
    v17 = *a4;
    if (v13 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    v19 = __p;
    do
    {
      v20 = *v17;
      v17 += 22;
      *v19++ = v20;
      --v18;
    }

    while (v18);
  }

  if (v31 != v14)
  {
    v21 = *a5;
    v22 = &v16[4 * v13];
    if (v15 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v15;
    }

    do
    {
      v24 = *v21;
      v21 += 22;
      *v22 = v24;
      v22 += 4;
      --v23;
    }

    while (v23);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v25 = __p;
  v26 = v33;
  if (__p == v33)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) != 0)
      {
        xgboost::common::HistCollection<float>::AddHistRow(a1, *v25);
        v28 = *a2;
        if (*a2 >= *v25)
        {
          v28 = *v25;
        }

        *a2 = v28;
        xgboost::common::HistCollection<float>::AddHistRow((a1 + 16), *v25);
        ++v27;
      }

      ++v25;
    }

    while (v25 != v26);
    v25 = __p;
    v26 = v33;
  }

  for (; v25 != v26; ++v25)
  {
    if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) == 0)
    {
      xgboost::common::HistCollection<float>::AddHistRow(a1, *v25);
      xgboost::common::HistCollection<float>::AddHistRow((a1 + 16), *v25);
    }
  }

  xgboost::common::HistCollection<float>::AllocateAllData(a1);
  xgboost::common::HistCollection<float>::AllocateAllData(a1 + 16);
  if (v27 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  *a3 = v29;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_274D9F464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(unsigned int *a1, signed int *a2, _DWORD *a3, signed int **a4, unsigned int **a5)
{
  v8 = *a4;
  v9 = a4[1];
  if (*a4 == v9)
  {
    v15 = *a4;
  }

  else
  {
    do
    {
      v13 = *v8;
      v8 += 22;
      v12 = v13;
      xgboost::common::HistCollection<float>::AddHistRow(a1, v13);
      v14 = *a2;
      if (*a2 >= v13)
      {
        v14 = v12;
      }

      *a2 = v14;
    }

    while (v8 != v9);
    v8 = *a4;
    v15 = a4[1];
  }

  *a3 = -1171354717 * ((v15 - v8) >> 3);
  v17 = *a5;
  v16 = a5[1];
  while (v17 != v16)
  {
    v18 = *v17;
    v17 += 22;
    xgboost::common::HistCollection<float>::AddHistRow(a1, v18);
  }

  xgboost::common::HistCollection<float>::AllocateAllData(a1);
}

void xgboost::common::HistCollection<float>::AddHistRow(uint64_t a1, unsigned int a2)
{
  v11 = -1;
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = (a1 + 40);
  if (a2 >= ((*(a1 + 48) - v5) >> 3))
  {
    v10 = 0xFFFFFFFFLL;
    std::vector<unsigned long>::resize((a1 + 40), a2 + 1, &v10);
    v5 = *v6;
  }

  v7 = (v5 + 8 * v4);
  if (*v7 != 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(v7, &v11);
  }

  v8 = a2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3) < v8)
  {
    std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::resize((a1 + 16), v8);
  }

  v9 = *(a1 + 4);
  *(*(a1 + 40) + 8 * v4) = v9;
  *(a1 + 4) = v9 + 1;
}

void sub_274D9F6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::HistCollection<float>::AllocateAllData(unsigned int *a1)
{
  v2 = *a1;
  v4 = a1 + 4;
  v3 = *(a1 + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 1) - v3) >> 3) * v2;
  *(a1 + 8) = 1;
  if (v5 != (v3[1] - *v3) >> 3)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v3, v5);
  }
}

void sub_274D9F794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<xgboost::tree::GradStats>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<xgboost::tree::GradStats>>::~__split_buffer(v18);
  }
}

unsigned int *xgboost::common::HistCollection<float>::operator[]@<X0>(unsigned int *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = -1;
  v4 = *(result + 5);
  if (a2 >= ((*(result + 6) - v4) >> 3))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(v4 + 8 * a2);
  if (v7 == 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v8);
  }

  if (*(result + 8) == 1)
  {
    v5 = *result;
    v6 = **(result + 2) + 8 * v7 * v5;
  }

  else
  {
    v6 = *(*(result + 2) + 24 * v7);
    v5 = *result;
  }

  *a3 = v5;
  a3[1] = v6;
  if (v5)
  {
    if (!v6)
    {
      std::terminate();
    }
  }

  return result;
}

void sub_274D9FB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<float>::Reset(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::common::BlockedSpace2d *a4, uint64_t **a5)
{
  v15 = a3;
  if (*(a1 + 24) != *a1)
  {
    *(a1 + 24) = *a1;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 40));
  }

  v10 = *(a1 + 168);
  *(a1 + 72) = *(a1 + 64);
  *(a1 + 28) = 0;
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 160, v10);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 120) = 0;
  if ((a1 + 136) != a5)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__assign_with_size[abi:ne200100]<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*>((a1 + 136), *a5, a5[1], (a5[1] - *a5) >> 4);
  }

  v14 = (a5[1] - *a5) >> 4;
  if (v14 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v15, &v14);
  }

  v11 = v15;
  *(a1 + 8) = a2;
  *(a1 + 16) = v11;
  xgboost::common::ParallelGHistBuilder<float>::MatchThreadsToNodes(a1, a4);
  xgboost::common::ParallelGHistBuilder<float>::AllocateAdditionalHistograms(a1);
  xgboost::common::ParallelGHistBuilder<float>::MatchNodeNidPairToHist(a1);
  std::vector<int>::resize((a1 + 88), *(a1 + 16) * a2);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }
}

void sub_274D9FCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

void *std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274D9FF6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void xgboost::common::ParallelGHistBuilder<float>::MatchThreadsToNodes(void *a1, xgboost::common::BlockedSpace2d *a2)
{
  v4 = (*(a2 + 1) - *a2) >> 4;
  v5 = a1[1];
  if (v4 % v5)
  {
    v6 = v4 / v5 + 1;
  }

  else
  {
    v6 = v4 / v5;
  }

  std::vector<BOOL>::resize((a1 + 14), a1[2] * v5, 0);
  if (a1[1])
  {
    v7 = 0;
    do
    {
      v8 = v7 * v6;
      if (v7 * v6 < v4)
      {
        if (v4 >= v8 + v6)
        {
          v9 = v8 + v6;
        }

        else
        {
          v9 = v4;
        }

        FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(a2, v8);
        v11 = xgboost::common::BlockedSpace2d::GetFirstDimension(a2, v9 - 1);
        if (FirstDimension <= v11)
        {
          v12 = a1[14];
          do
          {
            *(v12 + (((FirstDimension + v7 * a1[2]) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (FirstDimension + v7 * *(a1 + 16));
            ++FirstDimension;
          }

          while (FirstDimension <= v11);
        }
      }

      ++v7;
    }

    while (v7 < a1[1]);
  }
}

void xgboost::common::ParallelGHistBuilder<float>::AllocateAdditionalHistograms(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = 0;
      if (a1[1])
      {
        v7 = v3;
        v8 = a1[1];
        do
        {
          v6 += (*(a1[14] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
          v7 += v1;
          --v8;
        }

        while (v8);
      }

      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v4 = v5 + (v9 - 1);
      ++v3;
    }

    while (v3 != v1);
    if (v4)
    {
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      v12 = v5 + (v11 - 1);
      do
      {
        xgboost::common::HistCollection<float>::AddHistRow((a1 + 3), v10++);
      }

      while (v12 != v10);
    }
  }
}

uint64_t xgboost::common::ParallelGHistBuilder<float>::MatchNodeNidPairToHist(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = *(result + 8);
    do
    {
      if (v5)
      {
        v6 = 0;
        v7 = 1;
        do
        {
          if ((*(v2[14] + (((v4 + v2[2] * v6) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 + *(v2 + 16) * v6)))
          {
            v8[0] = v6;
            v8[1] = v4;
            v8[3] = v8;
            if (v7)
            {
              result = std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((v2 + 20), v8);
              v7 = 0;
              *(result + 48) = -1;
            }

            else
            {
              result = std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((v2 + 20), v8);
              v7 = 0;
              *(result + 48) = v3++;
            }
          }

          ++v6;
          v5 = v2[1];
        }

        while (v6 < v5);
        v1 = v2[2];
      }

      ++v4;
    }

    while (v4 < v1);
  }

  return result;
}

char *std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__assign_with_size[abi:ne200100]<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v21 = *v5;
      v22 = v5[1];
      v5 += 2;
      *result = v21;
      *(result + 1) = v22;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      v13 = result;
      v14 = a2;
      do
      {
        v15 = *v14;
        v16 = v14[1];
        v14 += 2;
        *v13 = v15;
        *(v13 + 1) = v16;
        v13 += 16;
      }

      while (v14 != v12);
    }

    if (v12 == a3)
    {
      v18 = v11;
    }

    else
    {
      v17 = a2 - result;
      v18 = v11;
      do
      {
        v20 = *&v18[v17 + 8];
        v19 = &v18[v17 + 16];
        *v11 = *&v18[v17];
        *(v11 + 1) = v20;
        v11 += 16;
        v18 += 16;
      }

      while (v19 != a3);
    }

    a1[1] = v18;
  }

  return result;
}

uint64_t xgboost::common::BlockedSpace2d::GetFirstDimension(xgboost::common::BlockedSpace2d *this, unint64_t a2)
{
  v4 = a2;
  v3 = (*(this + 4) - *(this + 3)) >> 3;
  if (v3 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return *(*(this + 3) + 8 * v4);
}

void sub_274DA0504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = v8[5];
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v18);
      if (8 * v15 != 8 * v14)
      {
        v16 = *(v8 + 24);
        v17 = *(v8 + 32);
        xgboost::common::GHistBuilder<float>::BuildHist<false>();
      }
    }
  }
}

uint64_t xgboost::common::BlockedSpace2d::GetRange(xgboost::common::BlockedSpace2d *this, unint64_t a2)
{
  v6 = a2;
  v5 = (*(this + 1) - *this) >> 4;
  if (v5 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v2 = (*this + 16 * v6);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_274DA0904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a3;
  v11 = a2;
  if (*(a1 + 16) <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, (a1 + 16));
  }

  if (*(a1 + 8) <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v11, (a1 + 8));
  }

  v9[0] = v11;
  v9[1] = v10;
  v6 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, v9);
  if ((v6 & 0x80000000) == 0)
  {
    xgboost::common::HistCollection<float>::AllocateData((a1 + 24), v6);
LABEL_8:
    xgboost::common::HistCollection<float>::operator[]((a1 + 24), v6, a4);
    v7 = v10;
    goto LABEL_9;
  }

  if (v6 != -1)
  {
    goto LABEL_8;
  }

  v7 = v10;
  v8 = (*(a1 + 136) + 16 * v10);
  *a4 = *v8;
  *(a4 + 8) = v8[1];
LABEL_9:
  if (!*(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v7))
  {
    bzero(*(a4 + 8), 8 * *a4);
    *(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v10) = 1;
  }
}

void sub_274DA0B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::pair<unsigned long,unsigned long>,int>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 48;
}

void xgboost::common::HistCollection<float>::AllocateData(unsigned int *a1, unsigned int a2)
{
  v5 = (*(a1 + 2) + 24 * *(*(a1 + 5) + 8 * a2));
  if (v5[1] == *v5)
  {
    v7[1] = v2;
    v7[2] = v3;
    v6 = *a1;
    v7[0] = 0;
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v5, v6, v7);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::resize(void *a1, unint64_t a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::__append(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
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

    v14 = 8 * v9;
    v15 = 8 * v9 + 8 * a2;
    v16 = 8 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 8;
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

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v18);
      if (8 * v15 != 8 * v14)
      {
        v16 = *(v8 + 24);
        v17 = *(v8 + 32);
        xgboost::common::GHistBuilder<float>::BuildHist<true>();
      }
    }
  }
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA1404(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

unsigned int *xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * a2);
  xgboost::common::HistCollection<float>::operator[](v8, *v9, &v35);
  xgboost::common::ParallelGHistBuilder<float>::ReduceHist((v8 + 34), a2, a3, a4);
  result = xgboost::common::HistCollection<float>::operator[](v8 + 16, *v9, v34);
  v11 = 2 * a3;
  v12 = 2 * a4;
  if (v12 > 2 * a3)
  {
    v13 = v12 - v11;
    v14 = (v34[1] + 8 * a3);
    v15 = (v36 + 8 * a3);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v13;
    }

    while (v13);
  }

  v17 = *(*(**(a1 + 16) + 160) + 20 * *v9);
  if (v17 != -1)
  {
    v18 = *(**(a1 + 24) + 88 * a2);
    xgboost::common::HistCollection<float>::operator[](v8 + 16, v17 & 0x7FFFFFFF, v33);
    xgboost::common::HistCollection<float>::operator[](v8, v18, &v31);
    v19 = v12 - v11;
    if (v12 <= v11)
    {
      return xgboost::common::HistCollection<float>::operator[](v8 + 16, v18, v30);
    }

    else
    {
      v20 = (v32 + 8 * a3);
      v21 = (v36 + 8 * a3);
      v22 = (v33[1] + 8 * a3);
      v23 = v12 - v11;
      do
      {
        v24 = *v22++;
        v25 = v24;
        v26 = *v21++;
        *v20++ = v25 - v26;
        --v23;
      }

      while (v23);
      result = xgboost::common::HistCollection<float>::operator[](v8 + 16, v18, v30);
      v27 = (v30[1] + 8 * a3);
      v28 = (v32 + 8 * a3);
      do
      {
        v29 = *v28++;
        *v27++ = v29;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

void xgboost::common::ParallelGHistBuilder<float>::ReduceHist(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v22 = a3;
  v23 = a2;
  v21 = a4;
  if (a4 <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v21, &v22);
  }

  if (v23 >= *(a1 + 16))
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, (a1 + 16));
  }

  v5 = *(*(a1 + 136) + 16 * v23 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (2)
    {
      v9 = *(a1 + 16);
      v10 = (*(a1 + 88) + 4 * v8 * v9 + 4 * v23);
      v11 = 4 * v9;
      while (!*v10)
      {
        v10 = (v10 + v11);
        if (++v8 >= v6)
        {
          if (v7)
          {
            return;
          }

          goto LABEL_21;
        }
      }

      v19 = v8;
      v20 = v23;
      v12 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, &v19);
      if (v12 == -1)
      {
        v13 = (*(a1 + 136) + 16 * v23 + 8);
      }

      else
      {
        xgboost::common::HistCollection<float>::operator[]((a1 + 24), v12, &v19);
        v13 = &v20;
      }

      v14 = *v13;
      if (v5 != *v13 && 2 * v21 > 2 * v22)
      {
        v15 = 2 * v21 - 2 * v22;
        v16 = (v5 + 8 * v22);
        v17 = (v14 + 8 * v22);
        do
        {
          v18 = *v17++;
          *v16 = v18 + *v16;
          ++v16;
          --v15;
        }

        while (v15);
      }

      v6 = *(a1 + 8);
      ++v8;
      v7 = 1;
      if (v8 < v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_21:
    bzero((v5 + 8 * v22), 8 * (v21 - v22));
  }
}

void sub_274DA19B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = a9;
  a9 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

unsigned int *dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(unsigned int *result, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      result = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v11 = v10;
      v12 = (**v8 + 88 * FirstDimension);
      if ((*(*(**(v8 + 8) + 160) + 20 * *v12) & 0x80000000) == 0)
      {
        v13 = result;
        v14 = *(v8 + 16);
        result = xgboost::common::HistCollection<float>::operator[](v14, *v12, v26);
        v15 = *(*(**(v8 + 8) + 160) + 20 * *v12);
        if (v15 != -1)
        {
          v16 = *(**(v8 + 24) + 88 * FirstDimension);
          xgboost::common::HistCollection<float>::operator[](v14, v15 & 0x7FFFFFFF, v25);
          result = xgboost::common::HistCollection<float>::operator[](v14, v16, v24);
          if (2 * v11 > (2 * v13))
          {
            v17 = 2 * v11 - 2 * v13;
            v18 = (v26[1] + 8 * v13);
            v19 = (v24[1] + 8 * v13);
            v20 = (v25[1] + 8 * v13);
            do
            {
              v21 = *v20++;
              v22 = v21;
              v23 = *v19++;
              *v18++ = v22 - v23;
              --v17;
            }

            while (v17);
          }
        }
      }
    }
  }

  return result;
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA1EBC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1[1] - *a1) >> 4;
  LODWORD(v4[0]) = a2;
  v6 = a2;
  v7 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v4, &v7);
  }

  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  v4[0] = &v5;
  v4[1] = &v6;
  v4[2] = a3;
  v4[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v8, v4);
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v3 = *MEMORY[0x277D85DE8];
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA2184(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = v11;
      v13 = *(v8 + 8);
      v14 = (**v8 + 88 * FirstDimension);
      xgboost::common::HistCollection<float>::operator[](v13, *v14, v26);
      xgboost::common::ParallelGHistBuilder<float>::ReduceHist((v13 + 34), FirstDimension, Range, v12);
      v15 = *(*(**(v8 + 16) + 160) + 20 * *v14);
      if (v15 != -1)
      {
        v16 = *(**(v8 + 24) + 88 * FirstDimension);
        xgboost::common::HistCollection<float>::operator[](v13, v15 & 0x7FFFFFFF, v25);
        xgboost::common::HistCollection<float>::operator[](v13, v16, v24);
        if (2 * v12 > 2 * Range)
        {
          v17 = 2 * v12 - 2 * Range;
          v18 = (v24[1] + 8 * Range);
          v19 = (v26[1] + 8 * Range);
          v20 = (v25[1] + 8 * Range);
          do
          {
            v21 = *v20++;
            v22 = v21;
            v23 = *v19++;
            *v18++ = v22 - v23;
            --v17;
          }

          while (v17);
        }
      }
    }
  }
}

uint64_t std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::common::Range1d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274DA2428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::Range1d>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v26 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v22 = *(a1 + 48);
    v23 = *(a1 + 64);
    v24 = *(a1 + 80);
    v25 = v7;
    v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(a1, a3, a4);
    v13 = v12;
    if (a2 - 88 == v12)
    {
      *v12 = v8;
      *(v12 + 8) = v25;
      *(v12 + 16) = v26;
      v20 = (v12 + 24);
      v19 = *(v12 + 24);
      if (v19)
      {
        *(v13 + 32) = v19;
        operator delete(v19);
        *v20 = 0;
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
      }

      *(v13 + 24) = v9;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      *(v13 + 48) = v22;
      *(v13 + 64) = v23;
      *(v13 + 80) = v24;
    }

    else
    {
      *v12 = *(a2 - 88);
      v14 = *(a2 - 80);
      *(v12 + 16) = *(a2 - 72);
      *(v12 + 8) = v14;
      std::vector<float>::__move_assign(v12 + 24, (a2 - 64));
      v15 = *(a2 - 40);
      v16 = *(a2 - 24);
      *(v13 + 80) = *(a2 - 8);
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      v17 = v13 + 88;
      *(a2 - 88) = v8;
      *(a2 - 80) = v25;
      *(a2 - 72) = v26;
      v18 = *(a2 - 64);
      if (v18)
      {
        *(a2 - 56) = v18;
        operator delete(v18);
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
        *(a2 - 48) = 0;
      }

      *(a2 - 64) = v9;
      *(a2 - 56) = v10;
      *(a2 - 48) = v11;
      *(a2 - 40) = v22;
      *(a2 - 24) = v23;
      *(a2 - 8) = v24;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 3));
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_274DA284C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 88 * v5 + 88;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 >= a3)
    {
      goto LABEL_9;
    }

    v31[0] = *a1;
    v10 = *(a1 + 8);
    v32 = *(a1 + 16);
    v31[1] = v10;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v33, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v38 = *(a1 + 80);
    v36 = v11;
    v37 = v12;
    v23[0] = *(a1 + 88);
    v13 = *(a1 + 104);
    v23[1] = *(a1 + 96);
    v24 = v13;
    v26 = 0;
    v27 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a1 + 112), *(a1 + 120), (*(a1 + 120) - *(a1 + 112)) >> 2);
    v14 = *(a1 + 136);
    v15 = *(a1 + 152);
    v30 = *(a1 + 168);
    v28 = v14;
    v29 = v15;
    v16 = *(a2 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v17 = (*(*v16 + 48))(v16, v31, v23);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      a1 += 88;
      v5 = v9;
      goto LABEL_9;
    }

    if (v17)
    {
      goto LABEL_8;
    }

LABEL_9:
    *v7 = *a1;
    v18 = *(a1 + 8);
    *(v7 + 16) = *(a1 + 16);
    *(v7 + 8) = v18;
    std::vector<float>::__move_assign(v7 + 24, (a1 + 24));
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    *(v7 + 80) = *(a1 + 80);
    *(v7 + 48) = v19;
    *(v7 + 64) = v20;
  }

  while (v5 <= v6);
  return a1;
}